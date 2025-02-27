import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:{{projectName.snakeCase()}}/src/core/_core.dart';
import '../../_{{name.snakeCase()}}.dart';

class {{name.pascalCase()}}RepositoryImpl implements {{name.pascalCase()}}Repository {
  {{name.pascalCase()}}RepositoryImpl(this._dataSource);

  final {{name.pascalCase()}}DataSource _dataSource;

  @override
  Future<Either<Failure, {{name.pascalCase()}}DTO>> get{{name.pascalCase()}}() async {
    try {
      final response = await _dataSource.get{{name.pascalCase()}}();

      return Right(response);
    } on DioException catch (error) {
       return Left(
        {{name.pascalCase()}}Failure(
          code: error.response?.statusCode ?? 1,
          message: error.response?.data.toString() ?? error.errorMessage,
        ),
      );

    } catch (error) {
      return Left({{name.pascalCase()}}Failure(code: 1, message: error.toString()));
    }
  }
}
