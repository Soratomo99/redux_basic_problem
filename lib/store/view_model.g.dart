// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'view_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AppStateViewModel extends AppStateViewModel {
  @override
  final int value;
  @override
  final String status;

  factory _$AppStateViewModel(
          [void Function(AppStateViewModelBuilder)? updates]) =>
      (new AppStateViewModelBuilder()..update(updates)).build();

  _$AppStateViewModel._({required this.value, required this.status})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(value, 'AppStateViewModel', 'value');
    BuiltValueNullFieldError.checkNotNull(
        status, 'AppStateViewModel', 'status');
  }

  @override
  AppStateViewModel rebuild(void Function(AppStateViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateViewModelBuilder toBuilder() =>
      new AppStateViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppStateViewModel &&
        value == other.value &&
        status == other.status;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, value.hashCode), status.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppStateViewModel')
          ..add('value', value)
          ..add('status', status))
        .toString();
  }
}

class AppStateViewModelBuilder
    implements Builder<AppStateViewModel, AppStateViewModelBuilder> {
  _$AppStateViewModel? _$v;

  int? _value;
  int? get value => _$this._value;
  set value(int? value) => _$this._value = value;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  AppStateViewModelBuilder();

  AppStateViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppStateViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppStateViewModel;
  }

  @override
  void update(void Function(AppStateViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppStateViewModel build() {
    final _$result = _$v ??
        new _$AppStateViewModel._(
            value: BuiltValueNullFieldError.checkNotNull(
                value, 'AppStateViewModel', 'value'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, 'AppStateViewModel', 'status'));
    replace(_$result);
    return _$result;
  }
}

class _$ButtonViewModel extends ButtonViewModel {
  @override
  final Function()? action;

  factory _$ButtonViewModel([void Function(ButtonViewModelBuilder)? updates]) =>
      (new ButtonViewModelBuilder()..update(updates)).build();

  _$ButtonViewModel._({this.action}) : super._();

  @override
  ButtonViewModel rebuild(void Function(ButtonViewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ButtonViewModelBuilder toBuilder() =>
      new ButtonViewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ButtonViewModel;
  }

  @override
  int get hashCode {
    return 753314283;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ButtonViewModel')
          ..add('action', action))
        .toString();
  }
}

class ButtonViewModelBuilder
    implements Builder<ButtonViewModel, ButtonViewModelBuilder> {
  _$ButtonViewModel? _$v;

  Function()? _action;
  Function()? get action => _$this._action;
  set action(Function()? action) => _$this._action = action;

  ButtonViewModelBuilder();

  ButtonViewModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _action = $v.action;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ButtonViewModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ButtonViewModel;
  }

  @override
  void update(void Function(ButtonViewModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ButtonViewModel build() {
    final _$result = _$v ?? new _$ButtonViewModel._(action: action);
    replace(_$result);
    return _$result;
  }
}

class _$ValueModel extends ValueModel {
  @override
  final int value;

  factory _$ValueModel([void Function(ValueModelBuilder)? updates]) =>
      (new ValueModelBuilder()..update(updates)).build();

  _$ValueModel._({required this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(value, 'ValueModel', 'value');
  }

  @override
  ValueModel rebuild(void Function(ValueModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ValueModelBuilder toBuilder() => new ValueModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ValueModel && value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc(0, value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ValueModel')..add('value', value))
        .toString();
  }
}

class ValueModelBuilder implements Builder<ValueModel, ValueModelBuilder> {
  _$ValueModel? _$v;

  int? _value;
  int? get value => _$this._value;
  set value(int? value) => _$this._value = value;

  ValueModelBuilder();

  ValueModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ValueModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ValueModel;
  }

  @override
  void update(void Function(ValueModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ValueModel build() {
    final _$result = _$v ??
        new _$ValueModel._(
            value: BuiltValueNullFieldError.checkNotNull(
                value, 'ValueModel', 'value'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
