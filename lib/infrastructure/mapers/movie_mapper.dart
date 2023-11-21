import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/movie_details.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/movie_moviedb.dart';

class MovieMapper {
  static Movie movieDBToEntity(MovieMovieDB moviedb) => Movie(
      adult: moviedb.adult,
      backdropPath: moviedb.backdropPath != ""
          ? "https://image.tmdb.org/t/p/w500${moviedb.backdropPath}"
          : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsCiShJc0At3_3P_gN0DeCkMPpBbwbcavhOZjFhs-yxmnPHrUYuUZ-luMtJa4S07-M3gw&usqp=CAU",
      genreIds: moviedb.genreIds.map((e) => e.toString()).toList(),
      id: moviedb.id,
      originalLanguage: moviedb.originalLanguage,
      originalTitle: moviedb.originalTitle,
      overview: moviedb.overview,
      popularity: moviedb.popularity,
      posterPath: moviedb.posterPath != ""
          ? "https://image.tmdb.org/t/p/w500${moviedb.posterPath}"
          : "https://tse4.explicit.bing.net/th?id=OIP.KZwhxihOBf5fwt-pHg_CNgAAAA&pid=Api&P=0&h=180",
      releaseDate: moviedb.releaseDate != null ?moviedb.releaseDate! : DateTime.now(),
      title: moviedb.title,
      video: moviedb.video,
      voteAverage: moviedb.voteAverage,
      voteCount: moviedb.voteCount
      
      );

  static Movie movieDetailsToEntity(MovieDetails moviedb) => Movie(
    adult: moviedb.adult,
      backdropPath: moviedb.backdropPath != ""
          ? "https://image.tmdb.org/t/p/w500${moviedb.backdropPath}"
          : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsCiShJc0At3_3P_gN0DeCkMPpBbwbcavhOZjFhs-yxmnPHrUYuUZ-luMtJa4S07-M3gw&usqp=CAU",
      genreIds: moviedb.genres.map((e) => e.name).toList(),
      id: moviedb.id,
      originalLanguage: moviedb.originalLanguage,
      originalTitle: moviedb.originalTitle,
      overview: moviedb.overview,
      popularity: moviedb.popularity,
      posterPath: moviedb.posterPath != ""
          ? "https://image.tmdb.org/t/p/w500${moviedb.posterPath}"
          : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsCiShJc0At3_3P_gN0DeCkMPpBbwbcavhOZjFhs-yxmnPHrUYuUZ-luMtJa4S07-M3gw&usqp=CAU",
      releaseDate: moviedb.releaseDate,
      title: moviedb.title,
      video: moviedb.video,
      voteAverage: moviedb.voteAverage,
      voteCount: moviedb.voteCount
  );
}
