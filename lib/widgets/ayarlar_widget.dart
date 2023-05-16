import 'package:babstrap_settings_screen/babstrap_settings_screen.dart';
import 'package:flutter/material.dart';

class GenelSettingsGroup extends StatelessWidget {
  const GenelSettingsGroup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SettingsGroup(
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
    );
  }
}

class HesabimSettingsGroup extends StatelessWidget {
  const HesabimSettingsGroup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SettingsGroup(
      settingsGroupTitle: "Hesabım",
      items: [
        SettingsItem(
          onTap: () {},
          icons: Icons.exit_to_app_rounded,
          title: "Çıkış yap",
        ),
      ],
    );
  }
}