import 'package:equatable/equatable.dart';
import 'package:kube_client/clusters/domain/entities/crendential.dart';

enum ClusterStatus { down, up, unknown }

class Cluster extends Equatable {
  final String id;
  final String name;
  final String host;
  final int port;
  final ClusterStatus status;
  final Credential credential;
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
