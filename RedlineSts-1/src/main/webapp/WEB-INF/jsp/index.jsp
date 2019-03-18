<!DOCTYPE html>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Redline & Berdychev Book Shop</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="/">All Books</a></li>
      <li><a href="newBook">New Book Record</a></li>
      <li><a href="#">Page 2</a></li>
      <li><a href="#">Page 3</a></li>
    </ul>
  </div>
</nav>
  
<div class="container">
<c:choose>
<c:when test = "${mode == 'BOOK_VIEW'}">
 <h2>Striped Rows</h2>
  <p>The .table-striped class adds zebra-stripes to a table:</p>            
  <table class="table table-striped">
    <thead>
      <tr>
        <th>ID</th>
        <th>Book Name</th>
        <th>Author</th>
        <th>Purchase Date</th>
        <th>Edit</th>
        <th>Delete</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach var="book" items="${books}">
      <tr>
        <td>${book.id}</td>
        <td>${book.bookName}</td>
        <td>${book.author}</td>
        <td>${book.purchaseDate}</td>
        <td><a href="updateBook?id=${book.id}"><div class="glyphicon glyphicon-pencil"></div></a></td>
        <td><a href="delete?id=${book.id}"><div class="glyphicon glyphicon-trash"></div></a></td>
      </tr>
    </c:forEach>
    </tbody>
  </table>
  </c:when>
  <c:when test="${mode == 'BOOK_EDIT'|| mode == 'BOOK_NEW'}">
   <form action="save" method = "POST">
         <input type="hidden" class="form-control" value = "${book.id}" name="id" id="id">
    <div class="form-group">
      <label for="bookName">Book Name:</label>
      <input type="text" class="form-control" value = "${book.bookName}" name="bookName" id="bookName">
    </div>
    <div class="form-group">
      <label for="author">Author:</label>
      <input type="text" class="form-control" value= "${book.author}" id="author" name="author">
    </div>
    <div class="form-group">
      <label for="purchaseDate">Purchase Date:</label>
      <input type="date" class="form-control" value="${book.purchaseDate}" id="purchaseDate" name="purchaseDate">
    </div>
    <button type="submit" class="btn btn-default">Submit</button>
  </form>
  </c:when>
  </c:choose>
  <h3>Inverted Navbar</h3>
  <p>An inverted navbar is black instead of gray.</p>
</div>

</body>
</html>
Redline Zapustit Javu Gyyyy 2019
                                  


