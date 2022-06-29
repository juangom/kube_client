import 'package:dartz/dartz.dart';
import 'package:kube_client/core/failure.dart';
import 'package:kube_client/k8s/domain/entities/cluster.dart';

abstract class ClusterListRepository {
  Future<Either<Failure, List<Cluster>>> get clusters;
  Future<Either<Failure, List<Cluster>>> addCluster(Cluster cluster);
  Future<Option<Failure>> deleteCluster(Cluster cluster);
}
