const Pool = require('pg').pool;
const pool = new Pool({
   user: 'admin',
   password: 'postgres',
   host: 'localhost',
   port: 5432,
   database: ''
//    database: 'postgres'
});

module.exports = pool;
