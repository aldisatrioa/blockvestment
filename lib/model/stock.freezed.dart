// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stock.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Stock {
  String get name => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  double get lastPrice => throw _privateConstructorUsedError;
  MyStockInfo? get myStock => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StockCopyWith<Stock> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockCopyWith<$Res> {
  factory $StockCopyWith(Stock value, $Res Function(Stock) then) =
      _$StockCopyWithImpl<$Res>;
  $Res call({String name, String code, double lastPrice, MyStockInfo? myStock});
}

/// @nodoc
class _$StockCopyWithImpl<$Res> implements $StockCopyWith<$Res> {
  _$StockCopyWithImpl(this._value, this._then);

  final Stock _value;
  // ignore: unused_field
  final $Res Function(Stock) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
    Object? lastPrice = freezed,
    Object? myStock = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      lastPrice: lastPrice == freezed
          ? _value.lastPrice
          : lastPrice // ignore: cast_nullable_to_non_nullable
              as double,
      myStock: myStock == freezed
          ? _value.myStock
          : myStock // ignore: cast_nullable_to_non_nullable
              as MyStockInfo?,
    ));
  }
}

/// @nodoc
abstract class _$$_StockCopyWith<$Res> implements $StockCopyWith<$Res> {
  factory _$$_StockCopyWith(_$_Stock value, $Res Function(_$_Stock) then) =
      __$$_StockCopyWithImpl<$Res>;
  @override
  $Res call({String name, String code, double lastPrice, MyStockInfo? myStock});
}

/// @nodoc
class __$$_StockCopyWithImpl<$Res> extends _$StockCopyWithImpl<$Res>
    implements _$$_StockCopyWith<$Res> {
  __$$_StockCopyWithImpl(_$_Stock _value, $Res Function(_$_Stock) _then)
      : super(_value, (v) => _then(v as _$_Stock));

  @override
  _$_Stock get _value => super._value as _$_Stock;

  @override
  $Res call({
    Object? name = freezed,
    Object? code = freezed,
    Object? lastPrice = freezed,
    Object? myStock = freezed,
  }) {
    return _then(_$_Stock(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      lastPrice: lastPrice == freezed
          ? _value.lastPrice
          : lastPrice // ignore: cast_nullable_to_non_nullable
              as double,
      myStock: myStock == freezed
          ? _value.myStock
          : myStock // ignore: cast_nullable_to_non_nullable
              as MyStockInfo?,
    ));
  }
}

/// @nodoc

class _$_Stock extends _Stock {
  _$_Stock({this.name = '', this.code = '', this.lastPrice = 0.0, this.myStock})
      : super._();

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String code;
  @override
  @JsonKey()
  final double lastPrice;
  @override
  final MyStockInfo? myStock;

  @override
  String toString() {
    return 'Stock(name: $name, code: $code, lastPrice: $lastPrice, myStock: $myStock)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Stock &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.lastPrice, lastPrice) &&
            const DeepCollectionEquality().equals(other.myStock, myStock));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(lastPrice),
      const DeepCollectionEquality().hash(myStock));

  @JsonKey(ignore: true)
  @override
  _$$_StockCopyWith<_$_Stock> get copyWith =>
      __$$_StockCopyWithImpl<_$_Stock>(this, _$identity);
}

abstract class _Stock extends Stock {
  factory _Stock(
      {final String name,
      final String code,
      final double lastPrice,
      final MyStockInfo? myStock}) = _$_Stock;
  _Stock._() : super._();

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get code => throw _privateConstructorUsedError;
  @override
  double get lastPrice => throw _privateConstructorUsedError;
  @override
  MyStockInfo? get myStock => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_StockCopyWith<_$_Stock> get copyWith =>
      throw _privateConstructorUsedError;
}
