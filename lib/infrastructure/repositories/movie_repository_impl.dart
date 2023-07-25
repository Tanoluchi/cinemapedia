import 'package:cinemapedia/domain/repositories/movies_repository.dart';


class MovieRepositoryImpl extends MoviesRepository {
  final MoviesDatasource datasource;

  MovieRepositoryImpl(this.datasource);


  @override
  Future<List<Movie>> getNowPlaying({int page = 1}){
    return this.datasource.getNowPlaying(page: page);
  }
}