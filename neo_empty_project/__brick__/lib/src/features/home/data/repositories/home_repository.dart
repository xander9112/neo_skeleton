import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}/src/features/home/_home.dart';

class HomeRepositoryImpl implements HomeRepository {
  HomeRepositoryImpl(this._dataSource);

  final HomeDataSource _dataSource;

  @override
  Future<Either<Failure, HomeModel>> getHome() async {
    try {
      final response = await _dataSource.getHome();

      return Right(response);
    } on DioException catch (error) {
      return Left(
        HomeFailure(
          code: error.response?.statusCode ?? 1,
          message: error.response?.data.toString() ?? error.errorMessage,
        ),
      );
    } catch (error) {
      return Left(HomeFailure(code: 1, message: error.toString()));
    }
  }
}
