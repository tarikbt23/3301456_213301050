import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:babstrap_settings_screen/babstrap_settings_screen.dart';
import '../../service/ayarlar_sharedpref.dart';
import '../../widgets/ayarlar_widget.dart';

class Ayarlar extends StatefulWidget {
  const Ayarlar({Key? key}) : super(key: key);

  @override
  State<Ayarlar> createState() => _AyarlarState();
}

class _AyarlarState extends State<Ayarlar> {
  bool switch1Value = false;
  bool switch2Value = false;
  bool switch3Value = false;

  @override
  void initState() {
    super.initState();
    SharedPreferencesService.loadSwitchValues(setSwitchValues);
  }

  void setSwitchValues(bool switch1, bool switch2, bool switch3) {
    setState(() {
      switch1Value = switch1;
      switch2Value = switch2;
      switch3Value = switch3;
    });
  }

  void saveSwitchValues() {
    SharedPreferencesService.saveSwitchValues(switch1Value, switch2Value, switch3Value);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.lightBlue[50]),
        title: Text("Ayarlar",
          style: GoogleFonts.courgette(),),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: ListView(
                  children: [
                    const GenelSettingsGroup(),
                    SettingsGroup(
                      settingsGroupTitle: "Alan Seçimi",
                      items: [
                        SettingsItem(
                          onTap: () {},
                          icons: Icons.school,
                          title: "Sayısal",
                          trailing: Switch.adaptive(
                            value: switch1Value,
                            onChanged: (value) {
                              setState(() {
                                switch1Value = value;
                                switch2Value = false;
                                switch3Value = false;
                                saveSwitchValues();
                              });
                            },
                          ),
                        ),
                        SettingsItem(
                          onTap: () {},
                          icons: Icons.school,
                          title: "Sözel",
                          trailing: Switch.adaptive(
                            value: switch2Value,
                            onChanged: (value) {
                              setState(() {
                                switch1Value = false;
                                switch2Value = value;
                                switch3Value = false;
                                saveSwitchValues();
                              });
                            },
                          ),
                        ),
                        SettingsItem(
                          onTap: () {},
                          icons: Icons.school,
                          title: "Eşit ağırlık",
                          trailing: Switch.adaptive(
                            value: switch3Value,
                            onChanged: (value) {
                              setState(() {
                                switch1Value = false;
                                switch2Value = false;
                                switch3Value = value;
                                saveSwitchValues();
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    const HesabimSettingsGroup(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}