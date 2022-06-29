import 'package:flutter/material.dart';
import 'package:kube_client/k8s/ui/pages/home_page.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    default:
      return MaterialPageRoute(builder: (_) => HomePage());
  }
}
