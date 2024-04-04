// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'investment_details_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InvestmentDetailsResponse {
  String get investedIn => throw _privateConstructorUsedError;
  String get investorName => throw _privateConstructorUsedError;
  double get minimumInvestmentAmount => throw _privateConstructorUsedError;
  int get tenure => throw _privateConstructorUsedError;
  double get netYield => throw _privateConstructorUsedError;
  double get raisedAmountPercentage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InvestmentDetailsResponseCopyWith<InvestmentDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvestmentDetailsResponseCopyWith<$Res> {
  factory $InvestmentDetailsResponseCopyWith(InvestmentDetailsResponse value,
          $Res Function(InvestmentDetailsResponse) then) =
      _$InvestmentDetailsResponseCopyWithImpl<$Res, InvestmentDetailsResponse>;
  @useResult
  $Res call(
      {String investedIn,
      String investorName,
      double minimumInvestmentAmount,
      int tenure,
      double netYield,
      double raisedAmountPercentage});
}

/// @nodoc
class _$InvestmentDetailsResponseCopyWithImpl<$Res,
        $Val extends InvestmentDetailsResponse>
    implements $InvestmentDetailsResponseCopyWith<$Res> {
  _$InvestmentDetailsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? investedIn = null,
    Object? investorName = null,
    Object? minimumInvestmentAmount = null,
    Object? tenure = null,
    Object? netYield = null,
    Object? raisedAmountPercentage = null,
  }) {
    return _then(_value.copyWith(
      investedIn: null == investedIn
          ? _value.investedIn
          : investedIn // ignore: cast_nullable_to_non_nullable
              as String,
      investorName: null == investorName
          ? _value.investorName
          : investorName // ignore: cast_nullable_to_non_nullable
              as String,
      minimumInvestmentAmount: null == minimumInvestmentAmount
          ? _value.minimumInvestmentAmount
          : minimumInvestmentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      tenure: null == tenure
          ? _value.tenure
          : tenure // ignore: cast_nullable_to_non_nullable
              as int,
      netYield: null == netYield
          ? _value.netYield
          : netYield // ignore: cast_nullable_to_non_nullable
              as double,
      raisedAmountPercentage: null == raisedAmountPercentage
          ? _value.raisedAmountPercentage
          : raisedAmountPercentage // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InvestmentDetailsResponseCopyWith<$Res>
    implements $InvestmentDetailsResponseCopyWith<$Res> {
  factory _$$_InvestmentDetailsResponseCopyWith(
          _$_InvestmentDetailsResponse value,
          $Res Function(_$_InvestmentDetailsResponse) then) =
      __$$_InvestmentDetailsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String investedIn,
      String investorName,
      double minimumInvestmentAmount,
      int tenure,
      double netYield,
      double raisedAmountPercentage});
}

/// @nodoc
class __$$_InvestmentDetailsResponseCopyWithImpl<$Res>
    extends _$InvestmentDetailsResponseCopyWithImpl<$Res,
        _$_InvestmentDetailsResponse>
    implements _$$_InvestmentDetailsResponseCopyWith<$Res> {
  __$$_InvestmentDetailsResponseCopyWithImpl(
      _$_InvestmentDetailsResponse _value,
      $Res Function(_$_InvestmentDetailsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? investedIn = null,
    Object? investorName = null,
    Object? minimumInvestmentAmount = null,
    Object? tenure = null,
    Object? netYield = null,
    Object? raisedAmountPercentage = null,
  }) {
    return _then(_$_InvestmentDetailsResponse(
      investedIn: null == investedIn
          ? _value.investedIn
          : investedIn // ignore: cast_nullable_to_non_nullable
              as String,
      investorName: null == investorName
          ? _value.investorName
          : investorName // ignore: cast_nullable_to_non_nullable
              as String,
      minimumInvestmentAmount: null == minimumInvestmentAmount
          ? _value.minimumInvestmentAmount
          : minimumInvestmentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      tenure: null == tenure
          ? _value.tenure
          : tenure // ignore: cast_nullable_to_non_nullable
              as int,
      netYield: null == netYield
          ? _value.netYield
          : netYield // ignore: cast_nullable_to_non_nullable
              as double,
      raisedAmountPercentage: null == raisedAmountPercentage
          ? _value.raisedAmountPercentage
          : raisedAmountPercentage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_InvestmentDetailsResponse implements _InvestmentDetailsResponse {
  const _$_InvestmentDetailsResponse(
      {required this.investedIn,
      required this.investorName,
      required this.minimumInvestmentAmount,
      required this.tenure,
      required this.netYield,
      required this.raisedAmountPercentage});

  @override
  final String investedIn;
  @override
  final String investorName;
  @override
  final double minimumInvestmentAmount;
  @override
  final int tenure;
  @override
  final double netYield;
  @override
  final double raisedAmountPercentage;

  @override
  String toString() {
    return 'InvestmentDetailsResponse(investedIn: $investedIn, investorName: $investorName, minimumInvestmentAmount: $minimumInvestmentAmount, tenure: $tenure, netYield: $netYield, raisedAmountPercentage: $raisedAmountPercentage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvestmentDetailsResponse &&
            (identical(other.investedIn, investedIn) ||
                other.investedIn == investedIn) &&
            (identical(other.investorName, investorName) ||
                other.investorName == investorName) &&
            (identical(
                    other.minimumInvestmentAmount, minimumInvestmentAmount) ||
                other.minimumInvestmentAmount == minimumInvestmentAmount) &&
            (identical(other.tenure, tenure) || other.tenure == tenure) &&
            (identical(other.netYield, netYield) ||
                other.netYield == netYield) &&
            (identical(other.raisedAmountPercentage, raisedAmountPercentage) ||
                other.raisedAmountPercentage == raisedAmountPercentage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, investedIn, investorName,
      minimumInvestmentAmount, tenure, netYield, raisedAmountPercentage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvestmentDetailsResponseCopyWith<_$_InvestmentDetailsResponse>
      get copyWith => __$$_InvestmentDetailsResponseCopyWithImpl<
          _$_InvestmentDetailsResponse>(this, _$identity);
}

abstract class _InvestmentDetailsResponse implements InvestmentDetailsResponse {
  const factory _InvestmentDetailsResponse(
          {required final String investedIn,
          required final String investorName,
          required final double minimumInvestmentAmount,
          required final int tenure,
          required final double netYield,
          required final double raisedAmountPercentage}) =
      _$_InvestmentDetailsResponse;

  @override
  String get investedIn;
  @override
  String get investorName;
  @override
  double get minimumInvestmentAmount;
  @override
  int get tenure;
  @override
  double get netYield;
  @override
  double get raisedAmountPercentage;
  @override
  @JsonKey(ignore: true)
  _$$_InvestmentDetailsResponseCopyWith<_$_InvestmentDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}
