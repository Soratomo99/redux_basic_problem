import 'package:equatable/equatable.dart';
import 'package:redux/redux.dart';
import 'package:redux_basic/store/action.dart';
import 'package:redux_basic/store/app_state.dart';

statusSelector(AppState state) => state.status;

valueSelector(AppState state) => state.value;

class TempView extends Equatable {
  final Function()? action;
  const TempView(this.action);
  factory TempView.create({required Store<AppState> store}) =>
      TempView(() =>store.dispatch(MiddlewareIncrement.create()));

  @override
  List<Object?> get props => [TempView];
}
