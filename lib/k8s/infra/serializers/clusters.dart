import 'package:kube_client/k8s/domain/entities/crendential.dart';
import 'package:kube_client/k8s/infra/impl/data/cluster_database.dart'
    as database;
import 'package:kube_client/k8s/domain/entities/cluster.dart';

Iterable<Cluster> getClusters(Iterable<database.Cluster> clusters) {
  return clusters.map(
    (c) => Cluster(
      id: c.id,
      name: c.name,
      host: c.host,
      status: ClusterStatus.unknown,
      port: c.port,
      credential: Credential(
          credType: CredType.values.firstWhere(
            (e) => e.toString() == c.credType,
          ),
          value: c.credential),
    ),
  );
}
