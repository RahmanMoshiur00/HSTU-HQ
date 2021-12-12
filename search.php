<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HSTU HQ | Search</title>
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
                                <li><a class="m-anim" href="index.php" data-text="All Questions">All Questions</a></li>
                                <li><a class="m-active" href="search.php" data-text="Search">Search</a></li>
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

    <div class="search-body">
      <form class="search_form" action="search_result.php" method="get">
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
          ?>
          <table class="content-table">
          <thead>
            <tr>
              <th colspan='2'>Search Questions</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>Academic Year</td>
              <td><select name="search_year">
                  <option selected="selected" value="ALL">All</option>
                  <?php
                      $sql = "SELECT DISTINCT year_var FROM question ORDER BY year_var ASC";
                      $result = $conn->query($sql);
                      while($row = $result->fetch_assoc()) {
                        echo"<option value='" . $row[year_var] . "'>" . $row[year_var] . "</option>";
                      }
                  ?>
              </select></td>
            </tr>
            <tr>
              <td>Level</td>
              <td><select name="search_level">
                <option selected="selected" value="ALL">All</option>
                <?php
                    $sql = "SELECT DISTINCT level_var FROM question ORDER BY level_var ASC";
                    $result = $conn->query($sql);
                    while($row = $result->fetch_assoc()) {
                      echo"<option value='" . $row[level_var] . "'>" . $row[level_var] . "</option>";
                    }
                ?>
               </select></td>
            </tr>
            <tr>
              <td>Semester</td>
              <td><select name="search_semester">
                <option selected="selected" value="ALL">All</option>
                <?php
                    $sql = "SELECT DISTINCT semester FROM question question ORDER BY semester ASC";
                    $result = $conn->query($sql);
                    while($row = $result->fetch_assoc()) {
                      echo"<option value='" . $row[semester] . "'>" . $row[semester] . "</option>";
                    }
                ?>
               </select></td>
            </tr>
            <tr>
              <td>Degree</td>
              <td><select name="search_degree">
                <option selected="selected" value="ALL">All</option>
                <?php
                    $sql = "SELECT DISTINCT degree FROM question question ORDER BY degree ASC";
                    $result = $conn->query($sql);
                    while($row = $result->fetch_assoc()) {
                      echo"<option value='" . $row[degree] . "'>" . $row[degree] . "</option>";
                    }
                ?>
              </select></td>
            </tr>
            <tr>
              <td>Department</td>
              <td><select name="search_department">
                <option selected="selected" value="ALL">All</option>
                <?php
                    $sql = "SELECT DISTINCT department FROM question question ORDER BY department ASC";
                    $result = $conn->query($sql);
                    while($row = $result->fetch_assoc()) {
                      echo"<option value='" . $row[department] . "'>" . $row[department] . "</option>";
                    }
                ?>
              </select></td>
            </tr>
            <tr>
              <td>Course Code</td>
              <td><input type="text" name="search_code" maxlength="100"></td>
            </tr>
            <tr>
              <td>Course Title</td>
              <td><input type="text" name="search_title" maxlength="100"></td>
            </tr>
            <tr>
              <td colspan='2'><input type="submit" name="search" value="Search"></td>
            </tr>
          </tbody>
        </table>
      </form>
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
