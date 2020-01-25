<!doctype html>
<html lang="en-US">
<head>
  <meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Currency Converter</title>
  <link rel="stylesheet" href="styles.css"/>
</head>

<body>
  <h1>Currency Converter</h1>
  <div>
  <form action=convert.jsp method=GET>
    <table class="exchange-table">
      <tr>
        <td></td>
        <td>
          <input type="text" name="val" style="margin:auto" />
        </td>
        <td>
        </td>
      </tr>
      <tr>
        <td>
        <div class="from" />
          <p>From:</p>
	  <select name="input" id="currencies">
            <option value="USD">USD - United States Dollar</option>
            <option value="EUR">EUR - Euro</option>
            <option value="GBP">GBP - British Pound Sterling</option>
            <option value="MXN">MXN - Mexican Peso</option>
            <option value="JPY">JPY - Japanese Yen</option>
            <option value="INR">INR - Indian Rupee</option>
            <option value="CNY">CNY - Chinese Yuan</option>
            <option value="CAD">CAD - Canadian Dollar</option>
            <option value="RUB">RUB - Russian Ruble</option>		
            <option value="KRW">KRW - South Korean Won</option>
	    <option value="BTC">BTC - Bitcoin</option>
	  </select>
        </div>
        </td>
        <td></td>
        <td>
        <div class="To" />
          <p>To:</p>
	  <select name="output" id="currencies">
            <option value="USD">USD - United States Dollar</option>
            <option value="EUR">EUR - Euro</option>
            <option value="GBP">GBP - British Pound Sterling</option>
            <option value="MXN">MXN - Mexican Peso</option>
            <option value="JPY">JPY - Japanese Yen</option>
            <option value="INR">INR - Indian Rupee</option>
            <option value="CNY">CNY - Chinese Yuan</option>
            <option value="CAD">CAD - Canadian Dollar</option>
            <option value="RUB">RUB - Russian Ruble</option>		
            <option value="KRW">KRW - South Korean Won</option>
	    <option value="BTC">BTC - Bitcoin</option>
	  </select>
        </div>
        </td>
      </tr>
    </table>
    <div style="text-align:center;margin:50pt;padding:10pt;">
      <input type="submit" value="convert" class="button">
    </div>
  </form>
  </div>
</body>
