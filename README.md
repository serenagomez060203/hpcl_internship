# HPCL Registration app:

•	Commands used were ‘Ctrl+Shift+P’ to create a Flutter Project, ‘flutter pub get’ to update dependencies, ‘flutter run’ to create apk file, ‘flutter dart fix’ to eliminate errors in the app.

•	pubspec.yaml:

Stores app logo/image asset paths, flutter version, device compatibility and dependencies to support main.dart like colors, fonts.etc

•	main.dart:

Page 1 displays ‘login’ and ‘signup’ buttons. ‘Signup’ button to fill the basic user details only then to proceed with logging in with saved credentials.
After logging in, it will redirect to page 2 displaying Menu options like ‘Candidate details’ button and ‘Candidate Info’ button.
‘Candidate details’ button will display filled details from the ‘signup’ and ‘candidate info’. 
‘Candidate info’ button redirects to page 3 that asks class 10th(sub page 1), class 12th (sub page 2), undergraduate and post graduate details to be filled(sub page 3). After filling this, on clicking submit, it will redirect to 1st page.

•	‘Obfuscation’ for security, that is, anyone who has this apk file will not be able to extract all the flutter files(irreversible).

## Getting Started

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
