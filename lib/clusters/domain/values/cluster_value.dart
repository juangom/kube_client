import 'package:equatable/equatable.dart';
import 'package:kube_client/clusters/domain/entities/crendential.dart';

class ClusterValue extends Equatable {
  final String name;
  final String host;
  final Credential credential;
  final int port;
  const ClusterValue({
    required this.name,
    required this.host,
    required this.credential,
    required this.port,
  });

  @override
  List<Object?> get props => [name, host, credential, port];
}
