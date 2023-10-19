const express = require('express');
const recursosH = express.Router();
const db = require ('../config/database');


recursosH.post("/", async (req, res, next) => {
    const { nombre, apellido, telefono, correo, direccion } = req.body;
  
    if (nombre && apellido && telefono && correo && direccion) {
      let query = "INSERT INTO empleados (nombre, apellido, telefono, correo, direccion) " +
        `VALUES ('${nombre}', '${apellido}', '${telefono}', '${correo}', '${direccion}');`;
  
      const rows = await db.query(query);
  
      if (rows.affectedRows == 1) {
        return res.status(201).json({ code: 201, message: "Empleado insertado correctamente" });
      }
      return res.status(500).json({ code: 500, message: "Ocurrió un error al insertar el empleado" });
    }
  
    return res.status(400).json({ code: 400, message: "Campos incompletos" });
  });
  
  recursosH.delete("/:id([0-9]{1,3})", async (req, res, next) => {
    const query = `DELETE FROM empleados WHERE id=${req.params.id}`;
    const rows = await db.query(query);
  
    if (rows.affectedRows == 1) {
      return res.status(200).json({ code: 200, message: "Empleado borrado correctamente" });
    }
    return res.status(404).json({ code: 404, message: "Empleado no encontrado" });
  });
  
  recursosH.put("/:id([0-9]{1,3})", async (req, res, next) => {
    const { nombre, apellido, telefono, correo, direccion } = req.body;
  
    if (nombre && apellido && telefono && correo && direccion) {
      let query = `UPDATE empleados SET nombre='${nombre}', apellido='${apellido}', telefono='${telefono}', correo='${correo}', direccion='${direccion}' WHERE id=${req.params.id};`;
      const rows = await db.query(query);
  
      if (rows.affectedRows == 1) {
        return res.status(200).json({ code: 200, message: "Empleado actualizado correctamente" });
      }
      return res.status(500).json({ code: 500, message: "Ocurrió un error al actualizar el empleado" });
    }
  
    return res.status(400).json({ code: 400, message: "Campos incompletos" });
  });
  
  recursosH.patch("/:id([0-9]{1,3})", async (req, res, next) => {
    if (req.body.nombre) {
      const query = `UPDATE empleados SET nombre='${req.body.nombre}' WHERE id=${req.params.id}`;
      const rows = await db.query(query);
  
      if (rows.affectedRows == 1) {
        return res.status(200).json({ code: 200, message: "Empleado actualizado correctamente" });
      }
      return res.status(500).json({ code: 500, message: "Ocurrió un error al actualizar el empleado" });
    }
  
    return res.status(400).json({ code: 400, message: "Campos incompletos" });
  });
  
  recursosH.get('/', async (req, res, next) => {
    const empleados = await db.query('SELECT * FROM empleados');
    return res.status(201).json({ code: 201, message: empleados });
  });
  
  recursosH.get('/:id([0-9]{1,3})', async (req, res, next) => {
    const id = req.params.id;
    const empleado = await db.query('SELECT * FROM empleados WHERE id=' + id);
  
    if (empleado.length > 0) {
      return res.status(201).json({ code: 201, message: empleado });
    } else {
      return res.status(404).json({ code: 404, message: "Empleado no encontrado" });
    }
  });
  
  recursosH.get('/:nombre([A-Za-z]+)', async (req, res, next) => {
    const nombre = req.params.nombre.toUpperCase();
    const consulta = await db.query('SELECT * FROM empleados WHERE UPPER(nombre) = "' + nombre + '" AND nombre REGEXP "^[A-Za-z]+$"');
  
    if (consulta.length > 0) {
      return res.status(201).json({ code: 201, message: consulta });
    } else {
      return res.status(404).json({ code: 404, message: "Empleado no encontrado" });
    }
  });
  
module.exports = recursosH; 

