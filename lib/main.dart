import 'dart:developer';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_basic/store/action.dart';
import 'package:redux_basic/store/app_state.dart';
import 'package:redux_basic/store/epic.dart';
import 'package:redux_basic/store/reducer.dart';
import 'package:redux_basic/store/selector.dart';
import 'package:redux_basic/store/view_model.dart';
import 'package:redux_epics/redux_epics.dart';

void main() {
  final store = Store<AppState>(appReducer,
      initialState: AppState(),
      middleware: [EpicMiddleware<AppState>(AppMiddleware())]);
  runApp(MyApp(store: store));
}

class MyApp extends StatelessWidget {
  final Store<AppState> store;
  const MyApp({required this.store, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: const MaterialApp(
        home: MainScreen(),
      ),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: StoreConnector<AppState, ButtonViewModel>(
          distinct: true,
          onWillChange: (view, newView) {
            if (view.hashCode != newView.hashCode) {
              log(view.hashCode.toString());
              log(newView.hashCode.toString());
              log("change button");
              return;
            }
          },
          rebuildOnChange: true,
          onDidChange: (view, newView) {
            if (view.hashCode != newView.hashCode) {
              log(view.hashCode.toString());
              log(newView.hashCode.toString());
              log("change button did change");
              // return;
            }
          },
          converter: (store) => ButtonViewModel.create(store: store),
          builder: (context, viewModel) {
            return FloatingActionButton(
              onPressed: viewModel.action,
            );
          }),
      body: const BodyWidget(),
    );
  }
}

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, String>(
        rebuildOnChange: true,
        distinct: true,
        converter: (Store<AppState> store) => store.state.status,
        builder: (context, vm) {
          return Center(
            child: StoreConnector<AppState, String>(
                rebuildOnChange: true,
                distinct: true,
                converter: (Store<AppState> store) => store.state.status,
                builder: (context, vm) {
                  return Column(
                    children: [
                      const ContentWidget(),
                      StoreConnector<AppState, AppStateViewModel>(
                          distinct: true,
                          onWillChange: (previousViewModel, newViewModel) {
                            log("change text status");
                          },
                          converter: (Store<AppState> store) =>
                              AppStateViewModel.create(store: store),
                          builder: (context, viewModel) {
                            if (viewModel.status == "idle") {
                              return const Text(
                                "idle",
                                style: TextStyle(
                                  fontSize: 50,
                                ),
                              );
                            }
                            if (viewModel.status == "isLoading") {
                              return const CircularProgressIndicator();
                            }
                            return const Text("");
                          }),
                    ],
                  );
                }),
          );
        });
  }
}

class ContentWidget extends StatelessWidget {
  const ContentWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, ValueModel>(
        rebuildOnChange: false,
        distinct: true,
        onWillChange: (previousViewModel, newViewModel) {
          // log(previousViewModel.hashCode.toString());
          // log(newViewModel.hashCode.toString());
          log("change text value");
        },
        converter: (Store<AppState> store) {
          return ValueModel.create(store: store);
        },
        builder: (context, viewModel) {
          return Text(
            viewModel.value.toString(),
            style: const TextStyle(
              fontSize: 50,
            ),
          );
        });
  }
}
