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
            Name<input type="text" name="name" value=""><br>
            Age<input type="text" name="age" value=""><br>
            National<input type="text" name="national" value=""><br>
            Position<input type="text" name="position" value=""><br>
            Salary<input type="text" name="salary" value=""><br>
            <input type="submit" name="submit" value="submit">
        </form>
    </body>
</html>
