import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'app_state.g.dart';

abstract class AbstractAppState {}

abstract class AppState
    implements Built<AppState, AppStateBuilder>, AbstractAppState {
  int get value;
  String get status;
  AppState._();
  static Serializer<AppState> get serializer => _$appStateSerializer;
  static void _initializeBuilder(AppStateBuilder builder) {
    builder.value = 0;
    builder.status = "idle";
  }

  factory AppState([void Function(AppStateBuilder)? updates]) = _$AppState;
}
