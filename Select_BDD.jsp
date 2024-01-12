<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Connexion à MariaDB via JSP</title>
</head>
<body>
    <h1>Exemple de connexion à MariaDB avec JSP</h1>

    <h2>Exercice 1 : Les films entre 2000 et 2015</h2>
    <p>Extraire les films dont l'année est supérieur à l'année 2000 et inférieur à 2015.</p>
    <ul>
        <% 
            String url = "jdbc:mariadb://localhost:3306/films";
            String user = "mysql";
            String password = "mysql";

            // Charger le pilote JDBC (pilote disponible dans WEB-INF/lib)
            Class.forName("org.mariadb.jdbc.Driver");

            // Établir la connexion
            Connection conn = DriverManager.getConnection(url, user, password);
            
            // Exemple de requête SQL avec une plage d'années
            String sql = "SELECT idFilm, titre, annee FROM Film WHERE annee > 2000 AND annee < 2015";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            ResultSet rs = pstmt.executeQuery();

            // Afficher les résultats (à adapter selon vos besoins)
            while (rs.next()) {
                String colonne1 = rs.getString("idFilm");
                String colonne2 = rs.getString("titre");
                String colonne3 = rs.getString("annee");
                // Faites ce que vous voulez avec les données...
                // Exemple d'affichage de 2 colonnes
                out.println("<li>id : " + colonne1 + ", titre : " + colonne2 + ", année : " + colonne3 + "</li>");
            }

            // Fermer les ressources 
            rs.close();
            pstmt.close();
            conn.close();
        %>
    </ul>

    <h2>Exercice 2 : Année de recherche</h2>
    <p>Créer un champ de saisie permettant à l'utilisateur de choisir l'année de sa recherche.</p>
    <form action="recherche.jsp" method="get">
        <label for="anneeRecherche">Année de recherche :</label>
        <input type="text" name="anneeRecherche" id="anneeRecherche" required>
        <input type="submit" value="Rechercher">
    </form>

    <!-- Ajoutez les autres exercices ici -->

</body>
</html>
