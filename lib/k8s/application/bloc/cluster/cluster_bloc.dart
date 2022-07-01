import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:dartz/dartz.dart';
import 'package:kube_client/core/failure.dart';
import 'package:kube_client/k8s/domain/entities/cluster.dart';
import 'package:kube_client/k8s/domain/repositories/cluster_list_repository.dart';
import 'package:kube_client/k8s/domain/values/cluster_value.dart';

part 'cluster_bloc_event.dart';
part 'cluster_bloc_state.dart';

class ClusterBloc extends Bloc<ClusterEvent, ClusterState> {
  final ClusterListRepository _repository;
  ClusterBloc({
    required ClusterListRepository repository,
  })  : _repository = repository,
        super(ClusterState.initial()) {
    on<ClustersLoaded>(_onClusterLoaded);
    on<ClusterAdded>(_onClusterAdded);
    on<ClusterDeleted>(_onClusterDeleted);
  }

  _onClusterLoaded(ClustersLoaded event, Emitter<ClusterState> emit) async {
    final result = await _repository.clusters;
    result.fold(
      (failure) => emit(state.copyWith(failureOption: optionOf(failure))),
      (clusters) => emit(
        state.copyWith(
          failureOption: none(),
          clusters: clusters,
        ),
      ),
    );
  }

  _onClusterAdded(ClusterAdded event, Emitter<ClusterState> emit) async {
    final result = await _repository.addCluster(event.clusterValue);
    result.fold(
      (failure) => emit(
        state.copyWith(
          failureOption: optionOf(failure),
        ),
      ),
      (clusters) => null, // TODO
    );
  }

  _onClusterDeleted(ClusterDeleted event, Emitter<ClusterState> emit) async {
    final result = await _repository.deleteCluster(event.cluster);
    result.fold(
      () => null, // TODO
      (failure) => emit(
        state.copyWith(
          failureOption: optionOf(failure),
        ),
      ),
    );
  }
}
