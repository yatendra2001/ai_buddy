import 'package:loggy/loggy.dart' as loggy;

typedef LoggerFunction = void Function(
  String message, [
  dynamic error,
  StackTrace? stackTrace,
]);

final LoggerFunction logDebug = loggy.logDebug;
final LoggerFunction logInfo = loggy.logInfo;
final LoggerFunction logWarning = loggy.logWarning;
final LoggerFunction logError = loggy.logError;
