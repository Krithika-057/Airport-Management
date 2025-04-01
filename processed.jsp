<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@ page import="java.util.Date" %>

<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    
    <link rel="stylesheet" type="text/css" href="./styles.css" >     
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />
    
</head>
<body>
    <header>
        
        <p style="text-align: center;font-size:40px;" >KMR AVIATION</p> 
        
        
        <ul> 
            <hr>
        
            <li><a href="Home.html" class="menu-item">HOME
            </a></li>
            <li><a href="#" class="menu-item" >SERVICES</a></li>
            <li><a href="#" class="menu-item">CUSTOMER SUPPORT</a></li>
            <li><a href="#" class="menu-item">AIRPORT SERVICES</a></li>
            <li><a href="#" class="menu-item">ABOUT</a></li>
            <li><a href="#" class="menu-item" >CAREERS</a></li>
            <li><a href="#" class="menu-item">NEWS & EVENTS </a></li> 
            <li><button class="menu-item"  aria-label="SEARCH" id="search-button" >SEARCH&#128269;
            </button></li> 
            <li><button class="menu-item" id="user-icon"><i class="fa-regular fa-user"></i>
            </button></li>       
            <hr>       
        
        </ul>       
    </header>
    
    <main id="outside">
        <p class=home-header> The Date is <%= new Date() %> <br>
            
        
        </p>
        <div class="form-container">
        <% 
            String name = request.getParameter("username");
            String email = request.getParameter("email");

        
            response.setHeader("Custom-Header", "Processed");

        
            out.println("<h2>Form Submitted Successfully!</h2>");
            out.println("<p>Name: " + name + "</p>");
            out.println("<p>Email: " + email + "</p>");



            session.setAttribute("username", name);

    
            application.setAttribute("userCount", (Integer) (application.getAttribute("userCount") == null ? 1 : (Integer) application.getAttribute("userCount") + 1));

    
            out.println("<p>Servlet Name: " + config.getServletName() + "</p>");

   
            pageContext.setAttribute("greeting", "Welcome to JSP!", pageContext.PAGE_SCOPE);
            out.println("<p>Message: " + pageContext.getAttribute("greeting") + "</p>");
        %>
        <p style="test-decorations:none"><a href="hello.jsp">Go to Home Page</a></p>
        </div>
    </main>

    <footer>
        COPYRIGHTS &copy; 2025, ALL RIGHTS RESERVED BY KMR AVIATION
    </footer>

</body>
</html>
