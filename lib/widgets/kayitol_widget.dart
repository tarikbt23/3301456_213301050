import 'package:flutter/material.dart';


Widget inputField(TextEditingController controller, String hint, IconData iconData) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 8),
    child: SizedBox(
      height: 50,
      child: Material(
        elevation: 8,
        shadowColor: Colors.black87,
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(30),
        child: TextField(
          obscureText: true,
          controller: controller,
          textAlignVertical: TextAlignVertical.bottom,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: Colors.white,
            hintText: hint,
            prefixIcon: Icon(iconData),
          ),
        ),
      ),
    ),
  );
}

Widget actionButton(String title, {Function()? onTap}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 135, vertical: 16),
    child: ElevatedButton(
      onPressed: () {
        if (onTap != null) {
          onTap();
        }
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 14), backgroundColor: Colors.purple,
        shape: const StadiumBorder(),
        elevation: 8,
        shadowColor: Colors.black87,
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

Widget orDivider() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 130, vertical: 8),
    child: Row(
      children: const [
        orDividerFlexible(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'ya da',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        orDividerFlexible(),
      ],
    ),
  );
}

class orDividerFlexible extends StatelessWidget {
  const orDividerFlexible({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        height: 1,
        color: Colors.purple,
      ),
    );
  }
}

Widget myColumnWidget(List<Widget> content) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: content,
  );
}