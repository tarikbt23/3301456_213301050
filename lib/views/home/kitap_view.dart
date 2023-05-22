import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../service/kitap_service.dart';
import '../../models/kitap_model.dart';

void main() => runApp(const Kitapp());

class Kitapp extends StatefulWidget {
  const Kitapp({super.key});

  @override
  State<Kitapp> createState() => _KitappState();
}

class _KitappState extends State<Kitapp> {
  late Future<Kitap> futureKitap;

  @override
  void initState() {
    super.initState();
    futureKitap = fetchKitap();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Kitap',
          style: GoogleFonts.courgette(),
        ),
      ),
      body: Center(
        child: FutureBuilder<Kitap>(
          future: futureKitap,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.separated(
                padding: const EdgeInsets.all(8),
                itemCount: snapshot.data!.result?.length ?? 0, //listviewseperated itemcount değerinin int olmasını istiyor(int? türüne izin vermiyor)null gelirse 0 olsun dedik.
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 50,
                    color: Colors.lightBlue[50],
                    child: Center(
                        child: Column(
                      children: [
                        Text('${snapshot.data!.result![index].title}'),
                        Text('Fiyat :${snapshot.data!.result![index].fiyat}'),
                        Text('${snapshot.data!.result![index].url}')
                      ],
                    )),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
              );
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }

            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
