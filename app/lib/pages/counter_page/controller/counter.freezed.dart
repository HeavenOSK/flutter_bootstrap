// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters

part of 'counter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$Counter {
  @Default(0)
  int get count;

  Counter copyWith({@Default(0) int count});
}

class _$_Counter implements _Counter {
  const _$_Counter({@Default(0) this.count = 0});

  @JsonKey(defaultValue: 0)
  @override
  @Default(0)
  final int count;

  @override
  String toString() {
    return 'Counter(count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Counter &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(count);

  @override
  _$_Counter copyWith({
    Object count = freezed,
  }) {
    return _$_Counter(
      count: count == freezed ? this.count : count as int,
    );
  }
}

abstract class _Counter implements Counter {
  const factory _Counter({@Default(0) int count}) = _$_Counter;

  @override
  @Default(0)
  int get count;

  @override
  _Counter copyWith({@Default(0) int count});
}
