part of 'cluster_bloc.dart';

class ClusterState extends Equatable {
  final List<Cluster> clusters;
  final Option<Failure> failureOption;
  const ClusterState({
    required this.clusters,
    required this.failureOption,
  });

  ClusterState.initial()
      : clusters = [],
        failureOption = none();
  @override
  List<Object?> get props => [clusters];

  ClusterState copyWith({
    List<Cluster>? clusters,
    Option<Failure>? failureOption,
  }) {
    return ClusterState(
      clusters: clusters ?? this.clusters,
      failureOption: failureOption ?? this.failureOption,
    );
  }
}
