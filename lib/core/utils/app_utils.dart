import 'package:logger/logger.dart';

mixin AppUtils {

  final _logger = Logger(
    printer: PrettyPrinter(
        methodCount: 2,
        errorMethodCount: 8,
        lineLength: 120,
        colors: true,
        printEmojis: true,
        printTime: true,
    ),
  );

  loggerVerbose({required dynamic message}) {
    _logger.v(message);
  }
  loggerDebug({required dynamic message}) {
    _logger.d(message);
  }
  loggerInfo({required dynamic message}) {
    _logger.i(message);
  }
  loggerWarning({required dynamic message}) {
    _logger.w(message);
  }
  loggerError({required dynamic message}) {
    _logger.e(message);
  }
  loggerwtf({required dynamic message}) {
    _logger.wtf(message);
  }


  List<String> validateWallSize(double wallWidth, double wallHeight){
    List<String> errors = [];
    final result = (wallWidth * wallHeight);
    return [];//result > 1.0 && result < 50.0;
  }



}