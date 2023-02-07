import 'package:logger/logger.dart';
import 'package:tintasepintura/core/values/constants.dart';

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


  List<String> validateWallSize(double wallWidth, double wallHeight, int windowQuantity, int doorQuantity){
    List<String> errors = [];

    const double windowsArea = (2.00 * 1.20);
    const double doorArea = (0.80 * 1.90);

    final result = (wallWidth * wallHeight);


    if(result <= 1.0 || result > 50.0){
      errors.add(AppMessageError.wallSize);
    }

    if(windowQuantity > 0){
      final whCentimeter = (wallHeight * 100);
      if((whCentimeter - 190) < 30){
        errors.add(AppMessageError.wallSmallerThanTheDoor);
      }
    }


    if(windowQuantity > 0 || doorQuantity > 0){
      final areaWall = (wallWidth * wallHeight);
      final portalAndWindowArea = ((windowsArea * windowQuantity) + (doorArea * doorQuantity));
      if(portalAndWindowArea > (areaWall / 2)){
        errors.add(AppMessageError.portalAndWindowsSizeLimit);
      }
    }


    return errors;
  }



}