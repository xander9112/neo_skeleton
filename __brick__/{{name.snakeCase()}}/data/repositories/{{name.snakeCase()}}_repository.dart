import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../_profile.dart';

class {{name.pascalCase()}}Repository implements I{{name.pascalCase()}}Repository {
  {{name.pascalCase()}}Repository(this._dataSource);

  final {{name.pascalCase()}}DataSource _dataSource;

  Future<Either<Failure, {{name.pascalCase()}}Model>> get{{name.pascalCase()}}() async {
    try {
      final response = await _dataSource.get{{name.pascalCase()}}();

      return Right(response);
    } on DioError catch (error) {
      if (error.response?.statusCode == 404) {
        return Left({{name.pascalCase()}}Failure(code: 1, message: '1'));
      }

      rethrow;
    } catch (error) {
      return Left({{name.pascalCase()}}Failure(code: 1, message: '1'));
    }
  }
}
