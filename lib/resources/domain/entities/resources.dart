import 'package:equatable/equatable.dart';

enum Kind {
  pod,
  replicaset,
  deployment,
  statefulset,
  daemonset,
  svc,
  ingress,
  pv,
  pvc,
  storageclass,
}

class Resource extends Equatable {
  final String id;
  final Kind kind;
  final String name;
  final String namespace;
  const Resource({
    required this.id,
    required this.kind,
    required this.name,
    required this.namespace,
  });

  @override
  List<Object?> get props => [id];
}
