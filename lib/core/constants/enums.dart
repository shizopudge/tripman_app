enum MessageType {
  auto,
  error,
  warning;

  bool get isAuto => this == MessageType.auto;
  bool get isError => this == MessageType.error;
  bool get isWarning => this == MessageType.warning;
}
