# Egyptian ID Parser

[![pub package](https://img.shields.io/pub/v/egyptian_id_parser.svg)](https://pub.dev/packages/egyptian_id_parser)
<a href="https://opensource.org/licenses/MIT"><img alt="MIT License" src="https://img.shields.io/badge/License-MIT-yellow.svg"></a>
<a href="https://pub.dev/documentation/egyptian_id_parser/latest"><img src="https://img.shields.io/badge/dartdocs-latest-purple.svg" alt="Latest Dartdocs" /></a>
[![Language: Dart](https://img.shields.io/badge/language-Dart-green)](https://dart.dev/)
[![GitHub stars](https://img.shields.io/github/stars/mohamedelbaiomy/egyptian-id-parser?style=flat&color=red)](https://github.com/mohamedelbaiomy/egyptian-id-parser/stargazers)
[![All Contributors](https://img.shields.io/badge/all_contributors-2-orange.svg?style=flat-square)](#contributors-)
<a href="https://pub.dev/packages/egyptian_id_parser/score"><img src="https://img.shields.io/pub/likes/egyptian_id_parser" alt="likes"></a>
<a href="https://pub.dev/packages/egyptian_id_parser/score"><img src="https://img.shields.io/pub/popularity/egyptian_id_parser" alt="popularity"></a>
<a href="https://pub.dev/packages/egyptian_id_parser/score"><img src="https://img.shields.io/pub/points/egyptian_id_parser" alt="pub points"></a>

<!---
[![MIT License][license-badge]][license-link]
[![PRs Welcome][prs-badge]][prs-link]
[![Watch on GitHub][github-watch-badge]][github-watch-link]
[![Star on GitHub][github-star-badge]][github-star-link]
[![Watch on GitHub][github-forks-badge]][github-forks-link]
--->

<!---
[![Publisher: halildurmus.dev](https://img.shields.io/pub/publisher/egyptian_id_parser)](https://pub.dev/publishers/mohamedelbaiomy)
--->

<!---
[![pub package](https://img.shields.io/pub/v/egyptian_id_parser.svg?label=egyptian_id_parser&color=blue)](https://pub.dartlang.org/packages/egyptian_id_parser)
--->

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
  egyptian_id_parser: ^1.1.0
```
2) create an instance of `EgyptianIdParser` with a valid ID number to access birth date, governorate, gender, and age information. :

``` 

import 'package:egyptian_id_parser/egyptian_id_parser.dart';

void main() {
  String idNumber = "12345678901234"; // Replace with a valid ID number
  var id = EgyptianIdParser(idNumber);

  print('Birth Date: ${id.birthDate}');
  print('Governorate: ${id.governorate}');
  print('Gender: ${id.gender}');
  print('Age: ${id.age}');
}
```

## 🔗 Mohamed Elbaiomy


* [![linkedin](https://img.shields.io/static/v1?message=LinkedIn&logo=linkedin&label=&color=0077B5&logoColor=white&labelColor=&style=for-the-badge%22%20height=%2235%22%20alt=%22linkedin%20logo%22)](https://www.linkedin.com/in/mohamed-elbaiomy262003/)
* [![youtube](https://img.shields.io/static/v1?message=Youtube&logo=youtube&label=&color=FF0000&logoColor=white&labelColor=&style=for-the-badge%22height=%2235%22alt=%22youtube%20logo%22)](https://www.youtube.com/@mohamedelbaiomy262)
* [![facebook](https://img.shields.io/static/v1?message=Facebook&logo=facebook&label=&color=1877F2&logoColor=white&labelColor=&style=for-the-badge%22%20height=%2235%22%20alt=%22facebook%20logo%22)](https://www.facebook.com/Original262003)

***

[license-badge]: https://img.shields.io/github/license/mohamedelbaiomy/egyptian-id-parser.svg?style=for-the-badge
[license-link]: https://github.com/mohamedelbaiomy/egyptian-id-parser/blob/master/LICENSE
[prs-badge]: https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=for-the-badge
[prs-link]: https://github.commohamedelbaiomy/egyptian-id-parser/issues
[github-watch-badge]: https://img.shields.io/github/watchers/mohamedelbaiomy/egyptian-id-parser.svg?style=for-the-badge&logo=github&logoColor=ffffff
[github-watch-link]: https://github.com/mohamedelbaiomy/egyptian-id-parser/watchers
[github-star-badge]: https://img.shields.io/github/stars/mohamedelbaiomy/egyptian-id-parser.svg?style=for-the-badge&logo=github&logoColor=ffffff
[github-star-link]: https://github.com/mohamedelbaiomy/egyptian-id-parser/stargazers
[github-forks-badge]: https://img.shields.io/github/forks/mohamedelbaiomy/egyptian-id-parser.svg?style=for-the-badge&logo=github&logoColor=ffffff
[github-forks-link]: https://github.com/mohamedelbaiomy/egyptian-id-parser/network/members
