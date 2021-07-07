const mysql = require('mysql');
const pool = mysql.createPool({
    host: '127.0.0.1',
    port: '3306',
    password: '',
    user: 'root',
    database: 'mingdiao',
    connectionLimit: '20'
});
// 导出连接池对象
module.exports = pool;