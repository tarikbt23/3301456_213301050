import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studybuddy/service/provider/hedef_provider.dart';
import '../../models/hedef_model.dart';

class EditHedef extends StatefulWidget {
  final HedefModel? hedef;

  EditHedef([this.hedef]);

  @override
  _EditHedefState createState() => _EditHedefState();
}

class _EditHedefState extends State<EditHedef> {
  final nameController = TextEditingController();
  final loginnameController = TextEditingController();
  final loginpasswordController = TextEditingController();
  final webController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    loginnameController.dispose();
    loginpasswordController.dispose();
    webController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    if (widget.hedef == null) {
      //New Record
      nameController.text = "";
      loginnameController.text = "";
      loginpasswordController.text = "";
      webController.text = "";
      Future.delayed(Duration.zero, () {
        final hedefProvider =
        Provider.of<HedefProvider>(context, listen: false);
        hedefProvider.loadValues(HedefModel());
      });
    } else {
      //Controller Update
      nameController.text = widget.hedef!.title!;
      loginnameController.text = widget.hedef!.descripton!;
      //State Update
      new Future.delayed(Duration.zero, () {
        final hedefProvider =
        Provider.of<HedefProvider>(context, listen: false);
        hedefProvider.loadValues(widget.hedef!);
      });
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final domainfirmsProvider = Provider.of<HedefProvider>(context);

    return Scaffold(
      appBar: AppBar(
          title: (widget.hedef != null)
              ? Text('Edit Domain Firm')
              : Text('Add Domain Firm')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            TextField(
              controller: nameController,
              decoration: InputDecoration(hintText: 'Domain Firm Name'),
              onChanged: (value) {
                domainfirmsProvider.changeTitle(value);
              },
            ),
            TextField(
              controller: loginnameController,
              decoration: InputDecoration(hintText: 'Domain Firm Login Name'),
              onChanged: (value) {
                domainfirmsProvider.changeDescription(value);
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              child: Text('Save'),
              onPressed: () {
                domainfirmsProvider.saveHedef();
                Navigator.of(context).pop();
              },
            ),
            (widget.hedef != null)
                ? ElevatedButton(
              child: Text('Delete'),
              onPressed: () {
                domainfirmsProvider.removeHedef(widget.hedef!.id!);
                Navigator.of(context).pop();
              },
            )
                : Container(),
          ],
        ),
      ),
    );
  }
}