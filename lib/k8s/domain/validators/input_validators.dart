bool nonEmptyStringValidator(String? value) =>
    !(value == null || value.isEmpty);

bool numericValidator(String? value) =>
    !(value == null || value.isEmpty || int.tryParse(value) == null);
