import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:dartz/dartz.dart';
import 'package:kube_client/core/failure.dart';
import 'package:kube_client/k8s/domain/entities/cluster.dart';

part 'cluster_bloc_event.dart';
part 'cluster_bloc_state.dart';

class ClusterBloc extends Bloc<ClusterEvent, ClusterState> {
  ClusterBloc() : super(ClusterState.initial()) {
    on<ClustersLoaded>(_onClusterLoaded);
    on<ClusterAdded>(_onClusterAdded);
    on<ClusterDeleted>(_onClusterDeleted);
  }

  _onClusterLoaded(ClustersLoaded event, Emitter<ClusterState> emit) async {}
  _onClusterAdded(ClusterAdded event, Emitter<ClusterState> emit) async {}
  _onClusterDeleted(ClusterDeleted event, Emitter<ClusterState> emit) async {}
}
