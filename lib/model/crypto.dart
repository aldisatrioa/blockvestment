// To parse this JSON data, do
//
//     final crypto = cryptoFromJson(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'crypto.freezed.dart';
part 'crypto.g.dart';

@freezed
class Crypto with _$Crypto {

  @JsonSerializable(fieldRename:FieldRename.snake)
  const factory Crypto({
    required int id,
    required String name,
    required String symbol,
    required String slug,
    @Default([])
    List<String> tags,
  }) = _Crypto;

  factory Crypto.fromJson(Map<String, dynamic> json) => _$CryptoFromJson(json);
}

@freezed
class Quote with _$Quote {

  @JsonSerializable(fieldRename:FieldRename.snake)
  const factory Quote({
    required double price,
    required int volume24H,
    required double percentChange1H,
    required double percentChange24H,
    required double percentChange7D,
    required int marketCap,
    required DateTime lastUpdated,
  }) = _Quote;

  factory Quote.fromJson(Map<String, dynamic> json) => _$QuoteFromJson(json);
}
