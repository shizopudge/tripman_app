import 'package:flutter/material.dart';

import '../../../styles/styles.dart';

class CommentTextField extends StatelessWidget {
  final TextEditingController _commentController;
  const CommentTextField(
      {super.key, required TextEditingController commentController})
      : _commentController = commentController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _commentController,
      cursorColor: kBlack,
      maxLines: 2,
      autofocus: true,
      style: kSFProDisplayRegular.copyWith(
        color: kBlack,
        fontSize: 15,
      ),
      decoration: const InputDecoration(
        border: InputBorder.none,
      ),
    );
  }
}
