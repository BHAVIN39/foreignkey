<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $db = "foreignkey";

    $conn = mysqli_connect($servername, $username, $password, $db);
    if (!$conn) {
        die("Connection failed: ". mysqli_connect_error());
    }

    $sql = "CREATE TABLE for2(
        id INT(12) AUTO_INCREMENT PRIMARY KEY,
        fname VARCHAR(25) NOT NULL,
        lname VARCHAR(25) NOT NULL,
        email VARCHAR(25) NOT NULL,
        city_id INT(10) NOT NULL,
        FOREIGN KEY (city_id) REFERENCES for1 (id)
    )";

    if(mysqli_query($conn,$sql)){
        echo "Table created successfully";
    }
    else{
        echo "Error creating table: ". mysqli_error($conn);
    }
    mysqli_close($conn);
?>