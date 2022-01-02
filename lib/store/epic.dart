import 'dart:developer';

import 'package:redux/redux.dart';
import 'package:redux_basic/store/action.dart';
import 'package:redux_basic/store/app_state.dart';
import 'package:redux_epics/redux_epics.dart';

class AppMiddleware implements EpicClass<AppState> {
  @override
  Stream call(Stream actions, EpicStore<AppState> store) {
    return combineEpics<AppState>([
      epicsIncrement,
    ])(actions, store);
  }

  Stream<Increment> epicsIncrement(
    Stream<dynamic> actions,
    EpicStore<AppState> store,
  ) async* {
    await for (final action in actions) {
      if (action is MiddlewareIncrement) {
        try {
          yield ReducerStatus.create(status: "isLoading");
          await Future.delayed(const Duration(seconds: 1));
          yield ReducerIncrement.create();
        } catch (e, stackTrack) {
          yield ReducerStatus.create(status: "error");
          log(
            "Error when get all tasks from local storage",
            error: e,
            stackTrace: stackTrack,
          );
        } finally {
          yield ReducerStatus.create(status: "idle");
        }
      }
    }
  }
}

Stream<Increment> outSideStream() async* {
  await Future.delayed(const Duration(seconds: 3));
  // await Future.delayed(const Duration(seconds: 3));
}
