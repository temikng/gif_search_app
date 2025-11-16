import 'package:flutter/material.dart';

class CustomSearchField extends StatefulWidget {
  final TextEditingController controller;

  const CustomSearchField({super.key, required this.controller});

  @override
  State<CustomSearchField> createState() => _CustomSearchFieldState();
}

class _CustomSearchFieldState extends State<CustomSearchField> {
  bool _showClearBtn = false;

  @override
  void initState() {
    widget.controller.addListener(_onTextChanged);
    super.initState();
  }

  @override
  void dispose() {
    widget.controller.removeListener(_onTextChanged);
    super.dispose();
  }

  void _onTextChanged() {
    final showClearBtn = widget.controller.text.isNotEmpty;

    if (showClearBtn != _showClearBtn) {
      setState(() {
        _showClearBtn = showClearBtn;
      });
    }
  }

  void _clearField() {
    widget.controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      decoration: InputDecoration(
        labelText: 'Search GIFs',
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.search),
        suffixIcon: _showClearBtn
            ? IconButton(onPressed: _clearField, icon: Icon(Icons.clear))
            : null,
      ),
    );
  }
}
