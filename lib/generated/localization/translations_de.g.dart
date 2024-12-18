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
class LocaleKeysDe extends LocaleKeys {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	LocaleKeysDe({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.de,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <de>.
	@override final TranslationMetadata<AppLocale, LocaleKeys> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final LocaleKeysDe _root = this; // ignore: unused_field

	// Translations
	@override late final _LocaleKeysTabDe tab = _LocaleKeysTabDe._(_root);
	@override late final _LocaleKeysSkillDe skill = _LocaleKeysSkillDe._(_root);
	@override late final _LocaleKeysWelcomeDe welcome = _LocaleKeysWelcomeDe._(_root);
	@override late final _LocaleKeysSummaryDe summary = _LocaleKeysSummaryDe._(_root);
	@override late final _LocaleKeysPetProjectsDe petProjects = _LocaleKeysPetProjectsDe._(_root);
	@override String year({required num n}) => (_root.$meta.ordinalResolver ?? PluralResolvers.ordinal('de'))(n,
		zero: '${n} Jahre',
		one: '${n} Jahr',
		two: '${n} Jahre',
		few: '${n} Jahre',
		many: '${n} Jahre',
		other: '${n} Jahre',
	);
	@override String get androidDemo => 'Android-Demo';
	@override String get iosDemo => 'iOS-Demo';
	@override late final _LocaleKeysNotFoundDe notFound = _LocaleKeysNotFoundDe._(_root);
	@override String get pageTitle => 'Kseniia | Flutter-Entwicklerin';
	@override String get mainImageCaption => 'Das Bild wurde mithilfe von Grafikbearbeitung erstellt';
	@override late final _LocaleKeysExperienceDe experience = _LocaleKeysExperienceDe._(_root);
}

// Path: tab
class _LocaleKeysTabDe extends LocaleKeysTabEn {
	_LocaleKeysTabDe._(LocaleKeysDe root) : this._root = root, super.internal(root);

	final LocaleKeysDe _root; // ignore: unused_field

	// Translations
	@override String get home => 'Startseite';
	@override String get summary => 'Zusammenfassung';
	@override String get projects => 'Projekte';
	@override String get experience => 'Erfahrung';
	@override String get language => 'Sprache';
}

// Path: skill
class _LocaleKeysSkillDe extends LocaleKeysSkillEn {
	_LocaleKeysSkillDe._(LocaleKeysDe root) : this._root = root, super.internal(root);

	final LocaleKeysDe _root; // ignore: unused_field

	// Translations
	@override String get teamPlayer => 'Teamplayer';
	@override String get communicative => 'Kommunikativ';
	@override String get problemSolver => 'Problemlöser';
	@override String get leader => 'Führerin';
	@override String get nonConflictual => 'Konfliktfrei';
}

// Path: welcome
class _LocaleKeysWelcomeDe extends LocaleKeysWelcomeEn {
	_LocaleKeysWelcomeDe._(LocaleKeysDe root) : this._root = root, super.internal(root);

	final LocaleKeysDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Flutter-Entwickler';
	@override String get subtitle => 'Kseniia Nikitina';
}

// Path: summary
class _LocaleKeysSummaryDe extends LocaleKeysSummaryEn {
	_LocaleKeysSummaryDe._(LocaleKeysDe root) : this._root = root, super.internal(root);

	final LocaleKeysDe _root; // ignore: unused_field

	// Translations
	@override late final _LocaleKeysSummaryTotalExperienceDe totalExperience = _LocaleKeysSummaryTotalExperienceDe._(_root);
	@override late final _LocaleKeysSummaryFlutterExperienceDe flutterExperience = _LocaleKeysSummaryFlutterExperienceDe._(_root);
	@override late final _LocaleKeysSummaryHighEducationDe highEducation = _LocaleKeysSummaryHighEducationDe._(_root);
	@override late final _LocaleKeysSummaryOpenSourceDe openSource = _LocaleKeysSummaryOpenSourceDe._(_root);
	@override late final _LocaleKeysSummaryGooglePlayDe googlePlay = _LocaleKeysSummaryGooglePlayDe._(_root);
	@override late final _LocaleKeysSummaryEnglishDe english = _LocaleKeysSummaryEnglishDe._(_root);
	@override String get title => 'Zusammenfassung';
	@override String get subtitle => 'Super kurz und süß';
}

// Path: petProjects
class _LocaleKeysPetProjectsDe extends LocaleKeysPetProjectsEn {
	_LocaleKeysPetProjectsDe._(LocaleKeysDe root) : this._root = root, super.internal(root);

	final LocaleKeysDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pet-Projekte';
	@override String get subtitle => 'Einzigartig, kreativ, meins!';
	@override late final _LocaleKeysPetProjectsMarkdownDe markdown = _LocaleKeysPetProjectsMarkdownDe._(_root);
	@override late final _LocaleKeysPetProjectsErrorDe error = _LocaleKeysPetProjectsErrorDe._(_root);
}

// Path: notFound
class _LocaleKeysNotFoundDe extends LocaleKeysNotFoundEn {
	_LocaleKeysNotFoundDe._(LocaleKeysDe root) : this._root = root, super.internal(root);

	final LocaleKeysDe _root; // ignore: unused_field

	// Translations
	@override String get title => '404';
	@override String get subtitle => 'Diese Seite existiert nicht';
	@override String get button => 'Zur Startseite';
}

// Path: experience
class _LocaleKeysExperienceDe extends LocaleKeysExperienceEn {
	_LocaleKeysExperienceDe._(LocaleKeysDe root) : this._root = root, super.internal(root);

	final LocaleKeysDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Erfahrung';
	@override String get subtitle => 'Der langweilige Teil';
	@override late final _LocaleKeysExperienceCvDe cv = _LocaleKeysExperienceCvDe._(_root);
	@override late final _LocaleKeysExperienceGreenfluxDe greenflux = _LocaleKeysExperienceGreenfluxDe._(_root);
	@override late final _LocaleKeysExperienceFriflexDe friflex = _LocaleKeysExperienceFriflexDe._(_root);
	@override late final _LocaleKeysExperienceAgroStabDe agroStab = _LocaleKeysExperienceAgroStabDe._(_root);
}

// Path: summary.totalExperience
class _LocaleKeysSummaryTotalExperienceDe extends LocaleKeysSummaryTotalExperienceEn {
	_LocaleKeysSummaryTotalExperienceDe._(LocaleKeysDe root) : this._root = root, super.internal(root);

	final LocaleKeysDe _root; // ignore: unused_field

	// Translations
	@override String get subtitle => 'Gesamterfahrung';
	@override String get content => 'Neben Dart habe ich Erfahrung mit Kotlin, Swift, JavaScript, Python, C#, R und mehr';
}

// Path: summary.flutterExperience
class _LocaleKeysSummaryFlutterExperienceDe extends LocaleKeysSummaryFlutterExperienceEn {
	_LocaleKeysSummaryFlutterExperienceDe._(LocaleKeysDe root) : this._root = root, super.internal(root);

	final LocaleKeysDe _root; // ignore: unused_field

	// Translations
	@override String get subtitle => 'Flutter-Erfahrung';
	@override String get content1 => 'Ich entwickle';
	@override String get content2 => 'Web- und mobile';
	@override String get content3 => 'Anwendungen sowie';
	@override String get content4 => 'Backend';
	@override String get content5 => 'Strukturen. Ich spezialisiere mich auf komplexe Systeme und benutzerdefinierte Flutter-Pakete';
}

// Path: summary.highEducation
class _LocaleKeysSummaryHighEducationDe extends LocaleKeysSummaryHighEducationEn {
	_LocaleKeysSummaryHighEducationDe._(LocaleKeysDe root) : this._root = root, super.internal(root);

	final LocaleKeysDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hochschulbildung';
	@override String get subtitle => 'im Ingenieurwesen';
	@override String get content1 => '«Programmieren in Informations- und Kommunikationssystemen» an der';
	@override String get content2 => 'ITMO-Universität';
}

// Path: summary.openSource
class _LocaleKeysSummaryOpenSourceDe extends LocaleKeysSummaryOpenSourceEn {
	_LocaleKeysSummaryOpenSourceDe._(LocaleKeysDe root) : this._root = root, super.internal(root);

	final LocaleKeysDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Open-source';
	@override String get subtitle => 'Aktives Projekt';
	@override String get content => 'Ein Paket für P2P-Kommunikation';
	@override String get contentButton => 'Paket anzeigen';
}

// Path: summary.googlePlay
class _LocaleKeysSummaryGooglePlayDe extends LocaleKeysSummaryGooglePlayEn {
	_LocaleKeysSummaryGooglePlayDe._(LocaleKeysDe root) : this._root = root, super.internal(root);

	final LocaleKeysDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Google Play';
	@override String get subtitle => 'Aktive App';
	@override String get content => 'Eine Offline-Chat-App mit Unterstützung für Text- und Dateifreigabe';
	@override String get contentButton => 'App öffnen';
}

// Path: summary.english
class _LocaleKeysSummaryEnglishDe extends LocaleKeysSummaryEnglishEn {
	_LocaleKeysSummaryEnglishDe._(LocaleKeysDe root) : this._root = root, super.internal(root);

	final LocaleKeysDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Englisch';
	@override String get subtitle => 'Berufliche Kompetenz';
	@override String get content => 'I very, very, very speak English';
}

// Path: petProjects.markdown
class _LocaleKeysPetProjectsMarkdownDe extends LocaleKeysPetProjectsMarkdownEn {
	_LocaleKeysPetProjectsMarkdownDe._(LocaleKeysDe root) : this._root = root, super.internal(root);

	final LocaleKeysDe _root; // ignore: unused_field

	// Translations
	@override String get imageButton => 'Bild auf GitHub anzeigen';
}

// Path: petProjects.error
class _LocaleKeysPetProjectsErrorDe extends LocaleKeysPetProjectsErrorEn {
	_LocaleKeysPetProjectsErrorDe._(LocaleKeysDe root) : this._root = root, super.internal(root);

	final LocaleKeysDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ups!';
	@override String subtitle({required Object id}) => 'Projekt mit ID=${id} nicht gefunden. Bitte überprüfen Sie die ID und versuchen Sie es erneut.';
}

// Path: experience.cv
class _LocaleKeysExperienceCvDe extends LocaleKeysExperienceCvEn {
	_LocaleKeysExperienceCvDe._(LocaleKeysDe root) : this._root = root, super.internal(root);

	final LocaleKeysDe _root; // ignore: unused_field

	// Translations
	@override String get caption => 'Lesen Sie mehr über meine Erfahrung im Lebenslauf';
	@override String get button => 'Open CV';
}

// Path: experience.greenflux
class _LocaleKeysExperienceGreenfluxDe extends LocaleKeysExperienceGreenfluxEn {
	_LocaleKeysExperienceGreenfluxDe._(LocaleKeysDe root) : this._root = root, super.internal(root);

	final LocaleKeysDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mobile Application Developerin';
	@override String get organization => 'Greenflux Assets B.V.';
	@override String get location => 'Amsterdam, Niederlande (Hybrid)';
	@override String get duration => 'Februar 2024 – Gegenwart';
	@override String get subtitle => 'Entwicklung von Anwendungen für Ladestationen für Elektrofahrzeuge';
	@override late final _LocaleKeysExperienceGreenfluxSkillsDe skills = _LocaleKeysExperienceGreenfluxSkillsDe._(_root);
	@override late final _LocaleKeysExperienceGreenfluxAchievementsDe achievements = _LocaleKeysExperienceGreenfluxAchievementsDe._(_root);
}

// Path: experience.friflex
class _LocaleKeysExperienceFriflexDe extends LocaleKeysExperienceFriflexEn {
	_LocaleKeysExperienceFriflexDe._(LocaleKeysDe root) : this._root = root, super.internal(root);

	final LocaleKeysDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mobile Application Developerin';
	@override String get organization => 'Friflex';
	@override String get location => 'Moskau, Russland';
	@override String get duration => 'August 2022 – Dezember 2023';
	@override String get subtitle => 'Entwicklung von Diensten zur Erkennung von Schach- und Dame-Spielen';
	@override late final _LocaleKeysExperienceFriflexSkillsDe skills = _LocaleKeysExperienceFriflexSkillsDe._(_root);
	@override late final _LocaleKeysExperienceFriflexAchievementsDe achievements = _LocaleKeysExperienceFriflexAchievementsDe._(_root);
}

// Path: experience.agroStab
class _LocaleKeysExperienceAgroStabDe extends LocaleKeysExperienceAgroStabEn {
	_LocaleKeysExperienceAgroStabDe._(LocaleKeysDe root) : this._root = root, super.internal(root);

	final LocaleKeysDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Full-stack Developerin';
	@override String get organization => 'AgroSTAB';
	@override String get location => 'Sankt Petersburg, Russland';
	@override String get duration => 'Februar 2022 – Juli 2022';
	@override String get subtitle => 'Entwicklung von Verwaltungs-Panels für Smart Greenhouses';
	@override late final _LocaleKeysExperienceAgroStabSkillsDe skills = _LocaleKeysExperienceAgroStabSkillsDe._(_root);
	@override late final _LocaleKeysExperienceAgroStabAchievementsDe achievements = _LocaleKeysExperienceAgroStabAchievementsDe._(_root);
}

// Path: experience.greenflux.skills
class _LocaleKeysExperienceGreenfluxSkillsDe extends LocaleKeysExperienceGreenfluxSkillsEn {
	_LocaleKeysExperienceGreenfluxSkillsDe._(LocaleKeysDe root) : this._root = root, super.internal(root);

	final LocaleKeysDe _root; // ignore: unused_field

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
	@override String get skill10 => 'Englisch';
	@override String get skill11 => 'REST APIs';
	@override String get skill12 => 'Figma';
	@override String get skill13 => 'Objektorientierte Programmierung (OOP)';
}

// Path: experience.greenflux.achievements
class _LocaleKeysExperienceGreenfluxAchievementsDe extends LocaleKeysExperienceGreenfluxAchievementsEn {
	_LocaleKeysExperienceGreenfluxAchievementsDe._(LocaleKeysDe root) : this._root = root, super.internal(root);

	final LocaleKeysDe _root; // ignore: unused_field

	// Translations
	@override String get achievement1 => 'Unterstützte den gesamten Entwicklungszyklus: von der technischen Spezifikation bis zur Veröffentlichung';
	@override String get achievement2 => 'Pflegte ein System aus mehr als 10 Anwendungen mit einer gemeinsamen Codebasis';
	@override String get achievement3 => 'Richtete Linter, Formatierung ein und führte ein gemeinsames Klassensystem für alle Anwendungen ein';
	@override String get achievement4 => 'Erstellte Pipelines zur Prüfung von Pull-Requests, für das Bauen und Veröffentlichen von Anwendungen sowie Skripte zur Vereinfachung von Prozessen';
	@override String get achievement5 => 'Richtete Git Flow ein und überwachte die Einhaltung';
	@override String get achievement6 => 'Arbeitete eng mit Google Maps, Benachrichtigungen und anderen komplexen Funktionen zusammen';
	@override String get achievement7 => 'Implementierte vollständig iOS Live Activities mit SwiftUI und erweiterte sie auf mehrere Anwendungen';
	@override String get achievement8 => 'Deckte den gesamten Code mit Tests ab';
}

// Path: experience.friflex.skills
class _LocaleKeysExperienceFriflexSkillsDe extends LocaleKeysExperienceFriflexSkillsEn {
	_LocaleKeysExperienceFriflexSkillsDe._(LocaleKeysDe root) : this._root = root, super.internal(root);

	final LocaleKeysDe _root; // ignore: unused_field

	// Translations
	@override String get skill1 => 'Firebase';
	@override String get skill2 => 'Datenbanken';
	@override String get skill3 => 'PostgreSQL';
	@override String get skill4 => 'Figma';
	@override String get skill5 => 'Lokalisierung';
	@override String get skill6 => 'ChatGPT';
	@override String get skill7 => 'Dart';
	@override String get skill8 => 'REST APIs';
	@override String get skill9 => 'Flutter';
	@override String get skill10 => 'Google Play';
	@override String get skill11 => 'Design Patterns';
	@override String get skill12 => 'Git';
	@override String get skill13 => 'BloC';
	@override String get skill14 => 'Objektorientierte Programmierung (OOP)';
}

// Path: experience.friflex.achievements
class _LocaleKeysExperienceFriflexAchievementsDe extends LocaleKeysExperienceFriflexAchievementsEn {
	_LocaleKeysExperienceFriflexAchievementsDe._(LocaleKeysDe root) : this._root = root, super.internal(root);

	final LocaleKeysDe _root; // ignore: unused_field

	// Translations
	@override String get achievement1 => 'Unterstützte den gesamten Entwicklungszyklus: von der technischen Spezifikation bis zur Veröffentlichung';
	@override String get achievement2 => 'Erstellte 3 benutzerdefinierte Pakete und pflegte über 10 Pakete, konfigurierte deren Abhängigkeiten';
	@override String get achievement3 => 'Erfolgreich Drittanbieterdienste integriert (MiniO, Firebase)';
	@override String get achievement4 => 'Entwickelte administrative Web-Dashboards mit Flutter Web';
	@override String get achievement5 => 'Entwickelte den Backend mit Dart';
	@override String get achievement6 => 'Erstellte unzählige UI-Komponenten und Animationen';
	@override String get achievement7 => 'Entwickelte einen Hintergrunddienst zur Übertragung von Daten in die Cloud in Teilen';
	@override String get achievement8 => 'Unterstützte ein System für Live-Streaming, das aus einer mobilen Anwendung, Backend und Web bestand';
}

// Path: experience.agroStab.skills
class _LocaleKeysExperienceAgroStabSkillsDe extends LocaleKeysExperienceAgroStabSkillsEn {
	_LocaleKeysExperienceAgroStabSkillsDe._(LocaleKeysDe root) : this._root = root, super.internal(root);

	final LocaleKeysDe _root; // ignore: unused_field

	// Translations
	@override String get skill1 => 'Mqtt';
	@override String get skill2 => 'Cron';
	@override String get skill3 => 'PostgreSQL';
	@override String get skill4 => 'Linux';
	@override String get skill5 => 'Englisch';
	@override String get skill6 => 'Git';
	@override String get skill7 => 'ReactJS';
	@override String get skill8 => 'GitLab';
}

// Path: experience.agroStab.achievements
class _LocaleKeysExperienceAgroStabAchievementsDe extends LocaleKeysExperienceAgroStabAchievementsEn {
	_LocaleKeysExperienceAgroStabAchievementsDe._(LocaleKeysDe root) : this._root = root, super.internal(root);

	final LocaleKeysDe _root; // ignore: unused_field

	// Translations
	@override String get achievement1 => 'Unterstützte den gesamten Entwicklungszyklus: von der technischen Spezifikation bis zur Veröffentlichung';
	@override String get achievement2 => 'Erstellte die Benutzeroberfläche mit React.js';
	@override String get achievement3 => 'Integrierte Datenverarbeitung mit react-redux';
	@override String get achievement4 => 'Projektierte die Struktur der Komponenten, deren Anordnung und Verbindungen';
	@override String get achievement5 => 'Fügte interaktive Elemente hinzu, um die Benutzererfahrung zu verbessern';
	@override String get achievement6 => 'Verbesserte die Struktur des Backends, das in Nest.js geschrieben wurde, und fügte Logik zur Datenverarbeitung hinzu';
	@override String get achievement7 => 'Projektierte die Architektur der PostgreSQL-Datenbank und implementierte Updates';
	@override String get achievement8 => 'Entwickelte Algorithmen für geplante Datenaktualisierungen mit Cron';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on LocaleKeysDe {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'tab.home': return 'Startseite';
			case 'tab.summary': return 'Zusammenfassung';
			case 'tab.projects': return 'Projekte';
			case 'tab.experience': return 'Erfahrung';
			case 'tab.language': return 'Sprache';
			case 'skill.teamPlayer': return 'Teamplayer';
			case 'skill.communicative': return 'Kommunikativ';
			case 'skill.problemSolver': return 'Problemlöser';
			case 'skill.leader': return 'Führerin';
			case 'skill.nonConflictual': return 'Konfliktfrei';
			case 'welcome.title': return 'Flutter-Entwickler';
			case 'welcome.subtitle': return 'Kseniia Nikitina';
			case 'summary.totalExperience.subtitle': return 'Gesamterfahrung';
			case 'summary.totalExperience.content': return 'Neben Dart habe ich Erfahrung mit Kotlin, Swift, JavaScript, Python, C#, R und mehr';
			case 'summary.flutterExperience.subtitle': return 'Flutter-Erfahrung';
			case 'summary.flutterExperience.content1': return 'Ich entwickle';
			case 'summary.flutterExperience.content2': return 'Web- und mobile';
			case 'summary.flutterExperience.content3': return 'Anwendungen sowie';
			case 'summary.flutterExperience.content4': return 'Backend';
			case 'summary.flutterExperience.content5': return 'Strukturen. Ich spezialisiere mich auf komplexe Systeme und benutzerdefinierte Flutter-Pakete';
			case 'summary.highEducation.title': return 'Hochschulbildung';
			case 'summary.highEducation.subtitle': return 'im Ingenieurwesen';
			case 'summary.highEducation.content1': return '«Programmieren in Informations- und Kommunikationssystemen» an der';
			case 'summary.highEducation.content2': return 'ITMO-Universität';
			case 'summary.openSource.title': return 'Open-source';
			case 'summary.openSource.subtitle': return 'Aktives Projekt';
			case 'summary.openSource.content': return 'Ein Paket für P2P-Kommunikation';
			case 'summary.openSource.contentButton': return 'Paket anzeigen';
			case 'summary.googlePlay.title': return 'Google Play';
			case 'summary.googlePlay.subtitle': return 'Aktive App';
			case 'summary.googlePlay.content': return 'Eine Offline-Chat-App mit Unterstützung für Text- und Dateifreigabe';
			case 'summary.googlePlay.contentButton': return 'App öffnen';
			case 'summary.english.title': return 'Englisch';
			case 'summary.english.subtitle': return 'Berufliche Kompetenz';
			case 'summary.english.content': return 'I very, very, very speak English';
			case 'summary.title': return 'Zusammenfassung';
			case 'summary.subtitle': return 'Super kurz und süß';
			case 'petProjects.title': return 'Pet-Projekte';
			case 'petProjects.subtitle': return 'Einzigartig, kreativ, meins!';
			case 'petProjects.markdown.imageButton': return 'Bild auf GitHub anzeigen';
			case 'petProjects.error.title': return 'Ups!';
			case 'petProjects.error.subtitle': return ({required Object id}) => 'Projekt mit ID=${id} nicht gefunden. Bitte überprüfen Sie die ID und versuchen Sie es erneut.';
			case 'year': return ({required num n}) => (_root.$meta.ordinalResolver ?? PluralResolvers.ordinal('de'))(n,
				zero: '${n} Jahre',
				one: '${n} Jahr',
				two: '${n} Jahre',
				few: '${n} Jahre',
				many: '${n} Jahre',
				other: '${n} Jahre',
			);
			case 'androidDemo': return 'Android-Demo';
			case 'iosDemo': return 'iOS-Demo';
			case 'notFound.title': return '404';
			case 'notFound.subtitle': return 'Diese Seite existiert nicht';
			case 'notFound.button': return 'Zur Startseite';
			case 'pageTitle': return 'Kseniia | Flutter-Entwicklerin';
			case 'mainImageCaption': return 'Das Bild wurde mithilfe von Grafikbearbeitung erstellt';
			case 'experience.title': return 'Erfahrung';
			case 'experience.subtitle': return 'Der langweilige Teil';
			case 'experience.cv.caption': return 'Lesen Sie mehr über meine Erfahrung im Lebenslauf';
			case 'experience.cv.button': return 'Open CV';
			case 'experience.greenflux.title': return 'Mobile Application Developerin';
			case 'experience.greenflux.organization': return 'Greenflux Assets B.V.';
			case 'experience.greenflux.location': return 'Amsterdam, Niederlande (Hybrid)';
			case 'experience.greenflux.duration': return 'Februar 2024 – Gegenwart';
			case 'experience.greenflux.subtitle': return 'Entwicklung von Anwendungen für Ladestationen für Elektrofahrzeuge';
			case 'experience.greenflux.skills.skill1': return 'Dart';
			case 'experience.greenflux.skills.skill2': return 'Flutter';
			case 'experience.greenflux.skills.skill3': return 'Google Play';
			case 'experience.greenflux.skills.skill4': return 'Firebase';
			case 'experience.greenflux.skills.skill5': return 'Git';
			case 'experience.greenflux.skills.skill6': return 'ChatGPT';
			case 'experience.greenflux.skills.skill7': return 'BloC';
			case 'experience.greenflux.skills.skill8': return 'App Store';
			case 'experience.greenflux.skills.skill9': return 'SwiftUI';
			case 'experience.greenflux.skills.skill10': return 'Englisch';
			case 'experience.greenflux.skills.skill11': return 'REST APIs';
			case 'experience.greenflux.skills.skill12': return 'Figma';
			case 'experience.greenflux.skills.skill13': return 'Objektorientierte Programmierung (OOP)';
			case 'experience.greenflux.achievements.achievement1': return 'Unterstützte den gesamten Entwicklungszyklus: von der technischen Spezifikation bis zur Veröffentlichung';
			case 'experience.greenflux.achievements.achievement2': return 'Pflegte ein System aus mehr als 10 Anwendungen mit einer gemeinsamen Codebasis';
			case 'experience.greenflux.achievements.achievement3': return 'Richtete Linter, Formatierung ein und führte ein gemeinsames Klassensystem für alle Anwendungen ein';
			case 'experience.greenflux.achievements.achievement4': return 'Erstellte Pipelines zur Prüfung von Pull-Requests, für das Bauen und Veröffentlichen von Anwendungen sowie Skripte zur Vereinfachung von Prozessen';
			case 'experience.greenflux.achievements.achievement5': return 'Richtete Git Flow ein und überwachte die Einhaltung';
			case 'experience.greenflux.achievements.achievement6': return 'Arbeitete eng mit Google Maps, Benachrichtigungen und anderen komplexen Funktionen zusammen';
			case 'experience.greenflux.achievements.achievement7': return 'Implementierte vollständig iOS Live Activities mit SwiftUI und erweiterte sie auf mehrere Anwendungen';
			case 'experience.greenflux.achievements.achievement8': return 'Deckte den gesamten Code mit Tests ab';
			case 'experience.friflex.title': return 'Mobile Application Developerin';
			case 'experience.friflex.organization': return 'Friflex';
			case 'experience.friflex.location': return 'Moskau, Russland';
			case 'experience.friflex.duration': return 'August 2022 – Dezember 2023';
			case 'experience.friflex.subtitle': return 'Entwicklung von Diensten zur Erkennung von Schach- und Dame-Spielen';
			case 'experience.friflex.skills.skill1': return 'Firebase';
			case 'experience.friflex.skills.skill2': return 'Datenbanken';
			case 'experience.friflex.skills.skill3': return 'PostgreSQL';
			case 'experience.friflex.skills.skill4': return 'Figma';
			case 'experience.friflex.skills.skill5': return 'Lokalisierung';
			case 'experience.friflex.skills.skill6': return 'ChatGPT';
			case 'experience.friflex.skills.skill7': return 'Dart';
			case 'experience.friflex.skills.skill8': return 'REST APIs';
			case 'experience.friflex.skills.skill9': return 'Flutter';
			case 'experience.friflex.skills.skill10': return 'Google Play';
			case 'experience.friflex.skills.skill11': return 'Design Patterns';
			case 'experience.friflex.skills.skill12': return 'Git';
			case 'experience.friflex.skills.skill13': return 'BloC';
			case 'experience.friflex.skills.skill14': return 'Objektorientierte Programmierung (OOP)';
			case 'experience.friflex.achievements.achievement1': return 'Unterstützte den gesamten Entwicklungszyklus: von der technischen Spezifikation bis zur Veröffentlichung';
			case 'experience.friflex.achievements.achievement2': return 'Erstellte 3 benutzerdefinierte Pakete und pflegte über 10 Pakete, konfigurierte deren Abhängigkeiten';
			case 'experience.friflex.achievements.achievement3': return 'Erfolgreich Drittanbieterdienste integriert (MiniO, Firebase)';
			case 'experience.friflex.achievements.achievement4': return 'Entwickelte administrative Web-Dashboards mit Flutter Web';
			case 'experience.friflex.achievements.achievement5': return 'Entwickelte den Backend mit Dart';
			case 'experience.friflex.achievements.achievement6': return 'Erstellte unzählige UI-Komponenten und Animationen';
			case 'experience.friflex.achievements.achievement7': return 'Entwickelte einen Hintergrunddienst zur Übertragung von Daten in die Cloud in Teilen';
			case 'experience.friflex.achievements.achievement8': return 'Unterstützte ein System für Live-Streaming, das aus einer mobilen Anwendung, Backend und Web bestand';
			case 'experience.agroStab.title': return 'Full-stack Developerin';
			case 'experience.agroStab.organization': return 'AgroSTAB';
			case 'experience.agroStab.location': return 'Sankt Petersburg, Russland';
			case 'experience.agroStab.duration': return 'Februar 2022 – Juli 2022';
			case 'experience.agroStab.subtitle': return 'Entwicklung von Verwaltungs-Panels für Smart Greenhouses';
			case 'experience.agroStab.skills.skill1': return 'Mqtt';
			case 'experience.agroStab.skills.skill2': return 'Cron';
			case 'experience.agroStab.skills.skill3': return 'PostgreSQL';
			case 'experience.agroStab.skills.skill4': return 'Linux';
			case 'experience.agroStab.skills.skill5': return 'Englisch';
			case 'experience.agroStab.skills.skill6': return 'Git';
			case 'experience.agroStab.skills.skill7': return 'ReactJS';
			case 'experience.agroStab.skills.skill8': return 'GitLab';
			case 'experience.agroStab.achievements.achievement1': return 'Unterstützte den gesamten Entwicklungszyklus: von der technischen Spezifikation bis zur Veröffentlichung';
			case 'experience.agroStab.achievements.achievement2': return 'Erstellte die Benutzeroberfläche mit React.js';
			case 'experience.agroStab.achievements.achievement3': return 'Integrierte Datenverarbeitung mit react-redux';
			case 'experience.agroStab.achievements.achievement4': return 'Projektierte die Struktur der Komponenten, deren Anordnung und Verbindungen';
			case 'experience.agroStab.achievements.achievement5': return 'Fügte interaktive Elemente hinzu, um die Benutzererfahrung zu verbessern';
			case 'experience.agroStab.achievements.achievement6': return 'Verbesserte die Struktur des Backends, das in Nest.js geschrieben wurde, und fügte Logik zur Datenverarbeitung hinzu';
			case 'experience.agroStab.achievements.achievement7': return 'Projektierte die Architektur der PostgreSQL-Datenbank und implementierte Updates';
			case 'experience.agroStab.achievements.achievement8': return 'Entwickelte Algorithmen für geplante Datenaktualisierungen mit Cron';
			default: return null;
		}
	}
}

