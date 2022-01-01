import 'package:talker_error_handler_core/talker_error_handler_core.dart';

extension DebugErrorsStream on Stream<ErrorContainer> {
  Stream<ErrorContainer> get debug =>
      where((e) => e.errorLevel == ErrorLevel.debug);
}

extension CriticalErrorsStream on Stream<ErrorContainer> {
  Stream<ErrorContainer> get critical =>
      where((e) => e.errorLevel == ErrorLevel.critical);
}

extension InfoErrorsStream on Stream<ErrorContainer> {
  Stream<ErrorContainer> get info =>
      where((e) => e.errorLevel == ErrorLevel.info);
}

extension WarningErrorsStream on Stream<ErrorContainer> {
  Stream<ErrorContainer> get warning =>
      where((e) => e.errorLevel == ErrorLevel.warning);
}

extension TinyErrorsStream on Stream<ErrorContainer> {
  Stream<ErrorContainer> get tiny =>
      where((e) => e.errorLevel == ErrorLevel.tiny);
}