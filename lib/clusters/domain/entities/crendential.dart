import 'package:equatable/equatable.dart';

enum CredType { jwt, kubeConfig }

class Credential extends Equatable {
  final CredType credType;
  final String value;
  const Credential({
    required this.credType,
    required this.value,
  });

  @override
  List<Object?> get props => [credType, value];
}
