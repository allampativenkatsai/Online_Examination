<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home - JNTUA College of Engineering</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: url('images/backhome6.jpg') no-repeat center center fixed;
            background-size: cover;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px;
            color: #fff;
        }
        .header {
            display: flex;
            align-items: center;
            margin-bottom: 30px;
            z-index: 2;
            background-color: rgba(255, 255, 255, 0.2);
            padding: 10px 20px;
            border-radius: 10px;
        }
        .header img {
            height: 80px;
            margin-right: 20px;
        }
        .college-name {
            font-size: 32px;
            color: #FFD700;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7);
        }
        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            z-index: 2;
        }
        .subject {
            background-color: rgba(255, 255, 255, 0.2);
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            text-align: center;
            width: 250px;
            padding: 15px;
            transition: transform 0.3s;
        }
        .subject:hover {
            transform: scale(1.05);
        }
        .subject img {
            height: 60px;
            margin-bottom: 10px;
        }
        .subject h3 {
            font-size: 20px;
            color: #FFD700;
            margin: 10px 0;
            text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.7);
        }
        .subject p {
            font-size: 14px;
            color: #f0f0f0;
            margin-bottom: 15px;
        }
        .subject button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .subject button:hover {
            background-color: #388E3C;
        }
    </style>
</head>
<body>
    <div class="header">
        <img src="images/collegelogo.png" alt="JNTUA Logo">
        <div class="college-name">JNTUA College of Engineering, Kalikiri</div>
    </div>
    
    <div class="container">
        <div class="subject">
            <img src="images/conlogo.jpg" alt="Subject 1 Logo">
            <h3><%= session.getAttribute("sub1") != null ? session.getAttribute("sub1") : "Subject 1" %></h3>
            <p>Algebra: Uses symbolic representation of numbers to structure equations.</p>
            <button onclick="location.href='Ques_Servlet?subject=<%= session.getAttribute("sub1") %>'">CLICK HERE</button>
        </div>
        <div class="subject">
            <img src="images/conlogo.jpg" alt="Subject 2 Logo">
            <h3><%= session.getAttribute("sub2") != null ? session.getAttribute("sub2") : "Subject 2" %></h3>
            <p>The growing popularity of cloud computing, streaming video, and social networking has massively increased internet traffic.</p>
            <button onclick="location.href='Ques_Servlet?subject=<%= session.getAttribute("sub2") %>'">CLICK HERE</button>
        </div>
        <div class="subject">
            <img src="images/conlogo.jpg" alt="Subject 3 Logo">
            <h3><%= session.getAttribute("sub3") != null ? session.getAttribute("sub3") : "Subject 3" %></h3>
            <p>We help people learn English and prove their skills to the world.</p>
            <button onclick="location.href='Ques_Servlet?subject=<%= session.getAttribute("sub3") %>'">CLICK HERE</button>
        </div>
        <div class="subject">
            <img src="images/conlogo.jpg" alt="Subject 4 Logo">
            <h3><%= session.getAttribute("sub4") != null ? session.getAttribute("sub4") : "Subject 4" %></h3>
            <p>—used to form the third person singular present of most verbs that end.</p>
            <button onclick="location.href='Ques_Servlet?subject=<%= session.getAttribute("sub4") %>'">CLICK HERE</button>
        </div>
        <div class="subject">
            <img src="images/conlogo.jpg" alt="Subject 5 Logo">
            <h3><%= session.getAttribute("sub5") != null ? session.getAttribute("sub5") : "Subject 5" %></h3>
            <p>Brief description of Subject 5.</p>
            <button onclick="location.href='Ques_Servlet?subject=<%= session.getAttribute("sub5") %>'">CLICK HERE</button>
        </div>
        <div class="subject">
            <img src="images/conlogo.jpg" alt="Subject 6 Logo">
            <h3><%= session.getAttribute("sub6") != null ? session.getAttribute("sub6") : "Subject 6" %></h3>
            <p>Brief description of Subject 6.</p>
            <button onclick="location.href='Ques_Servlet?subject=<%= session.getAttribute("sub6") %>'">CLICK HERE</button>
        </div>
    </div>
</body>
</html>
