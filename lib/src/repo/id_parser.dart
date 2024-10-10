part of 'repo.dart';

abstract class IdParser {
  String extractBirthDate(String id);
  String extractGovernorate(String id);
  String extractGender(String id);
  Age calculateAge(String id);
}