import 'package:first_web/controllers/menu_controller.dart';
import 'package:first_web/screens/main/components/header.dart';
import 'package:first_web/screens/main/components/side_menu.dart';
import 'package:flutter/material.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

class ContactUsPage extends StatelessWidget {
  MenuController _controller = MenuController();
  ContactUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _controller.scaffoldKey,
      drawer: SideMenu(),
      body: Container(
        color: Colors.white60,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Header(),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: const Text(
                  'Book a meeting',
                  style: TextStyle(
                      color: Color.fromRGBO(31, 49, 79, 1),
                      fontSize: 30,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const EnquiryForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class EnquiryForm extends StatefulWidget {
  const EnquiryForm({Key? key}) : super(key: key);

  @override
  State<EnquiryForm> createState() => _EnquiryFormState();
}

class _EnquiryFormState extends State<EnquiryForm> {
  // create global key that uniquely identifies the form widget
  // and allows form validation
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? firstName;
  String? lastName;
  String? email;
  String? phoneNumber;
  String? companyName;
  String? url;
  String? message;
  String? numberOfEmployees;

  localSend() async {
    String username = 'asagarshinde@gmail.com';
    String password = 'M@rv3l0us';

    final smtpServer = gmail(username, password);
    // Use the SmtpServer class to configure an SMTP server:
    // final smtpServer = SmtpServer('smtp.domain.com');
    // See the named arguments of SmtpServer for further configuration
    // options.

    // Create our message.
    final message = Message()
      ..from = Address(username, 'Your name')
      ..recipients.add('destination@example.com')
      ..ccRecipients.addAll(['destCc1@example.com', 'destCc2@example.com'])
      ..bccRecipients.add(Address('bccAddress@example.com'))
      ..subject = 'Test Dart Mailer library :: 😀 :: ${DateTime.now()}'
      ..text = 'This is the plain text.\nThis is line 2 of the text part.'
      ..html = "<h1>Test</h1>\n<p>Hey! Here's some HTML content</p>";

    try {
      final sendReport = await send(message, smtpServer);
      print('Message sent: ' + sendReport.toString());
    } on MailerException catch (e) {
      print('Message not sent.');
      for (var p in e.problems) {
        print('Problem: ${p.code}: ${p.msg}');
      }
    }
  }
  // Future<void> send(Message message) async {
  //   final Email _email = Email(
  //     body: "First test mail from Flutter web",
  //     subject: "testing from Flutter",
  //     recipients: ['asagarshinde@gmail.com'],
  //   );
  //   String platformResponse;
  //
  //   try {
  //     await FlutterEmailSender.send(_email);
  //     platformResponse = 'success';
  //   } catch (error) {
  //     platformResponse = error.toString();
  //   }
  //   print(platformResponse);
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * .2, 60,
          MediaQuery.of(context).size.width * .2, 300),
      child: Card(
        elevation: 1.0,
        color: const Color.fromRGBO(234, 234, 244, 1),
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          CustomTextField(
                            labelText: 'First Name*',
                            onSaved: (value) {
                              setState(() {
                                firstName = value.toString();
                              });
                            },
                            validator: (value) {},
                          ),
                          CustomTextField(
                            labelText: 'Email*',
                            keyboardType: TextInputType.emailAddress,
                            onSaved: (value) {},
                            validator: (value) {},
                          ),
                          CustomTextField(
                            labelText: 'Company Name*',
                            onSaved: (value) {},
                            validator: (value) {},
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          CustomTextField(
                            labelText: 'Last Name*',
                            onSaved: (value) {},
                            validator: (value) {},
                          ),
                          CustomTextField(
                            labelText: 'Phone Number*',
                            keyboardType: TextInputType.phone,
                            onSaved: (value) {},
                            validator: (value) {},
                          ),
                          CustomTextField(
                            labelText: 'Website URL*',
                            onSaved: (value) {},
                            validator: (value) {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                CustomTextField(
                  labelText: 'Number Of Employees*',
                  keyboardType: TextInputType.number,
                  onSaved: (value) {},
                  validator: (value) {},
                ),
                CustomTextField(
                  labelText: 'Enter a message*',
                  // for multiline use maxlines and keyborad type is TextInputType.multiline
                  maxLines: 10,
                  keyboardType: TextInputType.multiline,
                  onSaved: (value) {},
                  validator: (value) {},
                ),
                ElevatedButton(
                    onPressed: () async {
                      _formKey.currentState!.save();
                      print(firstName);
                      print(_formKey.currentState.toString());
                      localSend();
                    },
                    child: Text('Submit')),
                const Text(
                    "We're committed to your privacy. HubSpot uses the information "
                        "you provide to us to contact you about our relevant "
                        "content, products, and services.",
                style: TextStyle(fontSize: 20),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      // this.hintText,
      required this.labelText,
      required this.onSaved,
      required this.validator,
      this.maxLines = 1,
      this.keyboardType})
      : super(key: key);

  // final hintText;
  final String labelText;
  final FormFieldSetter<String> onSaved;
  final FormFieldValidator<String> validator;
  final TextInputType? keyboardType;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        keyboardType: keyboardType ?? TextInputType.text,
        onSaved: onSaved,
        maxLines: maxLines,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
          ),
          hintStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          labelText: labelText,
        ),
        // The validator receives the text that the user has entered.
        validator: validator,
      ),
    );
  }
}
