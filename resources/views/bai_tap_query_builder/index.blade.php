<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <meta charset="utf-8">
    <style type="text/css">
        table{
            width: 800px;
            margin: auto;
            text-align: center;
        }
        tr {
            border: 1px solid;
        }
        th {
            border: 1px solid;
        }
        td {
            border: 1px solid;
        }
        h1{
            text-align: center;
            color: red;
        }
        #button{
            margin: 2px;
            margin-right: 10px;
            float: right;
        }
    </style>
    <?php
        // foreach ($players as $value) {
        //     echo ($value->id);
        //     echo "<pre>";
        //     // var_dump($value);
        //     echo "</pre>";
        // }
    ?>
</head>
<body>
    <table id="datatable" style="border: 1px solid">
        <h1>Quản lý cầu thủ</h1>
        <thead>
            <tr role="row">
                <th>ID</th>
                <th>Tên cầu thủ</th>
                <th>Tuổi</th>
                <th>Quốc tịch</th>
                <th>Vị trí</th>
                <th>Lương</th>
                <th style="width: 7%;">Edit</th>
                <th style="width: 10%;">Delete</th>
            </tr>
        </thead>
        <tbody>

            @foreach ($players as $item)
                <tr role="row">
                    <td>{{ $item->id }}</td>
                    <td>{{ $item->name }}</td>
                    <td>{{ $item->age }}</td>
                    <td>{{ $item->national }}</td>
                    <td>{{ $item->position }}</td>
                    <td>{{ $item->salary }}$</td>
                    <td><a href="edit/{{$item->id}}">Edit</a></td>
                    <td><a href="delete/{{$item->id}}"> Delete</a></td>
                </tr>
            @endforeach
        </tbody>
        <tfoot>
            <tr>
                <td colspan="2">
                    <a href="add"><button id="button">Thêm cầu thủ</button></a>
                </td>
                <td colspan="6">
                    <form action="" method="POST">
                        @csrf
                        tim kiem theo ten <input type="text" name="search" value="">
                        <input type="submit" name="submit" value="submit">
                    </form>
                </td>
            </tr>
        </tfoot>
    </table>
</body>
</html>
<?php

echo("<pre>");
    var_dump($players);
echo "</pre>";
?>
