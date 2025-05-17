///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'translations.g.dart';

// Path: <root>
class LocaleKeysRu extends LocaleKeys {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	LocaleKeysRu({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, LocaleKeys>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ru,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ru>.
	@override final TranslationMetadata<AppLocale, LocaleKeys> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final LocaleKeysRu _root = this; // ignore: unused_field

	@override 
	LocaleKeysRu $copyWith({TranslationMetadata<AppLocale, LocaleKeys>? meta}) => LocaleKeysRu(meta: meta ?? this.$meta);

	// Translations
	@override late final _LocaleKeysTabRu tab = _LocaleKeysTabRu._(_root);
	@override late final _LocaleKeysSkillRu skill = _LocaleKeysSkillRu._(_root);
	@override late final _LocaleKeysWelcomeRu welcome = _LocaleKeysWelcomeRu._(_root);
	@override late final _LocaleKeysSummaryRu summary = _LocaleKeysSummaryRu._(_root);
	@override late final _LocaleKeysPetProjectsRu petProjects = _LocaleKeysPetProjectsRu._(_root);
	@override String year({required num n}) => (_root.$meta.ordinalResolver ?? PluralResolvers.ordinal('ru'))(n,
		zero: '${n} лет',
		one: '${n} год',
		two: '${n} года',
		few: '${n} года',
		many: '${n} лет',
		other: '${n} лет',
	);
	@override String get androidDemo => 'Демо Android';
	@override String get iosDemo => 'Демо iOS';
	@override late final _LocaleKeysNotFoundRu notFound = _LocaleKeysNotFoundRu._(_root);
	@override String get pageTitle => 'Ксения | Мобильный разработчик';
	@override String get mainImageCaption => 'Изображение было создано с помощью графической обработки';
	@override late final _LocaleKeysExperienceRu experience = _LocaleKeysExperienceRu._(_root);
}

// Path: tab
class _LocaleKeysTabRu extends LocaleKeysTabEn {
	_LocaleKeysTabRu._(LocaleKeysRu root) : this._root = root, super.internal(root);

	final LocaleKeysRu _root; // ignore: unused_field

	// Translations
	@override String get home => 'Главная';
	@override String get summary => 'Обо мне';
	@override String get projects => 'Проекты';
	@override String get experience => 'Опыт';
	@override String get language => 'Язык';
}

// Path: skill
class _LocaleKeysSkillRu extends LocaleKeysSkillEn {
	_LocaleKeysSkillRu._(LocaleKeysRu root) : this._root = root, super.internal(root);

	final LocaleKeysRu _root; // ignore: unused_field

	// Translations
	@override String get teamPlayer => 'Командный игрок';
	@override String get communicative => 'Коммуникабельная';
	@override String get problemSolver => 'Решаю проблемы';
	@override String get leader => 'Лидер';
	@override String get nonConflictual => 'Неконфликтная';
}

// Path: welcome
class _LocaleKeysWelcomeRu extends LocaleKeysWelcomeEn {
	_LocaleKeysWelcomeRu._(LocaleKeysRu root) : this._root = root, super.internal(root);

	final LocaleKeysRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Мобильный разработчик';
	@override String get subtitle => 'Ксения Никитина';
}

// Path: summary
class _LocaleKeysSummaryRu extends LocaleKeysSummaryEn {
	_LocaleKeysSummaryRu._(LocaleKeysRu root) : this._root = root, super.internal(root);

	final LocaleKeysRu _root; // ignore: unused_field

	// Translations
	@override late final _LocaleKeysSummaryTotalExperienceRu totalExperience = _LocaleKeysSummaryTotalExperienceRu._(_root);
	@override late final _LocaleKeysSummaryMobileExperienceRu mobileExperience = _LocaleKeysSummaryMobileExperienceRu._(_root);
	@override late final _LocaleKeysSummaryHighEducationRu highEducation = _LocaleKeysSummaryHighEducationRu._(_root);
	@override late final _LocaleKeysSummaryOpenSourceRu openSource = _LocaleKeysSummaryOpenSourceRu._(_root);
	@override late final _LocaleKeysSummaryGooglePlayRu googlePlay = _LocaleKeysSummaryGooglePlayRu._(_root);
	@override late final _LocaleKeysSummaryEnglishRu english = _LocaleKeysSummaryEnglishRu._(_root);
	@override String get title => 'Обо мне';
	@override String get subtitle => 'Очень коротко и сладко';
}

// Path: petProjects
class _LocaleKeysPetProjectsRu extends LocaleKeysPetProjectsEn {
	_LocaleKeysPetProjectsRu._(LocaleKeysRu root) : this._root = root, super.internal(root);

	final LocaleKeysRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pet-проекты';
	@override String get subtitle => 'Уникальные, креативные, мои!';
	@override late final _LocaleKeysPetProjectsErrorRu error = _LocaleKeysPetProjectsErrorRu._(_root);
}

// Path: notFound
class _LocaleKeysNotFoundRu extends LocaleKeysNotFoundEn {
	_LocaleKeysNotFoundRu._(LocaleKeysRu root) : this._root = root, super.internal(root);

	final LocaleKeysRu _root; // ignore: unused_field

	// Translations
	@override String get title => '404';
	@override String get subtitle => 'Этой страницы не существует';
	@override String get button => 'На главную';
}

// Path: experience
class _LocaleKeysExperienceRu extends LocaleKeysExperienceEn {
	_LocaleKeysExperienceRu._(LocaleKeysRu root) : this._root = root, super.internal(root);

	final LocaleKeysRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Опыт';
	@override String get subtitle => 'Скучная часть';
	@override late final _LocaleKeysExperienceCvRu cv = _LocaleKeysExperienceCvRu._(_root);
	@override late final _LocaleKeysExperienceGreenfluxRu greenflux = _LocaleKeysExperienceGreenfluxRu._(_root);
	@override late final _LocaleKeysExperienceFriflexRu friflex = _LocaleKeysExperienceFriflexRu._(_root);
	@override late final _LocaleKeysExperienceAgroStabRu agroStab = _LocaleKeysExperienceAgroStabRu._(_root);
}

// Path: summary.totalExperience
class _LocaleKeysSummaryTotalExperienceRu extends LocaleKeysSummaryTotalExperienceEn {
	_LocaleKeysSummaryTotalExperienceRu._(LocaleKeysRu root) : this._root = root, super.internal(root);

	final LocaleKeysRu _root; // ignore: unused_field

	// Translations
	@override String get subtitle => 'общий опыт';
	@override String get content => 'Помимо Dart, у меня есть опыт работы с Kotlin, Swift, JavaScript, Python, C#, R и др.';
}

// Path: summary.mobileExperience
class _LocaleKeysSummaryMobileExperienceRu extends LocaleKeysSummaryMobileExperienceEn {
	_LocaleKeysSummaryMobileExperienceRu._(LocaleKeysRu root) : this._root = root, super.internal(root);

	final LocaleKeysRu _root; // ignore: unused_field

	// Translations
	@override String get subtitle => 'опыт работы с мобильными приложениями';
	@override String get content1 => 'Я разрабатываю';
	@override String get content2 => 'веб- и мобильные';
	@override String get content3 => 'приложения, а также';
	@override String get content4 => 'бэкенд-';
	@override String get content5 => 'структуры. Я специализируюсь на сложных системах и пользовательских пакетах.';
}

// Path: summary.highEducation
class _LocaleKeysSummaryHighEducationRu extends LocaleKeysSummaryHighEducationEn {
	_LocaleKeysSummaryHighEducationRu._(LocaleKeysRu root) : this._root = root, super.internal(root);

	final LocaleKeysRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Высшее образование';
	@override String get subtitle => 'в технической сфере';
	@override String get content1 => '«Программирование в информационных и коммуникационных системах» в';
	@override String get content2 => 'Университете ИТМО';
}

// Path: summary.openSource
class _LocaleKeysSummaryOpenSourceRu extends LocaleKeysSummaryOpenSourceEn {
	_LocaleKeysSummaryOpenSourceRu._(LocaleKeysRu root) : this._root = root, super.internal(root);

	final LocaleKeysRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Open-source';
	@override String get subtitle => 'активный проект';
	@override String get content => 'Пакет для P2P коммуникации';
	@override String get contentButton => 'Открыть';
}

// Path: summary.googlePlay
class _LocaleKeysSummaryGooglePlayRu extends LocaleKeysSummaryGooglePlayEn {
	_LocaleKeysSummaryGooglePlayRu._(LocaleKeysRu root) : this._root = root, super.internal(root);

	final LocaleKeysRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Google Play';
	@override String get subtitle => 'активное приложение';
	@override String get content => 'Оффлайн мессенджер с поддержкой обмена текстом и файлами';
	@override String get contentButton => 'Открыть';
}

// Path: summary.english
class _LocaleKeysSummaryEnglishRu extends LocaleKeysSummaryEnglishEn {
	_LocaleKeysSummaryEnglishRu._(LocaleKeysRu root) : this._root = root, super.internal(root);

	final LocaleKeysRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Английский язык';
	@override String get subtitle => 'уровень владения для работы';
	@override String get content => 'I very, very, very speak English';
}

// Path: petProjects.error
class _LocaleKeysPetProjectsErrorRu extends LocaleKeysPetProjectsErrorEn {
	_LocaleKeysPetProjectsErrorRu._(LocaleKeysRu root) : this._root = root, super.internal(root);

	final LocaleKeysRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Упс!';
	@override String subtitle({required Object id}) => 'Проект с ID=${id} не найден. Пожалуйста, проверьте ID и попробуйте еще раз.';
}

// Path: experience.cv
class _LocaleKeysExperienceCvRu extends LocaleKeysExperienceCvEn {
	_LocaleKeysExperienceCvRu._(LocaleKeysRu root) : this._root = root, super.internal(root);

	final LocaleKeysRu _root; // ignore: unused_field

	// Translations
	@override String get caption => 'Читайте больше о моей опыте в CV';
	@override String get button => 'Открыть резюме';
}

// Path: experience.greenflux
class _LocaleKeysExperienceGreenfluxRu extends LocaleKeysExperienceGreenfluxEn {
	_LocaleKeysExperienceGreenfluxRu._(LocaleKeysRu root) : this._root = root, super.internal(root);

	final LocaleKeysRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Разработчик мобильных приложений';
	@override String get organization => 'Greenflux Assets B.V.';
	@override String get location => 'Амстердам, Нидерланды (гибрид)';
	@override String get duration => 'Февраль 2024 – настоящее время';
	@override String get subtitle => 'Разработка приложений для зарядных станций для электромобилей';
	@override late final _LocaleKeysExperienceGreenfluxSkillsRu skills = _LocaleKeysExperienceGreenfluxSkillsRu._(_root);
	@override late final _LocaleKeysExperienceGreenfluxAchievementsRu achievements = _LocaleKeysExperienceGreenfluxAchievementsRu._(_root);
}

// Path: experience.friflex
class _LocaleKeysExperienceFriflexRu extends LocaleKeysExperienceFriflexEn {
	_LocaleKeysExperienceFriflexRu._(LocaleKeysRu root) : this._root = root, super.internal(root);

	final LocaleKeysRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Разработчик мобильных приложений';
	@override String get organization => 'Friflex';
	@override String get location => 'Москва, Россия';
	@override String get duration => 'Август 2022 – Декабрь 2023';
	@override String get subtitle => 'Разработка сервисов для распознавания игр в шахматы и шашки';
	@override late final _LocaleKeysExperienceFriflexSkillsRu skills = _LocaleKeysExperienceFriflexSkillsRu._(_root);
	@override late final _LocaleKeysExperienceFriflexAchievementsRu achievements = _LocaleKeysExperienceFriflexAchievementsRu._(_root);
}

// Path: experience.agroStab
class _LocaleKeysExperienceAgroStabRu extends LocaleKeysExperienceAgroStabEn {
	_LocaleKeysExperienceAgroStabRu._(LocaleKeysRu root) : this._root = root, super.internal(root);

	final LocaleKeysRu _root; // ignore: unused_field

	// Translations
	@override String get title => 'Full-stack разработчик';
	@override String get organization => 'AgroSTAB';
	@override String get location => 'Санкт-Петербург, Россия';
	@override String get duration => 'Февраль 2022 – Июль 2022';
	@override String get subtitle => 'Разработка административных панелей управления для умных теплиц';
	@override late final _LocaleKeysExperienceAgroStabSkillsRu skills = _LocaleKeysExperienceAgroStabSkillsRu._(_root);
	@override late final _LocaleKeysExperienceAgroStabAchievementsRu achievements = _LocaleKeysExperienceAgroStabAchievementsRu._(_root);
}

// Path: experience.greenflux.skills
class _LocaleKeysExperienceGreenfluxSkillsRu extends LocaleKeysExperienceGreenfluxSkillsEn {
	_LocaleKeysExperienceGreenfluxSkillsRu._(LocaleKeysRu root) : this._root = root, super.internal(root);

	final LocaleKeysRu _root; // ignore: unused_field

	// Translations
	@override String get skill1 => 'Dart';
	@override String get skill2 => 'Flutter';
	@override String get skill3 => 'Google Play';
	@override String get skill4 => 'Firebase';
	@override String get skill5 => 'Git';
	@override String get skill6 => 'ChatGPT';
	@override String get skill7 => 'BloC';
	@override String get skill8 => 'App Store';
	@override String get skill9 => 'SwiftUI';
	@override String get skill10 => 'Английский';
	@override String get skill11 => 'REST API';
	@override String get skill12 => 'Figma';
	@override String get skill13 => 'Объектно-ориентированное программирование (OOP)';
}

// Path: experience.greenflux.achievements
class _LocaleKeysExperienceGreenfluxAchievementsRu extends LocaleKeysExperienceGreenfluxAchievementsEn {
	_LocaleKeysExperienceGreenfluxAchievementsRu._(LocaleKeysRu root) : this._root = root, super.internal(root);

	final LocaleKeysRu _root; // ignore: unused_field

	// Translations
	@override String get achievement1 => 'Поддерживала полный цикл разработки: от технического задания до публикации';
	@override String get achievement2 => 'Поддерживала систему из более чем 10 приложений с общей кодовой базой';
	@override String get achievement3 => 'Настроила линтеры, форматирование и внедрила общую систему классов для всех приложений';
	@override String get achievement4 => 'Создала пайплайны для проверки pull-request\'ов, для сборки и публикации приложений, а также скрипты для упрощения процессов';
	@override String get achievement5 => 'Настроила Git Flow и отслеживала его соблюдение';
	@override String get achievement6 => 'Тесно работала с Google Maps, уведомлениями и другими комплексными функциями';
	@override String get achievement7 => 'Полностью внедрила iOS Live Activities с использованием SwiftUI и расширила на несколько приложений';
	@override String get achievement8 => 'Покрыла тестами всю кодовую базу';
}

// Path: experience.friflex.skills
class _LocaleKeysExperienceFriflexSkillsRu extends LocaleKeysExperienceFriflexSkillsEn {
	_LocaleKeysExperienceFriflexSkillsRu._(LocaleKeysRu root) : this._root = root, super.internal(root);

	final LocaleKeysRu _root; // ignore: unused_field

	// Translations
	@override String get skill1 => 'Firebase';
	@override String get skill2 => 'Базы данных';
	@override String get skill3 => 'PostgreSQL';
	@override String get skill4 => 'Figma';
	@override String get skill5 => 'Локализация';
	@override String get skill6 => 'ChatGPT';
	@override String get skill7 => 'Dart';
	@override String get skill8 => 'REST API';
	@override String get skill9 => 'Flutter';
	@override String get skill10 => 'Google Play';
	@override String get skill11 => 'Шаблоны проектирования';
	@override String get skill12 => 'Git';
	@override String get skill13 => 'BloC';
	@override String get skill14 => 'Объектно-ориентированное программирование (OOP)';
}

// Path: experience.friflex.achievements
class _LocaleKeysExperienceFriflexAchievementsRu extends LocaleKeysExperienceFriflexAchievementsEn {
	_LocaleKeysExperienceFriflexAchievementsRu._(LocaleKeysRu root) : this._root = root, super.internal(root);

	final LocaleKeysRu _root; // ignore: unused_field

	// Translations
	@override String get achievement1 => 'Поддерживала полный цикл разработки: от технического задания до публикации';
	@override String get achievement2 => 'Полностью создала 3 кастомных пакета, а поддерживала 10+ пакетов, а также настраивала зависимости между ними';
	@override String get achievement3 => 'Успешно интегрировала сторонние сервисы (MiniO, Firebase)';
	@override String get achievement4 => 'Занималась разработкой административных веб-дашбордов на Flutter Web';
	@override String get achievement5 => 'Занималась разработкой бэкенда с использованием Dart';
	@override String get achievement6 => 'Создала бесчисленное множество UI-компонентов и анимаций';
	@override String get achievement7 => 'Разработала фоновый сервис для отправки данных в облачное хранилище по частям';
	@override String get achievement8 => 'Поддерживала систему для прямых трансляций, состоящую из мобильного приложения, бэкенда и веб-части';
}

// Path: experience.agroStab.skills
class _LocaleKeysExperienceAgroStabSkillsRu extends LocaleKeysExperienceAgroStabSkillsEn {
	_LocaleKeysExperienceAgroStabSkillsRu._(LocaleKeysRu root) : this._root = root, super.internal(root);

	final LocaleKeysRu _root; // ignore: unused_field

	// Translations
	@override String get skill1 => 'Mqtt';
	@override String get skill2 => 'Cron';
	@override String get skill3 => 'PostgreSQL';
	@override String get skill4 => 'Linux';
	@override String get skill5 => 'Английский';
	@override String get skill6 => 'Git';
	@override String get skill7 => 'ReactJS';
	@override String get skill8 => 'GitLab';
}

// Path: experience.agroStab.achievements
class _LocaleKeysExperienceAgroStabAchievementsRu extends LocaleKeysExperienceAgroStabAchievementsEn {
	_LocaleKeysExperienceAgroStabAchievementsRu._(LocaleKeysRu root) : this._root = root, super.internal(root);

	final LocaleKeysRu _root; // ignore: unused_field

	// Translations
	@override String get achievement1 => 'Поддерживала полный цикл разработки: от технического задания до публикации';
	@override String get achievement2 => 'Занималась созданием пользовательского интерфейса с использованием React.js';
	@override String get achievement3 => 'Внедряла обработку данных с помощью react-redux';
	@override String get achievement4 => 'Проектировала структуру компонентов, их размещение и связи';
	@override String get achievement5 => 'Добавила интерактивные элементы для улучшения UX';
	@override String get achievement6 => 'Улучшила структуру бэкенда, написанного на Nest.js, и добавила логику обработки данных';
	@override String get achievement7 => 'Проектировала архитектуру базы данных (Postgres) и реализовала обновления';
	@override String get achievement8 => 'Разработала алгоритмы для запланированных обновлений данных в базе данных с использованием Cron';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on LocaleKeysRu {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'tab.home': return 'Главная';
			case 'tab.summary': return 'Обо мне';
			case 'tab.projects': return 'Проекты';
			case 'tab.experience': return 'Опыт';
			case 'tab.language': return 'Язык';
			case 'skill.teamPlayer': return 'Командный игрок';
			case 'skill.communicative': return 'Коммуникабельная';
			case 'skill.problemSolver': return 'Решаю проблемы';
			case 'skill.leader': return 'Лидер';
			case 'skill.nonConflictual': return 'Неконфликтная';
			case 'welcome.title': return 'Мобильный разработчик';
			case 'welcome.subtitle': return 'Ксения Никитина';
			case 'summary.totalExperience.subtitle': return 'общий опыт';
			case 'summary.totalExperience.content': return 'Помимо Dart, у меня есть опыт работы с Kotlin, Swift, JavaScript, Python, C#, R и др.';
			case 'summary.mobileExperience.subtitle': return 'опыт работы с мобильными приложениями';
			case 'summary.mobileExperience.content1': return 'Я разрабатываю';
			case 'summary.mobileExperience.content2': return 'веб- и мобильные';
			case 'summary.mobileExperience.content3': return 'приложения, а также';
			case 'summary.mobileExperience.content4': return 'бэкенд-';
			case 'summary.mobileExperience.content5': return 'структуры. Я специализируюсь на сложных системах и пользовательских пакетах.';
			case 'summary.highEducation.title': return 'Высшее образование';
			case 'summary.highEducation.subtitle': return 'в технической сфере';
			case 'summary.highEducation.content1': return '«Программирование в информационных и коммуникационных системах» в';
			case 'summary.highEducation.content2': return 'Университете ИТМО';
			case 'summary.openSource.title': return 'Open-source';
			case 'summary.openSource.subtitle': return 'активный проект';
			case 'summary.openSource.content': return 'Пакет для P2P коммуникации';
			case 'summary.openSource.contentButton': return 'Открыть';
			case 'summary.googlePlay.title': return 'Google Play';
			case 'summary.googlePlay.subtitle': return 'активное приложение';
			case 'summary.googlePlay.content': return 'Оффлайн мессенджер с поддержкой обмена текстом и файлами';
			case 'summary.googlePlay.contentButton': return 'Открыть';
			case 'summary.english.title': return 'Английский язык';
			case 'summary.english.subtitle': return 'уровень владения для работы';
			case 'summary.english.content': return 'I very, very, very speak English';
			case 'summary.title': return 'Обо мне';
			case 'summary.subtitle': return 'Очень коротко и сладко';
			case 'petProjects.title': return 'Pet-проекты';
			case 'petProjects.subtitle': return 'Уникальные, креативные, мои!';
			case 'petProjects.error.title': return 'Упс!';
			case 'petProjects.error.subtitle': return ({required Object id}) => 'Проект с ID=${id} не найден. Пожалуйста, проверьте ID и попробуйте еще раз.';
			case 'year': return ({required num n}) => (_root.$meta.ordinalResolver ?? PluralResolvers.ordinal('ru'))(n,
				zero: '${n} лет',
				one: '${n} год',
				two: '${n} года',
				few: '${n} года',
				many: '${n} лет',
				other: '${n} лет',
			);
			case 'androidDemo': return 'Демо Android';
			case 'iosDemo': return 'Демо iOS';
			case 'notFound.title': return '404';
			case 'notFound.subtitle': return 'Этой страницы не существует';
			case 'notFound.button': return 'На главную';
			case 'pageTitle': return 'Ксения | Мобильный разработчик';
			case 'mainImageCaption': return 'Изображение было создано с помощью графической обработки';
			case 'experience.title': return 'Опыт';
			case 'experience.subtitle': return 'Скучная часть';
			case 'experience.cv.caption': return 'Читайте больше о моей опыте в CV';
			case 'experience.cv.button': return 'Открыть резюме';
			case 'experience.greenflux.title': return 'Разработчик мобильных приложений';
			case 'experience.greenflux.organization': return 'Greenflux Assets B.V.';
			case 'experience.greenflux.location': return 'Амстердам, Нидерланды (гибрид)';
			case 'experience.greenflux.duration': return 'Февраль 2024 – настоящее время';
			case 'experience.greenflux.subtitle': return 'Разработка приложений для зарядных станций для электромобилей';
			case 'experience.greenflux.skills.skill1': return 'Dart';
			case 'experience.greenflux.skills.skill2': return 'Flutter';
			case 'experience.greenflux.skills.skill3': return 'Google Play';
			case 'experience.greenflux.skills.skill4': return 'Firebase';
			case 'experience.greenflux.skills.skill5': return 'Git';
			case 'experience.greenflux.skills.skill6': return 'ChatGPT';
			case 'experience.greenflux.skills.skill7': return 'BloC';
			case 'experience.greenflux.skills.skill8': return 'App Store';
			case 'experience.greenflux.skills.skill9': return 'SwiftUI';
			case 'experience.greenflux.skills.skill10': return 'Английский';
			case 'experience.greenflux.skills.skill11': return 'REST API';
			case 'experience.greenflux.skills.skill12': return 'Figma';
			case 'experience.greenflux.skills.skill13': return 'Объектно-ориентированное программирование (OOP)';
			case 'experience.greenflux.achievements.achievement1': return 'Поддерживала полный цикл разработки: от технического задания до публикации';
			case 'experience.greenflux.achievements.achievement2': return 'Поддерживала систему из более чем 10 приложений с общей кодовой базой';
			case 'experience.greenflux.achievements.achievement3': return 'Настроила линтеры, форматирование и внедрила общую систему классов для всех приложений';
			case 'experience.greenflux.achievements.achievement4': return 'Создала пайплайны для проверки pull-request\'ов, для сборки и публикации приложений, а также скрипты для упрощения процессов';
			case 'experience.greenflux.achievements.achievement5': return 'Настроила Git Flow и отслеживала его соблюдение';
			case 'experience.greenflux.achievements.achievement6': return 'Тесно работала с Google Maps, уведомлениями и другими комплексными функциями';
			case 'experience.greenflux.achievements.achievement7': return 'Полностью внедрила iOS Live Activities с использованием SwiftUI и расширила на несколько приложений';
			case 'experience.greenflux.achievements.achievement8': return 'Покрыла тестами всю кодовую базу';
			case 'experience.friflex.title': return 'Разработчик мобильных приложений';
			case 'experience.friflex.organization': return 'Friflex';
			case 'experience.friflex.location': return 'Москва, Россия';
			case 'experience.friflex.duration': return 'Август 2022 – Декабрь 2023';
			case 'experience.friflex.subtitle': return 'Разработка сервисов для распознавания игр в шахматы и шашки';
			case 'experience.friflex.skills.skill1': return 'Firebase';
			case 'experience.friflex.skills.skill2': return 'Базы данных';
			case 'experience.friflex.skills.skill3': return 'PostgreSQL';
			case 'experience.friflex.skills.skill4': return 'Figma';
			case 'experience.friflex.skills.skill5': return 'Локализация';
			case 'experience.friflex.skills.skill6': return 'ChatGPT';
			case 'experience.friflex.skills.skill7': return 'Dart';
			case 'experience.friflex.skills.skill8': return 'REST API';
			case 'experience.friflex.skills.skill9': return 'Flutter';
			case 'experience.friflex.skills.skill10': return 'Google Play';
			case 'experience.friflex.skills.skill11': return 'Шаблоны проектирования';
			case 'experience.friflex.skills.skill12': return 'Git';
			case 'experience.friflex.skills.skill13': return 'BloC';
			case 'experience.friflex.skills.skill14': return 'Объектно-ориентированное программирование (OOP)';
			case 'experience.friflex.achievements.achievement1': return 'Поддерживала полный цикл разработки: от технического задания до публикации';
			case 'experience.friflex.achievements.achievement2': return 'Полностью создала 3 кастомных пакета, а поддерживала 10+ пакетов, а также настраивала зависимости между ними';
			case 'experience.friflex.achievements.achievement3': return 'Успешно интегрировала сторонние сервисы (MiniO, Firebase)';
			case 'experience.friflex.achievements.achievement4': return 'Занималась разработкой административных веб-дашбордов на Flutter Web';
			case 'experience.friflex.achievements.achievement5': return 'Занималась разработкой бэкенда с использованием Dart';
			case 'experience.friflex.achievements.achievement6': return 'Создала бесчисленное множество UI-компонентов и анимаций';
			case 'experience.friflex.achievements.achievement7': return 'Разработала фоновый сервис для отправки данных в облачное хранилище по частям';
			case 'experience.friflex.achievements.achievement8': return 'Поддерживала систему для прямых трансляций, состоящую из мобильного приложения, бэкенда и веб-части';
			case 'experience.agroStab.title': return 'Full-stack разработчик';
			case 'experience.agroStab.organization': return 'AgroSTAB';
			case 'experience.agroStab.location': return 'Санкт-Петербург, Россия';
			case 'experience.agroStab.duration': return 'Февраль 2022 – Июль 2022';
			case 'experience.agroStab.subtitle': return 'Разработка административных панелей управления для умных теплиц';
			case 'experience.agroStab.skills.skill1': return 'Mqtt';
			case 'experience.agroStab.skills.skill2': return 'Cron';
			case 'experience.agroStab.skills.skill3': return 'PostgreSQL';
			case 'experience.agroStab.skills.skill4': return 'Linux';
			case 'experience.agroStab.skills.skill5': return 'Английский';
			case 'experience.agroStab.skills.skill6': return 'Git';
			case 'experience.agroStab.skills.skill7': return 'ReactJS';
			case 'experience.agroStab.skills.skill8': return 'GitLab';
			case 'experience.agroStab.achievements.achievement1': return 'Поддерживала полный цикл разработки: от технического задания до публикации';
			case 'experience.agroStab.achievements.achievement2': return 'Занималась созданием пользовательского интерфейса с использованием React.js';
			case 'experience.agroStab.achievements.achievement3': return 'Внедряла обработку данных с помощью react-redux';
			case 'experience.agroStab.achievements.achievement4': return 'Проектировала структуру компонентов, их размещение и связи';
			case 'experience.agroStab.achievements.achievement5': return 'Добавила интерактивные элементы для улучшения UX';
			case 'experience.agroStab.achievements.achievement6': return 'Улучшила структуру бэкенда, написанного на Nest.js, и добавила логику обработки данных';
			case 'experience.agroStab.achievements.achievement7': return 'Проектировала архитектуру базы данных (Postgres) и реализовала обновления';
			case 'experience.agroStab.achievements.achievement8': return 'Разработала алгоритмы для запланированных обновлений данных в базе данных с использованием Cron';
			default: return null;
		}
	}
}

