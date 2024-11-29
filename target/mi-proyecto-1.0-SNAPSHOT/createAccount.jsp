<!DOCTYPE html>
<html>
<head>
    <title>Crear Cuenta</title>
  <link rel="stylesheet" type="text/css" href="/styles.css">


</head>
<body>
    <div class="login">
        <div class="form-container">
            <img src="images/logo.png" alt="Logo" class="logo" /> <!-- Aseg�rate de tener esta imagen -->

            <h1 class="title">Crear Cuenta</h1>
            <p class="subtitle">�nete a nuestra comunidad</p>

            <form class="form" action="createUser" method="post">
                <label for="first_name" class="label">Nombre:</label>
                <input type="text" id="first_name" name="first_name" class="input" required>

                <label for="last_name" class="label">Apellido:</label>
                <input type="text" id="last_name" name="last_name" class="input" required>

                <label for="email" class="label">Correo Electr�nico:</label>
                <input type="email" id="email" name="email" class="input" required>

                <label for="password" class="label">Contrase�a:</label>
                <input type="password" id="password" name="password" class="input" required>

                <label for="description" class="label">Descripci�n:</label>
                <textarea id="description" name="description" class="input" required></textarea>

                <label for="seeking" class="label">Tipo de Relaci�n:</label>
                <select id="seeking" name="seeking" class="input">
                    <option value="friendship">Amistad</option>
                    <option value="relationship">Relaci�n</option>
                </select>

                <label for="gender" class="label">G�nero:</label>
                <select id="gender" name="gender" class="input">
                    <option value="male">Masculino</option>
                    <option value="female">Femenino</option>
                </select>

                <button type="submit" class="primary-button login-button">Crear Cuenta</button>
            </form>

            <p class="footer">
                �Ya tienes una cuenta? <a href="login.jsp">Inicia sesi�n</a>
            </p>
        </div>
    </div>
</body>
</html>
