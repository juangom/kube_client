part of 'cluster_bloc.dart';

abstract class ClusterEvent {}

class ClustersLoaded extends ClusterEvent {}

class ClusterAdded extends ClusterEvent {
  final ClusterValue clusterValue;

  ClusterAdded(this.clusterValue);
}

class ClusterDeleted extends ClusterEvent {
  final Cluster cluster;

  ClusterDeleted(this.cluster);
}

class ClusterPinned extends ClusterEvent {
  final Cluster cluster;

  ClusterPinned(this.cluster);
}
