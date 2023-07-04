<?php
    class Organization{
        // Connection
        private $conn;
        // Table
        private $db_table = "organization";
        // Columns
        public $id;
        public $established;
        public $name;
        public $description;
        public $leader;
        public $email;
        public $phone;
        public $created;
        // Db connection
        public function __construct($db){
            $this->conn = $db;
        }
        // GET ALL
        public function getOrganizations(){
            $sqlQuery = "SELECT id, established, name, description, email, leader, phone, created FROM " . $this->db_table . "";
            $stmt = $this->conn->prepare($sqlQuery);
            $stmt->execute();
            return $stmt;
        }
        // CREATE
        public function createOrganization(){
            $sqlQuery = "INSERT INTO
                        ". $this->db_table ."
                    SET
                        established = :established, 
                        name = :name, 
                        description = :description, 
                        leader = :leader, 
                        email = :email, 
                        phone = :phone, 
                        created = :created";
        
            $stmt = $this->conn->prepare($sqlQuery);
        
            // sanitize
            $this->established=htmlspecialchars(strip_tags($this->established));
            $this->name=htmlspecialchars(strip_tags($this->name));
            $this->description=htmlspecialchars(strip_tags($this->description));
            $this->leader=htmlspecialchars(strip_tags($this->leader));
            $this->email=htmlspecialchars(strip_tags($this->email));
            $this->phone=htmlspecialchars(strip_tags($this->phone));
            $this->created=htmlspecialchars(strip_tags($this->created));
        
            // bind data
            $stmt->bindParam(":established", $this->established);
            $stmt->bindParam(":name", $this->name);
            $stmt->bindParam(":description", $this->description);
            $stmt->bindParam(":leader", $this->leader);
            $stmt->bindParam(":email", $this->email);
            $stmt->bindParam(":phone", $this->phone);
            $stmt->bindParam(":created", $this->created);
        
            if($stmt->execute()){
               return true;
            }
            return false;
        }
        // READ single
        public function getSingleOrganization(){
            $sqlQuery = "SELECT
                        id, 
                        established, 
                        name, 
                        description, 
                        leader, 
                        email, 
                        phone, 
                        created
                      FROM
                        ". $this->db_table ."
                    WHERE 
                       id = ?
                    LIMIT 0,1";
            $stmt = $this->conn->prepare($sqlQuery);
            $stmt->bindParam(1, $this->id);
            $stmt->execute();
            $dataRow = $stmt->fetch(PDO::FETCH_ASSOC);
            
            $this->established = $dataRow['established'];
            $this->name = $dataRow['name'];
            $this->description = $dataRow['description'];
            $this->leader = $dataRow['leader'];
            $this->email = $dataRow['email'];
            $this->phone = $dataRow['phone'];
            $this->created = $dataRow['created'];
        }        
        // UPDATE
        public function updateOrganization(){
            $sqlQuery = "UPDATE
                        ". $this->db_table ."
                    SET
                        established = :established, 
                        name = :name, 
                        description = :description, 
                        leader = :leader, 
                        email = :email, 
                        phone = :phone, 
                        created = :created
                    WHERE 
                        id = :id";
        
            $stmt = $this->conn->prepare($sqlQuery);
        
            $this->established=htmlspecialchars(strip_tags($this->established));
            $this->name=htmlspecialchars(strip_tags($this->name));
            $this->description=htmlspecialchars(strip_tags($this->description));
            $this->leader=htmlspecialchars(strip_tags($this->leader));
            $this->email=htmlspecialchars(strip_tags($this->email));
            $this->phone=htmlspecialchars(strip_tags($this->phone));
            $this->created=htmlspecialchars(strip_tags($this->created));
            $this->id=htmlspecialchars(strip_tags($this->id));
        
            // bind data
            $stmt->bindParam(":established", $this->established);
            $stmt->bindParam(":name", $this->name);
            $stmt->bindParam(":description", $this->description);
            $stmt->bindParam(":leader", $this->leader);
            $stmt->bindParam(":email", $this->email);
            $stmt->bindParam(":phone", $this->phone);
            $stmt->bindParam(":created", $this->created);
            $stmt->bindParam(":id", $this->id);
        
            if($stmt->execute()){
               return true;
            }
            return false;
        }
        // DELETE
        function deleteOrganization(){
            $sqlQuery = "DELETE FROM " . $this->db_table . " WHERE id = ?";
            $stmt = $this->conn->prepare($sqlQuery);
        
            $this->id=htmlspecialchars(strip_tags($this->id));
        
            $stmt->bindParam(1, $this->id);
        
            if($stmt->execute()){
                return true;
            }
            return false;
        }
    }
?>