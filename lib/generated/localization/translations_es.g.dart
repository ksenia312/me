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
class LocaleKeysEs extends LocaleKeys {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	LocaleKeysEs({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.es,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <es>.
	@override final TranslationMetadata<AppLocale, LocaleKeys> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final LocaleKeysEs _root = this; // ignore: unused_field

	// Translations
	@override late final _LocaleKeysTabEs tab = _LocaleKeysTabEs._(_root);
	@override late final _LocaleKeysSkillEs skill = _LocaleKeysSkillEs._(_root);
	@override late final _LocaleKeysWelcomeEs welcome = _LocaleKeysWelcomeEs._(_root);
	@override late final _LocaleKeysSummaryEs summary = _LocaleKeysSummaryEs._(_root);
	@override late final _LocaleKeysPetProjectsEs petProjects = _LocaleKeysPetProjectsEs._(_root);
	@override String year({required num n}) => (_root.$meta.ordinalResolver ?? PluralResolvers.ordinal('es'))(n,
		zero: '${n} años',
		one: '${n} año',
		two: '${n} años',
		few: '${n} años',
		many: '${n} años',
		other: '${n} años',
	);
	@override String get androidDemo => 'Demo de Android';
	@override String get iosDemo => 'Demo de iOS';
	@override late final _LocaleKeysNotFoundEs notFound = _LocaleKeysNotFoundEs._(_root);
	@override String get pageTitle => 'Kseniia | Desarrolladora Flutter';
	@override String get mainImageCaption => 'La imagen fue creada mediante procesamiento gráfico';
	@override late final _LocaleKeysExperienceEs experience = _LocaleKeysExperienceEs._(_root);
}

// Path: tab
class _LocaleKeysTabEs extends LocaleKeysTabEn {
	_LocaleKeysTabEs._(LocaleKeysEs root) : this._root = root, super.internal(root);

	final LocaleKeysEs _root; // ignore: unused_field

	// Translations
	@override String get home => 'Inicio';
	@override String get summary => 'Resumen';
	@override String get projects => 'Proyectos';
	@override String get experience => 'Experiencia';
	@override String get language => 'Idioma';
}

// Path: skill
class _LocaleKeysSkillEs extends LocaleKeysSkillEn {
	_LocaleKeysSkillEs._(LocaleKeysEs root) : this._root = root, super.internal(root);

	final LocaleKeysEs _root; // ignore: unused_field

	// Translations
	@override String get teamPlayer => 'Jugadora de equipo';
	@override String get communicative => 'Comunicativa';
	@override String get problemSolver => 'Resolutora de problemas';
	@override String get leader => 'Líder';
	@override String get nonConflictual => 'No conflictiva';
}

// Path: welcome
class _LocaleKeysWelcomeEs extends LocaleKeysWelcomeEn {
	_LocaleKeysWelcomeEs._(LocaleKeysEs root) : this._root = root, super.internal(root);

	final LocaleKeysEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Desarrolladora Flutter';
	@override String get subtitle => 'Kseniia Nikitina';
}

// Path: summary
class _LocaleKeysSummaryEs extends LocaleKeysSummaryEn {
	_LocaleKeysSummaryEs._(LocaleKeysEs root) : this._root = root, super.internal(root);

	final LocaleKeysEs _root; // ignore: unused_field

	// Translations
	@override late final _LocaleKeysSummaryTotalExperienceEs totalExperience = _LocaleKeysSummaryTotalExperienceEs._(_root);
	@override late final _LocaleKeysSummaryFlutterExperienceEs flutterExperience = _LocaleKeysSummaryFlutterExperienceEs._(_root);
	@override late final _LocaleKeysSummaryHighEducationEs highEducation = _LocaleKeysSummaryHighEducationEs._(_root);
	@override late final _LocaleKeysSummaryOpenSourceEs openSource = _LocaleKeysSummaryOpenSourceEs._(_root);
	@override late final _LocaleKeysSummaryGooglePlayEs googlePlay = _LocaleKeysSummaryGooglePlayEs._(_root);
	@override late final _LocaleKeysSummaryEnglishEs english = _LocaleKeysSummaryEnglishEs._(_root);
	@override String get title => 'Resumen';
	@override String get subtitle => 'Muy corto y dulce';
}

// Path: petProjects
class _LocaleKeysPetProjectsEs extends LocaleKeysPetProjectsEn {
	_LocaleKeysPetProjectsEs._(LocaleKeysEs root) : this._root = root, super.internal(root);

	final LocaleKeysEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Proyectos personales';
	@override String get subtitle => '¡Únicos, creativos, míos!';
	@override late final _LocaleKeysPetProjectsMarkdownEs markdown = _LocaleKeysPetProjectsMarkdownEs._(_root);
	@override late final _LocaleKeysPetProjectsErrorEs error = _LocaleKeysPetProjectsErrorEs._(_root);
}

// Path: notFound
class _LocaleKeysNotFoundEs extends LocaleKeysNotFoundEn {
	_LocaleKeysNotFoundEs._(LocaleKeysEs root) : this._root = root, super.internal(root);

	final LocaleKeysEs _root; // ignore: unused_field

	// Translations
	@override String get title => '404';
	@override String get subtitle => 'Esta página no existe';
	@override String get button => 'Ir a la página principal';
}

// Path: experience
class _LocaleKeysExperienceEs extends LocaleKeysExperienceEn {
	_LocaleKeysExperienceEs._(LocaleKeysEs root) : this._root = root, super.internal(root);

	final LocaleKeysEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Experiencia';
	@override String get subtitle => 'La parte aburrida';
	@override late final _LocaleKeysExperienceCvEs cv = _LocaleKeysExperienceCvEs._(_root);
	@override late final _LocaleKeysExperienceGreenfluxEs greenflux = _LocaleKeysExperienceGreenfluxEs._(_root);
	@override late final _LocaleKeysExperienceFriflexEs friflex = _LocaleKeysExperienceFriflexEs._(_root);
	@override late final _LocaleKeysExperienceAgroStabEs agroStab = _LocaleKeysExperienceAgroStabEs._(_root);
}

// Path: summary.totalExperience
class _LocaleKeysSummaryTotalExperienceEs extends LocaleKeysSummaryTotalExperienceEn {
	_LocaleKeysSummaryTotalExperienceEs._(LocaleKeysEs root) : this._root = root, super.internal(root);

	final LocaleKeysEs _root; // ignore: unused_field

	// Translations
	@override String get subtitle => 'experiencia total';
	@override String get content => 'Además de Dart, tengo experiencia con Kotlin, Swift, JavaScript, Python, C#, R y más';
}

// Path: summary.flutterExperience
class _LocaleKeysSummaryFlutterExperienceEs extends LocaleKeysSummaryFlutterExperienceEn {
	_LocaleKeysSummaryFlutterExperienceEs._(LocaleKeysEs root) : this._root = root, super.internal(root);

	final LocaleKeysEs _root; // ignore: unused_field

	// Translations
	@override String get subtitle => 'Experiencia en Flutter';
	@override String get content1 => 'Desarrollo';
	@override String get content2 => 'aplicaciones web y móviles';
	@override String get content3 => 'así como';
	@override String get content4 => 'estructuras backend';
	@override String get content5 => 'Me especializo en sistemas complejos y paquetes personalizados de Flutter';
}

// Path: summary.highEducation
class _LocaleKeysSummaryHighEducationEs extends LocaleKeysSummaryHighEducationEn {
	_LocaleKeysSummaryHighEducationEs._(LocaleKeysEs root) : this._root = root, super.internal(root);

	final LocaleKeysEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Educación superior';
	@override String get subtitle => 'en ingeniería';
	@override String get content1 => '«Programación en sistemas de información y comunicación» en';
	@override String get content2 => 'la Universidad ITMO';
}

// Path: summary.openSource
class _LocaleKeysSummaryOpenSourceEs extends LocaleKeysSummaryOpenSourceEn {
	_LocaleKeysSummaryOpenSourceEs._(LocaleKeysEs root) : this._root = root, super.internal(root);

	final LocaleKeysEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Open-source';
	@override String get subtitle => 'proyecto activo';
	@override String get content => 'Un paquete para comunicación P2P';
	@override String get contentButton => 'Ver paquete';
}

// Path: summary.googlePlay
class _LocaleKeysSummaryGooglePlayEs extends LocaleKeysSummaryGooglePlayEn {
	_LocaleKeysSummaryGooglePlayEs._(LocaleKeysEs root) : this._root = root, super.internal(root);

	final LocaleKeysEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Google Play';
	@override String get subtitle => 'aplicación activa';
	@override String get content => 'Una aplicación de chat offline con soporte para compartir texto y archivos';
	@override String get contentButton => 'Abrir aplicación';
}

// Path: summary.english
class _LocaleKeysSummaryEnglishEs extends LocaleKeysSummaryEnglishEn {
	_LocaleKeysSummaryEnglishEs._(LocaleKeysEs root) : this._root = root, super.internal(root);

	final LocaleKeysEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Inglés';
	@override String get subtitle => 'nivel de trabajo';
	@override String get content => 'I very, very, very speak English';
}

// Path: petProjects.markdown
class _LocaleKeysPetProjectsMarkdownEs extends LocaleKeysPetProjectsMarkdownEn {
	_LocaleKeysPetProjectsMarkdownEs._(LocaleKeysEs root) : this._root = root, super.internal(root);

	final LocaleKeysEs _root; // ignore: unused_field

	// Translations
	@override String get imageButton => 'Ver imagen en GitHub';
}

// Path: petProjects.error
class _LocaleKeysPetProjectsErrorEs extends LocaleKeysPetProjectsErrorEn {
	_LocaleKeysPetProjectsErrorEs._(LocaleKeysEs root) : this._root = root, super.internal(root);

	final LocaleKeysEs _root; // ignore: unused_field

	// Translations
	@override String get title => '¡Ups!';
	@override String subtitle({required Object id}) => 'No se encontró el proyecto con ID=${id}. Por favor, compruebe el ID e inténtelo de nuevo.';
}

// Path: experience.cv
class _LocaleKeysExperienceCvEs extends LocaleKeysExperienceCvEn {
	_LocaleKeysExperienceCvEs._(LocaleKeysEs root) : this._root = root, super.internal(root);

	final LocaleKeysEs _root; // ignore: unused_field

	// Translations
	@override String get caption => 'Leer más sobre mi experiencia en el CV';
	@override String get button => 'Abrir CV';
}

// Path: experience.greenflux
class _LocaleKeysExperienceGreenfluxEs extends LocaleKeysExperienceGreenfluxEn {
	_LocaleKeysExperienceGreenfluxEs._(LocaleKeysEs root) : this._root = root, super.internal(root);

	final LocaleKeysEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Desarrolladora de Aplicaciones Móviles';
	@override String get organization => 'Greenflux Assets B.V.';
	@override String get location => 'Ámsterdam, Países Bajos (Híbrido)';
	@override String get duration => 'Febrero 2024 – Actualidad';
	@override String get subtitle => 'Desarrollo de aplicaciones para estaciones de carga de vehículos eléctricos';
	@override late final _LocaleKeysExperienceGreenfluxSkillsEs skills = _LocaleKeysExperienceGreenfluxSkillsEs._(_root);
	@override late final _LocaleKeysExperienceGreenfluxAchievementsEs achievements = _LocaleKeysExperienceGreenfluxAchievementsEs._(_root);
}

// Path: experience.friflex
class _LocaleKeysExperienceFriflexEs extends LocaleKeysExperienceFriflexEn {
	_LocaleKeysExperienceFriflexEs._(LocaleKeysEs root) : this._root = root, super.internal(root);

	final LocaleKeysEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Desarrolladora de Aplicaciones Móviles';
	@override String get organization => 'Friflex';
	@override String get location => 'Moscú, Rusia';
	@override String get duration => 'Agosto 2022 – Diciembre 2023';
	@override String get subtitle => 'Desarrollo de servicios para el reconocimiento de juegos de ajedrez y damas';
	@override late final _LocaleKeysExperienceFriflexSkillsEs skills = _LocaleKeysExperienceFriflexSkillsEs._(_root);
	@override late final _LocaleKeysExperienceFriflexAchievementsEs achievements = _LocaleKeysExperienceFriflexAchievementsEs._(_root);
}

// Path: experience.agroStab
class _LocaleKeysExperienceAgroStabEs extends LocaleKeysExperienceAgroStabEn {
	_LocaleKeysExperienceAgroStabEs._(LocaleKeysEs root) : this._root = root, super.internal(root);

	final LocaleKeysEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Desarrolladora Full-stack';
	@override String get organization => 'AgroSTAB';
	@override String get location => 'San Petersburgo, Rusia';
	@override String get duration => 'Febrero 2022 – Julio 2022';
	@override String get subtitle => 'Desarrollo de paneles de administración para invernaderos inteligentes';
	@override late final _LocaleKeysExperienceAgroStabSkillsEs skills = _LocaleKeysExperienceAgroStabSkillsEs._(_root);
	@override late final _LocaleKeysExperienceAgroStabAchievementsEs achievements = _LocaleKeysExperienceAgroStabAchievementsEs._(_root);
}

// Path: experience.greenflux.skills
class _LocaleKeysExperienceGreenfluxSkillsEs extends LocaleKeysExperienceGreenfluxSkillsEn {
	_LocaleKeysExperienceGreenfluxSkillsEs._(LocaleKeysEs root) : this._root = root, super.internal(root);

	final LocaleKeysEs _root; // ignore: unused_field

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
	@override String get skill10 => 'Inglés';
	@override String get skill11 => 'REST API';
	@override String get skill12 => 'Figma';
	@override String get skill13 => 'Programación Orientada a Objetos (OOP)';
}

// Path: experience.greenflux.achievements
class _LocaleKeysExperienceGreenfluxAchievementsEs extends LocaleKeysExperienceGreenfluxAchievementsEn {
	_LocaleKeysExperienceGreenfluxAchievementsEs._(LocaleKeysEs root) : this._root = root, super.internal(root);

	final LocaleKeysEs _root; // ignore: unused_field

	// Translations
	@override String get achievement1 => 'Apoyé todo el ciclo de desarrollo: desde la especificación técnica hasta la publicación';
	@override String get achievement2 => 'Mantuve un sistema de más de 10 aplicaciones con una base de código compartida';
	@override String get achievement3 => 'Configuré linters, formateo e implementé un sistema común de clases para todas las aplicaciones';
	@override String get achievement4 => 'Creé pipelines para revisar pull requests, compilar y publicar aplicaciones, así como scripts para simplificar procesos';
	@override String get achievement5 => 'Configuré Git Flow y supervisé su cumplimiento';
	@override String get achievement6 => 'Trabajé estrechamente con Google Maps, notificaciones y otras funciones complejas';
	@override String get achievement7 => 'Implementé completamente iOS Live Activities con SwiftUI y lo extendí a varias aplicaciones';
	@override String get achievement8 => 'Cubrí toda la base de código con pruebas';
}

// Path: experience.friflex.skills
class _LocaleKeysExperienceFriflexSkillsEs extends LocaleKeysExperienceFriflexSkillsEn {
	_LocaleKeysExperienceFriflexSkillsEs._(LocaleKeysEs root) : this._root = root, super.internal(root);

	final LocaleKeysEs _root; // ignore: unused_field

	// Translations
	@override String get skill1 => 'Firebase';
	@override String get skill2 => 'Bases de datos';
	@override String get skill3 => 'PostgreSQL';
	@override String get skill4 => 'Figma';
	@override String get skill5 => 'Localización';
	@override String get skill6 => 'ChatGPT';
	@override String get skill7 => 'Dart';
	@override String get skill8 => 'REST API';
	@override String get skill9 => 'Flutter';
	@override String get skill10 => 'Google Play';
	@override String get skill11 => 'Patrones de Diseño';
	@override String get skill12 => 'Git';
	@override String get skill13 => 'BloC';
	@override String get skill14 => 'Programación Orientada a Objetos (OOP)';
}

// Path: experience.friflex.achievements
class _LocaleKeysExperienceFriflexAchievementsEs extends LocaleKeysExperienceFriflexAchievementsEn {
	_LocaleKeysExperienceFriflexAchievementsEs._(LocaleKeysEs root) : this._root = root, super.internal(root);

	final LocaleKeysEs _root; // ignore: unused_field

	// Translations
	@override String get achievement1 => 'Apoyé todo el ciclo de desarrollo: desde la especificación técnica hasta la publicación';
	@override String get achievement2 => 'Creé 3 paquetes personalizados y mantuve más de 10 paquetes, configurando dependencias';
	@override String get achievement3 => 'Integré con éxito servicios de terceros (MiniO, Firebase)';
	@override String get achievement4 => 'Desarrollé paneles administrativos web con Flutter Web';
	@override String get achievement5 => 'Desarrollé el backend utilizando Dart';
	@override String get achievement6 => 'Creé innumerables componentes de UI y animaciones';
	@override String get achievement7 => 'Desarrollé un servicio en segundo plano para enviar datos a la nube en partes';
	@override String get achievement8 => 'Mantuve un sistema de transmisión en vivo compuesto por una aplicación móvil, backend y web';
}

// Path: experience.agroStab.skills
class _LocaleKeysExperienceAgroStabSkillsEs extends LocaleKeysExperienceAgroStabSkillsEn {
	_LocaleKeysExperienceAgroStabSkillsEs._(LocaleKeysEs root) : this._root = root, super.internal(root);

	final LocaleKeysEs _root; // ignore: unused_field

	// Translations
	@override String get skill1 => 'Mqtt';
	@override String get skill2 => 'Cron';
	@override String get skill3 => 'PostgreSQL';
	@override String get skill4 => 'Linux';
	@override String get skill5 => 'Inglés';
	@override String get skill6 => 'Git';
	@override String get skill7 => 'ReactJS';
	@override String get skill8 => 'GitLab';
}

// Path: experience.agroStab.achievements
class _LocaleKeysExperienceAgroStabAchievementsEs extends LocaleKeysExperienceAgroStabAchievementsEn {
	_LocaleKeysExperienceAgroStabAchievementsEs._(LocaleKeysEs root) : this._root = root, super.internal(root);

	final LocaleKeysEs _root; // ignore: unused_field

	// Translations
	@override String get achievement1 => 'Apoyé todo el ciclo de desarrollo: desde la especificación técnica hasta la publicación';
	@override String get achievement2 => 'Desarrollé la interfaz de usuario con React.js';
	@override String get achievement3 => 'Integré procesamiento de datos utilizando react-redux';
	@override String get achievement4 => 'Diseñé la estructura de los componentes, su disposición y conexiones';
	@override String get achievement5 => 'Añadí elementos interactivos para mejorar la experiencia de usuario';
	@override String get achievement6 => 'Mejoré la estructura del backend escrito en Nest.js y agregué lógica de procesamiento de datos';
	@override String get achievement7 => 'Diseñé la arquitectura de la base de datos PostgreSQL e implementé actualizaciones';
	@override String get achievement8 => 'Desarrollé algoritmos para actualizaciones programadas de datos usando Cron';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on LocaleKeysEs {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'tab.home': return 'Inicio';
			case 'tab.summary': return 'Resumen';
			case 'tab.projects': return 'Proyectos';
			case 'tab.experience': return 'Experiencia';
			case 'tab.language': return 'Idioma';
			case 'skill.teamPlayer': return 'Jugadora de equipo';
			case 'skill.communicative': return 'Comunicativa';
			case 'skill.problemSolver': return 'Resolutora de problemas';
			case 'skill.leader': return 'Líder';
			case 'skill.nonConflictual': return 'No conflictiva';
			case 'welcome.title': return 'Desarrolladora Flutter';
			case 'welcome.subtitle': return 'Kseniia Nikitina';
			case 'summary.totalExperience.subtitle': return 'experiencia total';
			case 'summary.totalExperience.content': return 'Además de Dart, tengo experiencia con Kotlin, Swift, JavaScript, Python, C#, R y más';
			case 'summary.flutterExperience.subtitle': return 'Experiencia en Flutter';
			case 'summary.flutterExperience.content1': return 'Desarrollo';
			case 'summary.flutterExperience.content2': return 'aplicaciones web y móviles';
			case 'summary.flutterExperience.content3': return 'así como';
			case 'summary.flutterExperience.content4': return 'estructuras backend';
			case 'summary.flutterExperience.content5': return 'Me especializo en sistemas complejos y paquetes personalizados de Flutter';
			case 'summary.highEducation.title': return 'Educación superior';
			case 'summary.highEducation.subtitle': return 'en ingeniería';
			case 'summary.highEducation.content1': return '«Programación en sistemas de información y comunicación» en';
			case 'summary.highEducation.content2': return 'la Universidad ITMO';
			case 'summary.openSource.title': return 'Open-source';
			case 'summary.openSource.subtitle': return 'proyecto activo';
			case 'summary.openSource.content': return 'Un paquete para comunicación P2P';
			case 'summary.openSource.contentButton': return 'Ver paquete';
			case 'summary.googlePlay.title': return 'Google Play';
			case 'summary.googlePlay.subtitle': return 'aplicación activa';
			case 'summary.googlePlay.content': return 'Una aplicación de chat offline con soporte para compartir texto y archivos';
			case 'summary.googlePlay.contentButton': return 'Abrir aplicación';
			case 'summary.english.title': return 'Inglés';
			case 'summary.english.subtitle': return 'nivel de trabajo';
			case 'summary.english.content': return 'I very, very, very speak English';
			case 'summary.title': return 'Resumen';
			case 'summary.subtitle': return 'Muy corto y dulce';
			case 'petProjects.title': return 'Proyectos personales';
			case 'petProjects.subtitle': return '¡Únicos, creativos, míos!';
			case 'petProjects.markdown.imageButton': return 'Ver imagen en GitHub';
			case 'petProjects.error.title': return '¡Ups!';
			case 'petProjects.error.subtitle': return ({required Object id}) => 'No se encontró el proyecto con ID=${id}. Por favor, compruebe el ID e inténtelo de nuevo.';
			case 'year': return ({required num n}) => (_root.$meta.ordinalResolver ?? PluralResolvers.ordinal('es'))(n,
				zero: '${n} años',
				one: '${n} año',
				two: '${n} años',
				few: '${n} años',
				many: '${n} años',
				other: '${n} años',
			);
			case 'androidDemo': return 'Demo de Android';
			case 'iosDemo': return 'Demo de iOS';
			case 'notFound.title': return '404';
			case 'notFound.subtitle': return 'Esta página no existe';
			case 'notFound.button': return 'Ir a la página principal';
			case 'pageTitle': return 'Kseniia | Desarrolladora Flutter';
			case 'mainImageCaption': return 'La imagen fue creada mediante procesamiento gráfico';
			case 'experience.title': return 'Experiencia';
			case 'experience.subtitle': return 'La parte aburrida';
			case 'experience.cv.caption': return 'Leer más sobre mi experiencia en el CV';
			case 'experience.cv.button': return 'Abrir CV';
			case 'experience.greenflux.title': return 'Desarrolladora de Aplicaciones Móviles';
			case 'experience.greenflux.organization': return 'Greenflux Assets B.V.';
			case 'experience.greenflux.location': return 'Ámsterdam, Países Bajos (Híbrido)';
			case 'experience.greenflux.duration': return 'Febrero 2024 – Actualidad';
			case 'experience.greenflux.subtitle': return 'Desarrollo de aplicaciones para estaciones de carga de vehículos eléctricos';
			case 'experience.greenflux.skills.skill1': return 'Dart';
			case 'experience.greenflux.skills.skill2': return 'Flutter';
			case 'experience.greenflux.skills.skill3': return 'Google Play';
			case 'experience.greenflux.skills.skill4': return 'Firebase';
			case 'experience.greenflux.skills.skill5': return 'Git';
			case 'experience.greenflux.skills.skill6': return 'ChatGPT';
			case 'experience.greenflux.skills.skill7': return 'BloC';
			case 'experience.greenflux.skills.skill8': return 'App Store';
			case 'experience.greenflux.skills.skill9': return 'SwiftUI';
			case 'experience.greenflux.skills.skill10': return 'Inglés';
			case 'experience.greenflux.skills.skill11': return 'REST API';
			case 'experience.greenflux.skills.skill12': return 'Figma';
			case 'experience.greenflux.skills.skill13': return 'Programación Orientada a Objetos (OOP)';
			case 'experience.greenflux.achievements.achievement1': return 'Apoyé todo el ciclo de desarrollo: desde la especificación técnica hasta la publicación';
			case 'experience.greenflux.achievements.achievement2': return 'Mantuve un sistema de más de 10 aplicaciones con una base de código compartida';
			case 'experience.greenflux.achievements.achievement3': return 'Configuré linters, formateo e implementé un sistema común de clases para todas las aplicaciones';
			case 'experience.greenflux.achievements.achievement4': return 'Creé pipelines para revisar pull requests, compilar y publicar aplicaciones, así como scripts para simplificar procesos';
			case 'experience.greenflux.achievements.achievement5': return 'Configuré Git Flow y supervisé su cumplimiento';
			case 'experience.greenflux.achievements.achievement6': return 'Trabajé estrechamente con Google Maps, notificaciones y otras funciones complejas';
			case 'experience.greenflux.achievements.achievement7': return 'Implementé completamente iOS Live Activities con SwiftUI y lo extendí a varias aplicaciones';
			case 'experience.greenflux.achievements.achievement8': return 'Cubrí toda la base de código con pruebas';
			case 'experience.friflex.title': return 'Desarrolladora de Aplicaciones Móviles';
			case 'experience.friflex.organization': return 'Friflex';
			case 'experience.friflex.location': return 'Moscú, Rusia';
			case 'experience.friflex.duration': return 'Agosto 2022 – Diciembre 2023';
			case 'experience.friflex.subtitle': return 'Desarrollo de servicios para el reconocimiento de juegos de ajedrez y damas';
			case 'experience.friflex.skills.skill1': return 'Firebase';
			case 'experience.friflex.skills.skill2': return 'Bases de datos';
			case 'experience.friflex.skills.skill3': return 'PostgreSQL';
			case 'experience.friflex.skills.skill4': return 'Figma';
			case 'experience.friflex.skills.skill5': return 'Localización';
			case 'experience.friflex.skills.skill6': return 'ChatGPT';
			case 'experience.friflex.skills.skill7': return 'Dart';
			case 'experience.friflex.skills.skill8': return 'REST API';
			case 'experience.friflex.skills.skill9': return 'Flutter';
			case 'experience.friflex.skills.skill10': return 'Google Play';
			case 'experience.friflex.skills.skill11': return 'Patrones de Diseño';
			case 'experience.friflex.skills.skill12': return 'Git';
			case 'experience.friflex.skills.skill13': return 'BloC';
			case 'experience.friflex.skills.skill14': return 'Programación Orientada a Objetos (OOP)';
			case 'experience.friflex.achievements.achievement1': return 'Apoyé todo el ciclo de desarrollo: desde la especificación técnica hasta la publicación';
			case 'experience.friflex.achievements.achievement2': return 'Creé 3 paquetes personalizados y mantuve más de 10 paquetes, configurando dependencias';
			case 'experience.friflex.achievements.achievement3': return 'Integré con éxito servicios de terceros (MiniO, Firebase)';
			case 'experience.friflex.achievements.achievement4': return 'Desarrollé paneles administrativos web con Flutter Web';
			case 'experience.friflex.achievements.achievement5': return 'Desarrollé el backend utilizando Dart';
			case 'experience.friflex.achievements.achievement6': return 'Creé innumerables componentes de UI y animaciones';
			case 'experience.friflex.achievements.achievement7': return 'Desarrollé un servicio en segundo plano para enviar datos a la nube en partes';
			case 'experience.friflex.achievements.achievement8': return 'Mantuve un sistema de transmisión en vivo compuesto por una aplicación móvil, backend y web';
			case 'experience.agroStab.title': return 'Desarrolladora Full-stack';
			case 'experience.agroStab.organization': return 'AgroSTAB';
			case 'experience.agroStab.location': return 'San Petersburgo, Rusia';
			case 'experience.agroStab.duration': return 'Febrero 2022 – Julio 2022';
			case 'experience.agroStab.subtitle': return 'Desarrollo de paneles de administración para invernaderos inteligentes';
			case 'experience.agroStab.skills.skill1': return 'Mqtt';
			case 'experience.agroStab.skills.skill2': return 'Cron';
			case 'experience.agroStab.skills.skill3': return 'PostgreSQL';
			case 'experience.agroStab.skills.skill4': return 'Linux';
			case 'experience.agroStab.skills.skill5': return 'Inglés';
			case 'experience.agroStab.skills.skill6': return 'Git';
			case 'experience.agroStab.skills.skill7': return 'ReactJS';
			case 'experience.agroStab.skills.skill8': return 'GitLab';
			case 'experience.agroStab.achievements.achievement1': return 'Apoyé todo el ciclo de desarrollo: desde la especificación técnica hasta la publicación';
			case 'experience.agroStab.achievements.achievement2': return 'Desarrollé la interfaz de usuario con React.js';
			case 'experience.agroStab.achievements.achievement3': return 'Integré procesamiento de datos utilizando react-redux';
			case 'experience.agroStab.achievements.achievement4': return 'Diseñé la estructura de los componentes, su disposición y conexiones';
			case 'experience.agroStab.achievements.achievement5': return 'Añadí elementos interactivos para mejorar la experiencia de usuario';
			case 'experience.agroStab.achievements.achievement6': return 'Mejoré la estructura del backend escrito en Nest.js y agregué lógica de procesamiento de datos';
			case 'experience.agroStab.achievements.achievement7': return 'Diseñé la arquitectura de la base de datos PostgreSQL e implementé actualizaciones';
			case 'experience.agroStab.achievements.achievement8': return 'Desarrollé algoritmos para actualizaciones programadas de datos usando Cron';
			default: return null;
		}
	}
}

