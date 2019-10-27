<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
        <link href="${contextPath}/resources/css/welcome.css" rel="stylesheet">
    </head>
    <body>

        <div class="w_main">
            <div class="w_mainContent">
                <a  href="${contextPath}/login">LOGIN</a>

                <div class="w_split"></div>

                <div class="dotc">
                    <span class="dot"></span> 
                    <span class="dot"></span> 
                    <span class="dot"></span> 
                </div>

            </div>

            <div class="slideshow-container">
                <div class="mySlides fade">

                    <img src="${contextPath}/resources/img/1.jpg">

                </div>

                <div class="mySlides fade">

                    <img src="${contextPath}/resources/img/2.jpg">


                </div>

                <div class="mySlides fade">

                    <img src="${contextPath}/resources/img/3.jpg">
                </div>


            </div>


        </div>



    </form:form>

    <script>
        var slideIndex = 0;
        showSlides();

        function showSlides() {
            var i;
            var slides = document.getElementsByClassName("mySlides");
            var dots = document.getElementsByClassName("dot");
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            slideIndex++;
            if (slideIndex > slides.length) {
                slideIndex = 1
            }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }
            slides[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " active";
            setTimeout(showSlides, 4000); // Change image every 2 seconds
        }
    </script>

</body>
</html>
