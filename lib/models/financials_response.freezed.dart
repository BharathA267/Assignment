// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'financials_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FinancialsResponse {
  int get totalDeals => throw _privateConstructorUsedError;
  int get activeDeals => throw _privateConstructorUsedError;
  int get maturedDeals => throw _privateConstructorUsedError;
  double get onTimePayment => throw _privateConstructorUsedError;
  double get raisedAmount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FinancialsResponseCopyWith<FinancialsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinancialsResponseCopyWith<$Res> {
  factory $FinancialsResponseCopyWith(
          FinancialsResponse value, $Res Function(FinancialsResponse) then) =
      _$FinancialsResponseCopyWithImpl<$Res, FinancialsResponse>;
  @useResult
  $Res call(
      {int totalDeals,
      int activeDeals,
      int maturedDeals,
      double onTimePayment,
      double raisedAmount});
}

/// @nodoc
class _$FinancialsResponseCopyWithImpl<$Res, $Val extends FinancialsResponse>
    implements $FinancialsResponseCopyWith<$Res> {
  _$FinancialsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalDeals = null,
    Object? activeDeals = null,
    Object? maturedDeals = null,
    Object? onTimePayment = null,
    Object? raisedAmount = null,
  }) {
    return _then(_value.copyWith(
      totalDeals: null == totalDeals
          ? _value.totalDeals
          : totalDeals // ignore: cast_nullable_to_non_nullable
              as int,
      activeDeals: null == activeDeals
          ? _value.activeDeals
          : activeDeals // ignore: cast_nullable_to_non_nullable
              as int,
      maturedDeals: null == maturedDeals
          ? _value.maturedDeals
          : maturedDeals // ignore: cast_nullable_to_non_nullable
              as int,
      onTimePayment: null == onTimePayment
          ? _value.onTimePayment
          : onTimePayment // ignore: cast_nullable_to_non_nullable
              as double,
      raisedAmount: null == raisedAmount
          ? _value.raisedAmount
          : raisedAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FinancialsResponseCopyWith<$Res>
    implements $FinancialsResponseCopyWith<$Res> {
  factory _$$_FinancialsResponseCopyWith(_$_FinancialsResponse value,
          $Res Function(_$_FinancialsResponse) then) =
      __$$_FinancialsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int totalDeals,
      int activeDeals,
      int maturedDeals,
      double onTimePayment,
      double raisedAmount});
}

/// @nodoc
class __$$_FinancialsResponseCopyWithImpl<$Res>
    extends _$FinancialsResponseCopyWithImpl<$Res, _$_FinancialsResponse>
    implements _$$_FinancialsResponseCopyWith<$Res> {
  __$$_FinancialsResponseCopyWithImpl(
      _$_FinancialsResponse _value, $Res Function(_$_FinancialsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalDeals = null,
    Object? activeDeals = null,
    Object? maturedDeals = null,
    Object? onTimePayment = null,
    Object? raisedAmount = null,
  }) {
    return _then(_$_FinancialsResponse(
      totalDeals: null == totalDeals
          ? _value.totalDeals
          : totalDeals // ignore: cast_nullable_to_non_nullable
              as int,
      activeDeals: null == activeDeals
          ? _value.activeDeals
          : activeDeals // ignore: cast_nullable_to_non_nullable
              as int,
      maturedDeals: null == maturedDeals
          ? _value.maturedDeals
          : maturedDeals // ignore: cast_nullable_to_non_nullable
              as int,
      onTimePayment: null == onTimePayment
          ? _value.onTimePayment
          : onTimePayment // ignore: cast_nullable_to_non_nullable
              as double,
      raisedAmount: null == raisedAmount
          ? _value.raisedAmount
          : raisedAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_FinancialsResponse implements _FinancialsResponse {
  const _$_FinancialsResponse(
      {required this.totalDeals,
      required this.activeDeals,
      required this.maturedDeals,
      required this.onTimePayment,
      required this.raisedAmount});

  @override
  final int totalDeals;
  @override
  final int activeDeals;
  @override
  final int maturedDeals;
  @override
  final double onTimePayment;
  @override
  final double raisedAmount;

  @override
  String toString() {
    return 'FinancialsResponse(totalDeals: $totalDeals, activeDeals: $activeDeals, maturedDeals: $maturedDeals, onTimePayment: $onTimePayment, raisedAmount: $raisedAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FinancialsResponse &&
            (identical(other.totalDeals, totalDeals) ||
                other.totalDeals == totalDeals) &&
            (identical(other.activeDeals, activeDeals) ||
                other.activeDeals == activeDeals) &&
            (identical(other.maturedDeals, maturedDeals) ||
                other.maturedDeals == maturedDeals) &&
            (identical(other.onTimePayment, onTimePayment) ||
                other.onTimePayment == onTimePayment) &&
            (identical(other.raisedAmount, raisedAmount) ||
                other.raisedAmount == raisedAmount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, totalDeals, activeDeals,
      maturedDeals, onTimePayment, raisedAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FinancialsResponseCopyWith<_$_FinancialsResponse> get copyWith =>
      __$$_FinancialsResponseCopyWithImpl<_$_FinancialsResponse>(
          this, _$identity);
}

abstract class _FinancialsResponse implements FinancialsResponse {
  const factory _FinancialsResponse(
      {required final int totalDeals,
      required final int activeDeals,
      required final int maturedDeals,
      required final double onTimePayment,
      required final double raisedAmount}) = _$_FinancialsResponse;

  @override
  int get totalDeals;
  @override
  int get activeDeals;
  @override
  int get maturedDeals;
  @override
  double get onTimePayment;
  @override
  double get raisedAmount;
  @override
  @JsonKey(ignore: true)
  _$$_FinancialsResponseCopyWith<_$_FinancialsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
