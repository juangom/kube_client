import 'package:kube_client/k8s/domain/entities/cluster.dart';
import 'package:kube_client/core/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:kube_client/k8s/domain/repositories/cluster_list_repository.dart';
import 'package:kube_client/k8s/domain/values/cluster_value.dart';
import 'package:kube_client/k8s/infra/impl/data/cluster_database.dart'
    as database;
import 'package:kube_client/k8s/infra/serializers/clusters.dart';

class DriftClusterListRepository extends ClusterListRepository {
  final _db = database.KubeClientDatabase();

  @override
  Future<Either<Failure, List<Cluster>>> get clusters async {
    try {
      final rows = await _db.allClusters;
      return right(getClusters(rows).toList());
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Cluster>> addCluster(ClusterValue value) async {
    try {
      final row = await _db.addCluster(clusterValueToCompanion(value));
      return right(clusterRowToEntity(row));
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }

  @override
  Future<Option<Failure>> deleteCluster(Cluster cluster) async {
    try {
      await _db.deleteCluster(clusterEntityToRow(cluster));
      return none();
    } catch (e) {
      return some(Failure(e.toString()));
    }
  }
}
