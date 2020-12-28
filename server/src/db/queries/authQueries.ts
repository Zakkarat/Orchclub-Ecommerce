import {pool} from "../config";
const login = async (username:string) => {
  const { rows } = await pool.query(
    `SELECT "Id", "Password" FROM "Users" WHERE "Username" = '${username}'`
  );
  return rows[0];
};

const register = async (name:string, hash:string, region:string, city:string, adress:string, phone:number) => {
  await pool
    .query(
      `INSERT INTO "Users"("Username", "Password", "Type", "Region", "City", "Adress", "Phone") VALUES('${name}', '${hash}', 'User', '${region}', '${city}', '${adress}', '${phone}')`
    )
    .catch((err:Error) => {
      throw err;
    });
};

module.exports = {
  login,
  register,
};
