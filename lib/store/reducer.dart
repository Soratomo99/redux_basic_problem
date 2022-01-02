import 'package:redux/redux.dart';
import 'package:redux_basic/store/action.dart';
import 'package:redux_basic/store/app_state.dart';

// final Reducer<AppState> appStateReducer = combineReducers<AppState>([
//   TypedReducer<AppState, ReducerStatus>(reducerStatus),
//   TypedReducer<AppState, ReducerIncrement>(reducerIncrement),
// ]);

// AppState reducerIncrement(AppState state, Increment action) {
//   return state.rebuild((p0) => p0..value = state.value + 1);
// }

// AppState reducerStatus(AppState state, ReducerStatus action) {
//   return state.rebuild((p0) => p0..status = action.status);
// }

AppState appReducer(AppState state, action) {
  return AppState(
      (update) => update..value = valueReducer(state.value, action)
      ..status = statusReducer(state.status, action));
}

final valueReducer = combineReducers<int>([
  TypedReducer<int, ReducerIncrement>(_requestValueReducer),
]);

int _requestValueReducer(int state, ReducerIncrement action) {
  return state + 1;
}

final statusReducer = combineReducers<String>([
  TypedReducer<String, ReducerStatus>(_requestStatusReducer),
]);

String _requestStatusReducer(String state, ReducerStatus action) {
  return action.status;
}
