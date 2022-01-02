// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReducerIncrement extends ReducerIncrement {
  factory _$ReducerIncrement(
          [void Function(ReducerIncrementBuilder)? updates]) =>
      (new ReducerIncrementBuilder()..update(updates)).build();

  _$ReducerIncrement._() : super._();

  @override
  ReducerIncrement rebuild(void Function(ReducerIncrementBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReducerIncrementBuilder toBuilder() =>
      new ReducerIncrementBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReducerIncrement;
  }

  @override
  int get hashCode {
    return 249056487;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('ReducerIncrement').toString();
  }
}

class ReducerIncrementBuilder
    implements Builder<ReducerIncrement, ReducerIncrementBuilder> {
  _$ReducerIncrement? _$v;

  ReducerIncrementBuilder();

  @override
  void replace(ReducerIncrement other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReducerIncrement;
  }

  @override
  void update(void Function(ReducerIncrementBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReducerIncrement build() {
    final _$result = _$v ?? new _$ReducerIncrement._();
    replace(_$result);
    return _$result;
  }
}

class _$MiddlewareIncrement extends MiddlewareIncrement {
  factory _$MiddlewareIncrement(
          [void Function(MiddlewareIncrementBuilder)? updates]) =>
      (new MiddlewareIncrementBuilder()..update(updates)).build();

  _$MiddlewareIncrement._() : super._();

  @override
  MiddlewareIncrement rebuild(
          void Function(MiddlewareIncrementBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MiddlewareIncrementBuilder toBuilder() =>
      new MiddlewareIncrementBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MiddlewareIncrement;
  }

  @override
  int get hashCode {
    return 549571455;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('MiddlewareIncrement').toString();
  }
}

class MiddlewareIncrementBuilder
    implements Builder<MiddlewareIncrement, MiddlewareIncrementBuilder> {
  _$MiddlewareIncrement? _$v;

  MiddlewareIncrementBuilder();

  @override
  void replace(MiddlewareIncrement other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MiddlewareIncrement;
  }

  @override
  void update(void Function(MiddlewareIncrementBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MiddlewareIncrement build() {
    final _$result = _$v ?? new _$MiddlewareIncrement._();
    replace(_$result);
    return _$result;
  }
}

class _$ReducerStatus extends ReducerStatus {
  @override
  final String status;

  factory _$ReducerStatus([void Function(ReducerStatusBuilder)? updates]) =>
      (new ReducerStatusBuilder()..update(updates)).build();

  _$ReducerStatus._({required this.status}) : super._() {
    BuiltValueNullFieldError.checkNotNull(status, 'ReducerStatus', 'status');
  }

  @override
  ReducerStatus rebuild(void Function(ReducerStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReducerStatusBuilder toBuilder() => new ReducerStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReducerStatus && status == other.status;
  }

  @override
  int get hashCode {
    return $jf($jc(0, status.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReducerStatus')..add('status', status))
        .toString();
  }
}

class ReducerStatusBuilder
    implements Builder<ReducerStatus, ReducerStatusBuilder> {
  _$ReducerStatus? _$v;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  ReducerStatusBuilder();

  ReducerStatusBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReducerStatus other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReducerStatus;
  }

  @override
  void update(void Function(ReducerStatusBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReducerStatus build() {
    final _$result = _$v ??
        new _$ReducerStatus._(
            status: BuiltValueNullFieldError.checkNotNull(
                status, 'ReducerStatus', 'status'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
