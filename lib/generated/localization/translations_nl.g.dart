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
class LocaleKeysNl extends LocaleKeys {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	LocaleKeysNl({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, LocaleKeys>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.nl,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <nl>.
	@override final TranslationMetadata<AppLocale, LocaleKeys> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final LocaleKeysNl _root = this; // ignore: unused_field

	@override 
	LocaleKeysNl $copyWith({TranslationMetadata<AppLocale, LocaleKeys>? meta}) => LocaleKeysNl(meta: meta ?? this.$meta);

	// Translations
	@override late final _LocaleKeysTabNl tab = _LocaleKeysTabNl._(_root);
	@override late final _LocaleKeysSkillNl skill = _LocaleKeysSkillNl._(_root);
	@override late final _LocaleKeysWelcomeNl welcome = _LocaleKeysWelcomeNl._(_root);
	@override late final _LocaleKeysSummaryNl summary = _LocaleKeysSummaryNl._(_root);
	@override late final _LocaleKeysPetProjectsNl petProjects = _LocaleKeysPetProjectsNl._(_root);
	@override String year({required num n}) => (_root.$meta.ordinalResolver ?? PluralResolvers.ordinal('nl'))(n,
		zero: '${n} jaar',
		one: '${n} jaar',
		two: '${n} jaar',
		few: '${n} jaar',
		many: '${n} jaar',
		other: '${n} jaar',
	);
	@override String get androidDemo => 'Android-demo';
	@override String get iosDemo => 'iOS-demo';
	@override late final _LocaleKeysNotFoundNl notFound = _LocaleKeysNotFoundNl._(_root);
	@override String get pageTitle => 'Kseniia | Mobile-ontwikkelaar';
	@override String get mainImageCaption => 'De afbeelding is gemaakt met behulp van grafische verwerking';
	@override late final _LocaleKeysExperienceNl experience = _LocaleKeysExperienceNl._(_root);
}

// Path: tab
class _LocaleKeysTabNl extends LocaleKeysTabEn {
	_LocaleKeysTabNl._(LocaleKeysNl root) : this._root = root, super.internal(root);

	final LocaleKeysNl _root; // ignore: unused_field

	// Translations
	@override String get home => 'Startpagina';
	@override String get summary => 'Samenvatting';
	@override String get projects => 'Projecten';
	@override String get experience => 'Ervaring';
	@override String get language => 'Taal';
}

// Path: skill
class _LocaleKeysSkillNl extends LocaleKeysSkillEn {
	_LocaleKeysSkillNl._(LocaleKeysNl root) : this._root = root, super.internal(root);

	final LocaleKeysNl _root; // ignore: unused_field

	// Translations
	@override String get teamPlayer => 'Teamspeler';
	@override String get communicative => 'Communicatief';
	@override String get problemSolver => 'Probleemoplosser';
	@override String get leader => 'Leidster';
	@override String get nonConflictual => 'Conflictloos';
}

// Path: welcome
class _LocaleKeysWelcomeNl extends LocaleKeysWelcomeEn {
	_LocaleKeysWelcomeNl._(LocaleKeysNl root) : this._root = root, super.internal(root);

	final LocaleKeysNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mobile-ontwikkelaar';
	@override String get subtitle => 'Kseniia Nikitina';
}

// Path: summary
class _LocaleKeysSummaryNl extends LocaleKeysSummaryEn {
	_LocaleKeysSummaryNl._(LocaleKeysNl root) : this._root = root, super.internal(root);

	final LocaleKeysNl _root; // ignore: unused_field

	// Translations
	@override late final _LocaleKeysSummaryTotalExperienceNl totalExperience = _LocaleKeysSummaryTotalExperienceNl._(_root);
	@override late final _LocaleKeysSummaryMobileExperienceNl mobileExperience = _LocaleKeysSummaryMobileExperienceNl._(_root);
	@override late final _LocaleKeysSummaryHighEducationNl highEducation = _LocaleKeysSummaryHighEducationNl._(_root);
	@override late final _LocaleKeysSummaryOpenSourceNl openSource = _LocaleKeysSummaryOpenSourceNl._(_root);
	@override late final _LocaleKeysSummaryGooglePlayNl googlePlay = _LocaleKeysSummaryGooglePlayNl._(_root);
	@override late final _LocaleKeysSummaryEnglishNl english = _LocaleKeysSummaryEnglishNl._(_root);
	@override String get title => 'Samenvatting';
	@override String get subtitle => 'Super kort en zoet';
}

// Path: petProjects
class _LocaleKeysPetProjectsNl extends LocaleKeysPetProjectsEn {
	_LocaleKeysPetProjectsNl._(LocaleKeysNl root) : this._root = root, super.internal(root);

	final LocaleKeysNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pet projecten';
	@override String get subtitle => 'Uniek, creatief, van mij!';
	@override late final _LocaleKeysPetProjectsMarkdownNl markdown = _LocaleKeysPetProjectsMarkdownNl._(_root);
	@override late final _LocaleKeysPetProjectsErrorNl error = _LocaleKeysPetProjectsErrorNl._(_root);
}

// Path: notFound
class _LocaleKeysNotFoundNl extends LocaleKeysNotFoundEn {
	_LocaleKeysNotFoundNl._(LocaleKeysNl root) : this._root = root, super.internal(root);

	final LocaleKeysNl _root; // ignore: unused_field

	// Translations
	@override String get title => '404';
	@override String get subtitle => 'Deze pagina bestaat niet';
	@override String get button => 'Ga naar de startpagina';
}

// Path: experience
class _LocaleKeysExperienceNl extends LocaleKeysExperienceEn {
	_LocaleKeysExperienceNl._(LocaleKeysNl root) : this._root = root, super.internal(root);

	final LocaleKeysNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ervaring';
	@override String get subtitle => 'Het saaie deel';
	@override late final _LocaleKeysExperienceCvNl cv = _LocaleKeysExperienceCvNl._(_root);
	@override late final _LocaleKeysExperienceGreenfluxNl greenflux = _LocaleKeysExperienceGreenfluxNl._(_root);
	@override late final _LocaleKeysExperienceFriflexNl friflex = _LocaleKeysExperienceFriflexNl._(_root);
	@override late final _LocaleKeysExperienceAgroStabNl agroStab = _LocaleKeysExperienceAgroStabNl._(_root);
}

// Path: summary.totalExperience
class _LocaleKeysSummaryTotalExperienceNl extends LocaleKeysSummaryTotalExperienceEn {
	_LocaleKeysSummaryTotalExperienceNl._(LocaleKeysNl root) : this._root = root, super.internal(root);

	final LocaleKeysNl _root; // ignore: unused_field

	// Translations
	@override String get subtitle => 'totale ervaring';
	@override String get content => 'Naast Dart heb ik ervaring met Kotlin, Swift, JavaScript, Python, C#, R en meer';
}

// Path: summary.mobileExperience
class _LocaleKeysSummaryMobileExperienceNl extends LocaleKeysSummaryMobileExperienceEn {
	_LocaleKeysSummaryMobileExperienceNl._(LocaleKeysNl root) : this._root = root, super.internal(root);

	final LocaleKeysNl _root; // ignore: unused_field

	// Translations
	@override String get subtitle => 'ervaring met mobiele apps';
	@override String get content1 => 'Ik ontwikkel';
	@override String get content2 => 'web- en mobiele';
	@override String get content3 => 'applicaties evenals';
	@override String get content4 => 'backend-';
	@override String get content5 => 'structuren. Ik specialiseer me in complexe systemen en aangepaste pakketten.';
}

// Path: summary.highEducation
class _LocaleKeysSummaryHighEducationNl extends LocaleKeysSummaryHighEducationEn {
	_LocaleKeysSummaryHighEducationNl._(LocaleKeysNl root) : this._root = root, super.internal(root);

	final LocaleKeysNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Hogere opleiding';
	@override String get subtitle => 'in engineering';
	@override String get content1 => '«Programmeren in informatie- en communicatiesystemen» aan';
	@override String get content2 => 'ITMO Universiteit';
}

// Path: summary.openSource
class _LocaleKeysSummaryOpenSourceNl extends LocaleKeysSummaryOpenSourceEn {
	_LocaleKeysSummaryOpenSourceNl._(LocaleKeysNl root) : this._root = root, super.internal(root);

	final LocaleKeysNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Open-source';
	@override String get subtitle => 'actief project';
	@override String get content => 'Een pakket voor P2P-communicatie';
	@override String get contentButton => 'Bekijk pakket';
}

// Path: summary.googlePlay
class _LocaleKeysSummaryGooglePlayNl extends LocaleKeysSummaryGooglePlayEn {
	_LocaleKeysSummaryGooglePlayNl._(LocaleKeysNl root) : this._root = root, super.internal(root);

	final LocaleKeysNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Google Play';
	@override String get subtitle => 'actieve app';
	@override String get content => 'Een offline chat-app met ondersteuning voor tekst- en bestandsh sharing';
	@override String get contentButton => 'Open app';
}

// Path: summary.english
class _LocaleKeysSummaryEnglishNl extends LocaleKeysSummaryEnglishEn {
	_LocaleKeysSummaryEnglishNl._(LocaleKeysNl root) : this._root = root, super.internal(root);

	final LocaleKeysNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Engels';
	@override String get subtitle => 'werkend niveau';
	@override String get content => 'I very, very, very speak English';
}

// Path: petProjects.markdown
class _LocaleKeysPetProjectsMarkdownNl extends LocaleKeysPetProjectsMarkdownEn {
	_LocaleKeysPetProjectsMarkdownNl._(LocaleKeysNl root) : this._root = root, super.internal(root);

	final LocaleKeysNl _root; // ignore: unused_field

	// Translations
	@override String get imageButton => 'Bekijk afbeelding op GitHub';
}

// Path: petProjects.error
class _LocaleKeysPetProjectsErrorNl extends LocaleKeysPetProjectsErrorEn {
	_LocaleKeysPetProjectsErrorNl._(LocaleKeysNl root) : this._root = root, super.internal(root);

	final LocaleKeysNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Oeps!';
	@override String subtitle({required Object id}) => 'Project met ID=${id} niet gevonden. Controleer de ID en probeer het opnieuw.';
}

// Path: experience.cv
class _LocaleKeysExperienceCvNl extends LocaleKeysExperienceCvEn {
	_LocaleKeysExperienceCvNl._(LocaleKeysNl root) : this._root = root, super.internal(root);

	final LocaleKeysNl _root; // ignore: unused_field

	// Translations
	@override String get caption => 'Lees meer over mijn ervaring in de CV';
	@override String get button => 'Open CV';
}

// Path: experience.greenflux
class _LocaleKeysExperienceGreenfluxNl extends LocaleKeysExperienceGreenfluxEn {
	_LocaleKeysExperienceGreenfluxNl._(LocaleKeysNl root) : this._root = root, super.internal(root);

	final LocaleKeysNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mobiele Applicatie Ontwikkelaar';
	@override String get organization => 'Greenflux Assets B.V.';
	@override String get location => 'Amsterdam, Nederland (hybride)';
	@override String get duration => 'Februari 2024 – Heden';
	@override String get subtitle => 'Ontwikkeling van applicaties voor laadstations voor elektrische voertuigen';
	@override late final _LocaleKeysExperienceGreenfluxSkillsNl skills = _LocaleKeysExperienceGreenfluxSkillsNl._(_root);
	@override late final _LocaleKeysExperienceGreenfluxAchievementsNl achievements = _LocaleKeysExperienceGreenfluxAchievementsNl._(_root);
}

// Path: experience.friflex
class _LocaleKeysExperienceFriflexNl extends LocaleKeysExperienceFriflexEn {
	_LocaleKeysExperienceFriflexNl._(LocaleKeysNl root) : this._root = root, super.internal(root);

	final LocaleKeysNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Mobiele Applicatie Ontwikkelaar';
	@override String get organization => 'Friflex';
	@override String get location => 'Moskou, Rusland';
	@override String get duration => 'Augustus 2022 – December 2023';
	@override String get subtitle => 'Ontwikkeling van diensten voor het herkennen van schaak- en damspellen';
	@override late final _LocaleKeysExperienceFriflexSkillsNl skills = _LocaleKeysExperienceFriflexSkillsNl._(_root);
	@override late final _LocaleKeysExperienceFriflexAchievementsNl achievements = _LocaleKeysExperienceFriflexAchievementsNl._(_root);
}

// Path: experience.agroStab
class _LocaleKeysExperienceAgroStabNl extends LocaleKeysExperienceAgroStabEn {
	_LocaleKeysExperienceAgroStabNl._(LocaleKeysNl root) : this._root = root, super.internal(root);

	final LocaleKeysNl _root; // ignore: unused_field

	// Translations
	@override String get title => 'Full-stack Ontwikkelaar';
	@override String get organization => 'AgroSTAB';
	@override String get location => 'St. Petersburg, Rusland';
	@override String get duration => 'Februari 2022 – Juli 2022';
	@override String get subtitle => 'Ontwikkeling van beheerpaneel voor slimme kassen';
	@override late final _LocaleKeysExperienceAgroStabSkillsNl skills = _LocaleKeysExperienceAgroStabSkillsNl._(_root);
	@override late final _LocaleKeysExperienceAgroStabAchievementsNl achievements = _LocaleKeysExperienceAgroStabAchievementsNl._(_root);
}

// Path: experience.greenflux.skills
class _LocaleKeysExperienceGreenfluxSkillsNl extends LocaleKeysExperienceGreenfluxSkillsEn {
	_LocaleKeysExperienceGreenfluxSkillsNl._(LocaleKeysNl root) : this._root = root, super.internal(root);

	final LocaleKeysNl _root; // ignore: unused_field

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
	@override String get skill10 => 'Engels';
	@override String get skill11 => 'REST API';
	@override String get skill12 => 'Figma';
	@override String get skill13 => 'Objectgeoriënteerd Programmeren (OOP)';
}

// Path: experience.greenflux.achievements
class _LocaleKeysExperienceGreenfluxAchievementsNl extends LocaleKeysExperienceGreenfluxAchievementsEn {
	_LocaleKeysExperienceGreenfluxAchievementsNl._(LocaleKeysNl root) : this._root = root, super.internal(root);

	final LocaleKeysNl _root; // ignore: unused_field

	// Translations
	@override String get achievement1 => 'Ondersteunde de volledige ontwikkelingscyclus: van technische specificatie tot publicatie';
	@override String get achievement2 => 'Onderhield een systeem van meer dan 10 applicaties met een gedeelde codebase';
	@override String get achievement3 => 'Stelde linters, opmaak en een gemeenschappelijk klassen-systeem in voor alle applicaties';
	@override String get achievement4 => 'Creëerde pipelines voor het controleren van pull requests, het bouwen en publiceren van applicaties en scripts om processen te vereenvoudigen';
	@override String get achievement5 => 'Stelde Git Flow in en controleerde de naleving';
	@override String get achievement6 => 'Werkte nauw samen met Google Maps, meldingen en andere complexe functies';
	@override String get achievement7 => 'Implementeerde iOS Live Activities volledig met SwiftUI en breidde dit uit naar meerdere applicaties';
	@override String get achievement8 => 'Dekte de volledige codebase met tests';
}

// Path: experience.friflex.skills
class _LocaleKeysExperienceFriflexSkillsNl extends LocaleKeysExperienceFriflexSkillsEn {
	_LocaleKeysExperienceFriflexSkillsNl._(LocaleKeysNl root) : this._root = root, super.internal(root);

	final LocaleKeysNl _root; // ignore: unused_field

	// Translations
	@override String get skill1 => 'Firebase';
	@override String get skill2 => 'Databases';
	@override String get skill3 => 'PostgreSQL';
	@override String get skill4 => 'Figma';
	@override String get skill5 => 'Lokalisatie';
	@override String get skill6 => 'ChatGPT';
	@override String get skill7 => 'Dart';
	@override String get skill8 => 'REST API';
	@override String get skill9 => 'Flutter';
	@override String get skill10 => 'Google Play';
	@override String get skill11 => 'Ontwerppatronen';
	@override String get skill12 => 'Git';
	@override String get skill13 => 'BloC';
	@override String get skill14 => 'Objectgeoriënteerd Programmeren (OOP)';
}

// Path: experience.friflex.achievements
class _LocaleKeysExperienceFriflexAchievementsNl extends LocaleKeysExperienceFriflexAchievementsEn {
	_LocaleKeysExperienceFriflexAchievementsNl._(LocaleKeysNl root) : this._root = root, super.internal(root);

	final LocaleKeysNl _root; // ignore: unused_field

	// Translations
	@override String get achievement1 => 'Ondersteunde de volledige ontwikkelingscyclus: van technische specificatie tot publicatie';
	@override String get achievement2 => 'Creëerde 3 op maat gemaakte pakketten en ondersteunde 10+ pakketten en stelde afhankelijkheden in';
	@override String get achievement3 => 'Integreerde succesvol externe services (MiniO, Firebase)';
	@override String get achievement4 => 'Ontwikkelde administratieve webdashboards met Flutter Web';
	@override String get achievement5 => 'Ontwikkelde de backend met Dart';
	@override String get achievement6 => 'Creëerde talloze UI-componenten en animaties';
	@override String get achievement7 => 'Ontwikkelde een achtergrondservice voor het verzenden van gegevens naar de cloudopslag in delen';
	@override String get achievement8 => 'Onderhield een live streaming systeem bestaande uit een mobiele app, backend en webgedeelte';
}

// Path: experience.agroStab.skills
class _LocaleKeysExperienceAgroStabSkillsNl extends LocaleKeysExperienceAgroStabSkillsEn {
	_LocaleKeysExperienceAgroStabSkillsNl._(LocaleKeysNl root) : this._root = root, super.internal(root);

	final LocaleKeysNl _root; // ignore: unused_field

	// Translations
	@override String get skill1 => 'Mqtt';
	@override String get skill2 => 'Cron';
	@override String get skill3 => 'PostgreSQL';
	@override String get skill4 => 'Linux';
	@override String get skill5 => 'Engels';
	@override String get skill6 => 'Git';
	@override String get skill7 => 'ReactJS';
	@override String get skill8 => 'GitLab';
}

// Path: experience.agroStab.achievements
class _LocaleKeysExperienceAgroStabAchievementsNl extends LocaleKeysExperienceAgroStabAchievementsEn {
	_LocaleKeysExperienceAgroStabAchievementsNl._(LocaleKeysNl root) : this._root = root, super.internal(root);

	final LocaleKeysNl _root; // ignore: unused_field

	// Translations
	@override String get achievement1 => 'Ondersteunde de volledige ontwikkelingscyclus: van technische specificatie tot publicatie';
	@override String get achievement2 => 'Creëerde de gebruikersinterface met React.js';
	@override String get achievement3 => 'Integreerde dataverwerking met react-redux';
	@override String get achievement4 => 'Ontwierp de structuur van componenten, plaatsing en connecties';
	@override String get achievement5 => 'Voegde interactieve elementen toe om de gebruikerservaring te verbeteren';
	@override String get achievement6 => 'Verbeterde de structuur van de backend geschreven in Nest.js en voegde logica toe voor gegevensverwerking';
	@override String get achievement7 => 'Ontwierp de PostgreSQL-databasearchitectuur en implementeerde updates';
	@override String get achievement8 => 'Ontwikkelde algoritmes voor geplande gegevensupdates in de database met behulp van Cron';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on LocaleKeysNl {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'tab.home': return 'Startpagina';
			case 'tab.summary': return 'Samenvatting';
			case 'tab.projects': return 'Projecten';
			case 'tab.experience': return 'Ervaring';
			case 'tab.language': return 'Taal';
			case 'skill.teamPlayer': return 'Teamspeler';
			case 'skill.communicative': return 'Communicatief';
			case 'skill.problemSolver': return 'Probleemoplosser';
			case 'skill.leader': return 'Leidster';
			case 'skill.nonConflictual': return 'Conflictloos';
			case 'welcome.title': return 'Mobile-ontwikkelaar';
			case 'welcome.subtitle': return 'Kseniia Nikitina';
			case 'summary.totalExperience.subtitle': return 'totale ervaring';
			case 'summary.totalExperience.content': return 'Naast Dart heb ik ervaring met Kotlin, Swift, JavaScript, Python, C#, R en meer';
			case 'summary.mobileExperience.subtitle': return 'ervaring met mobiele apps';
			case 'summary.mobileExperience.content1': return 'Ik ontwikkel';
			case 'summary.mobileExperience.content2': return 'web- en mobiele';
			case 'summary.mobileExperience.content3': return 'applicaties evenals';
			case 'summary.mobileExperience.content4': return 'backend-';
			case 'summary.mobileExperience.content5': return 'structuren. Ik specialiseer me in complexe systemen en aangepaste pakketten.';
			case 'summary.highEducation.title': return 'Hogere opleiding';
			case 'summary.highEducation.subtitle': return 'in engineering';
			case 'summary.highEducation.content1': return '«Programmeren in informatie- en communicatiesystemen» aan';
			case 'summary.highEducation.content2': return 'ITMO Universiteit';
			case 'summary.openSource.title': return 'Open-source';
			case 'summary.openSource.subtitle': return 'actief project';
			case 'summary.openSource.content': return 'Een pakket voor P2P-communicatie';
			case 'summary.openSource.contentButton': return 'Bekijk pakket';
			case 'summary.googlePlay.title': return 'Google Play';
			case 'summary.googlePlay.subtitle': return 'actieve app';
			case 'summary.googlePlay.content': return 'Een offline chat-app met ondersteuning voor tekst- en bestandsh sharing';
			case 'summary.googlePlay.contentButton': return 'Open app';
			case 'summary.english.title': return 'Engels';
			case 'summary.english.subtitle': return 'werkend niveau';
			case 'summary.english.content': return 'I very, very, very speak English';
			case 'summary.title': return 'Samenvatting';
			case 'summary.subtitle': return 'Super kort en zoet';
			case 'petProjects.title': return 'Pet projecten';
			case 'petProjects.subtitle': return 'Uniek, creatief, van mij!';
			case 'petProjects.markdown.imageButton': return 'Bekijk afbeelding op GitHub';
			case 'petProjects.error.title': return 'Oeps!';
			case 'petProjects.error.subtitle': return ({required Object id}) => 'Project met ID=${id} niet gevonden. Controleer de ID en probeer het opnieuw.';
			case 'year': return ({required num n}) => (_root.$meta.ordinalResolver ?? PluralResolvers.ordinal('nl'))(n,
				zero: '${n} jaar',
				one: '${n} jaar',
				two: '${n} jaar',
				few: '${n} jaar',
				many: '${n} jaar',
				other: '${n} jaar',
			);
			case 'androidDemo': return 'Android-demo';
			case 'iosDemo': return 'iOS-demo';
			case 'notFound.title': return '404';
			case 'notFound.subtitle': return 'Deze pagina bestaat niet';
			case 'notFound.button': return 'Ga naar de startpagina';
			case 'pageTitle': return 'Kseniia | Mobile-ontwikkelaar';
			case 'mainImageCaption': return 'De afbeelding is gemaakt met behulp van grafische verwerking';
			case 'experience.title': return 'Ervaring';
			case 'experience.subtitle': return 'Het saaie deel';
			case 'experience.cv.caption': return 'Lees meer over mijn ervaring in de CV';
			case 'experience.cv.button': return 'Open CV';
			case 'experience.greenflux.title': return 'Mobiele Applicatie Ontwikkelaar';
			case 'experience.greenflux.organization': return 'Greenflux Assets B.V.';
			case 'experience.greenflux.location': return 'Amsterdam, Nederland (hybride)';
			case 'experience.greenflux.duration': return 'Februari 2024 – Heden';
			case 'experience.greenflux.subtitle': return 'Ontwikkeling van applicaties voor laadstations voor elektrische voertuigen';
			case 'experience.greenflux.skills.skill1': return 'Dart';
			case 'experience.greenflux.skills.skill2': return 'Flutter';
			case 'experience.greenflux.skills.skill3': return 'Google Play';
			case 'experience.greenflux.skills.skill4': return 'Firebase';
			case 'experience.greenflux.skills.skill5': return 'Git';
			case 'experience.greenflux.skills.skill6': return 'ChatGPT';
			case 'experience.greenflux.skills.skill7': return 'BloC';
			case 'experience.greenflux.skills.skill8': return 'App Store';
			case 'experience.greenflux.skills.skill9': return 'SwiftUI';
			case 'experience.greenflux.skills.skill10': return 'Engels';
			case 'experience.greenflux.skills.skill11': return 'REST API';
			case 'experience.greenflux.skills.skill12': return 'Figma';
			case 'experience.greenflux.skills.skill13': return 'Objectgeoriënteerd Programmeren (OOP)';
			case 'experience.greenflux.achievements.achievement1': return 'Ondersteunde de volledige ontwikkelingscyclus: van technische specificatie tot publicatie';
			case 'experience.greenflux.achievements.achievement2': return 'Onderhield een systeem van meer dan 10 applicaties met een gedeelde codebase';
			case 'experience.greenflux.achievements.achievement3': return 'Stelde linters, opmaak en een gemeenschappelijk klassen-systeem in voor alle applicaties';
			case 'experience.greenflux.achievements.achievement4': return 'Creëerde pipelines voor het controleren van pull requests, het bouwen en publiceren van applicaties en scripts om processen te vereenvoudigen';
			case 'experience.greenflux.achievements.achievement5': return 'Stelde Git Flow in en controleerde de naleving';
			case 'experience.greenflux.achievements.achievement6': return 'Werkte nauw samen met Google Maps, meldingen en andere complexe functies';
			case 'experience.greenflux.achievements.achievement7': return 'Implementeerde iOS Live Activities volledig met SwiftUI en breidde dit uit naar meerdere applicaties';
			case 'experience.greenflux.achievements.achievement8': return 'Dekte de volledige codebase met tests';
			case 'experience.friflex.title': return 'Mobiele Applicatie Ontwikkelaar';
			case 'experience.friflex.organization': return 'Friflex';
			case 'experience.friflex.location': return 'Moskou, Rusland';
			case 'experience.friflex.duration': return 'Augustus 2022 – December 2023';
			case 'experience.friflex.subtitle': return 'Ontwikkeling van diensten voor het herkennen van schaak- en damspellen';
			case 'experience.friflex.skills.skill1': return 'Firebase';
			case 'experience.friflex.skills.skill2': return 'Databases';
			case 'experience.friflex.skills.skill3': return 'PostgreSQL';
			case 'experience.friflex.skills.skill4': return 'Figma';
			case 'experience.friflex.skills.skill5': return 'Lokalisatie';
			case 'experience.friflex.skills.skill6': return 'ChatGPT';
			case 'experience.friflex.skills.skill7': return 'Dart';
			case 'experience.friflex.skills.skill8': return 'REST API';
			case 'experience.friflex.skills.skill9': return 'Flutter';
			case 'experience.friflex.skills.skill10': return 'Google Play';
			case 'experience.friflex.skills.skill11': return 'Ontwerppatronen';
			case 'experience.friflex.skills.skill12': return 'Git';
			case 'experience.friflex.skills.skill13': return 'BloC';
			case 'experience.friflex.skills.skill14': return 'Objectgeoriënteerd Programmeren (OOP)';
			case 'experience.friflex.achievements.achievement1': return 'Ondersteunde de volledige ontwikkelingscyclus: van technische specificatie tot publicatie';
			case 'experience.friflex.achievements.achievement2': return 'Creëerde 3 op maat gemaakte pakketten en ondersteunde 10+ pakketten en stelde afhankelijkheden in';
			case 'experience.friflex.achievements.achievement3': return 'Integreerde succesvol externe services (MiniO, Firebase)';
			case 'experience.friflex.achievements.achievement4': return 'Ontwikkelde administratieve webdashboards met Flutter Web';
			case 'experience.friflex.achievements.achievement5': return 'Ontwikkelde de backend met Dart';
			case 'experience.friflex.achievements.achievement6': return 'Creëerde talloze UI-componenten en animaties';
			case 'experience.friflex.achievements.achievement7': return 'Ontwikkelde een achtergrondservice voor het verzenden van gegevens naar de cloudopslag in delen';
			case 'experience.friflex.achievements.achievement8': return 'Onderhield een live streaming systeem bestaande uit een mobiele app, backend en webgedeelte';
			case 'experience.agroStab.title': return 'Full-stack Ontwikkelaar';
			case 'experience.agroStab.organization': return 'AgroSTAB';
			case 'experience.agroStab.location': return 'St. Petersburg, Rusland';
			case 'experience.agroStab.duration': return 'Februari 2022 – Juli 2022';
			case 'experience.agroStab.subtitle': return 'Ontwikkeling van beheerpaneel voor slimme kassen';
			case 'experience.agroStab.skills.skill1': return 'Mqtt';
			case 'experience.agroStab.skills.skill2': return 'Cron';
			case 'experience.agroStab.skills.skill3': return 'PostgreSQL';
			case 'experience.agroStab.skills.skill4': return 'Linux';
			case 'experience.agroStab.skills.skill5': return 'Engels';
			case 'experience.agroStab.skills.skill6': return 'Git';
			case 'experience.agroStab.skills.skill7': return 'ReactJS';
			case 'experience.agroStab.skills.skill8': return 'GitLab';
			case 'experience.agroStab.achievements.achievement1': return 'Ondersteunde de volledige ontwikkelingscyclus: van technische specificatie tot publicatie';
			case 'experience.agroStab.achievements.achievement2': return 'Creëerde de gebruikersinterface met React.js';
			case 'experience.agroStab.achievements.achievement3': return 'Integreerde dataverwerking met react-redux';
			case 'experience.agroStab.achievements.achievement4': return 'Ontwierp de structuur van componenten, plaatsing en connecties';
			case 'experience.agroStab.achievements.achievement5': return 'Voegde interactieve elementen toe om de gebruikerservaring te verbeteren';
			case 'experience.agroStab.achievements.achievement6': return 'Verbeterde de structuur van de backend geschreven in Nest.js en voegde logica toe voor gegevensverwerking';
			case 'experience.agroStab.achievements.achievement7': return 'Ontwierp de PostgreSQL-databasearchitectuur en implementeerde updates';
			case 'experience.agroStab.achievements.achievement8': return 'Ontwikkelde algoritmes voor geplande gegevensupdates in de database met behulp van Cron';
			default: return null;
		}
	}
}

