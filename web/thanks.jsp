<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>    
</head>

<body>
    <h1>Thanks for joining our email list</h1>

    <p>Here is the information that you entered:</p>

    <jsp:useBean id="user" scope="session" class="murach.business.User"/>
    <label>Email:</label>
    <span><jsp:getProperty name="user" property="email"/></span><br>
    <label>First Name:</label>
    <span><jsp:getProperty name="user" property="firstName"/></span><br>
    <label>Last Name:</label>
    <span><jsp:getProperty name="user" property="lastName"/></span><br>

    <p>To enter another email address, click on the Back 
    button in your browser or the Return button shown 
    below.</p>

    <form action="" method="get">
        <input type="hidden" name="action" value="join">
        <input type="submit" value="Return">
    </form>
        
    <p>${requestScope.currentDate}</p>
    <p>${sessionScope.users[0].firstName}&nbsp;${sessionScope.users[0].lastName}
        &nbsp;${sessionScope.users[0].email}</p>
    <p>${sessionScope.users[1].firstName}&nbsp;${sessionScope.users[1].lastName}
        &nbsp;${sessionScope.users[1].email}</p>
    <p>${initParam.custServEmail}</p>
</body>
</html>