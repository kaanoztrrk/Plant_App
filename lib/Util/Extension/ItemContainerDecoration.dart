import 'package:flutter/material.dart';

class ItemContainerDecoration extends BoxDecoration {
  const ItemContainerDecoration()
      : super(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        );
}
