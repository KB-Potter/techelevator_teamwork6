<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>
<head>
    <meta name="viewport" content="width=device-width" />
    <title>Recipe Table View</title>
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
    
    <h1>Recipes</h1>
<table>
<tr>
<th>Name</th>
<th>Type</th>
<th>Cook Time</th>
<th>Ingredients</th>
<th>Rating</th>
</tr>
<c:forEach var="item" items="${requestScope.recipes}">
<tr>
<td><c:out value="${item.name }" /></td>
<td><c:out value="${item.recipeType }" /></td>
<td><c:out value="${item.cookTimeInMinutes }" /></td>
<td><c:out value="${item.ingredients.size() }"/></td>
<td><c:out value="${item.averageRating }" /></td>
</tr>
<br />
</c:forEach>
</table>
    
    

       <!-- Use the request attribute "recipes" (List<Recipe>) -->

    </section>
</body>
</html>