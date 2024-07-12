import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Form Example'),
        ),
        body: MyForm(),
      ),
    );
  }
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  String _gender = '';
  String _country = '';
  List<String> _subjects = [];
  List<String> _skills = [];

  List<String> _countries = ['USA', 'Canada', 'UK', 'Australia', 'Pakistan'];
  List<String> _availableSubjects = ['Phy', 'Chem', 'Bio'];
  List<String> _availableSkills = ['C++', 'Java', 'Javascript', 'C#'];

  @override
  void dispose() {
    _emailController.dispose();
    _nameController.dispose();
    _addressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: ListView(
          children: <Widget>[
            TextFormField(
              controller: _emailController,
              decoration:
                  InputDecoration(labelText: 'Email', hintText: '30 chars max'),
              maxLength: 30,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your email';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _nameController,
              decoration:
                  InputDecoration(labelText: 'Name', hintText: '50 chars max'),
              maxLength: 50,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
            ),
            Text("\nGender"),
            Row(
              children: <Widget>[
                Expanded(
                  child: RadioListTile<String>(
                    title: const Text('Male'),
                    value: 'Male',
                    groupValue: _gender,
                    onChanged: (value) {
                      setState(() {
                        _gender = value!;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile<String>(
                    title: const Text('Female'),
                    value: 'Female',
                    groupValue: _gender,
                    onChanged: (value) {
                      setState(() {
                        _gender = value!;
                      });
                    },
                  ),
                ),
              ],
            ),
            DropdownButtonFormField<String>(
              decoration: InputDecoration(labelText: 'Country'),
              items: _countries.map((String country) {
                return DropdownMenuItem<String>(
                  value: country,
                  child: Text(country),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _country = value!;
                });
              },
              validator: (value) {
                if (value == null) {
                  return 'Please select a country';
                }
                return null;
              },
            ),
            Text("\nSubjects"),
            Wrap(
              spacing: 10.0,
              runSpacing: 10.0,
              children: _availableSubjects.map((subject) {
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Checkbox(
                      value: _subjects.contains(subject),
                      onChanged: (bool? value) {
                        setState(() {
                          if (value!) {
                            _subjects.add(subject);
                          } else {
                            _subjects.remove(subject);
                          }
                        });
                      },
                    ),
                    Text(subject),
                  ],
                );
              }).toList(),
            ),
            Text('Skills'),
            Container(
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Column(
                children: _availableSkills.map((skill) {
                  return CheckboxListTile(
                    title: Text(skill),
                    value: _skills.contains(skill),
                    onChanged: (bool? value) {
                      setState(() {
                        if (value!) {
                          _skills.add(skill);
                        } else {
                          _skills.remove(skill);
                        }
                      });
                    },
                  );
                }).toList(),
              ),
            ),
            TextFormField(
              controller: _addressController,
              decoration: InputDecoration(labelText: 'Address'),
              maxLines: 3,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your address';
                }
                return null;
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                debugPrint("HERE: ${_formKey.currentState!.validate()}");
                if (_formKey.currentState!.validate()) {
                  // Handle form submission
                  debugPrint('Email: ${_emailController.text}');
                  debugPrint('Name: ${_nameController.text}');
                  debugPrint('Gender: $_gender');
                  debugPrint('Country: $_country');
                  debugPrint('Subjects: $_subjects');
                  debugPrint('Skills: $_skills');
                  debugPrint('Address: ${_addressController.text}');
                }
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
