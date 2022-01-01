import 'package:talker_error_handler_core/talker_error_handler_core.dart';

/// Base error container
// TODO: rename
class BaseErrorContainer implements ErrorContainer {
  BaseErrorContainer({
    this.message,
    this.exception,
    this.error,
    this.stackTrace,
    this.errorLevel,
  });

  @override
  final String? message;

  @override
  final Exception? exception;

  @override
  final Error? error;

  @override
  final StackTrace? stackTrace;

  @override
  ErrorLevel? errorLevel;

  BaseErrorContainer copyWith({
    String? message,
    Exception? exception,
    Error? error,
    StackTrace? stackTrace,
    ErrorLevel? errorLevel,
  }) {
    return BaseErrorContainer(
      message: message ?? this.message,
      exception: exception ?? this.exception,
      error: error ?? this.error,
      stackTrace: stackTrace ?? this.stackTrace,
      errorLevel: errorLevel ?? this.errorLevel,
    );
  }
}