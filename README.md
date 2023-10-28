# Sistema de Administración de Empleados

## Descripción
Este proyecto es un sistema de administración de empleados desarrollado para el departamento de recursos humanos de la empresa --Taller de Node.js S.A. de C.V. -- El sistema permite la administración de empleados, incluyendo altas, bajas, consultas y cambios en los datos de los empleados. Además, se enfoca en garantizar la seguridad y el acceso controlado a la información.



## Requerimientos
Para llevar a cabo este proyecto, se han definido los siguientes requerimientos:

1. **Inicio de Sesión**: El sistema cuenta con una funcionalidad de inicio de sesión que permite el acceso solo a los usuarios previamente registrados en la base de datos.

2. **Framework Utilizado**: Se ha implementado utilizando el framework Express.js para construir la aplicación web.

3. **Autenticación por JWT**: La autenticación se realiza mediante JSON Web Tokens (JWT) para garantizar la seguridad y autorización de los usuarios.

4. **Acceso Controlado**: El sistema asegura que solo los usuarios autenticados tengan acceso a la información.

5. **Usuarios Administradores**: Los usuarios registrados directamente en la base de datos se consideran administradores del sistema. Los administradores tienen la capacidad de realizar las siguientes acciones:

   - Agregar nuevos empleados a la base de datos.
   - Modificar los datos de los empleados existentes.
   - Eliminar empleados de la base de datos.
   - Buscar empleados por su nombre.

## Uso ##
A continuación, se describen las instrucciones para ejecutar y utilizar el sistema:

1. Clona el repositorio en tu máquina local.

2. Instala las dependencias del proyecto:
    - npm install
    - npm install express
    - npm install morgan
    - npm install nodemon
    - npm install jsonwebtoken

3. Configura la base de datos y establece las credenciales de acceso en un archivo de configuración.

4. Inicia la aplicación:
    - npm start

5. Accede a la aplicación a través de tu navegador web.

6. Inicia sesión con las credenciales de administrador, las credenciales (token) se generan al ingresar el correo y contraseña de los administradores de la Base de datos "recursos-humanos.sql".

7. Utiliza las funcionalidades del sistema para administrar a los empleados de la empresa.

## Tecnologías Utilizadas
    - Node.js
    - Express.js
    - JSON Web Tokens (JWT)
    - Base de Datos (recursos-humanos.sql)






