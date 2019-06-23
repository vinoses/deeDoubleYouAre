<%--
  Created by IntelliJ IDEA.
  User: vinoses
  Date: 6/22/2019
  Time: 10:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
  <link type="text/css" rel="stylesheet" href="../css/tabling.css">
  <script type='text/javascript' src='/geeDoubleYouAre_war_exploded/dwr/engine.js'></script>
  <script type='text/javascript' src='/geeDoubleYouAre_war_exploded/dwr/interface/People.js'></script>
  <script type='text/javascript' src='/geeDoubleYouAre_war_exploded/dwr/util.js'></script>
  <script type="text/javascript" src="../scripts/tabling.js"></script>
</head>
<body>
<h3>All People</h3>
<table border="1" class="rowed grey">
  <thead>
  <tr>
    <th>Person</th>
    <th>Age</th>
    <th>Superhero?</th>
    <th>Actions</th>
  </tr>
  </thead>
  <tbody id="peoplebody">
  <tr id="pattern" style="display:table-row;">
    <td>
      <span id="tableName">Name</span><br/>
      <small>  <span id="tableAddress">Address</span></small>
    </td>
    <td><span id="tableAge">Age</span></td>
    <td><span id="tableSuperhero">Superhero</span></td>
    <td>
      <input id="edit" type="button" value="Edit" onclick="editClicked(this.id)"/>
      <input id="delete" type="button" value="Delete" onclick="deleteClicked(this.id)"/>
      <input id="fill" type="button" value="Fill" onclick="fillTable()"/>
    </td>
  </tr>
  </tbody>
</table>
<h3>Edit Person</h3>
<table class="plain">
  <tr>
    <td>Name:</td>
    <td><input id="name" type="text" size="30"/></td>
  </tr>
  <tr>
    <td>Address:</td>
    <td><input id="address" type="text" size="40"/></td>
  </tr>
  <tr>
    <td>Age:</td>
    <td><input id="age" type="text" size="20"/></td>
  </tr>
  <tr>
    <td>Superhero?:</td>
    <td><input id="superhero" type="checkbox" size="20"/></td>
  </tr>
  <tr>
    <td colspan="2" align="right">
      <small>(ID=<span id="id">-1</span>)</small>
      <input type="button" value="Save" onclick="writePerson()"/>
      <input type="button" value="Clear" onclick="clearPerson()"/>
    </td>
  </tr>
</table>
</body>
</html>
