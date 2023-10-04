// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'crypto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Crypto _$CryptoFromJson(Map<String, dynamic> json) {
  return _Crypto.fromJson(json);
}

/// @nodoc
mixin _$Crypto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CryptoCopyWith<Crypto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoCopyWith<$Res> {
  factory $CryptoCopyWith(Crypto value, $Res Function(Crypto) then) =
      _$CryptoCopyWithImpl<$Res>;
  $Res call(
      {int id, String name, String symbol, String slug, List<String> tags});
}

/// @nodoc
class _$CryptoCopyWithImpl<$Res> implements $CryptoCopyWith<$Res> {
  _$CryptoCopyWithImpl(this._value, this._then);

  final Crypto _value;
  // ignore: unused_field
  final $Res Function(Crypto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? symbol = freezed,
    Object? slug = freezed,
    Object? tags = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_CryptoCopyWith<$Res> implements $CryptoCopyWith<$Res> {
  factory _$$_CryptoCopyWith(_$_Crypto value, $Res Function(_$_Crypto) then) =
      __$$_CryptoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id, String name, String symbol, String slug, List<String> tags});
}

/// @nodoc
class __$$_CryptoCopyWithImpl<$Res> extends _$CryptoCopyWithImpl<$Res>
    implements _$$_CryptoCopyWith<$Res> {
  __$$_CryptoCopyWithImpl(_$_Crypto _value, $Res Function(_$_Crypto) _then)
      : super(_value, (v) => _then(v as _$_Crypto));

  @override
  _$_Crypto get _value => super._value as _$_Crypto;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? symbol = freezed,
    Object? slug = freezed,
    Object? tags = freezed,
  }) {
    return _then(_$_Crypto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      tags: tags == freezed
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_Crypto implements _Crypto {
  const _$_Crypto(
      {required this.id,
      required this.name,
      required this.symbol,
      required this.slug,
      final List<String> tags = const []})
      : _tags = tags;

  factory _$_Crypto.fromJson(Map<String, dynamic> json) =>
      _$$_CryptoFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String symbol;
  @override
  final String slug;
  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'Crypto(id: $id, name: $name, symbol: $symbol, slug: $slug, tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Crypto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.symbol, symbol) &&
            const DeepCollectionEquality().equals(other.slug, slug) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(symbol),
      const DeepCollectionEquality().hash(slug),
      const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  _$$_CryptoCopyWith<_$_Crypto> get copyWith =>
      __$$_CryptoCopyWithImpl<_$_Crypto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CryptoToJson(this);
  }
}

abstract class _Crypto implements Crypto {
  const factory _Crypto(
      {required final int id,
      required final String name,
      required final String symbol,
      required final String slug,
      final List<String> tags}) = _$_Crypto;

  factory _Crypto.fromJson(Map<String, dynamic> json) = _$_Crypto.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get symbol => throw _privateConstructorUsedError;
  @override
  String get slug => throw _privateConstructorUsedError;
  @override
  List<String> get tags => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CryptoCopyWith<_$_Crypto> get copyWith =>
      throw _privateConstructorUsedError;
}

Quote _$QuoteFromJson(Map<String, dynamic> json) {
  return _Quote.fromJson(json);
}

/// @nodoc
mixin _$Quote {
  double get price => throw _privateConstructorUsedError;
  int get volume24H => throw _privateConstructorUsedError;
  double get percentChange1H => throw _privateConstructorUsedError;
  double get percentChange24H => throw _privateConstructorUsedError;
  double get percentChange7D => throw _privateConstructorUsedError;
  int get marketCap => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuoteCopyWith<Quote> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuoteCopyWith<$Res> {
  factory $QuoteCopyWith(Quote value, $Res Function(Quote) then) =
      _$QuoteCopyWithImpl<$Res>;
  $Res call(
      {double price,
      int volume24H,
      double percentChange1H,
      double percentChange24H,
      double percentChange7D,
      int marketCap,
      DateTime lastUpdated});
}

/// @nodoc
class _$QuoteCopyWithImpl<$Res> implements $QuoteCopyWith<$Res> {
  _$QuoteCopyWithImpl(this._value, this._then);

  final Quote _value;
  // ignore: unused_field
  final $Res Function(Quote) _then;

  @override
  $Res call({
    Object? price = freezed,
    Object? volume24H = freezed,
    Object? percentChange1H = freezed,
    Object? percentChange24H = freezed,
    Object? percentChange7D = freezed,
    Object? marketCap = freezed,
    Object? lastUpdated = freezed,
  }) {
    return _then(_value.copyWith(
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      volume24H: volume24H == freezed
          ? _value.volume24H
          : volume24H // ignore: cast_nullable_to_non_nullable
              as int,
      percentChange1H: percentChange1H == freezed
          ? _value.percentChange1H
          : percentChange1H // ignore: cast_nullable_to_non_nullable
              as double,
      percentChange24H: percentChange24H == freezed
          ? _value.percentChange24H
          : percentChange24H // ignore: cast_nullable_to_non_nullable
              as double,
      percentChange7D: percentChange7D == freezed
          ? _value.percentChange7D
          : percentChange7D // ignore: cast_nullable_to_non_nullable
              as double,
      marketCap: marketCap == freezed
          ? _value.marketCap
          : marketCap // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_QuoteCopyWith<$Res> implements $QuoteCopyWith<$Res> {
  factory _$$_QuoteCopyWith(_$_Quote value, $Res Function(_$_Quote) then) =
      __$$_QuoteCopyWithImpl<$Res>;
  @override
  $Res call(
      {double price,
      int volume24H,
      double percentChange1H,
      double percentChange24H,
      double percentChange7D,
      int marketCap,
      DateTime lastUpdated});
}

/// @nodoc
class __$$_QuoteCopyWithImpl<$Res> extends _$QuoteCopyWithImpl<$Res>
    implements _$$_QuoteCopyWith<$Res> {
  __$$_QuoteCopyWithImpl(_$_Quote _value, $Res Function(_$_Quote) _then)
      : super(_value, (v) => _then(v as _$_Quote));

  @override
  _$_Quote get _value => super._value as _$_Quote;

  @override
  $Res call({
    Object? price = freezed,
    Object? volume24H = freezed,
    Object? percentChange1H = freezed,
    Object? percentChange24H = freezed,
    Object? percentChange7D = freezed,
    Object? marketCap = freezed,
    Object? lastUpdated = freezed,
  }) {
    return _then(_$_Quote(
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      volume24H: volume24H == freezed
          ? _value.volume24H
          : volume24H // ignore: cast_nullable_to_non_nullable
              as int,
      percentChange1H: percentChange1H == freezed
          ? _value.percentChange1H
          : percentChange1H // ignore: cast_nullable_to_non_nullable
              as double,
      percentChange24H: percentChange24H == freezed
          ? _value.percentChange24H
          : percentChange24H // ignore: cast_nullable_to_non_nullable
              as double,
      percentChange7D: percentChange7D == freezed
          ? _value.percentChange7D
          : percentChange7D // ignore: cast_nullable_to_non_nullable
              as double,
      marketCap: marketCap == freezed
          ? _value.marketCap
          : marketCap // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_Quote implements _Quote {
  const _$_Quote(
      {required this.price,
      required this.volume24H,
      required this.percentChange1H,
      required this.percentChange24H,
      required this.percentChange7D,
      required this.marketCap,
      required this.lastUpdated});

  factory _$_Quote.fromJson(Map<String, dynamic> json) =>
      _$$_QuoteFromJson(json);

  @override
  final double price;
  @override
  final int volume24H;
  @override
  final double percentChange1H;
  @override
  final double percentChange24H;
  @override
  final double percentChange7D;
  @override
  final int marketCap;
  @override
  final DateTime lastUpdated;

  @override
  String toString() {
    return 'Quote(price: $price, volume24H: $volume24H, percentChange1H: $percentChange1H, percentChange24H: $percentChange24H, percentChange7D: $percentChange7D, marketCap: $marketCap, lastUpdated: $lastUpdated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Quote &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.volume24H, volume24H) &&
            const DeepCollectionEquality()
                .equals(other.percentChange1H, percentChange1H) &&
            const DeepCollectionEquality()
                .equals(other.percentChange24H, percentChange24H) &&
            const DeepCollectionEquality()
                .equals(other.percentChange7D, percentChange7D) &&
            const DeepCollectionEquality().equals(other.marketCap, marketCap) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(volume24H),
      const DeepCollectionEquality().hash(percentChange1H),
      const DeepCollectionEquality().hash(percentChange24H),
      const DeepCollectionEquality().hash(percentChange7D),
      const DeepCollectionEquality().hash(marketCap),
      const DeepCollectionEquality().hash(lastUpdated));

  @JsonKey(ignore: true)
  @override
  _$$_QuoteCopyWith<_$_Quote> get copyWith =>
      __$$_QuoteCopyWithImpl<_$_Quote>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuoteToJson(this);
  }
}

abstract class _Quote implements Quote {
  const factory _Quote(
      {required final double price,
      required final int volume24H,
      required final double percentChange1H,
      required final double percentChange24H,
      required final double percentChange7D,
      required final int marketCap,
      required final DateTime lastUpdated}) = _$_Quote;

  factory _Quote.fromJson(Map<String, dynamic> json) = _$_Quote.fromJson;

  @override
  double get price => throw _privateConstructorUsedError;
  @override
  int get volume24H => throw _privateConstructorUsedError;
  @override
  double get percentChange1H => throw _privateConstructorUsedError;
  @override
  double get percentChange24H => throw _privateConstructorUsedError;
  @override
  double get percentChange7D => throw _privateConstructorUsedError;
  @override
  int get marketCap => throw _privateConstructorUsedError;
  @override
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_QuoteCopyWith<_$_Quote> get copyWith =>
      throw _privateConstructorUsedError;
}
