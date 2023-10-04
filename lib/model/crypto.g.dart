// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Crypto _$$_CryptoFromJson(Map<String, dynamic> json) => _$_Crypto(
      id: json['id'] as int,
      name: json['name'] as String,
      symbol: json['symbol'] as String,
      slug: json['slug'] as String,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
    );

Map<String, dynamic> _$$_CryptoToJson(_$_Crypto instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'symbol': instance.symbol,
      'slug': instance.slug,
      'tags': instance.tags,
    };

_$_Quote _$$_QuoteFromJson(Map<String, dynamic> json) => _$_Quote(
      price: (json['price'] as num).toDouble(),
      volume24H: json['volume24_h'] as int,
      percentChange1H: (json['percent_change1_h'] as num).toDouble(),
      percentChange24H: (json['percent_change24_h'] as num).toDouble(),
      percentChange7D: (json['percent_change7_d'] as num).toDouble(),
      marketCap: json['market_cap'] as int,
      lastUpdated: DateTime.parse(json['last_updated'] as String),
    );

Map<String, dynamic> _$$_QuoteToJson(_$_Quote instance) => <String, dynamic>{
      'price': instance.price,
      'volume24_h': instance.volume24H,
      'percent_change1_h': instance.percentChange1H,
      'percent_change24_h': instance.percentChange24H,
      'percent_change7_d': instance.percentChange7D,
      'market_cap': instance.marketCap,
      'last_updated': instance.lastUpdated.toIso8601String(),
    };
