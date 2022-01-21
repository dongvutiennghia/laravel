<!DOCTYPE html>
<html>
    <head>
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
                    <th style="width: 10%;">>Delete</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($players as $value)
                    <tr role="row">
                        <td>{{$value->id}}</td>
                        <td>{{$value->name}}</td>
                        <td>{{$value->age}}</td>
                        <td>{{$value->national}}</td>
                        <td>{{$value->position}}</td>
                        <td>{{$value->salary}} $</td>
                        <td><a href="review_query_builder/edit/{{$value->id}}">Edit</a></td>
                        <td><a href="review_query_builder/delete/{{$value->id}}"> Delete</a></td>
                    </tr>
                @endforeach

            </tbody>
            <tfoot>
                <tr>
                    <td colspan="2">
                        <a href="review_query_builder/insert"><button id="button">Thêm cầu thủ</button></a>
                    </td>
                    <td colspan="6">
                        <form action="" method="POST">
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
        echo "<pre>";
        var_dump($players);
        echo "</pre>";
    ?>
