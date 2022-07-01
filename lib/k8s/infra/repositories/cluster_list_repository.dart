import 'package:kube_client/k8s/domain/entities/cluster.dart';
import 'package:kube_client/core/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:kube_client/k8s/domain/repositories/cluster_list_repository.dart';
import 'package:kube_client/k8s/domain/values/cluster_value.dart';

class DriftClusterListRepository extends ClusterListRepository {
  @override
  Future<Either<Failure, List<Cluster>>> addCluster(ClusterValue cluster) {
    // TODO: implement addCluster
    throw UnimplementedError();
  }

  @override
  // TODO: implement clusters
  Future<Either<Failure, List<Cluster>>> get clusters =>
      throw UnimplementedError();

  @override
  Future<Option<Failure>> deleteCluster(Cluster cluster) {
    // TODO: implement deleteCluster
    throw UnimplementedError();
  }
}
