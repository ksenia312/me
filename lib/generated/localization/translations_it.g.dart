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
class LocaleKeysIt extends LocaleKeys {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	LocaleKeysIt({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.it,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <it>.
	@override final TranslationMetadata<AppLocale, LocaleKeys> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final LocaleKeysIt _root = this; // ignore: unused_field

	// Translations
	@override late final _LocaleKeysTabIt tab = _LocaleKeysTabIt._(_root);
	@override late final _LocaleKeysSkillIt skill = _LocaleKeysSkillIt._(_root);
	@override late final _LocaleKeysWelcomeIt welcome = _LocaleKeysWelcomeIt._(_root);
	@override late final _LocaleKeysSummaryIt summary = _LocaleKeysSummaryIt._(_root);
	@override late final _LocaleKeysPetProjectsIt petProjects = _LocaleKeysPetProjectsIt._(_root);
	@override String year({required num n}) => (_root.$meta.ordinalResolver ?? PluralResolvers.ordinal('it'))(n,
		zero: '${n} anni',
		one: '${n} anno',
		two: '${n} anni',
		few: '${n} anni',
		many: '${n} anni',
		other: '${n} anni',
	);
	@override String get androidDemo => 'Demo Android';
	@override String get iosDemo => 'Demo iOS';
	@override late final _LocaleKeysNotFoundIt notFound = _LocaleKeysNotFoundIt._(_root);
	@override String get pageTitle => 'Kseniia | Sviluppatrice Flutter';
	@override String get mainImageCaption => 'L\'immagine è stata creata utilizzando l\'elaborazione grafica';
	@override late final _LocaleKeysExperienceIt experience = _LocaleKeysExperienceIt._(_root);
}

// Path: tab
class _LocaleKeysTabIt extends LocaleKeysTabEn {
	_LocaleKeysTabIt._(LocaleKeysIt root) : this._root = root, super.internal(root);

	final LocaleKeysIt _root; // ignore: unused_field

	// Translations
	@override String get home => 'Home';
	@override String get summary => 'Sommario';
	@override String get projects => 'Progetti';
	@override String get experience => 'Esperienza';
	@override String get language => 'Lingua';
}

// Path: skill
class _LocaleKeysSkillIt extends LocaleKeysSkillEn {
	_LocaleKeysSkillIt._(LocaleKeysIt root) : this._root = root, super.internal(root);

	final LocaleKeysIt _root; // ignore: unused_field

	// Translations
	@override String get teamPlayer => 'Giocatrice di squadra';
	@override String get communicative => 'Comunicativa';
	@override String get problemSolver => 'Risolutrice di problemi';
	@override String get leader => 'Leader';
	@override String get nonConflictual => 'Non conflittuale';
}

// Path: welcome
class _LocaleKeysWelcomeIt extends LocaleKeysWelcomeEn {
	_LocaleKeysWelcomeIt._(LocaleKeysIt root) : this._root = root, super.internal(root);

	final LocaleKeysIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sviluppatrice Flutter';
	@override String get subtitle => 'Kseniia Nikitina';
}

// Path: summary
class _LocaleKeysSummaryIt extends LocaleKeysSummaryEn {
	_LocaleKeysSummaryIt._(LocaleKeysIt root) : this._root = root, super.internal(root);

	final LocaleKeysIt _root; // ignore: unused_field

	// Translations
	@override late final _LocaleKeysSummaryTotalExperienceIt totalExperience = _LocaleKeysSummaryTotalExperienceIt._(_root);
	@override late final _LocaleKeysSummaryFlutterExperienceIt flutterExperience = _LocaleKeysSummaryFlutterExperienceIt._(_root);
	@override late final _LocaleKeysSummaryHighEducationIt highEducation = _LocaleKeysSummaryHighEducationIt._(_root);
	@override late final _LocaleKeysSummaryOpenSourceIt openSource = _LocaleKeysSummaryOpenSourceIt._(_root);
	@override late final _LocaleKeysSummaryGooglePlayIt googlePlay = _LocaleKeysSummaryGooglePlayIt._(_root);
	@override late final _LocaleKeysSummaryEnglishIt english = _LocaleKeysSummaryEnglishIt._(_root);
	@override String get title => 'Riassunto';
	@override String get subtitle => 'Super breve e dolce';
}

// Path: petProjects
class _LocaleKeysPetProjectsIt extends LocaleKeysPetProjectsEn {
	_LocaleKeysPetProjectsIt._(LocaleKeysIt root) : this._root = root, super.internal(root);

	final LocaleKeysIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pet projects';
	@override String get subtitle => 'Unici, creativi, miei!';
	@override late final _LocaleKeysPetProjectsMarkdownIt markdown = _LocaleKeysPetProjectsMarkdownIt._(_root);
	@override late final _LocaleKeysPetProjectsErrorIt error = _LocaleKeysPetProjectsErrorIt._(_root);
}

// Path: notFound
class _LocaleKeysNotFoundIt extends LocaleKeysNotFoundEn {
	_LocaleKeysNotFoundIt._(LocaleKeysIt root) : this._root = root, super.internal(root);

	final LocaleKeysIt _root; // ignore: unused_field

	// Translations
	@override String get title => '404';
	@override String get subtitle => 'Questa pagina non esiste';
	@override String get button => 'Vai alla home page';
}

// Path: experience
class _LocaleKeysExperienceIt extends LocaleKeysExperienceEn {
	_LocaleKeysExperienceIt._(LocaleKeysIt root) : this._root = root, super.internal(root);

	final LocaleKeysIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Esperienza';
	@override String get subtitle => 'La parte noiosa';
	@override late final _LocaleKeysExperienceCvIt cv = _LocaleKeysExperienceCvIt._(_root);
	@override late final _LocaleKeysExperienceGreenfluxIt greenflux = _LocaleKeysExperienceGreenfluxIt._(_root);
	@override late final _LocaleKeysExperienceFriflexIt friflex = _LocaleKeysExperienceFriflexIt._(_root);
	@override late final _LocaleKeysExperienceAgroStabIt agroStab = _LocaleKeysExperienceAgroStabIt._(_root);
}

// Path: summary.totalExperience
class _LocaleKeysSummaryTotalExperienceIt extends LocaleKeysSummaryTotalExperienceEn {
	_LocaleKeysSummaryTotalExperienceIt._(LocaleKeysIt root) : this._root = root, super.internal(root);

	final LocaleKeysIt _root; // ignore: unused_field

	// Translations
	@override String get subtitle => 'esperienza totale';
	@override String get content => 'Oltre a Dart, ho esperienza con Kotlin, Swift, JavaScript, Python, C#, R e altro';
}

// Path: summary.flutterExperience
class _LocaleKeysSummaryFlutterExperienceIt extends LocaleKeysSummaryFlutterExperienceEn {
	_LocaleKeysSummaryFlutterExperienceIt._(LocaleKeysIt root) : this._root = root, super.internal(root);

	final LocaleKeysIt _root; // ignore: unused_field

	// Translations
	@override String get subtitle => 'Esperienza con Flutter';
	@override String get content1 => 'Sviluppo';
	@override String get content2 => 'applicazioni web e mobili';
	@override String get content3 => 'nonché';
	@override String get content4 => 'strutture backend';
	@override String get content5 => 'Mi specializzo in sistemi complessi e pacchetti Flutter personalizzati';
}

// Path: summary.highEducation
class _LocaleKeysSummaryHighEducationIt extends LocaleKeysSummaryHighEducationEn {
	_LocaleKeysSummaryHighEducationIt._(LocaleKeysIt root) : this._root = root, super.internal(root);

	final LocaleKeysIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Istruzione superiore';
	@override String get subtitle => 'in ingegneria';
	@override String get content1 => '«Programmazione in sistemi informativi e di comunicazione»';
	@override String get content2 => 'all\'Università ITMO';
}

// Path: summary.openSource
class _LocaleKeysSummaryOpenSourceIt extends LocaleKeysSummaryOpenSourceEn {
	_LocaleKeysSummaryOpenSourceIt._(LocaleKeysIt root) : this._root = root, super.internal(root);

	final LocaleKeysIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Open-source';
	@override String get subtitle => 'progetto attivo';
	@override String get content => 'Un pacchetto per la comunicazione P2P';
	@override String get contentButton => 'Visualizza pacchetto';
}

// Path: summary.googlePlay
class _LocaleKeysSummaryGooglePlayIt extends LocaleKeysSummaryGooglePlayEn {
	_LocaleKeysSummaryGooglePlayIt._(LocaleKeysIt root) : this._root = root, super.internal(root);

	final LocaleKeysIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Google Play';
	@override String get subtitle => 'app attiva';
	@override String get content => 'Un\'app di chat offline con supporto per la condivisione di testo e file';
	@override String get contentButton => 'Apri app';
}

// Path: summary.english
class _LocaleKeysSummaryEnglishIt extends LocaleKeysSummaryEnglishEn {
	_LocaleKeysSummaryEnglishIt._(LocaleKeysIt root) : this._root = root, super.internal(root);

	final LocaleKeysIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Inglese';
	@override String get subtitle => 'livello lavorativo';
	@override String get content => 'I very, very, very speak English';
}

// Path: petProjects.markdown
class _LocaleKeysPetProjectsMarkdownIt extends LocaleKeysPetProjectsMarkdownEn {
	_LocaleKeysPetProjectsMarkdownIt._(LocaleKeysIt root) : this._root = root, super.internal(root);

	final LocaleKeysIt _root; // ignore: unused_field

	// Translations
	@override String get imageButton => 'Visualizza immagine su GitHub';
}

// Path: petProjects.error
class _LocaleKeysPetProjectsErrorIt extends LocaleKeysPetProjectsErrorEn {
	_LocaleKeysPetProjectsErrorIt._(LocaleKeysIt root) : this._root = root, super.internal(root);

	final LocaleKeysIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ops!';
	@override String subtitle({required Object id}) => 'Il progetto con ID=${id} non è stato trovato. Si prega di controllare l\'ID e riprovare.';
}

// Path: experience.cv
class _LocaleKeysExperienceCvIt extends LocaleKeysExperienceCvEn {
	_LocaleKeysExperienceCvIt._(LocaleKeysIt root) : this._root = root, super.internal(root);

	final LocaleKeysIt _root; // ignore: unused_field

	// Translations
	@override String get caption => 'Leggi di più sulla mia esperienza nel CV';
	@override String get button => 'CV aperto';
}

// Path: experience.greenflux
class _LocaleKeysExperienceGreenfluxIt extends LocaleKeysExperienceGreenfluxEn {
	_LocaleKeysExperienceGreenfluxIt._(LocaleKeysIt root) : this._root = root, super.internal(root);

	final LocaleKeysIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sviluppatrice di applicazioni mobili';
	@override String get organization => 'Greenflux Assets B.V.';
	@override String get location => 'Amsterdam, Paesi Bassi (ibrido)';
	@override String get duration => 'Febbraio 2024 – Presente';
	@override String get subtitle => 'Sviluppo di applicazioni per stazioni di ricarica di veicoli elettrici';
	@override late final _LocaleKeysExperienceGreenfluxSkillsIt skills = _LocaleKeysExperienceGreenfluxSkillsIt._(_root);
	@override late final _LocaleKeysExperienceGreenfluxAchievementsIt achievements = _LocaleKeysExperienceGreenfluxAchievementsIt._(_root);
}

// Path: experience.friflex
class _LocaleKeysExperienceFriflexIt extends LocaleKeysExperienceFriflexEn {
	_LocaleKeysExperienceFriflexIt._(LocaleKeysIt root) : this._root = root, super.internal(root);

	final LocaleKeysIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sviluppatrice di applicazioni mobili';
	@override String get organization => 'Friflex';
	@override String get location => 'Mosca, Russia';
	@override String get duration => 'Agosto 2022 – Dicembre 2023';
	@override String get subtitle => 'Sviluppo di servizi per il riconoscimento di giochi di scacchi e dama';
	@override late final _LocaleKeysExperienceFriflexSkillsIt skills = _LocaleKeysExperienceFriflexSkillsIt._(_root);
	@override late final _LocaleKeysExperienceFriflexAchievementsIt achievements = _LocaleKeysExperienceFriflexAchievementsIt._(_root);
}

// Path: experience.agroStab
class _LocaleKeysExperienceAgroStabIt extends LocaleKeysExperienceAgroStabEn {
	_LocaleKeysExperienceAgroStabIt._(LocaleKeysIt root) : this._root = root, super.internal(root);

	final LocaleKeysIt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Sviluppatrice Full-stack';
	@override String get organization => 'AgroSTAB';
	@override String get location => 'San Pietroburgo, Russia';
	@override String get duration => 'Febbraio 2022 – Luglio 2022';
	@override String get subtitle => 'Sviluppo di pannelli di controllo per serre intelligenti';
	@override late final _LocaleKeysExperienceAgroStabSkillsIt skills = _LocaleKeysExperienceAgroStabSkillsIt._(_root);
	@override late final _LocaleKeysExperienceAgroStabAchievementsIt achievements = _LocaleKeysExperienceAgroStabAchievementsIt._(_root);
}

// Path: experience.greenflux.skills
class _LocaleKeysExperienceGreenfluxSkillsIt extends LocaleKeysExperienceGreenfluxSkillsEn {
	_LocaleKeysExperienceGreenfluxSkillsIt._(LocaleKeysIt root) : this._root = root, super.internal(root);

	final LocaleKeysIt _root; // ignore: unused_field

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
	@override String get skill10 => 'Inglese';
	@override String get skill11 => 'REST API';
	@override String get skill12 => 'Figma';
	@override String get skill13 => 'Programmazione orientata agli oggetti (OOP)';
}

// Path: experience.greenflux.achievements
class _LocaleKeysExperienceGreenfluxAchievementsIt extends LocaleKeysExperienceGreenfluxAchievementsEn {
	_LocaleKeysExperienceGreenfluxAchievementsIt._(LocaleKeysIt root) : this._root = root, super.internal(root);

	final LocaleKeysIt _root; // ignore: unused_field

	// Translations
	@override String get achievement1 => 'Ho supportato l\'intero ciclo di sviluppo: dalla specifica tecnica alla pubblicazione';
	@override String get achievement2 => 'Ho mantenuto un sistema di oltre 10 applicazioni con una base di codice condivisa';
	@override String get achievement3 => 'Ho configurato i linter, il formato e implementato un sistema di classi comune per tutte le applicazioni';
	@override String get achievement4 => 'Ho creato pipeline per la revisione delle pull request, per la compilazione e la pubblicazione delle applicazioni, e script per semplificare i processi';
	@override String get achievement5 => 'Ho configurato Git Flow e monitorato la sua conformità';
	@override String get achievement6 => 'Ho lavorato a stretto contatto con Google Maps, notifiche e altre funzionalità complesse';
	@override String get achievement7 => 'Ho implementato completamente iOS Live Activities con SwiftUI e l\'ho esteso a più applicazioni';
	@override String get achievement8 => 'Ho coperto l\'intera base di codice con test';
}

// Path: experience.friflex.skills
class _LocaleKeysExperienceFriflexSkillsIt extends LocaleKeysExperienceFriflexSkillsEn {
	_LocaleKeysExperienceFriflexSkillsIt._(LocaleKeysIt root) : this._root = root, super.internal(root);

	final LocaleKeysIt _root; // ignore: unused_field

	// Translations
	@override String get skill1 => 'Firebase';
	@override String get skill2 => 'Database';
	@override String get skill3 => 'PostgreSQL';
	@override String get skill4 => 'Figma';
	@override String get skill5 => 'Localizzazione';
	@override String get skill6 => 'ChatGPT';
	@override String get skill7 => 'Dart';
	@override String get skill8 => 'REST API';
	@override String get skill9 => 'Flutter';
	@override String get skill10 => 'Google Play';
	@override String get skill11 => 'Pattern di progettazione';
	@override String get skill12 => 'Git';
	@override String get skill13 => 'BloC';
	@override String get skill14 => 'Programmazione orientata agli oggetti (OOP)';
}

// Path: experience.friflex.achievements
class _LocaleKeysExperienceFriflexAchievementsIt extends LocaleKeysExperienceFriflexAchievementsEn {
	_LocaleKeysExperienceFriflexAchievementsIt._(LocaleKeysIt root) : this._root = root, super.internal(root);

	final LocaleKeysIt _root; // ignore: unused_field

	// Translations
	@override String get achievement1 => 'Ho supportato l\'intero ciclo di sviluppo: dalla specifica tecnica alla pubblicazione';
	@override String get achievement2 => 'Ho creato 3 pacchetti personalizzati e ne ho mantenuti oltre 10, configurando le dipendenze tra di essi';
	@override String get achievement3 => 'Ho integrato con successo servizi di terze parti (MiniO, Firebase)';
	@override String get achievement4 => 'Ho sviluppato dashboard amministrativi web con Flutter Web';
	@override String get achievement5 => 'Ho sviluppato il backend con Dart';
	@override String get achievement6 => 'Ho creato numerosi componenti UI e animazioni';
	@override String get achievement7 => 'Ho sviluppato un servizio in background per inviare dati al cloud storage in blocchi';
	@override String get achievement8 => 'Ho mantenuto un sistema di streaming live composto da applicazione mobile, backend e frontend web';
}

// Path: experience.agroStab.skills
class _LocaleKeysExperienceAgroStabSkillsIt extends LocaleKeysExperienceAgroStabSkillsEn {
	_LocaleKeysExperienceAgroStabSkillsIt._(LocaleKeysIt root) : this._root = root, super.internal(root);

	final LocaleKeysIt _root; // ignore: unused_field

	// Translations
	@override String get skill1 => 'Mqtt';
	@override String get skill2 => 'Cron';
	@override String get skill3 => 'PostgreSQL';
	@override String get skill4 => 'Linux';
	@override String get skill5 => 'Inglese';
	@override String get skill6 => 'Git';
	@override String get skill7 => 'ReactJS';
	@override String get skill8 => 'GitLab';
}

// Path: experience.agroStab.achievements
class _LocaleKeysExperienceAgroStabAchievementsIt extends LocaleKeysExperienceAgroStabAchievementsEn {
	_LocaleKeysExperienceAgroStabAchievementsIt._(LocaleKeysIt root) : this._root = root, super.internal(root);

	final LocaleKeysIt _root; // ignore: unused_field

	// Translations
	@override String get achievement1 => 'Ho supportato l\'intero ciclo di sviluppo: dalla specifica tecnica alla pubblicazione';
	@override String get achievement2 => 'Ho creato l\'interfaccia utente con React.js';
	@override String get achievement3 => 'Ho integrato il trattamento dei dati utilizzando react-redux';
	@override String get achievement4 => 'Ho progettato la struttura dei componenti, la loro disposizione e connessione';
	@override String get achievement5 => 'Ho aggiunto elementi interattivi per migliorare l\'UX';
	@override String get achievement6 => 'Ho migliorato la struttura del backend scritto in Nest.js e aggiunto logica di trattamento dei dati';
	@override String get achievement7 => 'Ho progettato l\'architettura del database PostgreSQL e implementato gli aggiornamenti';
	@override String get achievement8 => 'Ho sviluppato algoritmi per aggiornamenti programmati dei dati nel database utilizzando Cron';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on LocaleKeysIt {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'tab.home': return 'Home';
			case 'tab.summary': return 'Sommario';
			case 'tab.projects': return 'Progetti';
			case 'tab.experience': return 'Esperienza';
			case 'tab.language': return 'Lingua';
			case 'skill.teamPlayer': return 'Giocatrice di squadra';
			case 'skill.communicative': return 'Comunicativa';
			case 'skill.problemSolver': return 'Risolutrice di problemi';
			case 'skill.leader': return 'Leader';
			case 'skill.nonConflictual': return 'Non conflittuale';
			case 'welcome.title': return 'Sviluppatrice Flutter';
			case 'welcome.subtitle': return 'Kseniia Nikitina';
			case 'summary.totalExperience.subtitle': return 'esperienza totale';
			case 'summary.totalExperience.content': return 'Oltre a Dart, ho esperienza con Kotlin, Swift, JavaScript, Python, C#, R e altro';
			case 'summary.flutterExperience.subtitle': return 'Esperienza con Flutter';
			case 'summary.flutterExperience.content1': return 'Sviluppo';
			case 'summary.flutterExperience.content2': return 'applicazioni web e mobili';
			case 'summary.flutterExperience.content3': return 'nonché';
			case 'summary.flutterExperience.content4': return 'strutture backend';
			case 'summary.flutterExperience.content5': return 'Mi specializzo in sistemi complessi e pacchetti Flutter personalizzati';
			case 'summary.highEducation.title': return 'Istruzione superiore';
			case 'summary.highEducation.subtitle': return 'in ingegneria';
			case 'summary.highEducation.content1': return '«Programmazione in sistemi informativi e di comunicazione»';
			case 'summary.highEducation.content2': return 'all\'Università ITMO';
			case 'summary.openSource.title': return 'Open-source';
			case 'summary.openSource.subtitle': return 'progetto attivo';
			case 'summary.openSource.content': return 'Un pacchetto per la comunicazione P2P';
			case 'summary.openSource.contentButton': return 'Visualizza pacchetto';
			case 'summary.googlePlay.title': return 'Google Play';
			case 'summary.googlePlay.subtitle': return 'app attiva';
			case 'summary.googlePlay.content': return 'Un\'app di chat offline con supporto per la condivisione di testo e file';
			case 'summary.googlePlay.contentButton': return 'Apri app';
			case 'summary.english.title': return 'Inglese';
			case 'summary.english.subtitle': return 'livello lavorativo';
			case 'summary.english.content': return 'I very, very, very speak English';
			case 'summary.title': return 'Riassunto';
			case 'summary.subtitle': return 'Super breve e dolce';
			case 'petProjects.title': return 'Pet projects';
			case 'petProjects.subtitle': return 'Unici, creativi, miei!';
			case 'petProjects.markdown.imageButton': return 'Visualizza immagine su GitHub';
			case 'petProjects.error.title': return 'Ops!';
			case 'petProjects.error.subtitle': return ({required Object id}) => 'Il progetto con ID=${id} non è stato trovato. Si prega di controllare l\'ID e riprovare.';
			case 'year': return ({required num n}) => (_root.$meta.ordinalResolver ?? PluralResolvers.ordinal('it'))(n,
				zero: '${n} anni',
				one: '${n} anno',
				two: '${n} anni',
				few: '${n} anni',
				many: '${n} anni',
				other: '${n} anni',
			);
			case 'androidDemo': return 'Demo Android';
			case 'iosDemo': return 'Demo iOS';
			case 'notFound.title': return '404';
			case 'notFound.subtitle': return 'Questa pagina non esiste';
			case 'notFound.button': return 'Vai alla home page';
			case 'pageTitle': return 'Kseniia | Sviluppatrice Flutter';
			case 'mainImageCaption': return 'L\'immagine è stata creata utilizzando l\'elaborazione grafica';
			case 'experience.title': return 'Esperienza';
			case 'experience.subtitle': return 'La parte noiosa';
			case 'experience.cv.caption': return 'Leggi di più sulla mia esperienza nel CV';
			case 'experience.cv.button': return 'CV aperto';
			case 'experience.greenflux.title': return 'Sviluppatrice di applicazioni mobili';
			case 'experience.greenflux.organization': return 'Greenflux Assets B.V.';
			case 'experience.greenflux.location': return 'Amsterdam, Paesi Bassi (ibrido)';
			case 'experience.greenflux.duration': return 'Febbraio 2024 – Presente';
			case 'experience.greenflux.subtitle': return 'Sviluppo di applicazioni per stazioni di ricarica di veicoli elettrici';
			case 'experience.greenflux.skills.skill1': return 'Dart';
			case 'experience.greenflux.skills.skill2': return 'Flutter';
			case 'experience.greenflux.skills.skill3': return 'Google Play';
			case 'experience.greenflux.skills.skill4': return 'Firebase';
			case 'experience.greenflux.skills.skill5': return 'Git';
			case 'experience.greenflux.skills.skill6': return 'ChatGPT';
			case 'experience.greenflux.skills.skill7': return 'BloC';
			case 'experience.greenflux.skills.skill8': return 'App Store';
			case 'experience.greenflux.skills.skill9': return 'SwiftUI';
			case 'experience.greenflux.skills.skill10': return 'Inglese';
			case 'experience.greenflux.skills.skill11': return 'REST API';
			case 'experience.greenflux.skills.skill12': return 'Figma';
			case 'experience.greenflux.skills.skill13': return 'Programmazione orientata agli oggetti (OOP)';
			case 'experience.greenflux.achievements.achievement1': return 'Ho supportato l\'intero ciclo di sviluppo: dalla specifica tecnica alla pubblicazione';
			case 'experience.greenflux.achievements.achievement2': return 'Ho mantenuto un sistema di oltre 10 applicazioni con una base di codice condivisa';
			case 'experience.greenflux.achievements.achievement3': return 'Ho configurato i linter, il formato e implementato un sistema di classi comune per tutte le applicazioni';
			case 'experience.greenflux.achievements.achievement4': return 'Ho creato pipeline per la revisione delle pull request, per la compilazione e la pubblicazione delle applicazioni, e script per semplificare i processi';
			case 'experience.greenflux.achievements.achievement5': return 'Ho configurato Git Flow e monitorato la sua conformità';
			case 'experience.greenflux.achievements.achievement6': return 'Ho lavorato a stretto contatto con Google Maps, notifiche e altre funzionalità complesse';
			case 'experience.greenflux.achievements.achievement7': return 'Ho implementato completamente iOS Live Activities con SwiftUI e l\'ho esteso a più applicazioni';
			case 'experience.greenflux.achievements.achievement8': return 'Ho coperto l\'intera base di codice con test';
			case 'experience.friflex.title': return 'Sviluppatrice di applicazioni mobili';
			case 'experience.friflex.organization': return 'Friflex';
			case 'experience.friflex.location': return 'Mosca, Russia';
			case 'experience.friflex.duration': return 'Agosto 2022 – Dicembre 2023';
			case 'experience.friflex.subtitle': return 'Sviluppo di servizi per il riconoscimento di giochi di scacchi e dama';
			case 'experience.friflex.skills.skill1': return 'Firebase';
			case 'experience.friflex.skills.skill2': return 'Database';
			case 'experience.friflex.skills.skill3': return 'PostgreSQL';
			case 'experience.friflex.skills.skill4': return 'Figma';
			case 'experience.friflex.skills.skill5': return 'Localizzazione';
			case 'experience.friflex.skills.skill6': return 'ChatGPT';
			case 'experience.friflex.skills.skill7': return 'Dart';
			case 'experience.friflex.skills.skill8': return 'REST API';
			case 'experience.friflex.skills.skill9': return 'Flutter';
			case 'experience.friflex.skills.skill10': return 'Google Play';
			case 'experience.friflex.skills.skill11': return 'Pattern di progettazione';
			case 'experience.friflex.skills.skill12': return 'Git';
			case 'experience.friflex.skills.skill13': return 'BloC';
			case 'experience.friflex.skills.skill14': return 'Programmazione orientata agli oggetti (OOP)';
			case 'experience.friflex.achievements.achievement1': return 'Ho supportato l\'intero ciclo di sviluppo: dalla specifica tecnica alla pubblicazione';
			case 'experience.friflex.achievements.achievement2': return 'Ho creato 3 pacchetti personalizzati e ne ho mantenuti oltre 10, configurando le dipendenze tra di essi';
			case 'experience.friflex.achievements.achievement3': return 'Ho integrato con successo servizi di terze parti (MiniO, Firebase)';
			case 'experience.friflex.achievements.achievement4': return 'Ho sviluppato dashboard amministrativi web con Flutter Web';
			case 'experience.friflex.achievements.achievement5': return 'Ho sviluppato il backend con Dart';
			case 'experience.friflex.achievements.achievement6': return 'Ho creato numerosi componenti UI e animazioni';
			case 'experience.friflex.achievements.achievement7': return 'Ho sviluppato un servizio in background per inviare dati al cloud storage in blocchi';
			case 'experience.friflex.achievements.achievement8': return 'Ho mantenuto un sistema di streaming live composto da applicazione mobile, backend e frontend web';
			case 'experience.agroStab.title': return 'Sviluppatrice Full-stack';
			case 'experience.agroStab.organization': return 'AgroSTAB';
			case 'experience.agroStab.location': return 'San Pietroburgo, Russia';
			case 'experience.agroStab.duration': return 'Febbraio 2022 – Luglio 2022';
			case 'experience.agroStab.subtitle': return 'Sviluppo di pannelli di controllo per serre intelligenti';
			case 'experience.agroStab.skills.skill1': return 'Mqtt';
			case 'experience.agroStab.skills.skill2': return 'Cron';
			case 'experience.agroStab.skills.skill3': return 'PostgreSQL';
			case 'experience.agroStab.skills.skill4': return 'Linux';
			case 'experience.agroStab.skills.skill5': return 'Inglese';
			case 'experience.agroStab.skills.skill6': return 'Git';
			case 'experience.agroStab.skills.skill7': return 'ReactJS';
			case 'experience.agroStab.skills.skill8': return 'GitLab';
			case 'experience.agroStab.achievements.achievement1': return 'Ho supportato l\'intero ciclo di sviluppo: dalla specifica tecnica alla pubblicazione';
			case 'experience.agroStab.achievements.achievement2': return 'Ho creato l\'interfaccia utente con React.js';
			case 'experience.agroStab.achievements.achievement3': return 'Ho integrato il trattamento dei dati utilizzando react-redux';
			case 'experience.agroStab.achievements.achievement4': return 'Ho progettato la struttura dei componenti, la loro disposizione e connessione';
			case 'experience.agroStab.achievements.achievement5': return 'Ho aggiunto elementi interattivi per migliorare l\'UX';
			case 'experience.agroStab.achievements.achievement6': return 'Ho migliorato la struttura del backend scritto in Nest.js e aggiunto logica di trattamento dei dati';
			case 'experience.agroStab.achievements.achievement7': return 'Ho progettato l\'architettura del database PostgreSQL e implementato gli aggiornamenti';
			case 'experience.agroStab.achievements.achievement8': return 'Ho sviluppato algoritmi per aggiornamenti programmati dei dati nel database utilizzando Cron';
			default: return null;
		}
	}
}

