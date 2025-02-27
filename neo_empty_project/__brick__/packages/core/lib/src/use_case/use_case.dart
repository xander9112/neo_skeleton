abstract class UseCase<Type, Params> {
  Future<Type> call(Params params);
}

abstract class UseCaseNoParams<Type> {
  Future<Type> call();
}
