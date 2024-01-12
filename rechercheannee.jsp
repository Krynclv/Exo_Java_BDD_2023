<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Résultats de Recherche par Année</title>
</head>
<body>
    <h1>Résultats de Recherche par Année</h1>

    <% 
        // Code de connexion à la base de données
        String url = "jdbc:mariadb://localhost:3306/films";
        String user = "mysql";
        String password = "mysql";

        // Charger le pilote JDBC
        Class.forName("org.mariadb.jdbc.Driver");

        // Établir la connexion
        Connection conn = DriverManager.getConnection(url, user, password);

        // Récupérer l'année de recherche depuis les paramètres de requête
        String anneeRecherche = request.getParameter("anneeRecherche");

        // Exécuter la requête de recherche par année
        String sql = "SELECT idFilm, titre, annee FROM Film WHERE annee = ?";
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, anneeRecherche);

        ResultSet rs = pstmt.executeQuery();

        // Afficher les résultats (à adapter selon vos besoins)
        while (rs.next()) {
            String colonne1 = rs.getString("idFilm");
            String colonne2 = rs.getString("titre");
            String colonne3 = rs.getString("annee");
            // Faites ce que vous voulez avec les données...
            // Exemple d'affichage de 3 colonnes
            out.println("<p>id : " + colonne1 + ", titre : " + colonne2 + ", année : " + colonne3 + "</p>");
        }

        // Fermer les ressources
        rs.close();
        pstmt.close();
        conn.close();
    %>

</body>
</html>
