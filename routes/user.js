const express = require('express');
const jwt = require('jsonwebtoken');
const recursosH = express.Router();
const db = require ('../config/database');

recursosH.post("/signin", async (req, res, next) => {
    const { id, nombre, correo, contraseña } = req.body;

    if (id && nombre && correo && contraseña) {
        let query = "INSERT INTO administradores(nombre, correo, contraseña)";
        query += ` VALUES ('${id}','${nombre}','${correo}','${contraseña}')`;
        const rows = await db.query(query);

        if (rows.affectedRows == 1) {
            return res.status(201).json({ code: 201, message: "usuario registrado correctamente" });
        }
        return res.status(500).json({ code: 500, message: "ocurrió un error" });
    }
    return res.status(500).json({ code: 500, message: "campos incompletos" });
});

recursosH.post("/login", async (req, res, next) => {
    const { correo, contraseña } = req.body;
    const query = `SELECT * FROM administradores WHERE correo = '${correo}' AND contraseña = '${contraseña}';`;
    const rows = await db.query(query);

    if (correo && contraseña) {
        if (rows.length == 1) {
            const token = jwt.sign({
                correo: rows[0].correo,
                contraseña: rows[0].contraseña,
            }, "debugkey");
            return res.status(200).json({ code: 200, message: token });
        } else {
            return res.status(401).json({ code: 401, message: "Usuario y/o contraseña incorrectos" });
        };
    }
    return res.status(500).json({ code: 500, message: "campos incompletos" });
});

recursosH.get("/", async (req, res, next) => {
    const query = "SELECT * FROM empleados";
    const rows = await db.query(query);
    return res.status(200).json({ code: 200, message: rows });
});

module.exports = recursosH;