<jsp:useBean id="convert" class="convert.CurrencyConverter" scope="session"/>
<jsp:setProperty name="convert" property="*"/>
<html>
<head>
  <meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Conversion Results</title>
  <link rel="stylesheet" href="styles.css"/>
  <script>
    function goBack() {
	    window.history.back()
    }
  </script>
</head>

<body>
<div id="results">
  <%= convert.getVal() %> <%= convert.getInput() %> = <%= convert.getConvertedVal() %> <%= convert.getOutput() %><BR>
  <button onclick="goBack()">Go back</button><BR>
</div>
</body>
</html>
