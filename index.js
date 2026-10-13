//Libraries
const express = require('express');
const multer = require('multer');
const mysql = require('mysql2/promise');
// const course = require('./Model/course');

//Setup defaults for script
const app = express();
app.use(express.static('public'))

const upload = multer()
const port = 8080 //Default port to http server

let connection = null;

async function query(sql, params) {
    //Singleton DB connection
    if (null === connection) {
        console.log('Here');
        connection = await mysql.createConnection({
            host: "student-databases.cvode4s4cwrc.us-west-2.rds.amazonaws.com",
            user: "SHAWNAVANG",
            password: "shjKryRojW9skiJmtBONqKWzrrWbSs8WD2C",
            database: 'SHAWNAVANG'
        });
    }

    const [results,] = await connection.execute(sql, params);
    return results;
}

//The * in app.* needs to match the method type of the request
app.get(
    '/edm_festivals/',
    upload.none(),
    async (request, response) => {
        let result = {};
        try {
            let selectSql = `
SELECT 
    f.id,
    f.name,
    f.location,
    f.date_of_event,
    f.cost_of_event,
    f.indoor,
    f.outdoor,
    f.camping,
    f.vip,
    GROUP_CONCAT(DISTINCT g.genre) AS genres
FROM edm_festivals f
INNER JOIN edm_festivals_to_edm_genres fg 
    ON f.id = fg.festival_id
INNER JOIN edm_genres g 
    ON fg.genre_id = g.id
`;
            whereStatements = [],
                orderByStatements = [],
                queryParameters = [];

            if (request.query.state) {
                whereStatements.push('f.location LIKE ?');
                queryParameters.push('%' + request.query.state + '%');
            }

             if (request.query.month) {
                const month = request.query.month.toLowerCase();

                whereStatements.push('LOWER(f.date_of_event) LIKE ?');
                queryParameters.push('%' + month + '%');
            }

            if (request.query.budget) {
                const budget = parseFloat(request.query.budget);
                if (!isNaN(budget)) {
                    whereStatements.push('f.cost_of_event <= ?');
                    queryParameters.push(budget);
                }
            }

            if (parseInt(request.query.indoor) === 1) {
                whereStatements.push('f.indoor = 1');
            }

            if (parseInt(request.query.outdoor) === 1) {
                whereStatements.push('f.outdoor = 1');
            }

            if (parseInt(request.query.camping) === 1) {
                whereStatements.push('f.camping = 1');
            }

            if (parseInt(request.query.vip) === 1) {
                whereStatements.push('f.vip = 1');
            }

            const selectedGenres = [];
            if (request.query.house) selectedGenres.push('House');
            if (request.query.techno) selectedGenres.push('Techno');
            if (request.query.dubstep) selectedGenres.push('Dubstep');
            if (request.query.trap) selectedGenres.push('Trap');
            if (request.query.drumandbass) selectedGenres.push('Drum and Bass');
            if (request.query.hardstyle) selectedGenres.push('Hardstyle');
            if (request.query.other) selectedGenres.push('Other');

            if (selectedGenres.length > 0) {
                whereStatements.push(`g.genre IN (${selectedGenres.map(() => '?').join(',')})`);
                queryParameters.push(...selectedGenres);
            }


            //Dynamically add WHERE expressions to SELECT statements if needed
            if (whereStatements.length > 0) {
                selectSql += ' WHERE ' + whereStatements.join(' AND ');
            }

            selectSql += ' GROUP BY f.id';

            //Dynamically add ORDER BY expressions to SELECT statements if needed
            if (orderByStatements.length > 0) {
                selectSql += ' ORDER BY ' + orderByStatements.join(', ');
            }

            //Dynamically add LIMIT expressions to SELECT statements if needed
            // if (request.query && request.query.limit) {
            //     selectSql += ' LIMIT ?'
            //     queryParameters.push(parseInt(request.query.limit));
            // }
            const limit = parseInt(request.query.limit);
            if (!isNaN(limit)) {
                selectSql += ` LIMIT ${limit}`;
            }

            //Default response object
            return response.json({ 'data': await query(selectSql, queryParameters) });
            //return await query(selectSql, queryParameters);
            // result = await course.getAllCourses(request.query);

        } catch (error) {
            console.log(error);
            return response.status(500) //Error code 
                .json({ message: 'Something went wrong with the server.' });
        }

    });

app.listen(port, () => {
    console.log(`Application listening at http://localhost:${port}`);
})