import 'package:equatable/equatable.dart';
import 'package:kube_client/k8s/domain/entities/crendential.dart';

enum ClusterStatus { down, up }

class Cluster extends Equatable {
  final String id;
  final String name;
  final String host;
  final ClusterStatus status;
  final Credential credential;
  final int port;
  const Cluster({
    required this.id,
    required this.name,
    required this.host,
    required this.status,
    required this.credential,
    required this.port,
  });
  @override
  List<Object?> get props => [id];
}
