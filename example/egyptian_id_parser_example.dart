import 'package:egyptian_id_parser/country_id_parser.dart';
import 'package:egyptian_id_parser/src/impl/impl.dart';

void main() {
  String idNumber = "12345678901234"; // Replace with a valid ID number
  var id = CountryIdParser(idNumber);

  print('Birth Date: ${id.birthDate}');
  print('Governorate: ${id.governorate}');
  print('Gender: ${id.gender}');
  print('Age: ${id.age}');
}
