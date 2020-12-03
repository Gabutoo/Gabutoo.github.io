<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	table, td, th {
  text-align: center; 
}

table {
  table-layout: fixed;  
  width: 80%;
}

td {
  height: 50px;
  vertical-align: middle;
}
img {
  border: 1px solid #ddd;
  border-radius: 4px;
  padding: 5px;
  width: 200px;
  height: 100px;
}
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #800000;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #111;
}

.active {
  background-color: #FFFF00;
  color: black;
}
div.ex1 {
  width: 100%;
  height: 350px;
  overflow: scroll;
}
</style>
	<title>Administrator</title>
</head>
<body>
<h2>Add Products<h2>
<form method="post" action="includes/insert.inc.php">
Product Name: <input type="text" name="pname" id="pname"> <br>
Price: <input type="text" name="pc" id="pc"> <br>
Brand: <input type="text" name="bd" id="bd"> <br>
ImageFilename: <input type="text" name="img" id="img">
<input type="submit" name="submit" value="Add Product">
</form>
</body>
</html>