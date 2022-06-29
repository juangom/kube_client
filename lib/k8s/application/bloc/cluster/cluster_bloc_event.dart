part of 'cluster_bloc.dart';

abstract class ClusterEvent {}

class ClustersLoaded extends ClusterEvent {}

class ClusterAdded extends ClusterEvent {
  final Cluster cluster;

  ClusterAdded(this.cluster);
}

class ClusterDeleted extends ClusterEvent {
  final Cluster cluster;

  ClusterDeleted(this.cluster);
}

class ClusterPinned extends ClusterEvent {
  final Cluster cluster;

  ClusterPinned(this.cluster);
}
