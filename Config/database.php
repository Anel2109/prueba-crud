<?php 

class Connection {

    private static $user_db = 'root';
    private static $password_db = '';
    private static $url_db = 'localhost';
    private static $name_db = 'movies';
    private static $connection = null;

    public function __construct()
    {
        die('La función inicial no esta permitida');
    }

    static function connection()
    {
        if ( null == self::$connection ) {
            try {
                self::$connection = new PDO("mysql:host=".self::$url_db."; dbname=".self::$name_db, self::$user_db, self::$password_db);
            } catch (PDOException $th) {
                die($th->getMessage());
            }
        }

        return self::$connection;
    }

    public function disconnect()
    {
        self::$connection = null;
    }
}

?>