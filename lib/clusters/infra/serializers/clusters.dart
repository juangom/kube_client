import 'package:drift/drift.dart';
import 'package:kube_client/clusters/domain/entities/crendential.dart';
import 'package:kube_client/clusters/domain/values/cluster_value.dart';
import 'package:kube_client/clusters/infra/impl/data/cluster_database.dart'
    as database;
import 'package:kube_client/clusters/domain/entities/cluster.dart';

Iterable<Cluster> getClusters(Iterable<database.Cluster> rows) =>
    rows.map((r) => clusterRowToEntity(r));

database.ClustersCompanion clusterValueToCompanion(ClusterValue value) =>
    database.ClustersCompanion(
      host: Value(value.host),
      name: Value(value.name),
      port: Value(value.port),
      credential: Value(value.credential.value),
      credType: Value(value.credential.credType.toString().split('.').last),
    );

Cluster clusterRowToEntity(database.Cluster r) => Cluster(
      id: r.id,
      name: r.name,
      host: r.host,
      port: r.port,
      credential: Credential(
        credType: CredType.values.firstWhere(
          (e) => e.toString() == r.credType,
        ),
        value: r.credential,
      ),
      status: ClusterStatus.unknown,
    );

database.Cluster clusterEntityToRow(Cluster cluster) => database.Cluster(
      id: cluster.id,
      name: cluster.name,
      host: cluster.host,
      port: cluster.port,
      credential: cluster.credential.value,
      credType: cluster.credential.credType.toString().split('.').last,
    );
