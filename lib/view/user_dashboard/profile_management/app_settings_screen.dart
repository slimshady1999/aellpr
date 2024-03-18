import 'package:aellpr/configurations/custom_showDialog/delete_account_warning.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserAppSettings extends StatelessWidget {
  const UserAppSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            "App Settings",
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Account",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),

            //-- Profile Settings
            const SizedBox(
              height: 15,
            ),
            ListTile(
                leading: Padding(
                    padding: const EdgeInsets.only(left: 13.0),
                    child: Icon(Icons.lock,
                        color: Theme.of(context).colorScheme.primary)),
                title: Text("Change Password",
                    style: Theme.of(context).textTheme.bodyLarge)),

            ListTile(
                leading: Padding(
                    padding: const EdgeInsets.only(left: 13.0),
                    child: Icon(Icons.lock,
                        color: Theme.of(context).colorScheme.primary)),
                title: Text("Change Transaction Pin",
                    style: Theme.of(context).textTheme.bodyLarge)),
            ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(left: 13.0),
                  child: Icon(Icons.paste_outlined,
                      color: Theme.of(context).colorScheme.primary),
                ),
                title: Text("Agreement",
                    style: Theme.of(context).textTheme.bodyLarge),
                trailing: Switch(value: true, onChanged: (value) {})),
            ListTile(
                leading: Padding(
                  padding: const EdgeInsets.only(left: 13.0),
                  child: Icon(Icons.policy,
                      color: Theme.of(context).colorScheme.primary),
                ),
                title: Text("Policy",
                    style: Theme.of(context).textTheme.bodyLarge)),

            //-- Other Settings
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text("More Options",
                  style: Theme.of(context).textTheme.bodyLarge),
            ),
            const SizedBox(height: 19),
            ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Text("Push Notification",
                      style: Theme.of(context).textTheme.bodyLarge),
                ),
                trailing: Switch(value: true, onChanged: (value) {})),
            ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Text("Message Notification",
                      style: Theme.of(context).textTheme.bodyLarge),
                ),
                trailing: Switch(value: true, onChanged: (value) {})),
            ListTile(
                title: Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Text("Delivery Notification",
                      style: Theme.of(context).textTheme.bodyLarge),
                ),
                trailing: Switch(value: true, onChanged: (value) {})),

            //-- Logout Button
            const SizedBox(
              height: 90,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, bottom: 10),
              child: GestureDetector(
                onTap: () {
                  DeleteAccountWarning.showWarning();
                },
                child: Row(
                  children: [
                    SvgPicture.asset("assets/image/exit.svg"),
                    const SizedBox(
                      width: 5,
                    ),
                    Text("Delete Account",
                        style: Theme.of(context).textTheme.bodyLarge)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
