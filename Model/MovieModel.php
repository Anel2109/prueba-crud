<?php 
    class MovieModel{
        private $DB;
        private $Movies;

        function __construct()
        {
            $this->DB = Connection::connection();
        }

        function getMovies()
        {
            $sql = "SELECT * FROM Movie";
            $row = $this->DB->query($sql);
            $this->Movies = $row;
            return $this->Movies;
        }
    }
?>