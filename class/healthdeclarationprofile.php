<?php

class HealthDeclarationProfile{

    // database connection and table name
    private $conn;
    private $table_name = "health_declaration";

    public $hd_id;
    public $fname;
    public $mi;
    public $lname;
    public $age;
    public $gender;
    public $mobile;
    public $temp;
    public $diagnosed;
    public $encounter;
    public $vaxxed;
    public $nationality;
    public $timestamp;

    public function __construct($db)
    {
        $this->conn = $db;
    }

    public function getbyid($params){
        mysqli_next_result($this->conn);;
        $sql = "SELECT * FROM " . $this->table_name . " WHERE hd_id = " . $params;

        $result = mysqli_query($this->conn, $sql);
        mysqli_close($this->conn);
        return $result;
    }

    public function getall($params){
        $sql = "SELECT COUNT(*) AS count FROM " . $this->table_name . " WHERE fname LIKE '" . $params->search ."' OR lname LIKE '" . $params->search ."'";
        $result = mysqli_query($this->conn, $sql);
        $row = mysqli_fetch_assoc($result);
        
        mysqli_next_result($this->conn);
   
        $sql = "SELECT * FROM " . $this->table_name . " WHERE fname LIKE '" . $params->search ."' OR lname LIKE '" . $params->search ."' LIMIT " . $params->start . ", " . $params->length;
        $result = mysqli_query($this->conn, $sql);
        $result->recordsTotal = $row['count'];
        mysqli_close($this->conn);

        return $result;
        // mysqli_next_result($this->conn);
        // $sql = "SELECT * FROM " . $this->table_name . " WHERE firstname LIKE '%" . $searchtext . "%' OR lastname LIKE '%" . $searchtext . "%' LIMIT 10";

        // $result = mysqli_query($this->conn, $sql);
        // mysqli_close($this->conn);
        // return $result;
    }

    public function create(){
        $this->timestamp = time();
        $statement = $this->conn->prepare("INSERT INTO " . $this->table_name . " (fname, mi, lname, age, gender, mobile, temp, diagnosed, encounter, vaxxed, nationality, timestamp) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
        $statement->bind_param("ssssssssssss",$this->fname,$this->mi,$this->lname,$this->age,$this->gender,$this->mobile,$this->temp,$this->diagnosed,$this->encounter,$this->vaxxed,$this->nationality,$this->timestamp);
        //var_dump($statement);
        //sanitize
        $this->fname=htmlspecialchars(strip_tags($this->fname));
        $this->mi=htmlspecialchars(strip_tags($this->mi));
        $this->lname=htmlspecialchars(strip_tags($this->lname));
        $this->age=htmlspecialchars(strip_tags($this->age));
        $this->gender=htmlspecialchars(strip_tags($this->gender));
        $this->mobile=htmlspecialchars(strip_tags($this->mobile));
        $this->temp=htmlspecialchars(strip_tags($this->temp));
        $this->diagnosed=htmlspecialchars(strip_tags($this->diagnosed));
        $this->encounter=htmlspecialchars(strip_tags($this->encounter));
        $this->vaxxed=htmlspecialchars(strip_tags($this->vaxxed));
        $this->nationality=htmlspecialchars(strip_tags($this->nationality));
        $this->timestamp=htmlspecialchars(strip_tags($this->timestamp));

        if($statement->execute()){
            $statement->close();
            return true;
        }

        echo ("Error: " . $this->conn->error);
        return false;
    }

    public function update(){
        $this->timestamp = time();
        $statement = $this->conn->prepare("UPDATE " . $this->table_name . " SET fname = ?, mi = ?, lname = ?, age = ?, gender = ?, mobile = ?, temp = ?, diagnosed = ?, encounter = ?, vaxxed = ?, nationality = ?, timestamp = ? WHERE hdid = " . $this->hd_id . "");
        $statement->bind_param("ssssssssssss",$this->fname,$this->mi,$this->lname,$this->age,$this->gender,$this->mobile,$this->temp,$this->diagnosed,$this->encounter,$this->vaxxed,$this->nationality,$this->timestamp);
        
        //sanitize
        $this->fname=htmlspecialchars(strip_tags($this->fname));
        $this->mi=htmlspecialchars(strip_tags($this->mi));
        $this->lname=htmlspecialchars(strip_tags($this->lname));
        $this->age=htmlspecialchars(strip_tags($this->age));
        $this->gender=htmlspecialchars(strip_tags($this->gender));
        $this->mobile=htmlspecialchars(strip_tags($this->mobile));
        $this->temp=htmlspecialchars(strip_tags($this->temp));
        $this->diagnosed=htmlspecialchars(strip_tags($this->diagnosed));
        $this->encounter=htmlspecialchars(strip_tags($this->encounter));
        $this->vaxxed=htmlspecialchars(strip_tags($this->vaxxed));
        $this->nationality=htmlspecialchars(strip_tags($this->nationality));
        $this->timestamp=htmlspecialchars(strip_tags($this->timestamp));

        if($statement->execute()){
            $statement->close();
            return true;
        }

        echo ("Error: " . $this->conn->error);
        return false;
    }

    public function delete(){
        $statement = $this->conn->prepare("DELETE FROM " . $this->table_name . " WHERE hd_id = " . $this->hd_id);

        if($statement->execute()){
            $statement->close();
            return true;
        }

        echo ("Error: " . $this->conn->error);
        return false;
    }

    public function getdashboarddata() {
        // mysqli_next_result($this->conn);;
        // $sql = "SELECT * FROM v_dashboarddata";

        // $result = mysqli_query($this->conn, $sql);
        // mysqli_close($this->conn);
        // return $result;

        mysqli_next_result($this->conn);;
        $sql = "SELECT COUNT(*) AS numofentries FROM " . $this->table_name;

        $result = mysqli_query($this->conn, $sql);
        mysqli_close($this->conn);
        return $result;
    }




}

?>