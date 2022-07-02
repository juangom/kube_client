import 'package:flutter/material.dart';
import 'package:kube_client/k8s/ui/pages/cluster/new_cluster_form_page.dart';
import 'package:kube_client/k8s/ui/pages/home_page.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case 'add_cluster_form':
      return MaterialPageRoute(builder: (_) => const NewClusterFormPage());
    default:
      return MaterialPageRoute(builder: (_) => const HomePage());
  }
}
