import 'package:cinemapedia/domain/entities/movie.dart';

abstract class LocalStorageDataSource {
  Future<void> toggleFavorite(Movie movie);
  Future<bool> isMOvieFavorite(int movieId);
  Future<List<Movie>> loadMovies({ int limit = 15, offset = 0});
}


