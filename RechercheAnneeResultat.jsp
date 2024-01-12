<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Recherche par Année</title>
</head>
<body>
    <h1>Recherche de Films par Année</h1>

    <form action="RechercheAnneeResultat.jsp" method="get">
        <label for="anneeRecherche">Année de recherche :</label>
        <input type="text" name="anneeRecherche" id="anneeRecherche" required>
        <br>

        <input type="submit" value="Rechercher">
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
        if (request.getMethod().equals("GET")) {
            // Récupérer l'année de recherche
            String anneeRecherche = request.getParameter("anneeRecherche");

            // Exécuter la requête de recherche
            String sql = "SELECT idFilm, titre, annee FROM Film WHERE annee = ?";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, anneeRecherche);
            ResultSet rs = pstmt.executeQuery();

            // Afficher les résultats (à adapter selon vos besoins)
            out.println("<h2>Résultats de la recherche pour l'année " + anneeRecherche + " :</h2>");
            out.println("<ul>");

            while (rs.next()) {
                String colonne1 = rs.getString("idFilm");
                String colonne2 = rs.getString("titre");
                String colonne3 = rs.getString("annee");

                out.println("<li>id : " + colonne1 + ", titre : " + colonne2 + ", année : " + colonne3 + "</li>");
            }

            out.println("</ul>");

            // Fermer les ressources
            rs.close();
            pstmt.close();
        }

        // Fermer la connexion
        conn.close();
    %>

</body>
</html>
