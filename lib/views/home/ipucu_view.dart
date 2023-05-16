import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../models/ipucu_model.dart';
import '../../service/ipucu_service.dart';

class IpucuView extends StatefulWidget {
  const IpucuView({super.key});

  @override
  IpucuViewState createState() => IpucuViewState();
}

class IpucuViewState extends State<IpucuView> {
  late Future<List<Ipucu>> futureData;

  @override
  void initState() {
    super.initState();
    futureData = fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Günlük İpucu' ,style: GoogleFonts.courgette(),),
      ),
      body: Center(
        child: FutureBuilder<List<Ipucu>>(
          future: futureData,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<Ipucu> data = snapshot.data!;
              return ListView.separated(
                itemCount: data.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 50,
                    color: Colors.white70,
                    child: Row(
                      children: [
                        Text("${data[index].body}"),
                      ],
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            // By default show a loading spinner.
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}