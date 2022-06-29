import 'package:equatable/equatable.dart';

enum ClusterStatus { down, up }

class Cluster extends Equatable {
  final String name;
  final String host;
  final ClusterStatus status;
  final int port;
  const Cluster({
    required this.name,
    required this.host,
    required this.status,
    required this.port,
  });
  @override
  List<Object?> get props => [name, host, port];
}
