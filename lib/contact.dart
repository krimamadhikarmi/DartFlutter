import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Contact extends StatelessWidget {
  Contact({super.key});
  final nameController = TextEditingController();
  final _formKey = GlobalKey<
      FormState>(); // this key will be used to identify the state of the form

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.name,
                //text rakhyo vane android phone ma keypad text ko matra aauxa, number vane number keypad matra aauxa
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'First Name',
                  labelText: 'Enter your first name',
                  icon: Icon(FontAwesomeIcons.person),
                ),
                validator: (value) {
                  if (value != null) {
                    if (value.isEmpty) {
                      return 'The name cannot be empty';
                    }
                  } else {
                    return 'The name cannot be null';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Contact Number',
                  labelText: 'Enter your contact number',
                  icon: Icon(FontAwesomeIcons.phone),
                ),
                validator: (value) {
                  if (value != null) {
                    if (value.isEmpty) {
                      return 'The contact cannot be empty';
                    } else {
                      if (!RegExp("^(?:[+0]9)?[0-9]{10}\$").hasMatch(value)) {
                        return 'Contact number should only contain numbers';
                      }
                    }
                  } else {
                    return 'The contact cannot be null';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Password',
                  labelText: 'Enter your password',
                  icon: Icon(FontAwesomeIcons.personBooth),
                ),
                validator: (value) {
                  if (value != null) {
                    if (value.isEmpty) {
                      return 'The password cannot be empty';
                    }
                  } else {
                    return 'The password cannot be null';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Email',
                  labelText: 'Enter your email',
                  icon: Icon(FontAwesomeIcons.mailchimp),
                ),
                validator: (value) {
                  if (value != null) {
                    if (value.isEmpty) {
                      return 'The email cannot be empty';
                    }
                  } else {
                    return 'The email cannot be null';
                  }
                  return null;
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState != null) {
                        if (_formKey.currentState!.validate()) {}
                      }
                    },
                    child: const Text('Submit')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
