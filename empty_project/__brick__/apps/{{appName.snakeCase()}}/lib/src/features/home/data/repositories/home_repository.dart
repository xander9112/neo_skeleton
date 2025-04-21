import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';
import 'package:{{appName.snakeCase()}}/src/features/home/_home.dart';

@Injectable(as: HomeRepository)
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
          message: error.response?.data.toString() ??
              error.message ??
              error.error.toString(),
        ),
      );
    } catch (error) {
      return Left(HomeFailure(code: 1, message: error.toString()));
    }
  }
}
