<%--
  Created by IntelliJ IDEA.
  User: vinoses
  Date: 6/22/2019
  Time: 3:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <script
        src="https://code.jquery.com/jquery-3.4.1.js"
        integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
        crossorigin="anonymous">
    </script>
    <script type='text/javascript' src='/geeDoubleYouAre_war_exploded/dwr/engine.js'></script>
    <script type='text/javascript' src='/geeDoubleYouAre_war_exploded/dwr/util.js'></script>
    <script type='text/javascript' src='/geeDoubleYouAre_war_exploded/resources/scripts/dwrutil.js'></script>
    <script type="text/javascript" src="/geeDoubleYouAre_war_exploded/resources/scripts/sayHellos.js"></script>
    <script type="text/javascript" src="/geeDoubleYouAre_war_exploded/dwr/interface/app.js"></script>
    <script type="text/javascript" src="/geeDoubleYouAre_war_exploded/dwr/interface/JavaDate.js"></script>
    <link rel="stylesheet" type="text/css" href="/geeDoubleYouAre_war_exploded/resources/css/generic.css" />
  </head>
  <body>
  <!-- DWR Create - Get Date with DWR created js - JavaDate - from java.Date -->
  <p class="p2"></p>
  <br>
  <!-- Send data and get response through DWR created js - app from vinoses.App -->
  <div>Enter Your Name
    <div>* Reply from Java DWR created JS
      <div><br>
        <form id="f1">
          First name:<br>
          <input type="text" id="n1" name="firstname" value="vin">
          <br>Last name:<br>
          <input type="text" id="n2" name="lastname" value="oses">
          <input type="submit" value="Submit">
        </form>
      </div>
    </div>
  </div>
  <!-- DWR Create - load response from vinoses.App.sayHello -->
  <p class="p1"></p>

  <br>
  <!-- DWR Create - DWR HTML inject from vinoses.App.getInclude -->
  <p id="forwardMemo"> DWR Java forwarded partial HTML</p>
  <div>
    <p>
      <input value="Include Page" type="button" id="javaforward"/><br/>
      Included Page:
    </p>
    <!--HTML Injected into #forward -->
    <div id="forward"></div>
  </div>

  <!-- DWR Create & Convert - DWR Tabling -->
  <a href="resources/jsp/tabling.jsp">DWR Tabling</a>
  </body>
</html>
