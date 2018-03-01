<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>
<head>
    <meta name="viewport" content="width=device-width" />
    <title>Recipe List View</title>
    <link rel="stylesheet" href="css/site.css" />
</head>
<body>
    <header>
        <h1>MVC Exercises - Views Part 2: Models</h1>        
    </header>
    <nav>
        <ul>
            <li><a href="recipeTiles">Tile Layout</a></li>
            <li><a href="recipeTable">Table Layout</a></li>
            
        </ul>
        
    </nav>
    <section id="main-content">
    <style>
    div {
display: flex;

}
</style>
       <!-- Use the request attribute "recipes" (List<Recipe>) -->
       <div> <img src="img/recipe0.jpg"/>
        <img src="img/recipe1.jpg" />
        <img src="img/recipe2.jpg" /></div>
        
       
     <c:forEach var="recipe" items="${recipes}">
            <a href="recipeTiles"><c:out value="${recipe.name}"/> </a>
            <c:out value="${recipe.averageRating}"/>
            <c:out value="${recipe.recipeId}"/>      
          <c:forEach var="ing" items="${ingredients}">     
       <c:out value="${ing.ingredients}"/> 
       </c:forEach>
        
</c:forEach>

    </section>
</body>
</html>