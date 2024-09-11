# Egyptian ID Parser

The **Egyptian ID Parser** is a Dart package designed to extract personal information from the Egyptian National ID number. This package enables developers to easily retrieve essential details, including date of birth, gender, and governorate, from the 14-digit national ID.

## Features

- **Extract Birth Date**: Retrieve the birth date in the format `YYYY-MM-DD` from the national ID.
- **Determine Gender**: Identify the gender (male or female) based on the national ID.
- **Identify Governorate**: Find the governorate of residence linked to the national ID.
- **Calculate Age**: Compute the age in years, months, and days from the birth date.

## Usage

1) To use the **Egyptian ID Parser** package, add it to your `pubspec.yaml` file and import it into your project.

```
dependencies:
  egyptian_id_parser: ^1.0.0
```
2) Use the class `EgyptianIdParserBase` to access to all static functions :

``` 

import 'package:egyptian_id_parser/egyptian_id_parser.dart';

void main() {
  String idNumber = "12345678901234"; // Replace with a valid ID number
  String birthDate = EgyptianIdParserBase.extractBirthDate(idNumber);
  String governorate = EgyptianIdParserBase.extractGovernorate(idNumber);
  String gender = EgyptianIdParserBase.extractGender(idNumber);
  int years = EgyptianIdParserBase.calculateYears(idNumber);
  int months = EgyptianIdParserBase.calculateMonths(idNumber);
  int days = EgyptianIdParserBase.calculateDays(idNumber);

  print('Birth Date: $birthDate');
  print('Governorate: $governorate');
  print('Gender: $gender');
  print('Age: $years years, $months months, $days days');
}
```
