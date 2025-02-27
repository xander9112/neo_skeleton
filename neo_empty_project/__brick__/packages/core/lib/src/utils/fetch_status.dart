/// Enum, представляющий различные состояния процесса получения данных.
enum FetchStatus {
  /// Начальное состояние, когда никаких данных не запрашивалось.
  pure,

  /// Первоначальная загрузка данных в процессе. Это может быть первый запрос данных.
  firstFetchingInProgress,

  /// Данные загружаются, не первый запрос. Используется для последующих запросов (например, при пагинации).
  fetchingInProgress,

  /// Данные успешно загружены.
  fetchingSuccess,

  /// Произошла ошибка при загрузке данных.
  fetchingFailure;

  /// Проверка, находится ли текущее состояние в начальном состоянии `pure`.
  bool get isPure => this == FetchStatus.pure;

  /// Проверка, выполняется ли первоначальная загрузка данных.
  bool get isFirstFetchingInProgress =>
      this == FetchStatus.firstFetchingInProgress;

  /// Проверка, выполняется ли процесс получения данных (второй и последующие запросы).
  bool get isFetchingInProgress => this == FetchStatus.fetchingInProgress;

  /// Проверка, были ли данные успешно загружены.
  bool get isFetchingSuccess => this == FetchStatus.fetchingSuccess;

  /// Проверка, произошла ли ошибка при загрузке данных.
  bool get isFetchingFailure => this == FetchStatus.fetchingFailure;
}
