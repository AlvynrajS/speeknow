import 'package:flutter/material.dart';
import 'package:speak_now/FormFillingRegistration.dart';
import 'package:speak_now/networkCall.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildSettingPageList(
              true,
              "AngryBird",
              "Nothing is permenent",
              Image.asset(
                "assets/rain.jpg",
                width: 45,
                height: 45,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              color: Colors.black,
              height: 1,
            ),
            _buildSettingPageList(
                false,
                "Account",
                "Privacy, Security, Change number",
                Icon(
                  Icons.lock,
                  color: Colors.black,
                )),
            _buildSettingPageList(false, "Chats",
                "Theme, Wallpapers, Chat history", Icon(Icons.chat)),
            _buildSettingPageList(false, "Notification",
                "Message, group & call tones", Icon(Icons.notifications)),
            _buildSettingPageList(false, "Storage and data",
                "Network usage, auto-download", Icon(Icons.rounded_corner)),
            _buildSettingPageList(false, "Help",
                "Help center, contact us, privacy policy", Icon(Icons.help)),
            _buildSettingPageList(
                false, "Invita a friend", "", Icon(Icons.person)),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const FromFillingRegistrationScreen(),
                ));
              },
              child: _buildSettingPageList(
                  false,
                  "FormRegistration",
                  "",
                  Image.network(
                    "https://thumbs.dreamstime.com/z/fill-form-line-icon-filled-outline-vector-sign-linear-colorful-pictogram-isolated-white-edit-symbol-logo-illustration-95331560.jpg",
                    height: 35,
                    width: 35,
                    fit: BoxFit.cover,
                  )),
            ),
            GestureDetector(
              onTap: (() {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => network_call_screen(),
                ));
              }),
              child: _buildSettingPageList(
                  false, "NetworkCall", "", Icon(Icons.network_cell)),
            ),
            Column(
              children: [
                Text(
                  "from",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "Meta",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildSettingPageList(bool isIconRequired, String title,
      String subtitle, Widget leadingWidget) {
    return Padding(
      padding:
          const EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 15.00),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(shape: BoxShape.circle),
              child: leadingWidget),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  )
                ],
              ),
            ),
          ),
          if (isIconRequired)
            Icon(
              Icons.qr_code,
              color: Colors.orange,
            )
        ],
      ),
    );
  }
}
