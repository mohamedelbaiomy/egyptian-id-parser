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
