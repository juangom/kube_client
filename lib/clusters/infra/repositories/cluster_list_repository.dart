import 'package:kube_client/clusters/domain/entities/cluster.dart';
import 'package:kube_client/core/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:kube_client/clusters/domain/repositories/cluster_list_repository.dart';
import 'package:kube_client/clusters/domain/values/cluster_value.dart';
import 'package:kube_client/clusters/infra/impl/data/cluster_database.dart'
    as database;
import 'package:kube_client/clusters/infra/serializers/clusters.dart';

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
  Future<Either<Failure, Cluster>> addCluster(ClusterValue clusterValue) async {
    try {
      final row = await _db.addCluster(clusterValueToCompanion(clusterValue));
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
