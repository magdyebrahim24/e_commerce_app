import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../errors/failure.dart';
import '../entities/language/app_language_code_enum.dart';
import '../repos/language_cache_repository.dart';

/// TODO: CHNAGE name to be more meaning as functionality
/// That make sure use single responsiblity  as solid priciples

@lazySingleton
class ChangeLanguageUseCase {
  final LanguageCacheRepository repository;

  ChangeLanguageUseCase(this.repository);

  Future<Either<Failure, Unit>> call(AppLanguageCodeEnum languageCode) async {
    return await repository.saveLanguage(languageCode);
  }
}
