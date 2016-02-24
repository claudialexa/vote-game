<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Vote! The Game</title>
        <meta name="description" content="A game to encourage civic awareness">
        <meta name="author" content="Claudia Aguirre and Natalie Song">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>

        <link rel="stylesheet" href="css/normalize.min.css">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <!-- Font -->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,400,600|Slabo+27px' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="css/main.css">

    </head>

    <script type="text/javascript">
    function showDiv() {
        document.getElementById('factContainer').style.display = "block";}
    </script>

    <?php
        require 'medoo.php';
        require 'database.php';

        // Check connection
        if ($database->connect_error) {
            die("Connection failed: " . $database->connect_error);
            }; 
        //echo "Connected successfully";
       //  echo "<h6>"."Vote: Connected"."</h6>";

        $magic = $database->select("magic", [
            "magic_id",
            "magic_text",
            "magic_result"]);

        $tweets = $database->select("tweets", [
            "tweet_id",
            "tweet_handle",
            "tweet_text",
            "fact_text"]);
         
    ?>
    <body>
        <nav class="navbar navbar-inverse navbar-fixed-top">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="#">Vote the Game</a>
            </div>
            <div id="navbar" class="collapse navbar-collapse">
              <ul class="nav navbar-nav">
                <li class="active"><a href="#">About</a></li>
                <li><a href="#contact">Contact</a></li>
              </ul>
            </div><!--/.nav-collapse -->
          </div>
        </nav>

        <div class="container">
            <div class="starter-template">

                <div class="panel panel-default">
                    <div class="panel-body rcard">

                        <h1>Magic Card</h1>
                        <?php
                            foreach($magic as $magic) {
                                echo "<h3>".$magic["magic_text"] . "</h3>";
                            }
                        ?>
                    </div>

                </div>

                <button class="btn btn-primary" name="fact" value="Show Div" onclick="showDiv()">Done</button>

                <div id="factContainer" class="panel-body fact" style="display:none;">
                    <div>
                        <?php
                            foreach($tweets as $tweet) {
                                echo "<h4>". "Did you know?" . " " .$tweet["fact_text"] . "</h4>";
                            }
                        ?>
                    </div>

                    <button class="btn btn-primary" name="fact" value="Show Div" onclick="showDiv()">Learn More</button>
                    <a href="index.html"> <button class="btn btn-primary" name="fact" value="Show Div" onclick="showDiv()">Continue Playing</button></a> 

                </div>
               
          </div>
        </div>
        
        <script src="js/vendor/modernizr-2.6.2.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

        <script src="js/main.js"></script>
    </body>
</html>
