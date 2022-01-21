<!DOCTYPE html>
<html lang="en">
    <head>
        <title></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/style.css" rel="stylesheet">
    </head>
    <body>

        <form action="" method="POST">
            @csrf
            Name<input type="text" name="name" value="{{$player->name}}"><br>
            Age<input type="text" name="age" value="{{$player->age}}"><br>
            National<input type="text" name="national" value="{{$player->national}}"><br>
            Position<input type="text" name="position" value="{{$player->position}}"><br>
            Salary<input type="text" name="salary" value="{{$player->salary}}"><br>
            <input type="submit" name="submit" value="submit">
        </form>
    </body>
</html>
<?php
echo "<pre>";
    var_dump($player);
    echo "</pre>";
    // echo $player->id;
    ?>
