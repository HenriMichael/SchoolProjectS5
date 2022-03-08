<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../asset/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../asset/dist/css/style.css">
    <title>Login directeur</title>
</head>
<body>
    
    <div class="container w-75">
        <div id="login" class="row ">
            <div class="col col-md-7 description">
                <h4>Bienvenu à l'école lore, ksdjs</h4>
                <p>Vous devrez être un membre de l'école (étudiant ou administration) pour pouvoir se connecter et acceder aux ressources de ce plateforme</p>
                <p>Veuillez informer les personnels en cas d'éventuel problème </p>
                <img src="../asset/img/education.png" class="d-block mx-auto mt-5" alt="Education" width="400" height="210">
                <div id="switch">
                    <h6>Se connecter en tant que :</h6>
                    <a href="logEtu.jsp">Etudiant</a>
                    <a href="logProf.jsp">Professeur</a>
                    <a href="logSec.jsp">Secretaire</a>
                    <a href="logDir.jsp">Directeur</a>
                </div>
            </div>
            <div class="col col-md-5 justify-content-center" >
                <div class="login-form">
                    <h4>Log in Directeur</h4>
                    <form action="" method="post">
                        <input type="text" name="email" id="" placeholder="E-mail">
                        <input type="password" name="pswd" id="" placeholder="Mot de passe">
                        <a href="">Mot de passe oublié ?</a>
                        <input type="submit" value="Connexion">
                    </form>
                </div>
            </div>
        </div>
    </div>
    
</body>
</html>
