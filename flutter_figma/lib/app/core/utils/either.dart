import 'package:flutter_figma/app/core/utils/singleton.dart';

abstract interface class Either<L, R> {
  Singleton fold({
    Singleton Function(R value)? right,
    Singleton Function(L value)? left,
  });
}

class Right<L, R> extends Either<L, R> {
  final R _value;
  Right(this._value);

  @override
  Singleton fold({
    Singleton Function(R value)? right,
    Singleton Function(L value)? left,
  }) {
    right?.call(_value);
    return singleton;
  }
}

class Left<L, R> extends Either<L, R> {
  final L _failure;

  Left(this._failure);

  @override
  Singleton fold({
    Singleton Function(R value)? right,
    Singleton Function(L value)? left,
  }) {
    left?.call(_failure);
    return singleton;
  }
}
