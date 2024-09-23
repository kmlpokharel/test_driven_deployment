<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Calculator</title>
    <style>
        /* Reset basic styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .calculator-container {
            background-color: #fff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 400px;
            width: 100%;
        }

        h1 {
            color: #2c3e50;
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
            display: block;
            margin-bottom: 8px;
            color: #34495e;
            text-align: left;
        }

        input[type="number"] {
            padding: 10px;
            margin-bottom: 20px;
            width: 100%;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 1em;
            color: #2c3e50;
        }

        input[type="submit"] {
            background-color: #3498db;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1.2em;
            transition: background-color 0.3s ease;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: #2980b9;
        }

        .note {
            margin-top: 20px;
            font-size: 0.9em;
            color: #95a5a6;
        }
    </style>
</head>
<body>

<div class="calculator-container">
    <h1>Simple Calculator V3</h1>
      <!-- Display error message if it exists -->
        <c:if test="${not empty errorMessage}">
            <p style="color: red;">${errorMessage}</p>
        </c:if>

    <form action="calculate" method="get">
        <label for="num1">Number 1:</label>
        <input type="number" id="num1" name="num1" required>

        <label for="num2">Number 2:</label>
        <input type="number" id="num2" name="num2" required>

        <input type="submit" value="Calculate Sum">
    </form>

    <p class="note">Enter two numbers to calculate their sum.</p>
</div>

</body>
</html>
