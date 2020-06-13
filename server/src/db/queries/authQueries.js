const { pool } = require("../config");

const login = async (username) => {
    const { rows } = await pool.query(
        `SELECT "Id", "Password" FROM "Users" WHERE "Username" = '${username}'`
      );
    return rows[0]
}

const register = async (name, hash, region, city, adress, phone) => {
    await pool
    .query(
      `INSERT INTO "Users"("Username", "Password", "Type", "Region", "City", "Adress", "Phone") VALUES('${name}', '${hash}', 'User', '${region}', '${city}', '${adress}', '${phone}')`
    )
    .catch((err) => console.log(err));
}

module.exports = {
    login,
    register
}