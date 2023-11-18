import 'package:cinemapedia/infrastructure/datasources/moviedb_datasource.dart';
import 'package:cinemapedia/infrastructure/repositories/movie_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Este repository es inmutables -> solo lectura
final movieRepositoryProvider = Provider((ref) {
  return MovieRepositoryImpl(MovieDbDatasource());
});