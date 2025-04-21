import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:{{appName.snakeCase()}}/src/features/main/_main.dart';
import 'package:dio/dio.dart';

class MainRepositoryImpl implements MainRepository {
  MainRepositoryImpl(this._dataSource);

  final MainDataSource _dataSource;

  @override
  Future<Either<Failure, MainModel>> getMain() async {
    try {
      final response = await _dataSource.getMain();

      return Right(response);
    } on DioException catch (error) {
      return Left(
        MainFailure(
          code: error.response?.statusCode ?? 1,
          message: error.response?.data.toString() ??
              error.message ??
              error.error.toString(),
        ),
      );
    } catch (error) {
      return Left(MainFailure(code: 1, message: error.toString()));
    }
  }
}
