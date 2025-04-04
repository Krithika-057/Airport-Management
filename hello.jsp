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
        <p class=home-header> The Date is <%= new Date() %>  </p>
        <div class=home-header> 
        <%
            String user = (String) session.getAttribute("username");
            if(user != null) {
                out.println("<h2>Welcome back, " + user + "!</h2>");
            } else {
                out.println("<h2>Welcome, Guest!</h2>");
            }

        %>
        </div>
       
        <div class="Home-page-intro">
            <p class="Home-page-intro-heading">EXPLORE NEW DESTINATIONS</p>
            <div class="Home-page-intro-text"> <p> Exploring new destinations adds a touch of spice to life. Next time you travel, consider travelling with KMR Aviation for a luxurious experience. Remember, you’re writing for the potential customer and not for yourself. They are here with the sole purpose of finding a great tour for themselves. Address that! Find out your target audience. Think out what they are looking for in a tour package and meld your offerings according to their requirements.</p>  
                <a href="signup.html"><input type="button" value="Book Now" id="booknow"></a>

                <input type="button" value="Explore" id="explore">
            </div>
            <img src="https://static.toiimg.com/thumb/msid-103892975,width-300,height-200.cms" class="Home-page-intro-image-container"> 
            <div id="home-overlay">
                <p id="home-overlay-text">Here are some of the destinations you can getaway to!<br>
                    <img src="https://digital.ihg.com/is/image/ihg/vignette-collection-noonu-atoll-9970118335-4x3"  class="home-overlay-destination" >
                    <img src="https://cdn.britannica.com/65/162465-050-9CDA9BC9/Alps-Switzerland.jpg" class="home-overlay-destination">
                    <img src="https://media.cntraveller.com/photos/665ee92a9421aab48dea082c/16:9/w_1280,c_limit/venice-GettyImages-941234062.jpeg" class="home-overlay-destination">
                    <img src="https://assets.simpleviewcms.com/simpleview/image/upload/c_limit,h_1200,q_75,w_1200/v1/clients/lasvegas/RR_LVCVA_Strip_Caesars_Bellagio_Paris_SM_1__704abf3c-7d0a-4d56-ae67-3167dc7784b4.jpg" class="home-overlay-destination">
                    <img src="https://assets.cntraveller.in/photos/6352a8c00831d51e5aa10703/16:9/w_6000,h_3375,c_limit/tokyoGettyImages-1031467664.jpeg" class="home-overlay-destination">
                    <img src="https://i.natgeofe.com/k/109a4e08-5ebc-48a5-99ab-3fbfc1bbd611/Giza_Egypt_KIDS_0123_16x9.jpg" class="home-overlay-destination">

                <input type="button" value="Go back!" onclick="off()"></p>
            </div>
        </div>
        
        <div class="newsletter-signup">
            <p class="Home-page-intro-heading" style="text-align:center">SIGN UP TO OUR NEWSLETTER</p>
            <div class="form-container"> 
                <form action="processed.jsp" method="post">
                    <label for="username" class="newsletter-font">NAME : </label>
                    <input type="text" name="username">
                    <label for="email" class="newsletter-font">EMAIL: </label>
                    <input type="email" name="email"> 
                    <br><br>
                    <p style="text-align:center"><input type="submit" value="Submit"></p>
                </form>
            </div>

        </div>
        

    </main>

    <footer>
        COPYRIGHTS &copy; 2025, ALL RIGHTS RESERVED BY KMR AVIATION
    </footer>

    <script>
        var x = document.getElementById("explore");
        var m = document.getElementsByClassName("home-overlay-destination");

        x.addEventListener("click", function(){
            alert("Do you wish to exit this page?");
            on();
        });
       
    
        document.getElementById("search-button").addEventListener("mousedown", function(){
            if(document.getElementById("search-input")) return;
            const searchBar = document.createElement("input");
            searchBar.type = "text";
            searchBar.style.width = "70px";
            searchBar.id = "search-input";
            searchBar.placeholder = "Search....";
            searchBar.title = "Enter text here";
            this.parentElement.appendChild(searchBar);

            searchBar.addEventListener("keydown",function searchBarInput(){
                const searchBar = document.getElementById("search-input");
            
                searchBar.title = searchBar.value; //tooltip
            })
            

            document.getElementById("outside").addEventListener("mouseup", function removeSearchBar() {
                const searchBar = document.getElementById("search-input");
                if (searchBar) searchBar.remove();       
        
                document.getElementById("outside").removeEventListener("mouseup", removeSearchBar);
            });

        });
        
                  
        function on() {
            document.getElementById("home-overlay").style.display = "block";
        }

        function off() {
            document.getElementById("home-overlay").style.display = "none";
        }
        //img hover
        var images = document.getElementsByClassName("home-overlay-destination");
        for (var i = 0; i < images.length; i++) {
            images[i].addEventListener("mouseover", function() {
                this.style.border = "2px solid white";
            });

            images[i].addEventListener("mouseout", function() {
                this.style.border = "";
            });
        }

        document.getElementById("user-icon").addEventListener("mouseenter", function(){
            const  icon = document.getElementById("user-icon");
            icon.style.backgroundColor = "rgb(196, 164, 132)";
            icon.style.borderRadius = "10px";

        });

        

        document.getElementById("user-icon").addEventListener("mouseleave", function(){
            const  icon = document.getElementById("user-icon");
            icon.style.backgroundColor = "floralwhite";
            
        });


    </script>
</body>
</html>
