<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exam Question</title>
    <style>
        body {
            margin: 0;
            font-family: 'Arial', sans-serif;
            background: url('images/quesback.jpg') no-repeat center center fixed;
            background-size: cover;
            display: flex;
            justify-content: flex-start;
            align-items: flex-start;
            height: 100vh;
            color: #000;
            flex-direction: column;
            padding-left: 50px;
            overflow: hidden;
        }

        .question-number {
            font-size: 26px;
            margin: 10px 0;
            font-weight: bold;
            text-shadow: 1px 1px 3px rgba(255, 255, 255, 0.7);
        }

        .question {
            font-size: 24px;
            font-weight: bold;
            margin: 10px 0;
            text-shadow: 1px 1px 3px rgba(255, 255, 255, 0.7);
        }

        .options {
            display: flex;
            flex-direction: column;
            gap: 15px;
            margin: 20px 0;
        }

        .option {
            font-size: 20px;
            cursor: pointer;
            color: #000;
        }

        .option input {
            margin-right: 10px;
            transform: scale(1.2);
        }

        .submit-btn {
            background-color: #1E90FF;
            border: none;
            color: white;
            padding: 12px 25px;
            text-align: center;
            font-size: 18px;
            font-weight: bold;
            border-radius: 20px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        }

        .submit-btn:hover {
            background-color: #1C86EE;
        }
    </style>
</head>
<body>

    <div class="question-number">
        Question 1
    </div>
    
    <div class="question">
      <p> <%out.println(session.getAttribute("qno")); %>)<%out.println(session.getAttribute("question")); %></p>
    </div>
    
    <div class="options">
        <form action="Validation_Servlet">
        <label class="option">
            <input type="radio" name="answer" value="A">
           <%out.println(session.getAttribute("a")); %><br>
        </label>
        
        <label class="option">
            <input type="radio" name="answer" value="B">
           <%out.println(session.getAttribute("b")); %><br>
        </label>
        
        <label class="option">
            <input type="radio" name="answer" value="C">
           <%out.println(session.getAttribute("c")); %><br>
        </label>
        
        <label class="option">
            <input type="radio" name="answer" value="D">
           <%out.println(session.getAttribute("d")); %><br>
<br><br>
        </label>
        <input  class="submit-btn" type="submit" value="Next">
        </form>
    </div>
    
  

</body>
</html>
