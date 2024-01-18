enum StateStatus {
  notReady,

  ready,

  finish;

  bool get isNotReady => this == StateStatus.notReady;

  bool get isReady => this == StateStatus.ready;

  bool get isFinish => this == StateStatus.finish;
}
