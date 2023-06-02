import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studybuddy/service/provider/hedef_provider.dart';
import '../../models/hedef_model.dart';

class EditHedef extends StatefulWidget {
  final HedefModel? hedef;

  const EditHedef([this.hedef]);

  @override
  EditHedefState createState() => EditHedefState();
}

class EditHedefState extends State<EditHedef> {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  @override
  void dispose() {
    titleController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    if (widget.hedef == null) {
      //New Record
      titleController.text = "";
      descriptionController.text = "";
      Future.delayed(Duration.zero, () {
        final hedefProvider =
        Provider.of<HedefProvider>(context, listen: false);
        hedefProvider.loadValues(HedefModel());
      });
    } else {
      //Controller Update
      titleController.text = widget.hedef!.title!;
      descriptionController.text = widget.hedef!.descripton!;
      //State Update
      Future.delayed(Duration.zero, () {
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
              ? const Text('Güncelle')
              : const Text('Hedef Ekle')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            TextField(
              controller: titleController,
              decoration: const InputDecoration(hintText: 'Başlık'),
              onChanged: (value) {
                domainfirmsProvider.changeTitle(value);
              },
            ),
            TextField(
              controller: descriptionController,
              decoration: const InputDecoration(hintText: 'İçerik'),
              onChanged: (value) {
                domainfirmsProvider.changeDescription(value);
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              child: const Text('Kaydet'),
              onPressed: () {
                domainfirmsProvider.saveHedef();
                Navigator.of(context).pop();
              },
            ),
            (widget.hedef != null)
                ? ElevatedButton(
              child: const Text('Sil'),
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