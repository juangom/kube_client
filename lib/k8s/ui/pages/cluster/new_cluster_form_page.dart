import 'package:flutter/material.dart';
import 'package:kube_client/k8s/domain/validators/input_validators.dart';

class NewClusterFormPage extends StatelessWidget {
  const NewClusterFormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: _NewClusterFormPage(),
      ),
    );
  }
}

class _NewClusterFormPage extends StatefulWidget {
  _NewClusterFormPage({Key? key}) : super(key: key);

  @override
  State<_NewClusterFormPage> createState() => __NewClusterFormPageState();
}

class __NewClusterFormPageState extends State<_NewClusterFormPage> {
  final _key = GlobalKey<FormState>();
  final _clusterNameController = TextEditingController();
  final _clusterHostController = TextEditingController();
  final _clusterPortController = TextEditingController(text: '443');
  final _clusterCredentialsController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Center(
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8.0),
              child: Center(
                child: Text(
                  'New Cluster',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _clusterNameController,
                decoration: InputDecoration(
                  hintText: 'Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                validator: (value) => nonEmptyStringValidator(value)
                    ? ''
                    : 'Name cannot be empty',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _clusterHostController,
                decoration: InputDecoration(
                  hintText: 'Host',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                validator: (value) => nonEmptyStringValidator(value)
                    ? ''
                    : 'Host cannot be empty',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _clusterPortController,
                decoration: InputDecoration(
                  hintText: 'Port',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                validator: (value) =>
                    numericValidator(value) ? '' : 'Port must be a number',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _clusterCredentialsController,
                decoration: InputDecoration(
                  hintText: 'Credentials',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                validator: (value) => nonEmptyStringValidator(value)
                    ? ''
                    : 'Host cannot be empty',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Save'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
