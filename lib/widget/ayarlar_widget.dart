import 'package:babstrap_settings_screen/babstrap_settings_screen.dart';
import 'package:flutter/material.dart';

class Ayarlarwidget extends StatefulWidget {
  const Ayarlarwidget({Key? key}) : super(key: key);

  @override
  State<Ayarlarwidget> createState() => _AyarlarwidgetState();
}

class _AyarlarwidgetState extends State<Ayarlarwidget> {
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
