import 'package:get_it/get_it.dart';
import 'package:kube_client/k8s/domain/repositories/cluster_list_repository.dart';
import 'package:kube_client/k8s/infra/repositories/cluster_list_repository.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerFactory<ClusterListRepository>(
      () => DriftClusterListRepository());
}
