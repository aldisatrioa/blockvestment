import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:starter_app/model/my_stock_info.dart';

part 'stock.freezed.dart';

@freezed
class Stock with _$Stock {
  Stock._();
  factory Stock({
    @Default('') String name,
    @Default('') String code,
    @Default(0.0) double lastPrice,
    MyStockInfo? myStock
  }) = _Stock;

  String get logoSrc => "https://eodhistoricaldata.com/img/logos/US/${code}.png";

}