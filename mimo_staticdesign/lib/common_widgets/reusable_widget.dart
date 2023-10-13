import 'package:flutter/material.dart';

final _emailFocusNode = FocusNode();
final _passwordFocusNode = FocusNode();
final _fullnameFocusNode = FocusNode();
final _mobilenoFocusNode = FocusNode();
final _conpasswordFocusNode = FocusNode();
bool _checkval = false;

void dispose() {
  _emailFocusNode.dispose();

  _passwordFocusNode.dispose();
  //super.dispose();
}

Container Email(BuildContext context) {
  return Container(
    height: 50,
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 5,
          offset: const Offset(0, 3),
        ),
      ],
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
    ),
    child: TextFormField(
      focusNode: _emailFocusNode,
      textInputAction: TextInputAction.next,
      onFieldSubmitted: (value) {
        _emailFocusNode.unfocus();
        FocusScope.of(context).requestFocus(_passwordFocusNode);
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Field is required';
        }
        if (value.length < 8 || !value.contains("@") || !value.contains(".")) {
          return "Enter a valid email.";
        }
        return null;
      },
      onSaved: (value) {},
      decoration: const InputDecoration(
        labelText: '  Enter your email',
        contentPadding: EdgeInsets.only(left: 5),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        border: InputBorder.none,
      ),
    ),
  );
}

class Password_text extends StatefulWidget {
  final String labelText;
  FocusNode focusNode;
  final Function() onFieldSubmitted;

  Password_text({
    required this.labelText,
    required this.focusNode,
    required this.onFieldSubmitted,
  });

  @override
  State<Password_text> createState() => _Password_textState();
}

class _Password_textState extends State<Password_text> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        focusNode: widget.focusNode,
        textInputAction: TextInputAction.next,
        onFieldSubmitted: (value) {
          widget.focusNode.unfocus();
          widget.onFieldSubmitted;
        },
        // focusNode: widget.focusNode,
        // textInputAction: TextInputAction.done,
        // onFieldSubmitted:
        decoration: InputDecoration(
            labelText: '  ${widget.labelText}',
            contentPadding: EdgeInsets.only(left: 5),
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
              child: Icon(
                _obscureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            border: InputBorder.none),
        obscureText: _obscureText,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Password";
          }
          if (value.length < 8) {
            return 'Password must be at least 8 characters long';
          }
          return null;
        },
        onSaved: (value) {},
      ),
    );
  }
}

class Custom_TextFormFields extends StatefulWidget {
  // Add a FocusNode parameter

  final String labelText;
  FocusNode focusNode;
  final Function() onFieldSubmitted;
  Custom_TextFormFields({
    required this.focusNode,
    required this.labelText,
    required this.onFieldSubmitted,
  });

  @override
  State<Custom_TextFormFields> createState() => _Custom_TextFormFieldsState();
}

class _Custom_TextFormFieldsState extends State<Custom_TextFormFields> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        focusNode: widget.focusNode,
        textInputAction: TextInputAction.next,
        onFieldSubmitted: (value) {
          widget.focusNode.unfocus();
          widget.onFieldSubmitted;
        },
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Field is required';
          }
          return null;
        },
        onSaved: (value) {},
        decoration: InputDecoration(
          labelText: widget.labelText,
          contentPadding: EdgeInsets.only(left: 10),
          floatingLabelBehavior: FloatingLabelBehavior.never,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
