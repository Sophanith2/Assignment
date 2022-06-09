import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  final String? title;
  final int? maxLines;
  final String? labelText;
  final String? hintText;
  final TextStyle? labelStyle;
  final bool? isValidate;
  final String? initialValues;
  final Color? fillcolor;
  final ValueChanged<String>? onChanges;
  final bool? isSelected;
  final FormFieldSetter<String>? onSave;
  final TextEditingController? controller;
  final Widget? prefix;
  final String? label;
  final bool validated;

  const CustomTextFiled({
    Key? key,
    this.isValidate = false,
    this.title,
    this.maxLines,
    this.labelText,
    this.hintText,
    this.initialValues,
    this.onChanges,
    this.labelStyle,
    this.fillcolor,
    this.isSelected = false,
    this.controller,
    this.onSave,
    this.prefix,
    this.label,
    this.validated = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        Column(
          children: [
            TextFormField(
              controller: controller,
              initialValue: initialValues,
              onSaved: (value) {
                onSave!(value!);
              },
              onChanged: onChanges,
              autofocus: false,
              maxLines: maxLines,
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                hintText: hintText,
                fillColor:
                    initialValues == "" ? Colors.grey[200] : Colors.white,
                filled: true,
                prefix: prefix,
                hintMaxLines: 100,
                labelText: labelText,
                label: validated
                    ? RichText(
                        text: TextSpan(
                          text: label,
                          style: DefaultTextStyle.of(context).style,
                          children: const <TextSpan>[
                            TextSpan(
                                text: '*',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red)),
                          ],
                        ),
                      )
                    : RichText(
                        text: TextSpan(
                          text: label,
                          style: DefaultTextStyle.of(context).style,
                          children: const <TextSpan>[
                            TextSpan(
                                text: '',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red)),
                          ],
                        ),
                      ),
                labelStyle: const TextStyle(color: Colors.black54),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: isValidate == true
                        ? Colors.red
                        : const Color(0xff674EA7),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: initialValues != ''
                    ? OutlineInputBorder(
                        borderSide: BorderSide(
                          color: isValidate == true ? Colors.red : Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      )
                    : OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: isValidate!
                            ? const BorderSide(color: Colors.red)
                            : BorderSide.none),
              ),
            ),
            const SizedBox(height: 10),
            if (isValidate!)
              Row(
                children: [
                  const Icon(
                    Icons.error,
                    color: Colors.red,
                    size: 18,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Please enter $labelText',
                    style: const TextStyle(color: Colors.red, fontSize: 14),
                  ),
                ],
              ),
          ],
        ),
      ],
    );
  }
}
