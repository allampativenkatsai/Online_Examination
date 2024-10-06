<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exam Results</title>
    <style>
        body {
            margin: 0;
            font-family: 'Arial', sans-serif;
            background: url('images/endback.png') no-repeat center center fixed;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #fff;
            flex-direction: column;
            text-align: center;
            padding: 20px;
        }

        h1 {
            font-size: 36px;
            margin-bottom: 20px;
            color: #fff; 
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.7);
        }

        .result {
            background-color: #FFB6C1;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.5);
            max-width: 350px;
            width: 100%;
            display: flex;
            flex-direction: column;
            align-items: flex-start;
        }

        .input-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            width: 100%;
            margin-bottom: 15px;
        }

        .input-container label {
            width: 40%;
            text-align: right;
            margin-right: 10px;
            color: #000;
        }

        input[type="text"] {
            width: 60%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: #fff;
            color: #000;
            font-size: 18px;
        }
    </style>
</head>
<body>

    <h1>Exam Marks</h1>
    
    <div class="result">
        <div class="input-container">
            <label><strong>Roll No:</strong></label>
            <input type="text" value="<%=session.getAttribute("rollno") %>" />
        </div>
        <div class="input-container">
            <label><strong>Name:</strong></label>
            <input type="text"  value="<%=session.getAttribute("name") %>" />
        </div>
        <div class="input-container">
            <label><strong>Marks:</strong></label>
            <input type="text"  value="<%=session.getAttribute("marks") %>" /> 
        </div>
    </div>

</body>
</html>
