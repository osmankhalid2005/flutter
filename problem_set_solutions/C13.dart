import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: HomeScreen()));
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // To enable authentication, complete this code from previous example
  //final _formKey = GlobalKey<FormState>();

  final TextEditingController _email = TextEditingController();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  String _gender = '';
  String _country = '';
  List<String> _subjects = [];
  List<String> _skills = [];

  List<String> _countries = ['USA', 'Canada', 'UK', 'Australia', 'Pakistan'];
  List<String> _availableSubjects = ['Phy', 'Chem', 'Bio'];
  List<String> _availableSkills = ['C++', 'Java', 'Javascript', 'C#'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('INPUT SCREEN')),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              _buildInputRow('E-mail', _email, 4.0),
              const SizedBox(height: 20),
              _buildInputRow('Person Name', _name, 4.0),
              const SizedBox(height: 20),
              _buildDropdownRow('Country', _country, 8.0, _countries,
                  (String? newValue) {
                setState(() {
                  _country = newValue!;
                });
              }),
              const SizedBox(height: 20),
              _buildGenderRow(),
              const SizedBox(height: 20),
              _buildSubjectsRow(),
              const SizedBox(height: 20),
              _buildSkillsRow(),
              const SizedBox(height: 20),
              _buildInputRow('Address', _addressController, 4, maxLines: 3),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submit,
                child: const Text('SUBMIT'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInputRow(
      String label, TextEditingController controller, double leftgap,
      {int maxLines = 1}) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            width: 70,
            child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(label, style: const TextStyle(fontSize: 16.0))),
          ),
          const SizedBox(width: 16.0),
          Expanded(
              child: Padding(
            padding: EdgeInsets.only(left: leftgap),
            child: TextField(
              controller: controller,
              maxLines: maxLines,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              ),
            ),
          )),
        ],
      ),
    );
  }

  Widget _buildDropdownRow(String label, String value, double leftgap,
      List<String> items, ValueChanged<String?> onChanged) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(label, style: const TextStyle(fontSize: 16.0)),
          ),
          const SizedBox(width: 16.0),
          Expanded(
              child: Padding(
            padding: EdgeInsets.only(left: leftgap),
            child: DropdownButtonFormField<String>(
              value: value.isEmpty ? null : value,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              ),
              items: items.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: onChanged,
            ),
          )),
        ],
      ),
    );
  }

  Widget _buildGenderRow() {
    return Row(
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text('Gender', style: TextStyle(fontSize: 16.0)),
        ),
        const SizedBox(width: 2.0),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 20),
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
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(0),
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
        ),
      ],
    );
  }

  Widget _buildSubjectsRow() {
    return Row(
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text('Subjects', style: TextStyle(fontSize: 16.0)),
        ),
        const SizedBox(width: 16.0),
        Expanded(
          child: Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            children: _availableSubjects.map((subject) {
              return FilterChip(
                label: Text(subject),
                selected: _subjects.contains(subject),
                onSelected: (bool selected) {
                  setState(() {
                    if (selected) {
                      _subjects.add(subject);
                    } else {
                      _subjects.remove(subject);
                    }
                  });
                },
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildSkillsRow() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text('Skills', style: TextStyle(fontSize: 16.0)),
        ),
        const SizedBox(width: 16.0),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 25),
            child: Container(
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
          ),
        ),
      ],
    );
  }

  void _submit() {
    debugPrint("HERE: ");

    // Handle form submission
    debugPrint('Email: ${_email.text}');
    debugPrint('Name: ${_name.text}');
    debugPrint('Gender: $_gender');
    debugPrint('Country: $_country');
    debugPrint('Subjects: $_subjects');
    debugPrint('Skills: $_skills');
    debugPrint('Address: ${_addressController.text}');

    Map<String, dynamic> data = {
      "email": _email.text,
      "name": _name.text,
      "gender": _gender,
      "country": _country,
      "subjects": _subjects,
      "skills": _skills,
      "address": _addressController.text
    };

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const DisplayScreen(),
        settings: RouteSettings(arguments: data),
      ),
    );
  }
}

class DisplayScreen extends StatelessWidget {
  const DisplayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('DISPLAY SCREEN')),
      ),
      body: Column(
        children: [
          _buildDisplayRow('E-mail', args['email']),
          const SizedBox(height: 20),
          _buildDisplayRow('Person Name', args['name']),
          const SizedBox(height: 20),
          _buildDisplayRow('Country', args['country']),
          const SizedBox(height: 20),
          _buildDisplayRow('Gender', args['gender']),
          const SizedBox(height: 20),
          _buildDisplayList('Subjects', args['subjects']),
          const SizedBox(height: 20),
          _buildDisplayList('Skills', args['skills']),
          const SizedBox(height: 20),
          _buildDisplayRow('Country', args['address']),
        ],
      ),
    );
  }

  Widget _buildDisplayRow(String label, String value) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 50.0),
          child: Text(label, style: const TextStyle(fontSize: 16.0)),
        ),
        const SizedBox(width: 16.0),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 50.0),
            child: Text(
              value,
              style: const TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDisplayList(String label, var list) {
    String items = "";

    for (int i = 0; i < list.length; i++) {
      items = items + list[i].toString() + ", ";
    }

    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 50.0),
          child: Text(label, style: const TextStyle(fontSize: 16.0)),
        ),
        const SizedBox(width: 16.0),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 50.0),
            child: Text(
              items,
              style: const TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ),
      ],
    );
  }
}
