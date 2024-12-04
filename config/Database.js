import { Sequelize } from "sequelize";

const db = new Sequelize({
  host: 'localhost',   // Alamat host MySQL, bisa juga alamat IP jika servernya berbeda
  dialect: 'mysql',    // Dialek untuk MySQL
  username: 'root',    // Username MySQL
  password: '',        // Password MySQL, pastikan sesuai dengan yang digunakan
  database: 'auth_db', // Nama database yang ingin diakses
  port: 3307,          // Pastikan port yang benar (default MySQL adalah 3306, tapi kamu pakai 3307)
});

export default db;
