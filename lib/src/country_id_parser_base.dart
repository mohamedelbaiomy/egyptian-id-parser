import 'package:egyptian_id_parser/src/impl/impl.dart';
import 'package:egyptian_id_parser/src/repo/repo.dart';

import 'models/models.dart';

class EgyptianIdParser {
  final IdParser idParser = EgyptID();
  final String id;

  EgyptianIdParser(this.id);

  // Direct accessors for the ID information
  String get birthDate => idParser.extractBirthDate(id);
  String get governorate => idParser.extractGovernorate(id);
  String get gender => idParser.extractGender(id);
  Age get age => idParser.calculateAge(id);
}
