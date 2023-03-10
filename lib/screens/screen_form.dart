// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_brace_in_string_interps, non_constant_identifier_names, avoid_print, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class ScreenForm extends StatefulWidget {
  const ScreenForm({super.key});

  @override
  State<ScreenForm> createState() => _ScreenFormState();
}

class _ScreenFormState extends State<ScreenForm> {
  //int age = 10;

  final _formKey = GlobalKey<FormBuilderState>();

  /*my_age_increase() {
    age++;
    setState(() {});
  }

  my_age_decrease() {
    age--;
    setState(() {});
  }*/
  bool _ageHasError = false;
  bool _genderHasError = false;

  var genderOptions = ['Male', 'Female'];
  void _onChanged(dynamic val) => debugPrint(val.toString());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forms'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FormBuilder(
                key: _formKey,
                child: Column(
                  children: [
                    FormBuilderTextField(
                      onTap: (() => {print('Focused on first name...')}),
                      name: 'first_name',
                      enabled: true,
                      initialValue: 'Cheune',
                      readOnly: false,
                      maxLines: 1,
                      textAlign: TextAlign.justify,
                      autofocus: true,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.name,
                      cursorWidth: 10,
                      textCapitalization: TextCapitalization.none,
                      decoration: InputDecoration(
                          labelText: 'First Name',
                          icon: Icon(Icons.person),
                          iconColor: Colors.red,
                          counter: Text("3"),
                          hintText: 'Enter your first name',
                          helperMaxLines: 1,
                          isDense: true,
                          suffixIcon: Icon(Icons.message),
                          helperText:
                              'First name as it appears in your passport',
                          helperStyle: TextStyle(
                              color: Colors.green.shade800, fontSize: 10)

                          /*label: Text(
                          'My custom name',
                          style: TextStyle(color: Colors.red, fontSize: 20),
                        ),*/
                          ),
                    ),
                    FormBuilderTextField(
                      autovalidateMode: AutovalidateMode.always,
                      name: 'age',
                      decoration: InputDecoration(
                        labelText: 'Age',
                        suffixIcon: _ageHasError
                          ? const Icon(Icons.error, color: Colors.red,)
                          : const Icon(Icons.check, color: Colors.green)
                      ),
                      onChanged: (val) {
                        setState(() {
                          _ageHasError = !(_formKey.currentState?.fields['age'] ?.validate() ?? false);
                        });
                      },
                    ),
                    FormBuilderDateTimePicker(
                      name: 'DOB',
                      inputType: InputType.date,
                      initialValue: DateTime.now(),
                      keyboardType: TextInputType.datetime,
                      decoration: InputDecoration(
                          label: Text('Date of Birth'),
                          icon: Icon(Icons.date_range)),
                    ),
                    FormBuilderSlider(
                      name: 'slider',
                      validator: FormBuilderValidators.compose([FormBuilderValidators.min(6)]),
                      onChanged: _onChanged,
                      initialValue: 7.0,
                      min: 0.0,
                      max: 10.0,
                      divisions: 20,
                      activeColor: Colors.red,
                      inactiveColor: Colors.pink[100],
                      decoration: const InputDecoration(
                        labelText: 'Number of things',
                      ),
                    ),
                    FormBuilderCheckbox(
                        name: 'accept_terms',
                        initialValue: false,
                        onChanged: _onChanged,
                        title: RichText(
                          text: const TextSpan(children: [
                            TextSpan(
                              text: 'I have read and agree to the ',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: 'Terms and Conditions',
                              style: TextStyle(color: Colors.blue),
                             ),
                           ],
                         ),
                        ),
                        validator: FormBuilderValidators.equal(
                          true,
                          errorText: 'You must accept terms and conditions to continue',
                        ),
                      ),
                    FormBuilderDropdown<String>(
                      name: 'gender',
                      decoration: InputDecoration(
                          labelText: 'Gender',
                          suffix: _genderHasError
                              ? const Icon(Icons.error)
                              : const Icon(Icons.check),
                          hintText: 'Select Gender'),
                      validator: FormBuilderValidators.compose(
                          [FormBuilderValidators.required()]),
                      items: genderOptions
                          .map((gender) => DropdownMenuItem(
                                alignment: AlignmentDirectional.center,
                                value: gender,
                                child: Text(gender),
                              ))
                          .toList(),
                      onChanged: (val) {
                        setState(() {
                          _genderHasError = !(_formKey
                                  .currentState?.fields['gender']
                                  ?.validate() ??
                              false);
                        });
                      },
                      valueTransformer: (val) => val?.toString(),
                    ),
                  ],
                ))

/*         InkWell(
              onTap: (() => {my_age_increase()}),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  'INCREASE',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                'I am ${age} years old',
                style: TextStyle(fontSize: 30, color: Colors.green),
              ),
            ),
            InkWell(
              onTap: (() => {my_age_decrease()}),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  'DECREASE',
                  style: TextStyle(fontSize: 30, color: Colors.red),
                ),
              ),
            ),
          */
          ],
        ),
      ),
    );
  }
}
