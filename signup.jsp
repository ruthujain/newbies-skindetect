<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="indesxcss.css">
    <link href="logc.css" rel="stylesheet"></link>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>SkinCure</title>
</head>
<body>
    <br><br><br>
    <!--signup-->
    <center>
        <form action="adduser.jsp" method="post" class="form" style="width:550px;height:500px;">
            <p class="form-title">Sign up for a new account!</p><br>
            <div class="input-container">
                <input id="fname" name="fname" type="text" placeholder="Enter First Name" required><br>
            </div>
            <div class="input-container">
                <input id="lname" name="lname" type="text" placeholder="Enter Last Name" required><br>
            </div>
            <div class="input-container">
                <input id="email" name="email" type="email" placeholder="Enter Email" required><br>
            </div>
            <div class="input-container">
                <input id="password" name="password" type="password" placeholder="Enter Password" required><br>
            </div>
            <button type="submit" class="submit" value="submit">Sign up</button><br>
            <p class="signup-link">
            Already have an account?
            <a href="Login.jsp">Sign in</a>
        </p>
        </form>
        
    </center>
<br><br>

    <!--signup end-->
    <!-- footer starts -->
    <footer class="bg-dark text-white pt-5 pb-4 mx-auto foot">
        <hr>
        <center>
            <p>All Rights Reserved &copy; 2024</p>
        </center>
    </footer>
    <!-- footer ends -->

    <!-- Optional JavaScript; choose one of the two! -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/gsap@3.12.5/dist/gsap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/gsap@3.12.5/dist/gsap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/gsap@3.12.5/dist/ScrollTrigger.min.js"></script>
    <script src="https://unpkg.com/@studio-freight/lenis@1.0.42/dist/lenis.min.js"></script>
    <script src="script.js"></script>
    <script>
        // Function to check if an element is in the viewport
        function isInViewport(element) {
            var rect = element.getBoundingClientRect();
            return (
                rect.top >= 0 &&
                rect.left >= 0 &&
                rect.bottom <= (window.innerHeight || document.documentElement.clientHeight) &&
                rect.right <= (window.innerWidth || document.documentElement.clientWidth)
            );
        }

        // Function to handle scroll event
        function handleScroll() {
            var elements = document.querySelectorAll('.slide-in-left');
            elements.forEach(function(element) {
                if (isInViewport(element)) {
                    element.classList.add('visible');
                }
            });
        }

        // Add event listener for scroll
        window.addEventListener('scroll', handleScroll);

        // Initial check on page load
        handleScroll();
    </script>
</body>
</html>
