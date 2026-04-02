import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fist_flutter/utils/utils.dart';

typedef OnSortSelected = void Function(Sorting);

class SortPicker extends ConsumerStatefulWidget {
  final OnSortSelected onSortSelected;
  const SortPicker({required this.onSortSelected, super.key});
  @override
  ConsumerState<SortPicker> createState() => _SortPickerState();
}

class _SortPickerState extends ConsumerState<SortPicker> {
  Sorting selectedSort = Sorting.aToz;
  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}
