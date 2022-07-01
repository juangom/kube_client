import 'package:dartz/dartz.dart';
import 'package:kube_client/core/failure.dart';
import 'package:kube_client/k8s/domain/entities/cluster.dart';
import 'package:kube_client/k8s/domain/values/cluster_value.dart';

abstract class ClusterListRepository {
  Future<Either<Failure, List<Cluster>>> get clusters;
  Future<Either<Failure, Cluster>> addCluster(ClusterValue clusterValue);
  Future<Option<Failure>> deleteCluster(Cluster cluster);
}
