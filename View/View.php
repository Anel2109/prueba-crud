

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h3>Listado Peliculas</h3>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <table class="table table-dark">
                <thead>
                    <th>Id</th>
                    <th>Nombre De La Pelicula</th>
                    <th>Tipo De La Pelicula</th>
                    <th>Pais De La Pelicula</th>
                    <th>Lenguaje De La Pelicula</th>
                    <th>Año De Estreno</th>
                </thead>
                <tbody>
                    <?php foreach($query as $data): ?>
                    <tr>
                        <th><?php echo $data['id']; ?></th>
                        <!-- <th><?php echo $data['name_movie']; ?></th> -->

                    </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>

</div>