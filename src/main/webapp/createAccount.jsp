<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crear Cuenta</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="form-container">
        <h1 class="title">Crear Cuenta</h1>
        <p class="subtitle">Unete a nuestra comunidad</p>

        <form class="form" action="createUser" method="post">
            <label for="first_name" class="label">Nombre:</label>
            <input type="text" id="first_name" name="first_name" class="input" required>

            <label for="last_name" class="label">Apellido:</label>
            <input type="text" id="last_name" name="last_name" class="input" required>

            <label for="email" class="label">Correo electronico:</label>
            <input type="email" id="email" name="email" class="input" required>

            <label for="password" class="label">Contrasena:</label>
            <input type="password" id="password" name="password" class="input" required>

            <label for="description" class="label">Descripcion:</label>
            <textarea id="description" name="description" class="input textarea" required></textarea>

            <label for="seeking" class="label">Tipo de Relacion:</label>
            <select id="seeking" name="seeking" class="input select">
                <option value="friendship">Amistad</option>
                <option value="relationship">Relación</option>
            </select>

            <label for="gender" class="label">Genero:</label>
            <select id="gender" name="gender" class="input select">
                <option value="male">Masculino</option>
                <option value="female">Femenino</option>
            </select>

            <button type="submit" class="primary-button">Crear Cuenta</button>
        </form>

        </p>
    </div>
</body>
</html>
