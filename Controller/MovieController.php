<?php 
    require_once('Model/MovieModel.php');

    class MoviesController{
        private $model_movie;
        private $model_moviec;

        function __construct()
        {
            $this->model_movie = new MovieModel();
        }

        function index()
        {
            $query = $this->model_movie->getMovies();
            include_once('View/Layouts/HeaderView.php');
            include_once('View/View.php');
            include_once('View/Layouts/FooterView.php');
        }

        function createMovie()
        {

        }
    }
?>