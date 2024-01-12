<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Modifier le Titre d'un Film</title>
</head>
<body>
    <h1>Modifier le Titre d'un Film</h1>

    <form action="modiftitre.jsp" method="post">
        <label for="filmId">ID du Film :</label>
        <input type="text" name="filmId" id="filmId" required>
        <br>

        <label for="newTitle">Nouveau Titre :</label>
        <input type="text" name="newTitle" id="newTitle" required>
        <br>

        <input type="submit" value="Modifier le Titre">
    </form>

    <% 
        // Code de connexion à la base de données
        String url = "jdbc:mariadb://localhost:3306/films";
        String user = "mysql";
        String password = "mysql";

        // Charger le pilote JDBC
        Class.forName("org.mariadb.jdbc.Driver");

        // Établir la connexion
        Connection conn = DriverManager.getConnection(url, user, password);

        // Vérifier si le formulaire a été soumis
        if (request.getMethod().equals("POST")) {
            // Récupérer les valeurs du formulaire
            int filmId = Integer.parseInt(request.getParameter("filmId"));
            String newTitle = request.getParameter("newTitle");

            // Exécuter la mise à jour du titre
            String updateSql = "UPDATE Film SET titre = ? WHERE idFilm = ?";
            PreparedStatement updateStatement = conn.prepareStatement(updateSql);
            updateStatement.setString(1, newTitle);
            updateStatement.setInt(2, filmId);

            int rowsAffected = updateStatement.executeUpdate();

            // Vérifier si la mise à jour a réussi
            if (rowsAffected > 0) {
                out.println("<p>Le titre du film a été modifié avec succès.</p>");
            } else {
                out.println("<p>Échec de la modification du titre du film. Veuillez vérifier l'ID du film.</p>");
            }

            // Fermer les ressources
            updateStatement.close();
        }

        // Fermer la connexion
        conn.close();
    %>

</body>
</html>
