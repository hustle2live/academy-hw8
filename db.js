const Pool = require('pg').pool;

const pool = new Pool({
   user: 'postgres',
   password: 'postgre',
   host: 'localhost',
   port: 5432,
   database: 'movies'
});

module.exports = pool;
