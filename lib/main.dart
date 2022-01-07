import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_basic/store/app_state.dart';
import 'package:redux_basic/store/epic.dart';
import 'package:redux_basic/store/reducer.dart';
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
          rebuildOnChange: true,
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
          // using no parameters stateless widget, StoreConnector will not be rebuilt
          log("Build StoreConnector BodyWidget");
          return Center(
            child: Column(
              children: [
                ContentWidget(status: vm),
                Cache<String>(
                    value: vm,
                    builder: (context, value) {
                      log("BUILD CacheWidget");
                      return ContentWidget(
                        status: value,
                      );
                    }),
                StoreConnector<AppState, AppStateViewModel>(
                    rebuildOnChange: false,
                    distinct: true,
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
            ),
          );
        });
  }
}

class ContentWidget extends StatelessWidget {
  final String status;
  const ContentWidget({
    required this.status,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, ValueModel>(
        rebuildOnChange: false,
        distinct: true,
        onWillChange: (previousViewModel, newViewModel) {},
        converter: (Store<AppState> store) {
          return ValueModel.create(store: store);
        },
        builder: (context, viewModel) {
          log("change text value and the status is $status");
          return Text(
            viewModel.value.toString(),
            style: const TextStyle(
              fontSize: 50,
            ),
          );
        });
  }

  // The member 'hashCode' is declared non-virtual in 'Widget'
  // and can't be overridden in subclasses.
  // @override
  // bool operator ==(Object other) =>
  //     identical(this, other) || (other is ContentWidget);

}

class Cache<T> extends StatefulWidget {
  const Cache({Key? key, required this.builder, required this.value})
      : super(key: key);

  final Widget Function(BuildContext context, T value) builder;
  final T value;

  @override
  _CacheState<T> createState() => _CacheState<T>();
}

class _CacheState<T> extends State<Cache<T>> {
  Widget? cache;
  T? previousValue;

  @override
  Widget build(BuildContext context) {
    if (widget.value == "idle" && widget.value != previousValue) {
      previousValue = widget.value;
      cache = Builder(
        builder: (context) => widget.builder(context, widget.value),
      );
    }
    return cache!;
  }
}
