import 'package:config/config.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/foundation.dart';

/// Абстрактный класс для инъекции зависимостей в приложении.
/// Используется для инициализации различных компонентов (провайдеров, репозиториев, use cases и т.д.)
/// в зависимости от текущей среды (production, development, mock).

abstract class DI {
  /// Экземпляр GetIt - это сервис-локатор для управления зависимостями.
  static final GetIt sl = GetIt.instance;

  /// Метод для инициализации роутера.
  Future<void> initRouter() async {}

  /// Метод для инициализации провайдеров.
  /// Параметры:
  /// - [flavor]: текущая среда (FlavorStatus).
  /// - [useMock]: если true, используются mock-версии провайдеров.
  Future<void> initProviders(
    FlavorStatus flavor, {
    bool useMock = false,
  }) async {}

  /// Метод для инициализации репозиториев.
  /// Параметры:
  /// - [flavor]: текущая среда (FlavorStatus).
  /// - [useMock]: если true, используются mock-версии репозиториев.
  Future<void> initRepositories(
    FlavorStatus flavor, {
    bool useMock = false,
  }) async {}

  /// Метод для инициализации use cases.
  /// Параметры:
  /// - [flavor]: текущая среда (FlavorStatus).
  /// - [useMock]: если true, используются mock-версии use cases.
  Future<void> initUseCases(
    FlavorStatus flavor, {
    bool useMock = false,
  }) async {}

  /// Метод для инициализации состояния (например, управление состоянием через Bloc).
  /// Параметры:
  /// - [flavor]: текущая среда (FlavorStatus).
  /// - [useMock]: если true, используются mock-версии состояний.
  Future<void> initState(
    FlavorStatus flavor, {
    bool useMock = false,
  }) async {}

  /// Основной метод для инициализации приложения.
  /// Вызывает методы для инициализации всех компонентов (роутер, провайдеры, репозитории, use cases, состояния).
  /// Обязательно должен быть вызван в подклассах (аннотация @mustCallSuper).
  @mustCallSuper
  Future<void> init(
    FlavorStatus flavor, {
    bool useMock = false,
  }) async {
    await initRouter();
    await initProviders(flavor, useMock: useMock);
    await initRepositories(flavor, useMock: useMock);
    await initUseCases(flavor, useMock: useMock);
    await initState(flavor, useMock: useMock);
  }

  /// Метод для создания зависимости, которая может быть либо реальной, либо mock.
  /// Параметры:
  /// - [useMock]: если true, используется mock-версия зависимости.
  /// - [factoryFunc]: функция для создания реальной зависимости.
  /// - [mockFactoryFunc]: функция для создания mock-версии зависимости.
  T Function<T>({
    required bool useMock,
    required T Function() factoryFunc,
    required T Function() mockFactoryFunc,
  }) buildDependency = <T>({
    required bool useMock,
    required T Function() factoryFunc,
    required T Function() mockFactoryFunc,
  }) {
    // Если включен режим mock, возвращается mock-версия зависимости.
    if (Mocked.isMocked || useMock) {
      return mockFactoryFunc();
    }

    // В противном случае возвращается реальная зависимость.
    return factoryFunc();
  };

  /// Метод для создания зависимости с учетом среды (flavor).
  /// Параметры:
  /// - [useMock]: если true, используется mock-версия зависимости.
  /// - [flavor]: текущая среда (например, production, staging).
  /// - [factoryFunc]: функция для создания реальной зависимости.
  /// - [mockFactoryFunc]: функция для создания mock-версии зависимости.
  T Function<T>(
    bool useMock,
    FlavorStatus flavor,
    T Function(FlavorStatus) factoryFunc,
    T Function(FlavorStatus) mockFactoryFunc,
  ) buildDependencyWithEnv = <T>(
    useMock,
    flavor,
    T Function(FlavorStatus) factoryFunc,
    T Function(FlavorStatus) mockFactoryFunc,
  ) {
    // Если включен режим mock, возвращается mock-версия зависимости с учетом среды.
    if (Mocked.isMocked || useMock) {
      return mockFactoryFunc(flavor);
    }

    // В противном случае возвращается реальная зависимость с учетом среды.
    return factoryFunc(flavor);
  };
}
