<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Explore Europe</title>
    <link rel="stylesheet" href="styl9.css">
</head>
<body>
<?php
$connect = mysqli_connect("localhost", "root", "","travels"); 
?>
    <div id="baner">
        <h1>TRAVEL AGENCY</h1>
    </div>
    <div id="left">
        <h2>Promotions</h2>
        <table>
        <tr>
            <td>Warsaw</td>
            <td>Venice</td>
            <td>Paris</td>
        </tr>
        <tr>
            <td>600 PLN</td>
            <td>1200 PLN</td>
            <td>1200 PLN</td>
        </tr>
        </table>
    </div>
    <div id="middle">
        <h2>In this year we go to...</h2>
        <?php
        $sql = "SELECT fileName, signature FROM photos ORDER BY signature ASC;";
        $resolut = mysqli_query($connect, $sql);
        while ($row = mysqli_fetch_array($resolut)){
            echo "<img src='$row[0]' alt='$row[1]' title='$row[1]'>";
        }
        ?>
    </div>
    <div id="right">
        <h2>Contact</h2>
        <a href="mailto:office@travels.com">Write to us</a>
        <p>phone: 444555666</p>
    </div>
    <div id="database">
        <h3>In previous years, we were...</h3>
        <ol>
            <?php
            $sql = "SELECT target, departureDate FROM tours WHERE availability = 0;";
            $resolut = mysqli_query($connect, $sql);
            while ($row = mysqli_fetch_array($resolut)){
                echo "<li>Day: $row[1] we went to $row[0]</li><br>";
            }    
            ?>
        </ol>
    </div>
    <div id="footer">
        <p>Side made by: Filip Szalkowski</p>
    </div>
<?php
mysqli_close($connect)
?>    
</body>
</html>