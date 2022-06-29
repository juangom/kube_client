import 'package:equatable/equatable.dart';

class Failure extends Equatable {
  final String msg;

  const Failure(this.msg);
  @override
  List<Object?> get props => [msg];
}
