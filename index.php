<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HSTU HQ | All Questions</title>
    <link rel="shortcut icon" href="favicon.ico">
    <link rel="stylesheet" href="css/app.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.7.1/slick.css" />
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.7.1/slick-theme.css" />
    <script src="https://unpkg.com/scrollreveal@4.0.0-beta.6"></script>
</head>

<body>
  <header class="site-header">
      <div class="container">
          <div class="header-content">
              <div class="top-menu  scroll-reveal">
                  <div class="menu">
                      <img style="display: block;margin-right: auto;" src="logo.png" height="175" width="175" alt="Logo of HSTU Hall of Questions" >
                      <div class="title-bar" data-responsive-toggle="main-nav" data-hide-for="medium">
                          <button class="menu-icon dark" type="button" data-toggle="main-nav"></button>
                          <div class="title-bar-title">Menu</div>
                      </div>

                      <nav id="main-nav" data-animate="menu-in menu-out">
                          <ul class="main-navigation">
                              <li><a class="m-active" href="index.php" data-text="All Questions">All Questions</a></li>
                              <li><a class="m-anim" href="search.php" data-text="Search">Search</a></li>
                              <li><a class="m-anim" href="user_upload.php" data-text="Upload">Upload</a></li>
                              <li><a class="m-anim" href="request.php" data-text="Request">Request</a></li>
                              <li><a class="m-anim" href="admin.php" data-text="Admin">Admin</a></li>
                          </ul>
                      </nav>
                  </div>
              </div>
          </div>
      </div>
  </header>

  <div class="result-body">
    <?php
        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "hstuhq";

        // Create connection
        $conn = new mysqli($servername, $username, $password, $dbname);
        // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }

        $sql = "SELECT question_id, year_var, level_var, semester, degree, department, course_code, course_title, link FROM question ORDER BY level_var ASC, semester ASC, year_var DESC, degree ASC, course_code ASC, course_title ASC";
        $result = $conn->query($sql);

        echo"<table class='content-table'>";
          echo"<thead><tr><th>Year</th><th>Level</th><th>Semester</th><th>Degree</th><th>Department</th><th>Course Code</th><th>Course Title</th><th>Download Link</th></tr></thead><tbody>";
            if ($result->num_rows > 0) {
              while($row = $result->fetch_assoc()) {
                echo "<tr><td>". $row["year_var"]. "</td><td>" . $row["level_var"]. "</td><td>" . $row["semester"]. "</td><td>" . $row["degree"]. "</td><td>" . $row["department"]. "</td><td>" . $row["course_code"]. "</td><td>" . $row["course_title"]. "</td><td><form action='download.php' method='get'><input type='hidden' name='q_id' value='" . $row["question_id"] . "'><input type='submit' value='download'></form></td></tr>\n";
              }
            }
          echo"</tbody></table>";

        $conn->close();
    ?>
  </div>

    <a href="#0" class="cd-top">Top</a>

    <div class="copyright-info">
      <br>
      Copyright ©2021 by <a target="_blank" href="https://www.facebook.com/rahmanmoshiur00/">Moshiur</a>, <a target="_blank" href="https://www.facebook.com/shabbir.FCB">Shabbir</a> & <a target="_blank" href="https://www.facebook.com/Akashkhan128">Sumon</a> <br><br>
    </div>


    <div id="preloader">
        <div class="loader">
            <span></span>
            <span></span>
            <span></span>
            <span></span>
        </div>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/what-input/5.0.2/what-input.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.4.3/js/foundation.js"></script>
    <script src="js/app.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.7.1/slick.js"></script>
    <script src="https://unpkg.com/scrollreveal/dist/scrollreveal.min.js"></script>

    <script type="text/javascript">
        $('.slider').slick({
            infinite: true,
            autoplay: true,
            autoplaySpeed: 3500,
            arrows: false,
            fade: true,
            cssEase: 'linear'
        });
    </script>

    <script>
        $(window).on('load', function() {
            $("#preloader").fadeOut();
        });
    </script>

</body>

</html>
