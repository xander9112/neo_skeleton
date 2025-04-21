// Определение перечисления StateStatus, представляющего три состояния: notReady, ready, finish.
enum StateStatus {
  notReady, // Состояние "не готов"
  ready, // Состояние "готов"
  finish; // Состояние "завершён"

  // Геттер isNotReady возвращает true, если текущее состояние - notReady.
  bool get isNotReady => this == StateStatus.notReady;

  // Геттер isReady возвращает true, если текущее состояние - ready.
  bool get isReady => this == StateStatus.ready;

  // Геттер isFinish возвращает true, если текущее состояние - finish.
  bool get isFinish => this == StateStatus.finish;
}
