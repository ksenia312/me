///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'translations.g.dart';

// Path: <root>
typedef LocaleKeysEn = LocaleKeys; // ignore: unused_element
class LocaleKeys implements BaseTranslations<AppLocale, LocaleKeys> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = LocaleKeys.of(context);
	static LocaleKeys of(BuildContext context) => InheritedLocaleData.of<AppLocale, LocaleKeys>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	LocaleKeys({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, LocaleKeys> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final LocaleKeys _root = this; // ignore: unused_field

	// Translations
	late final LocaleKeysTabEn tab = LocaleKeysTabEn.internal(_root);
	late final LocaleKeysSkillEn skill = LocaleKeysSkillEn.internal(_root);
	late final LocaleKeysWelcomeEn welcome = LocaleKeysWelcomeEn.internal(_root);
	late final LocaleKeysSummaryEn summary = LocaleKeysSummaryEn.internal(_root);
	late final LocaleKeysPetProjectsEn petProjects = LocaleKeysPetProjectsEn.internal(_root);
	String year({required num n}) => (_root.$meta.ordinalResolver ?? PluralResolvers.ordinal('en'))(n,
		zero: '${n} years',
		one: '${n} year',
		two: '${n} years',
		few: '${n} years',
		many: '${n} years',
		other: '${n} years',
	);
	String get androidDemo => 'Android demo';
	String get iosDemo => 'iOS demo';
	late final LocaleKeysNotFoundEn notFound = LocaleKeysNotFoundEn.internal(_root);
	String get pageTitle => 'Kseniia | Flutter Developer';
	String get mainImageCaption => 'The image was created using graphic processing';
	late final LocaleKeysExperienceEn experience = LocaleKeysExperienceEn.internal(_root);
}

// Path: tab
class LocaleKeysTabEn {
	LocaleKeysTabEn.internal(this._root);

	final LocaleKeys _root; // ignore: unused_field

	// Translations
	String get home => 'Home';
	String get summary => 'Summary';
	String get projects => 'Projects';
	String get experience => 'Experience';
}

// Path: skill
class LocaleKeysSkillEn {
	LocaleKeysSkillEn.internal(this._root);

	final LocaleKeys _root; // ignore: unused_field

	// Translations
	String get teamPlayer => 'Team player';
	String get communicative => 'Сommunicative';
	String get problemSolver => 'Problem solver';
	String get leader => 'Leader';
	String get nonConflictual => 'Non-conflictual';
}

// Path: welcome
class LocaleKeysWelcomeEn {
	LocaleKeysWelcomeEn.internal(this._root);

	final LocaleKeys _root; // ignore: unused_field

	// Translations
	String get title => 'Flutter developer';
	String get subtitle => 'Kseniia Nikitina';
}

// Path: summary
class LocaleKeysSummaryEn {
	LocaleKeysSummaryEn.internal(this._root);

	final LocaleKeys _root; // ignore: unused_field

	// Translations
	late final LocaleKeysSummaryTotalExperienceEn totalExperience = LocaleKeysSummaryTotalExperienceEn.internal(_root);
	late final LocaleKeysSummaryFlutterExperienceEn flutterExperience = LocaleKeysSummaryFlutterExperienceEn.internal(_root);
	late final LocaleKeysSummaryHighEducationEn highEducation = LocaleKeysSummaryHighEducationEn.internal(_root);
	late final LocaleKeysSummaryOpenSourceEn openSource = LocaleKeysSummaryOpenSourceEn.internal(_root);
	late final LocaleKeysSummaryGooglePlayEn googlePlay = LocaleKeysSummaryGooglePlayEn.internal(_root);
	late final LocaleKeysSummaryEnglishEn english = LocaleKeysSummaryEnglishEn.internal(_root);
	String get title => 'Summary';
	String get subtitle => 'Super short and sweet';
}

// Path: petProjects
class LocaleKeysPetProjectsEn {
	LocaleKeysPetProjectsEn.internal(this._root);

	final LocaleKeys _root; // ignore: unused_field

	// Translations
	String get title => 'Pet projects';
	String get subtitle => 'Unique, creative, mine!';
	late final LocaleKeysPetProjectsErrorEn error = LocaleKeysPetProjectsErrorEn.internal(_root);
}

// Path: notFound
class LocaleKeysNotFoundEn {
	LocaleKeysNotFoundEn.internal(this._root);

	final LocaleKeys _root; // ignore: unused_field

	// Translations
	String get title => '404';
	String get subtitle => 'This page does not exist';
	String get button => 'Go to home page';
}

// Path: experience
class LocaleKeysExperienceEn {
	LocaleKeysExperienceEn.internal(this._root);

	final LocaleKeys _root; // ignore: unused_field

	// Translations
	String get title => 'Experience';
	String get subtitle => 'The boring part';
	late final LocaleKeysExperienceGreenfluxEn greenflux = LocaleKeysExperienceGreenfluxEn.internal(_root);
	late final LocaleKeysExperienceFriflexEn friflex = LocaleKeysExperienceFriflexEn.internal(_root);
	late final LocaleKeysExperienceAgroStabEn agroStab = LocaleKeysExperienceAgroStabEn.internal(_root);
}

// Path: summary.totalExperience
class LocaleKeysSummaryTotalExperienceEn {
	LocaleKeysSummaryTotalExperienceEn.internal(this._root);

	final LocaleKeys _root; // ignore: unused_field

	// Translations
	String get subtitle => 'total experience';
	String get content => 'In addition to Dart, I have experience with Kotlin, Swift, JavaScript, Python, C#, R, and more';
}

// Path: summary.flutterExperience
class LocaleKeysSummaryFlutterExperienceEn {
	LocaleKeysSummaryFlutterExperienceEn.internal(this._root);

	final LocaleKeys _root; // ignore: unused_field

	// Translations
	String get subtitle => 'Flutter experience';
	String get content1 => 'I develop';
	String get content2 => 'web and mobile';
	String get content3 => 'applications as well as';
	String get content4 => 'backend';
	String get content5 => 'structures. I specialize in complex systems and custom Flutter packages';
}

// Path: summary.highEducation
class LocaleKeysSummaryHighEducationEn {
	LocaleKeysSummaryHighEducationEn.internal(this._root);

	final LocaleKeys _root; // ignore: unused_field

	// Translations
	String get title => 'Higher education';
	String get subtitle => 'in engineering';
	String get content1 => '«Programming in information and communication systems» at';
	String get content2 => 'ITMO University';
}

// Path: summary.openSource
class LocaleKeysSummaryOpenSourceEn {
	LocaleKeysSummaryOpenSourceEn.internal(this._root);

	final LocaleKeys _root; // ignore: unused_field

	// Translations
	String get title => 'Open-source';
	String get subtitle => 'active project';
	String get content => 'A package for P2P communication';
	String get contentButton => 'View Package';
}

// Path: summary.googlePlay
class LocaleKeysSummaryGooglePlayEn {
	LocaleKeysSummaryGooglePlayEn.internal(this._root);

	final LocaleKeys _root; // ignore: unused_field

	// Translations
	String get title => 'Google Play';
	String get subtitle => 'active app';
	String get content => 'An offline chat app with support for text and file sharing';
	String get contentButton => 'Open app';
}

// Path: summary.english
class LocaleKeysSummaryEnglishEn {
	LocaleKeysSummaryEnglishEn.internal(this._root);

	final LocaleKeys _root; // ignore: unused_field

	// Translations
	String get title => 'English';
	String get subtitle => 'working proficiency';
	String get content => 'I very, very, very speak English';
}

// Path: petProjects.error
class LocaleKeysPetProjectsErrorEn {
	LocaleKeysPetProjectsErrorEn.internal(this._root);

	final LocaleKeys _root; // ignore: unused_field

	// Translations
	String get title => 'Oops!';
	String subtitle({required Object id}) => 'Project with ID=${id} not found. Please check the ID and try again.';
}

// Path: experience.greenflux
class LocaleKeysExperienceGreenfluxEn {
	LocaleKeysExperienceGreenfluxEn.internal(this._root);

	final LocaleKeys _root; // ignore: unused_field

	// Translations
	String get title => 'Mobile Application Developer';
	String get organization => 'Greenflux Assets B.V.';
	String get location => 'Amsterdam, Netherlands (Hybrid)';
	String get duration => 'February 2024 – Present';
	String get subtitle => 'Developing applications for electric vehicle charging stations';
	late final LocaleKeysExperienceGreenfluxSkillsEn skills = LocaleKeysExperienceGreenfluxSkillsEn.internal(_root);
	late final LocaleKeysExperienceGreenfluxAchievementsEn achievements = LocaleKeysExperienceGreenfluxAchievementsEn.internal(_root);
}

// Path: experience.friflex
class LocaleKeysExperienceFriflexEn {
	LocaleKeysExperienceFriflexEn.internal(this._root);

	final LocaleKeys _root; // ignore: unused_field

	// Translations
	String get title => 'Mobile Application Developer';
	String get organization => 'Friflex';
	String get location => 'Moscow, Russia';
	String get duration => 'August 2022 – December 2023';
	String get subtitle => 'Development of services for recognizing chess and draughts games';
	late final LocaleKeysExperienceFriflexSkillsEn skills = LocaleKeysExperienceFriflexSkillsEn.internal(_root);
	late final LocaleKeysExperienceFriflexAchievementsEn achievements = LocaleKeysExperienceFriflexAchievementsEn.internal(_root);
}

// Path: experience.agroStab
class LocaleKeysExperienceAgroStabEn {
	LocaleKeysExperienceAgroStabEn.internal(this._root);

	final LocaleKeys _root; // ignore: unused_field

	// Translations
	String get title => 'Full-stack Developer';
	String get organization => 'AgroSTAB';
	String get location => 'St. Petersburg, Russia';
	String get duration => 'February 2022 – July 2022';
	String get subtitle => 'Development of administrative control panels for smart greenhouses';
	late final LocaleKeysExperienceAgroStabSkillsEn skills = LocaleKeysExperienceAgroStabSkillsEn.internal(_root);
	late final LocaleKeysExperienceAgroStabAchievementsEn achievements = LocaleKeysExperienceAgroStabAchievementsEn.internal(_root);
}

// Path: experience.greenflux.skills
class LocaleKeysExperienceGreenfluxSkillsEn {
	LocaleKeysExperienceGreenfluxSkillsEn.internal(this._root);

	final LocaleKeys _root; // ignore: unused_field

	// Translations
	String get skill1 => 'Dart';
	String get skill2 => 'Flutter';
	String get skill3 => 'Google Play';
	String get skill4 => 'Firebase';
	String get skill5 => 'Git';
	String get skill6 => 'ChatGPT';
	String get skill7 => 'BloC';
	String get skill8 => 'App Store';
	String get skill9 => 'SwiftUI';
	String get skill10 => 'English';
	String get skill11 => 'REST APIs';
	String get skill12 => 'Figma';
	String get skill13 => 'Object-Oriented Programming (OOP)';
}

// Path: experience.greenflux.achievements
class LocaleKeysExperienceGreenfluxAchievementsEn {
	LocaleKeysExperienceGreenfluxAchievementsEn.internal(this._root);

	final LocaleKeys _root; // ignore: unused_field

	// Translations
	String get achievement1 => 'Supported the full development cycle: from technical specification to publication';
	String get achievement2 => 'Maintained a system of over 10 applications with a shared codebase';
	String get achievement3 => 'Set up linters, formatting, and introduced a common class system for all applications';
	String get achievement4 => 'Created pipelines to check pull requests, build and publish applications, and scripts to simplify processes';
	String get achievement5 => 'Set up Git Flow and monitored its compliance';
	String get achievement6 => 'Worked closely with Google Maps, notifications, and other complex features';
	String get achievement7 => 'Fully implemented iOS Live Activities using SwiftUI and extended it to multiple applications';
	String get achievement8 => 'Covered the entire codebase with tests';
}

// Path: experience.friflex.skills
class LocaleKeysExperienceFriflexSkillsEn {
	LocaleKeysExperienceFriflexSkillsEn.internal(this._root);

	final LocaleKeys _root; // ignore: unused_field

	// Translations
	String get skill1 => 'Firebase';
	String get skill2 => 'Databases';
	String get skill3 => 'PostgreSQL';
	String get skill4 => 'Figma';
	String get skill5 => 'Localization';
	String get skill6 => 'ChatGPT';
	String get skill7 => 'Dart';
	String get skill8 => 'REST APIs';
	String get skill9 => 'Flutter';
	String get skill10 => 'Google Play';
	String get skill11 => 'Design Patterns';
	String get skill12 => 'Git';
	String get skill13 => 'BloC';
	String get skill14 => 'Object-Oriented Programming (OOP)';
}

// Path: experience.friflex.achievements
class LocaleKeysExperienceFriflexAchievementsEn {
	LocaleKeysExperienceFriflexAchievementsEn.internal(this._root);

	final LocaleKeys _root; // ignore: unused_field

	// Translations
	String get achievement1 => 'Supported the full development cycle: from technical specification to publication';
	String get achievement2 => 'Fully created 3 custom packages, maintained 10+ packages, and configured their dependencies';
	String get achievement3 => 'Successfully integrated third-party services (MiniO, Firebase)';
	String get achievement4 => 'Developed administrative web dashboards with Flutter Web';
	String get achievement5 => 'Worked on backend development using Dart';
	String get achievement6 => 'Created numerous UI components and animations';
	String get achievement7 => 'Developed a background service to send data in chunks to cloud storage';
	String get achievement8 => 'Maintained a live streaming system consisting of mobile apps, backend, and frontend areas';
}

// Path: experience.agroStab.skills
class LocaleKeysExperienceAgroStabSkillsEn {
	LocaleKeysExperienceAgroStabSkillsEn.internal(this._root);

	final LocaleKeys _root; // ignore: unused_field

	// Translations
	String get skill1 => 'Mqtt';
	String get skill2 => 'Cron';
	String get skill3 => 'PostgreSQL';
	String get skill4 => 'Linux';
	String get skill5 => 'English';
	String get skill6 => 'Git';
	String get skill7 => 'ReactJS';
	String get skill8 => 'GitLab';
}

// Path: experience.agroStab.achievements
class LocaleKeysExperienceAgroStabAchievementsEn {
	LocaleKeysExperienceAgroStabAchievementsEn.internal(this._root);

	final LocaleKeys _root; // ignore: unused_field

	// Translations
	String get achievement1 => 'Supported the full development cycle: from technical specification to publication';
	String get achievement2 => 'Worked on creating user interfaces using React.js';
	String get achievement3 => 'Implemented data handling using react-redux';
	String get achievement4 => 'Designed component structure, layout, and connections';
	String get achievement5 => 'Added interactive elements to improve UX';
	String get achievement6 => 'Improved the backend structure written in Nest.js and added data processing logic';
	String get achievement7 => 'Designed database architecture (PostgreSQL) and implemented updates';
	String get achievement8 => 'Developed algorithms for scheduled data updates in the database using Cron';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on LocaleKeys {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'tab.home': return 'Home';
			case 'tab.summary': return 'Summary';
			case 'tab.projects': return 'Projects';
			case 'tab.experience': return 'Experience';
			case 'skill.teamPlayer': return 'Team player';
			case 'skill.communicative': return 'Сommunicative';
			case 'skill.problemSolver': return 'Problem solver';
			case 'skill.leader': return 'Leader';
			case 'skill.nonConflictual': return 'Non-conflictual';
			case 'welcome.title': return 'Flutter developer';
			case 'welcome.subtitle': return 'Kseniia Nikitina';
			case 'summary.totalExperience.subtitle': return 'total experience';
			case 'summary.totalExperience.content': return 'In addition to Dart, I have experience with Kotlin, Swift, JavaScript, Python, C#, R, and more';
			case 'summary.flutterExperience.subtitle': return 'Flutter experience';
			case 'summary.flutterExperience.content1': return 'I develop';
			case 'summary.flutterExperience.content2': return 'web and mobile';
			case 'summary.flutterExperience.content3': return 'applications as well as';
			case 'summary.flutterExperience.content4': return 'backend';
			case 'summary.flutterExperience.content5': return 'structures. I specialize in complex systems and custom Flutter packages';
			case 'summary.highEducation.title': return 'Higher education';
			case 'summary.highEducation.subtitle': return 'in engineering';
			case 'summary.highEducation.content1': return '«Programming in information and communication systems» at';
			case 'summary.highEducation.content2': return 'ITMO University';
			case 'summary.openSource.title': return 'Open-source';
			case 'summary.openSource.subtitle': return 'active project';
			case 'summary.openSource.content': return 'A package for P2P communication';
			case 'summary.openSource.contentButton': return 'View Package';
			case 'summary.googlePlay.title': return 'Google Play';
			case 'summary.googlePlay.subtitle': return 'active app';
			case 'summary.googlePlay.content': return 'An offline chat app with support for text and file sharing';
			case 'summary.googlePlay.contentButton': return 'Open app';
			case 'summary.english.title': return 'English';
			case 'summary.english.subtitle': return 'working proficiency';
			case 'summary.english.content': return 'I very, very, very speak English';
			case 'summary.title': return 'Summary';
			case 'summary.subtitle': return 'Super short and sweet';
			case 'petProjects.title': return 'Pet projects';
			case 'petProjects.subtitle': return 'Unique, creative, mine!';
			case 'petProjects.error.title': return 'Oops!';
			case 'petProjects.error.subtitle': return ({required Object id}) => 'Project with ID=${id} not found. Please check the ID and try again.';
			case 'year': return ({required num n}) => (_root.$meta.ordinalResolver ?? PluralResolvers.ordinal('en'))(n,
				zero: '${n} years',
				one: '${n} year',
				two: '${n} years',
				few: '${n} years',
				many: '${n} years',
				other: '${n} years',
			);
			case 'androidDemo': return 'Android demo';
			case 'iosDemo': return 'iOS demo';
			case 'notFound.title': return '404';
			case 'notFound.subtitle': return 'This page does not exist';
			case 'notFound.button': return 'Go to home page';
			case 'pageTitle': return 'Kseniia | Flutter Developer';
			case 'mainImageCaption': return 'The image was created using graphic processing';
			case 'experience.title': return 'Experience';
			case 'experience.subtitle': return 'The boring part';
			case 'experience.greenflux.title': return 'Mobile Application Developer';
			case 'experience.greenflux.organization': return 'Greenflux Assets B.V.';
			case 'experience.greenflux.location': return 'Amsterdam, Netherlands (Hybrid)';
			case 'experience.greenflux.duration': return 'February 2024 – Present';
			case 'experience.greenflux.subtitle': return 'Developing applications for electric vehicle charging stations';
			case 'experience.greenflux.skills.skill1': return 'Dart';
			case 'experience.greenflux.skills.skill2': return 'Flutter';
			case 'experience.greenflux.skills.skill3': return 'Google Play';
			case 'experience.greenflux.skills.skill4': return 'Firebase';
			case 'experience.greenflux.skills.skill5': return 'Git';
			case 'experience.greenflux.skills.skill6': return 'ChatGPT';
			case 'experience.greenflux.skills.skill7': return 'BloC';
			case 'experience.greenflux.skills.skill8': return 'App Store';
			case 'experience.greenflux.skills.skill9': return 'SwiftUI';
			case 'experience.greenflux.skills.skill10': return 'English';
			case 'experience.greenflux.skills.skill11': return 'REST APIs';
			case 'experience.greenflux.skills.skill12': return 'Figma';
			case 'experience.greenflux.skills.skill13': return 'Object-Oriented Programming (OOP)';
			case 'experience.greenflux.achievements.achievement1': return 'Supported the full development cycle: from technical specification to publication';
			case 'experience.greenflux.achievements.achievement2': return 'Maintained a system of over 10 applications with a shared codebase';
			case 'experience.greenflux.achievements.achievement3': return 'Set up linters, formatting, and introduced a common class system for all applications';
			case 'experience.greenflux.achievements.achievement4': return 'Created pipelines to check pull requests, build and publish applications, and scripts to simplify processes';
			case 'experience.greenflux.achievements.achievement5': return 'Set up Git Flow and monitored its compliance';
			case 'experience.greenflux.achievements.achievement6': return 'Worked closely with Google Maps, notifications, and other complex features';
			case 'experience.greenflux.achievements.achievement7': return 'Fully implemented iOS Live Activities using SwiftUI and extended it to multiple applications';
			case 'experience.greenflux.achievements.achievement8': return 'Covered the entire codebase with tests';
			case 'experience.friflex.title': return 'Mobile Application Developer';
			case 'experience.friflex.organization': return 'Friflex';
			case 'experience.friflex.location': return 'Moscow, Russia';
			case 'experience.friflex.duration': return 'August 2022 – December 2023';
			case 'experience.friflex.subtitle': return 'Development of services for recognizing chess and draughts games';
			case 'experience.friflex.skills.skill1': return 'Firebase';
			case 'experience.friflex.skills.skill2': return 'Databases';
			case 'experience.friflex.skills.skill3': return 'PostgreSQL';
			case 'experience.friflex.skills.skill4': return 'Figma';
			case 'experience.friflex.skills.skill5': return 'Localization';
			case 'experience.friflex.skills.skill6': return 'ChatGPT';
			case 'experience.friflex.skills.skill7': return 'Dart';
			case 'experience.friflex.skills.skill8': return 'REST APIs';
			case 'experience.friflex.skills.skill9': return 'Flutter';
			case 'experience.friflex.skills.skill10': return 'Google Play';
			case 'experience.friflex.skills.skill11': return 'Design Patterns';
			case 'experience.friflex.skills.skill12': return 'Git';
			case 'experience.friflex.skills.skill13': return 'BloC';
			case 'experience.friflex.skills.skill14': return 'Object-Oriented Programming (OOP)';
			case 'experience.friflex.achievements.achievement1': return 'Supported the full development cycle: from technical specification to publication';
			case 'experience.friflex.achievements.achievement2': return 'Fully created 3 custom packages, maintained 10+ packages, and configured their dependencies';
			case 'experience.friflex.achievements.achievement3': return 'Successfully integrated third-party services (MiniO, Firebase)';
			case 'experience.friflex.achievements.achievement4': return 'Developed administrative web dashboards with Flutter Web';
			case 'experience.friflex.achievements.achievement5': return 'Worked on backend development using Dart';
			case 'experience.friflex.achievements.achievement6': return 'Created numerous UI components and animations';
			case 'experience.friflex.achievements.achievement7': return 'Developed a background service to send data in chunks to cloud storage';
			case 'experience.friflex.achievements.achievement8': return 'Maintained a live streaming system consisting of mobile apps, backend, and frontend areas';
			case 'experience.agroStab.title': return 'Full-stack Developer';
			case 'experience.agroStab.organization': return 'AgroSTAB';
			case 'experience.agroStab.location': return 'St. Petersburg, Russia';
			case 'experience.agroStab.duration': return 'February 2022 – July 2022';
			case 'experience.agroStab.subtitle': return 'Development of administrative control panels for smart greenhouses';
			case 'experience.agroStab.skills.skill1': return 'Mqtt';
			case 'experience.agroStab.skills.skill2': return 'Cron';
			case 'experience.agroStab.skills.skill3': return 'PostgreSQL';
			case 'experience.agroStab.skills.skill4': return 'Linux';
			case 'experience.agroStab.skills.skill5': return 'English';
			case 'experience.agroStab.skills.skill6': return 'Git';
			case 'experience.agroStab.skills.skill7': return 'ReactJS';
			case 'experience.agroStab.skills.skill8': return 'GitLab';
			case 'experience.agroStab.achievements.achievement1': return 'Supported the full development cycle: from technical specification to publication';
			case 'experience.agroStab.achievements.achievement2': return 'Worked on creating user interfaces using React.js';
			case 'experience.agroStab.achievements.achievement3': return 'Implemented data handling using react-redux';
			case 'experience.agroStab.achievements.achievement4': return 'Designed component structure, layout, and connections';
			case 'experience.agroStab.achievements.achievement5': return 'Added interactive elements to improve UX';
			case 'experience.agroStab.achievements.achievement6': return 'Improved the backend structure written in Nest.js and added data processing logic';
			case 'experience.agroStab.achievements.achievement7': return 'Designed database architecture (PostgreSQL) and implemented updates';
			case 'experience.agroStab.achievements.achievement8': return 'Developed algorithms for scheduled data updates in the database using Cron';
			default: return null;
		}
	}
}

