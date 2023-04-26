import 'package:babstrap_settings_screen/babstrap_settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Ayarlarwidget extends StatefulWidget {
  const Ayarlarwidget({Key? key}) : super(key: key);

  @override
  State<Ayarlarwidget> createState() => _AyarlarwidgetState();
}

class _AyarlarwidgetState extends State<Ayarlarwidget> {
  bool switch1Value = false;
  bool switch2Value = false;
  bool switch3Value = false;

  @override
  void initState() {
    super.initState();
    loadSwitchValues();
  }

  loadSwitchValues() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      switch1Value = prefs.getBool('switch1') ?? false;
      switch2Value = prefs.getBool('switch2') ?? false;
      switch3Value = prefs.getBool('switch3') ?? false;
    });
  }

  saveSwitchValues() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('switch1', switch1Value);
    prefs.setBool('switch2', switch2Value);
    prefs.setBool('switch3', switch3Value);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: ListView(
                children: [
                  SettingsGroup(
                    settingsGroupTitle: "Genel",
                    items: [
                      SettingsItem(
                        onTap: () {},
                        icons: Icons.language,
                        iconStyle: IconStyle(
                          iconsColor: Colors.white,
                          withBackground: true,
                          backgroundColor: Colors.purple,
                        ),
                        title: 'Dil',
                      ),
                      SettingsItem(
                        onTap: () {},
                        icons: Icons.dark_mode_rounded,
                        iconStyle: IconStyle(
                          iconsColor: Colors.white,
                          withBackground: true,
                          backgroundColor: Colors.black,
                        ),
                        title: 'Karanlık mod',
                        trailing: Switch.adaptive(
                          value: false,
                          onChanged: (value) {},
                        ),
                      ),
                    ],
                  ),
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
                  SettingsGroup(
                    settingsGroupTitle: "Hesabım",
                    items: [
                      SettingsItem(
                        onTap: () {},
                        icons: Icons.exit_to_app_rounded,
                        title: "Çıkış yap",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
