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
class LocaleKeysFr extends LocaleKeys {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	LocaleKeysFr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.fr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <fr>.
	@override final TranslationMetadata<AppLocale, LocaleKeys> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final LocaleKeysFr _root = this; // ignore: unused_field

	// Translations
	@override late final _LocaleKeysTabFr tab = _LocaleKeysTabFr._(_root);
	@override late final _LocaleKeysSkillFr skill = _LocaleKeysSkillFr._(_root);
	@override late final _LocaleKeysWelcomeFr welcome = _LocaleKeysWelcomeFr._(_root);
	@override late final _LocaleKeysSummaryFr summary = _LocaleKeysSummaryFr._(_root);
	@override late final _LocaleKeysPetProjectsFr petProjects = _LocaleKeysPetProjectsFr._(_root);
	@override String year({required num n}) => (_root.$meta.ordinalResolver ?? PluralResolvers.ordinal('fr'))(n,
		zero: '${n} ans',
		one: '${n} an',
		two: '${n} ans',
		few: '${n} ans',
		many: '${n} ans',
		other: '${n} ans',
	);
	@override String get androidDemo => 'Démo Android';
	@override String get iosDemo => 'Démo iOS';
	@override late final _LocaleKeysNotFoundFr notFound = _LocaleKeysNotFoundFr._(_root);
	@override String get pageTitle => 'Kseniia | Développeuse Mobile';
	@override String get mainImageCaption => 'L\'image a été créée à l\'aide de traitement graphique';
	@override late final _LocaleKeysExperienceFr experience = _LocaleKeysExperienceFr._(_root);
}

// Path: tab
class _LocaleKeysTabFr extends LocaleKeysTabEn {
	_LocaleKeysTabFr._(LocaleKeysFr root) : this._root = root, super.internal(root);

	final LocaleKeysFr _root; // ignore: unused_field

	// Translations
	@override String get home => 'Accueil';
	@override String get summary => 'Résumé';
	@override String get projects => 'Projets';
	@override String get experience => 'Expérience';
	@override String get language => 'Langue';
}

// Path: skill
class _LocaleKeysSkillFr extends LocaleKeysSkillEn {
	_LocaleKeysSkillFr._(LocaleKeysFr root) : this._root = root, super.internal(root);

	final LocaleKeysFr _root; // ignore: unused_field

	// Translations
	@override String get teamPlayer => 'Joueuse d\'équipe';
	@override String get communicative => 'Communicative';
	@override String get problemSolver => 'Résolutrice de problèmes';
	@override String get leader => 'Leader';
	@override String get nonConflictual => 'Non conflictuelle';
}

// Path: welcome
class _LocaleKeysWelcomeFr extends LocaleKeysWelcomeEn {
	_LocaleKeysWelcomeFr._(LocaleKeysFr root) : this._root = root, super.internal(root);

	final LocaleKeysFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Développeuse Mobile';
	@override String get subtitle => 'Kseniia Nikitina';
}

// Path: summary
class _LocaleKeysSummaryFr extends LocaleKeysSummaryEn {
	_LocaleKeysSummaryFr._(LocaleKeysFr root) : this._root = root, super.internal(root);

	final LocaleKeysFr _root; // ignore: unused_field

	// Translations
	@override late final _LocaleKeysSummaryTotalExperienceFr totalExperience = _LocaleKeysSummaryTotalExperienceFr._(_root);
	@override late final _LocaleKeysSummaryFlutterExperienceFr flutterExperience = _LocaleKeysSummaryFlutterExperienceFr._(_root);
	@override late final _LocaleKeysSummaryHighEducationFr highEducation = _LocaleKeysSummaryHighEducationFr._(_root);
	@override late final _LocaleKeysSummaryOpenSourceFr openSource = _LocaleKeysSummaryOpenSourceFr._(_root);
	@override late final _LocaleKeysSummaryGooglePlayFr googlePlay = _LocaleKeysSummaryGooglePlayFr._(_root);
	@override late final _LocaleKeysSummaryEnglishFr english = _LocaleKeysSummaryEnglishFr._(_root);
	@override String get title => 'Résumé';
	@override String get subtitle => 'Très court et sucré';
}

// Path: petProjects
class _LocaleKeysPetProjectsFr extends LocaleKeysPetProjectsEn {
	_LocaleKeysPetProjectsFr._(LocaleKeysFr root) : this._root = root, super.internal(root);

	final LocaleKeysFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Projets personnels';
	@override String get subtitle => 'Uniques, créatifs, à moi!';
	@override late final _LocaleKeysPetProjectsMarkdownFr markdown = _LocaleKeysPetProjectsMarkdownFr._(_root);
	@override late final _LocaleKeysPetProjectsErrorFr error = _LocaleKeysPetProjectsErrorFr._(_root);
}

// Path: notFound
class _LocaleKeysNotFoundFr extends LocaleKeysNotFoundEn {
	_LocaleKeysNotFoundFr._(LocaleKeysFr root) : this._root = root, super.internal(root);

	final LocaleKeysFr _root; // ignore: unused_field

	// Translations
	@override String get title => '404';
	@override String get subtitle => 'Cette page n\'existe pas';
	@override String get button => 'Aller à la page d\'accueil';
}

// Path: experience
class _LocaleKeysExperienceFr extends LocaleKeysExperienceEn {
	_LocaleKeysExperienceFr._(LocaleKeysFr root) : this._root = root, super.internal(root);

	final LocaleKeysFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Expérience';
	@override String get subtitle => 'La partie ennuyeuse';
	@override late final _LocaleKeysExperienceCvFr cv = _LocaleKeysExperienceCvFr._(_root);
	@override late final _LocaleKeysExperienceGreenfluxFr greenflux = _LocaleKeysExperienceGreenfluxFr._(_root);
	@override late final _LocaleKeysExperienceFriflexFr friflex = _LocaleKeysExperienceFriflexFr._(_root);
	@override late final _LocaleKeysExperienceAgroStabFr agroStab = _LocaleKeysExperienceAgroStabFr._(_root);
}

// Path: summary.totalExperience
class _LocaleKeysSummaryTotalExperienceFr extends LocaleKeysSummaryTotalExperienceEn {
	_LocaleKeysSummaryTotalExperienceFr._(LocaleKeysFr root) : this._root = root, super.internal(root);

	final LocaleKeysFr _root; // ignore: unused_field

	// Translations
	@override String get subtitle => 'expérience totale';
	@override String get content => 'En plus de Dart, j\'ai de l\'expérience avec Kotlin, Swift, JavaScript, Python, C#, R et plus encore';
}

// Path: summary.flutterExperience
class _LocaleKeysSummaryFlutterExperienceFr extends LocaleKeysSummaryFlutterExperienceEn {
	_LocaleKeysSummaryFlutterExperienceFr._(LocaleKeysFr root) : this._root = root, super.internal(root);

	final LocaleKeysFr _root; // ignore: unused_field

	// Translations
	@override String get subtitle => 'Expérience Flutter';
	@override String get content1 => 'Je développe';
	@override String get content2 => 'des applications web et mobiles';
	@override String get content3 => 'ainsi que';
	@override String get content4 => 'des structures backend';
	@override String get content5 => 'Je me spécialise dans les systèmes complexes et les packages Flutter personnalisés';
}

// Path: summary.highEducation
class _LocaleKeysSummaryHighEducationFr extends LocaleKeysSummaryHighEducationEn {
	_LocaleKeysSummaryHighEducationFr._(LocaleKeysFr root) : this._root = root, super.internal(root);

	final LocaleKeysFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Éducation supérieure';
	@override String get subtitle => 'en ingénierie';
	@override String get content1 => '«Programmation dans les systèmes d\'information et de communication» à l\'université';
	@override String get content2 => 'ITMO';
}

// Path: summary.openSource
class _LocaleKeysSummaryOpenSourceFr extends LocaleKeysSummaryOpenSourceEn {
	_LocaleKeysSummaryOpenSourceFr._(LocaleKeysFr root) : this._root = root, super.internal(root);

	final LocaleKeysFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Open-source';
	@override String get subtitle => 'projet actif';
	@override String get content => 'Un package pour la communication P2P';
	@override String get contentButton => 'Voir le package';
}

// Path: summary.googlePlay
class _LocaleKeysSummaryGooglePlayFr extends LocaleKeysSummaryGooglePlayEn {
	_LocaleKeysSummaryGooglePlayFr._(LocaleKeysFr root) : this._root = root, super.internal(root);

	final LocaleKeysFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Google Play';
	@override String get subtitle => 'application active';
	@override String get content => 'Une application de chat hors ligne avec support pour le partage de texte et de fichiers';
	@override String get contentButton => 'Ouvrir l\'application';
}

// Path: summary.english
class _LocaleKeysSummaryEnglishFr extends LocaleKeysSummaryEnglishEn {
	_LocaleKeysSummaryEnglishFr._(LocaleKeysFr root) : this._root = root, super.internal(root);

	final LocaleKeysFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Anglais';
	@override String get subtitle => 'compétence professionnelle';
	@override String get content => 'I very, very, very speak English';
}

// Path: petProjects.markdown
class _LocaleKeysPetProjectsMarkdownFr extends LocaleKeysPetProjectsMarkdownEn {
	_LocaleKeysPetProjectsMarkdownFr._(LocaleKeysFr root) : this._root = root, super.internal(root);

	final LocaleKeysFr _root; // ignore: unused_field

	// Translations
	@override String get imageButton => 'Voir l\'image sur GitHub';
}

// Path: petProjects.error
class _LocaleKeysPetProjectsErrorFr extends LocaleKeysPetProjectsErrorEn {
	_LocaleKeysPetProjectsErrorFr._(LocaleKeysFr root) : this._root = root, super.internal(root);

	final LocaleKeysFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Oups!';
	@override String subtitle({required Object id}) => 'Le projet avec ID=${id} n\'a pas été trouvé. Veuillez vérifier l\'ID et réessayer.';
}

// Path: experience.cv
class _LocaleKeysExperienceCvFr extends LocaleKeysExperienceCvEn {
	_LocaleKeysExperienceCvFr._(LocaleKeysFr root) : this._root = root, super.internal(root);

	final LocaleKeysFr _root; // ignore: unused_field

	// Translations
	@override String get caption => 'Lire plus sur ma expérience dans le CV';
	@override String get button => 'CV ouvert';
}

// Path: experience.greenflux
class _LocaleKeysExperienceGreenfluxFr extends LocaleKeysExperienceGreenfluxEn {
	_LocaleKeysExperienceGreenfluxFr._(LocaleKeysFr root) : this._root = root, super.internal(root);

	final LocaleKeysFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Développeuse d\'applications mobiles';
	@override String get organization => 'Greenflux Assets B.V.';
	@override String get location => 'Amsterdam, Pays-Bas (Hybride)';
	@override String get duration => 'Février 2024 – Présent';
	@override String get subtitle => 'Développement d\'applications pour les stations de recharge de véhicules électriques';
	@override late final _LocaleKeysExperienceGreenfluxSkillsFr skills = _LocaleKeysExperienceGreenfluxSkillsFr._(_root);
	@override late final _LocaleKeysExperienceGreenfluxAchievementsFr achievements = _LocaleKeysExperienceGreenfluxAchievementsFr._(_root);
}

// Path: experience.friflex
class _LocaleKeysExperienceFriflexFr extends LocaleKeysExperienceFriflexEn {
	_LocaleKeysExperienceFriflexFr._(LocaleKeysFr root) : this._root = root, super.internal(root);

	final LocaleKeysFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Développeuse d\'applications mobiles';
	@override String get organization => 'Friflex';
	@override String get location => 'Moscou, Russie';
	@override String get duration => 'Août 2022 – Décembre 2023';
	@override String get subtitle => 'Développement de services de reconnaissance de jeux d\'échecs et de dames';
	@override late final _LocaleKeysExperienceFriflexSkillsFr skills = _LocaleKeysExperienceFriflexSkillsFr._(_root);
	@override late final _LocaleKeysExperienceFriflexAchievementsFr achievements = _LocaleKeysExperienceFriflexAchievementsFr._(_root);
}

// Path: experience.agroStab
class _LocaleKeysExperienceAgroStabFr extends LocaleKeysExperienceAgroStabEn {
	_LocaleKeysExperienceAgroStabFr._(LocaleKeysFr root) : this._root = root, super.internal(root);

	final LocaleKeysFr _root; // ignore: unused_field

	// Translations
	@override String get title => 'Développeuse Full-stack';
	@override String get organization => 'AgroSTAB';
	@override String get location => 'Saint-Pétersbourg, Russie';
	@override String get duration => 'Février 2022 – Juillet 2022';
	@override String get subtitle => 'Développement de panneaux de contrôle pour serres intelligentes';
	@override late final _LocaleKeysExperienceAgroStabSkillsFr skills = _LocaleKeysExperienceAgroStabSkillsFr._(_root);
	@override late final _LocaleKeysExperienceAgroStabAchievementsFr achievements = _LocaleKeysExperienceAgroStabAchievementsFr._(_root);
}

// Path: experience.greenflux.skills
class _LocaleKeysExperienceGreenfluxSkillsFr extends LocaleKeysExperienceGreenfluxSkillsEn {
	_LocaleKeysExperienceGreenfluxSkillsFr._(LocaleKeysFr root) : this._root = root, super.internal(root);

	final LocaleKeysFr _root; // ignore: unused_field

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
	@override String get skill10 => 'Anglais';
	@override String get skill11 => 'REST API';
	@override String get skill12 => 'Figma';
	@override String get skill13 => 'Programmation orientée objet (OOP)';
}

// Path: experience.greenflux.achievements
class _LocaleKeysExperienceGreenfluxAchievementsFr extends LocaleKeysExperienceGreenfluxAchievementsEn {
	_LocaleKeysExperienceGreenfluxAchievementsFr._(LocaleKeysFr root) : this._root = root, super.internal(root);

	final LocaleKeysFr _root; // ignore: unused_field

	// Translations
	@override String get achievement1 => 'J\'ai soutenu l\'ensemble du cycle de développement : de la spécification technique à la publication';
	@override String get achievement2 => 'J\'ai maintenu un système de plus de 10 applications avec une base de code partagée';
	@override String get achievement3 => 'J\'ai configuré les linters, le formatage et mis en place un système de classes commun pour toutes les applications';
	@override String get achievement4 => 'J\'ai créé des pipelines pour la révision des pull requests, la compilation et la publication des applications, ainsi que des scripts pour simplifier les processus';
	@override String get achievement5 => 'J\'ai configuré Git Flow et suivi sa conformité';
	@override String get achievement6 => 'J\'ai travaillé en étroite collaboration avec Google Maps, les notifications et d\'autres fonctionnalités complexes';
	@override String get achievement7 => 'J\'ai entièrement implémenté iOS Live Activities avec SwiftUI et l\'ai étendu à plusieurs applications';
	@override String get achievement8 => 'J\'ai couvert toute la base de code avec des tests';
}

// Path: experience.friflex.skills
class _LocaleKeysExperienceFriflexSkillsFr extends LocaleKeysExperienceFriflexSkillsEn {
	_LocaleKeysExperienceFriflexSkillsFr._(LocaleKeysFr root) : this._root = root, super.internal(root);

	final LocaleKeysFr _root; // ignore: unused_field

	// Translations
	@override String get skill1 => 'Firebase';
	@override String get skill2 => 'Bases de données';
	@override String get skill3 => 'PostgreSQL';
	@override String get skill4 => 'Figma';
	@override String get skill5 => 'Localisation';
	@override String get skill6 => 'ChatGPT';
	@override String get skill7 => 'Dart';
	@override String get skill8 => 'REST API';
	@override String get skill9 => 'Flutter';
	@override String get skill10 => 'Google Play';
	@override String get skill11 => 'Patrons de conception';
	@override String get skill12 => 'Git';
	@override String get skill13 => 'BloC';
	@override String get skill14 => 'Programmation orientée objet (OOP)';
}

// Path: experience.friflex.achievements
class _LocaleKeysExperienceFriflexAchievementsFr extends LocaleKeysExperienceFriflexAchievementsEn {
	_LocaleKeysExperienceFriflexAchievementsFr._(LocaleKeysFr root) : this._root = root, super.internal(root);

	final LocaleKeysFr _root; // ignore: unused_field

	// Translations
	@override String get achievement1 => 'J\'ai soutenu l\'ensemble du cycle de développement : de la spécification technique à la publication';
	@override String get achievement2 => 'J\'ai créé 3 packages personnalisés et maintenu plus de 10 packages, configurant leurs dépendances';
	@override String get achievement3 => 'J\'ai intégré avec succès des services tiers (MiniO, Firebase)';
	@override String get achievement4 => 'J\'ai développé des dashboards administratifs web avec Flutter Web';
	@override String get achievement5 => 'J\'ai développé le backend avec Dart';
	@override String get achievement6 => 'J\'ai créé d\'innombrables composants UI et animations';
	@override String get achievement7 => 'J\'ai développé un service en arrière-plan pour envoyer des données vers le stockage cloud en morceaux';
	@override String get achievement8 => 'J\'ai maintenu un système de diffusion en direct composé de l\'application mobile, du backend et de la partie web';
}

// Path: experience.agroStab.skills
class _LocaleKeysExperienceAgroStabSkillsFr extends LocaleKeysExperienceAgroStabSkillsEn {
	_LocaleKeysExperienceAgroStabSkillsFr._(LocaleKeysFr root) : this._root = root, super.internal(root);

	final LocaleKeysFr _root; // ignore: unused_field

	// Translations
	@override String get skill1 => 'Mqtt';
	@override String get skill2 => 'Cron';
	@override String get skill3 => 'PostgreSQL';
	@override String get skill4 => 'Linux';
	@override String get skill5 => 'Anglais';
	@override String get skill6 => 'Git';
	@override String get skill7 => 'ReactJS';
	@override String get skill8 => 'GitLab';
}

// Path: experience.agroStab.achievements
class _LocaleKeysExperienceAgroStabAchievementsFr extends LocaleKeysExperienceAgroStabAchievementsEn {
	_LocaleKeysExperienceAgroStabAchievementsFr._(LocaleKeysFr root) : this._root = root, super.internal(root);

	final LocaleKeysFr _root; // ignore: unused_field

	// Translations
	@override String get achievement1 => 'J\'ai soutenu l\'ensemble du cycle de développement : de la spécification technique à la publication';
	@override String get achievement2 => 'J\'ai créé l\'interface utilisateur avec React.js';
	@override String get achievement3 => 'J\'ai intégré le traitement des données avec react-redux';
	@override String get achievement4 => 'J\'ai conçu la structure des composants, leur disposition et leurs connexions';
	@override String get achievement5 => 'J\'ai ajouté des éléments interactifs pour améliorer l\'UX';
	@override String get achievement6 => 'J\'ai amélioré la structure du backend écrit en Nest.js et ajouté de la logique de traitement des données';
	@override String get achievement7 => 'J\'ai conçu l\'architecture de la base de données PostgreSQL et mis en œuvre des mises à jour';
	@override String get achievement8 => 'J\'ai développé des algorithmes pour des mises à jour programmées des données en utilisant Cron';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on LocaleKeysFr {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'tab.home': return 'Accueil';
			case 'tab.summary': return 'Résumé';
			case 'tab.projects': return 'Projets';
			case 'tab.experience': return 'Expérience';
			case 'tab.language': return 'Langue';
			case 'skill.teamPlayer': return 'Joueuse d\'équipe';
			case 'skill.communicative': return 'Communicative';
			case 'skill.problemSolver': return 'Résolutrice de problèmes';
			case 'skill.leader': return 'Leader';
			case 'skill.nonConflictual': return 'Non conflictuelle';
			case 'welcome.title': return 'Développeuse Mobile';
			case 'welcome.subtitle': return 'Kseniia Nikitina';
			case 'summary.totalExperience.subtitle': return 'expérience totale';
			case 'summary.totalExperience.content': return 'En plus de Dart, j\'ai de l\'expérience avec Kotlin, Swift, JavaScript, Python, C#, R et plus encore';
			case 'summary.flutterExperience.subtitle': return 'Expérience Flutter';
			case 'summary.flutterExperience.content1': return 'Je développe';
			case 'summary.flutterExperience.content2': return 'des applications web et mobiles';
			case 'summary.flutterExperience.content3': return 'ainsi que';
			case 'summary.flutterExperience.content4': return 'des structures backend';
			case 'summary.flutterExperience.content5': return 'Je me spécialise dans les systèmes complexes et les packages Flutter personnalisés';
			case 'summary.highEducation.title': return 'Éducation supérieure';
			case 'summary.highEducation.subtitle': return 'en ingénierie';
			case 'summary.highEducation.content1': return '«Programmation dans les systèmes d\'information et de communication» à l\'université';
			case 'summary.highEducation.content2': return 'ITMO';
			case 'summary.openSource.title': return 'Open-source';
			case 'summary.openSource.subtitle': return 'projet actif';
			case 'summary.openSource.content': return 'Un package pour la communication P2P';
			case 'summary.openSource.contentButton': return 'Voir le package';
			case 'summary.googlePlay.title': return 'Google Play';
			case 'summary.googlePlay.subtitle': return 'application active';
			case 'summary.googlePlay.content': return 'Une application de chat hors ligne avec support pour le partage de texte et de fichiers';
			case 'summary.googlePlay.contentButton': return 'Ouvrir l\'application';
			case 'summary.english.title': return 'Anglais';
			case 'summary.english.subtitle': return 'compétence professionnelle';
			case 'summary.english.content': return 'I very, very, very speak English';
			case 'summary.title': return 'Résumé';
			case 'summary.subtitle': return 'Très court et sucré';
			case 'petProjects.title': return 'Projets personnels';
			case 'petProjects.subtitle': return 'Uniques, créatifs, à moi!';
			case 'petProjects.markdown.imageButton': return 'Voir l\'image sur GitHub';
			case 'petProjects.error.title': return 'Oups!';
			case 'petProjects.error.subtitle': return ({required Object id}) => 'Le projet avec ID=${id} n\'a pas été trouvé. Veuillez vérifier l\'ID et réessayer.';
			case 'year': return ({required num n}) => (_root.$meta.ordinalResolver ?? PluralResolvers.ordinal('fr'))(n,
				zero: '${n} ans',
				one: '${n} an',
				two: '${n} ans',
				few: '${n} ans',
				many: '${n} ans',
				other: '${n} ans',
			);
			case 'androidDemo': return 'Démo Android';
			case 'iosDemo': return 'Démo iOS';
			case 'notFound.title': return '404';
			case 'notFound.subtitle': return 'Cette page n\'existe pas';
			case 'notFound.button': return 'Aller à la page d\'accueil';
			case 'pageTitle': return 'Kseniia | Développeuse Mobile';
			case 'mainImageCaption': return 'L\'image a été créée à l\'aide de traitement graphique';
			case 'experience.title': return 'Expérience';
			case 'experience.subtitle': return 'La partie ennuyeuse';
			case 'experience.cv.caption': return 'Lire plus sur ma expérience dans le CV';
			case 'experience.cv.button': return 'CV ouvert';
			case 'experience.greenflux.title': return 'Développeuse d\'applications mobiles';
			case 'experience.greenflux.organization': return 'Greenflux Assets B.V.';
			case 'experience.greenflux.location': return 'Amsterdam, Pays-Bas (Hybride)';
			case 'experience.greenflux.duration': return 'Février 2024 – Présent';
			case 'experience.greenflux.subtitle': return 'Développement d\'applications pour les stations de recharge de véhicules électriques';
			case 'experience.greenflux.skills.skill1': return 'Dart';
			case 'experience.greenflux.skills.skill2': return 'Flutter';
			case 'experience.greenflux.skills.skill3': return 'Google Play';
			case 'experience.greenflux.skills.skill4': return 'Firebase';
			case 'experience.greenflux.skills.skill5': return 'Git';
			case 'experience.greenflux.skills.skill6': return 'ChatGPT';
			case 'experience.greenflux.skills.skill7': return 'BloC';
			case 'experience.greenflux.skills.skill8': return 'App Store';
			case 'experience.greenflux.skills.skill9': return 'SwiftUI';
			case 'experience.greenflux.skills.skill10': return 'Anglais';
			case 'experience.greenflux.skills.skill11': return 'REST API';
			case 'experience.greenflux.skills.skill12': return 'Figma';
			case 'experience.greenflux.skills.skill13': return 'Programmation orientée objet (OOP)';
			case 'experience.greenflux.achievements.achievement1': return 'J\'ai soutenu l\'ensemble du cycle de développement : de la spécification technique à la publication';
			case 'experience.greenflux.achievements.achievement2': return 'J\'ai maintenu un système de plus de 10 applications avec une base de code partagée';
			case 'experience.greenflux.achievements.achievement3': return 'J\'ai configuré les linters, le formatage et mis en place un système de classes commun pour toutes les applications';
			case 'experience.greenflux.achievements.achievement4': return 'J\'ai créé des pipelines pour la révision des pull requests, la compilation et la publication des applications, ainsi que des scripts pour simplifier les processus';
			case 'experience.greenflux.achievements.achievement5': return 'J\'ai configuré Git Flow et suivi sa conformité';
			case 'experience.greenflux.achievements.achievement6': return 'J\'ai travaillé en étroite collaboration avec Google Maps, les notifications et d\'autres fonctionnalités complexes';
			case 'experience.greenflux.achievements.achievement7': return 'J\'ai entièrement implémenté iOS Live Activities avec SwiftUI et l\'ai étendu à plusieurs applications';
			case 'experience.greenflux.achievements.achievement8': return 'J\'ai couvert toute la base de code avec des tests';
			case 'experience.friflex.title': return 'Développeuse d\'applications mobiles';
			case 'experience.friflex.organization': return 'Friflex';
			case 'experience.friflex.location': return 'Moscou, Russie';
			case 'experience.friflex.duration': return 'Août 2022 – Décembre 2023';
			case 'experience.friflex.subtitle': return 'Développement de services de reconnaissance de jeux d\'échecs et de dames';
			case 'experience.friflex.skills.skill1': return 'Firebase';
			case 'experience.friflex.skills.skill2': return 'Bases de données';
			case 'experience.friflex.skills.skill3': return 'PostgreSQL';
			case 'experience.friflex.skills.skill4': return 'Figma';
			case 'experience.friflex.skills.skill5': return 'Localisation';
			case 'experience.friflex.skills.skill6': return 'ChatGPT';
			case 'experience.friflex.skills.skill7': return 'Dart';
			case 'experience.friflex.skills.skill8': return 'REST API';
			case 'experience.friflex.skills.skill9': return 'Flutter';
			case 'experience.friflex.skills.skill10': return 'Google Play';
			case 'experience.friflex.skills.skill11': return 'Patrons de conception';
			case 'experience.friflex.skills.skill12': return 'Git';
			case 'experience.friflex.skills.skill13': return 'BloC';
			case 'experience.friflex.skills.skill14': return 'Programmation orientée objet (OOP)';
			case 'experience.friflex.achievements.achievement1': return 'J\'ai soutenu l\'ensemble du cycle de développement : de la spécification technique à la publication';
			case 'experience.friflex.achievements.achievement2': return 'J\'ai créé 3 packages personnalisés et maintenu plus de 10 packages, configurant leurs dépendances';
			case 'experience.friflex.achievements.achievement3': return 'J\'ai intégré avec succès des services tiers (MiniO, Firebase)';
			case 'experience.friflex.achievements.achievement4': return 'J\'ai développé des dashboards administratifs web avec Flutter Web';
			case 'experience.friflex.achievements.achievement5': return 'J\'ai développé le backend avec Dart';
			case 'experience.friflex.achievements.achievement6': return 'J\'ai créé d\'innombrables composants UI et animations';
			case 'experience.friflex.achievements.achievement7': return 'J\'ai développé un service en arrière-plan pour envoyer des données vers le stockage cloud en morceaux';
			case 'experience.friflex.achievements.achievement8': return 'J\'ai maintenu un système de diffusion en direct composé de l\'application mobile, du backend et de la partie web';
			case 'experience.agroStab.title': return 'Développeuse Full-stack';
			case 'experience.agroStab.organization': return 'AgroSTAB';
			case 'experience.agroStab.location': return 'Saint-Pétersbourg, Russie';
			case 'experience.agroStab.duration': return 'Février 2022 – Juillet 2022';
			case 'experience.agroStab.subtitle': return 'Développement de panneaux de contrôle pour serres intelligentes';
			case 'experience.agroStab.skills.skill1': return 'Mqtt';
			case 'experience.agroStab.skills.skill2': return 'Cron';
			case 'experience.agroStab.skills.skill3': return 'PostgreSQL';
			case 'experience.agroStab.skills.skill4': return 'Linux';
			case 'experience.agroStab.skills.skill5': return 'Anglais';
			case 'experience.agroStab.skills.skill6': return 'Git';
			case 'experience.agroStab.skills.skill7': return 'ReactJS';
			case 'experience.agroStab.skills.skill8': return 'GitLab';
			case 'experience.agroStab.achievements.achievement1': return 'J\'ai soutenu l\'ensemble du cycle de développement : de la spécification technique à la publication';
			case 'experience.agroStab.achievements.achievement2': return 'J\'ai créé l\'interface utilisateur avec React.js';
			case 'experience.agroStab.achievements.achievement3': return 'J\'ai intégré le traitement des données avec react-redux';
			case 'experience.agroStab.achievements.achievement4': return 'J\'ai conçu la structure des composants, leur disposition et leurs connexions';
			case 'experience.agroStab.achievements.achievement5': return 'J\'ai ajouté des éléments interactifs pour améliorer l\'UX';
			case 'experience.agroStab.achievements.achievement6': return 'J\'ai amélioré la structure du backend écrit en Nest.js et ajouté de la logique de traitement des données';
			case 'experience.agroStab.achievements.achievement7': return 'J\'ai conçu l\'architecture de la base de données PostgreSQL et mis en œuvre des mises à jour';
			case 'experience.agroStab.achievements.achievement8': return 'J\'ai développé des algorithmes pour des mises à jour programmées des données en utilisant Cron';
			default: return null;
		}
	}
}

