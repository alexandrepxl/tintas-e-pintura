import 'package:logger/logger.dart';
import 'package:tintasepintura/app/data/models/cans.dart';
import 'package:tintasepintura/app/data/models/painted_area.dart';
import 'package:tintasepintura/core/values/constants.dart';

mixin AppUtils {

  final double windowsArea = (2.00 * 1.20);
  final double doorArea = (0.80 * 1.90);



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
      final obj = calculateLitersOfPaint(wallWidth,wallHeight,windowQuantity,doorQuantity);
      if(obj.windowsPortal > (obj.wall / 2)){
        errors.add(AppMessageError.portalAndWindowsSizeLimit);
      }
    }
    return errors;
  }



  PaintedArea calculateLitersOfPaint(double wallWidth, double wallHeight, int windowQuantity, int doorQuantity){
    final areaWall = (wallWidth * wallHeight);
    final portalAndWindowArea = ((windowsArea * windowQuantity) + (doorArea * doorQuantity));
    final litersOfPaint = double.parse(((areaWall - portalAndWindowArea) / 5).toStringAsFixed(2)) ;
    return PaintedArea(wall: areaWall, windowsPortal: portalAndWindowArea, litersOfPaint: litersOfPaint);
  }



  Cans paintCans(double litersOfPaint){
    final cans = Cans(l18: 0, l36: 0, l25: 0, l05: 0);
    while(litersOfPaint > 0){
      if(litersOfPaint - 18 >= 0){
        litersOfPaint -= 18;
        cans.l18 ++;
      } else if(litersOfPaint - 3.6 >= 0){
        litersOfPaint -= 3.6;
        cans.l36 ++;
      } else if(litersOfPaint - 2.5 >= 0){
        litersOfPaint -= 2.5;
        cans.l25 ++;
      } else if(litersOfPaint - 0.5 >= 0){
        litersOfPaint -= 0.5;
        cans.l05 ++;
      }else{
        litersOfPaint --;
      }
    }
    return cans;
  }


}
