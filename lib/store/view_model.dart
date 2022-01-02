import 'package:built_value/built_value.dart';
import 'package:redux/redux.dart';
import 'package:redux_basic/store/action.dart';
import 'package:redux_basic/store/app_state.dart';

part 'view_model.g.dart';

abstract class ViewModel {}

abstract class AppStateViewModel
    implements Built<AppStateViewModel, AppStateViewModelBuilder>, ViewModel {
  int get value;
  String get status;
  AppStateViewModel._();
  factory AppStateViewModel.create({required Store<AppState> store}) =>
      AppStateViewModel((update) => update
        ..status = store.state.status
        ..value = store.state.value);
  factory AppStateViewModel([void Function(AppStateViewModelBuilder) updates]) =
      _$AppStateViewModel;
}

abstract class ButtonViewModel
    implements Built<ButtonViewModel, ButtonViewModelBuilder> {
  @BuiltValueField(compare: false)
  Function()? get action;
  ButtonViewModel._();

  static ButtonViewModel fromStore(Store<AppState> store) {
    return ButtonViewModel((update) => update
      ..action = () {
        store.dispatch(MiddlewareIncrement.create());
      });
  }

  factory ButtonViewModel.create({required Store<AppState> store}) =>
      ButtonViewModel((update) => update
        ..action = () {
          store.dispatch(MiddlewareIncrement.create());
        });
  factory ButtonViewModel([void Function(ButtonViewModelBuilder) updates]) =
      _$ButtonViewModel;
}

abstract class ValueModel implements Built<ValueModel, ValueModelBuilder> {
  int get value;
  ValueModel._();
  factory ValueModel.create({required Store<AppState> store}) => ValueModel(
        (update) => update..value = store.state.value,
      );
  factory ValueModel([void Function(ValueModelBuilder) updates]) = _$ValueModel;
}
