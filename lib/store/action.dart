import 'package:built_value/built_value.dart';
part 'action.g.dart';

abstract class Increment {}

abstract class ReducerIncrement
    implements Built<ReducerIncrement, ReducerIncrementBuilder>, Increment {
  ReducerIncrement._();
  factory ReducerIncrement.create() => ReducerIncrement();
  factory ReducerIncrement([void Function(ReducerIncrementBuilder) updates]) =
      _$ReducerIncrement;
}

abstract class MiddlewareIncrement
    implements
        Built<MiddlewareIncrement, MiddlewareIncrementBuilder>,
        Increment {
  MiddlewareIncrement._();
  factory MiddlewareIncrement.create() => MiddlewareIncrement();
  factory MiddlewareIncrement(
          [void Function(MiddlewareIncrementBuilder) updates]) =
      _$MiddlewareIncrement;
}

// class MiddlewareIncrement {}

abstract class ReducerStatus
    implements Built<ReducerStatus, ReducerStatusBuilder>, Increment {
  String get status;
  ReducerStatus._();
  factory ReducerStatus.create({required String status}) =>
      ReducerStatus((update) => update..status = status);
  factory ReducerStatus([void Function(ReducerStatusBuilder) updates]) =
      _$ReducerStatus;
}
