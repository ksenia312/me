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
class LocaleKeysPt extends LocaleKeys {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	LocaleKeysPt({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.pt,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <pt>.
	@override final TranslationMetadata<AppLocale, LocaleKeys> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final LocaleKeysPt _root = this; // ignore: unused_field

	// Translations
	@override late final _LocaleKeysTabPt tab = _LocaleKeysTabPt._(_root);
	@override late final _LocaleKeysSkillPt skill = _LocaleKeysSkillPt._(_root);
	@override late final _LocaleKeysWelcomePt welcome = _LocaleKeysWelcomePt._(_root);
	@override late final _LocaleKeysSummaryPt summary = _LocaleKeysSummaryPt._(_root);
	@override late final _LocaleKeysPetProjectsPt petProjects = _LocaleKeysPetProjectsPt._(_root);
	@override String year({required num n}) => (_root.$meta.ordinalResolver ?? PluralResolvers.ordinal('pt'))(n,
		zero: '${n} anos',
		one: '${n} ano',
		two: '${n} anos',
		few: '${n} anos',
		many: '${n} anos',
		other: '${n} anos',
	);
	@override String get androidDemo => 'Demo Android';
	@override String get iosDemo => 'Demo iOS';
	@override late final _LocaleKeysNotFoundPt notFound = _LocaleKeysNotFoundPt._(_root);
	@override String get pageTitle => 'Kseniia | Desenvolvedora Flutter';
	@override String get mainImageCaption => 'A imagem foi criada usando processamento gráfico';
	@override late final _LocaleKeysExperiencePt experience = _LocaleKeysExperiencePt._(_root);
}

// Path: tab
class _LocaleKeysTabPt extends LocaleKeysTabEn {
	_LocaleKeysTabPt._(LocaleKeysPt root) : this._root = root, super.internal(root);

	final LocaleKeysPt _root; // ignore: unused_field

	// Translations
	@override String get home => 'Início';
	@override String get summary => 'Resumo';
	@override String get projects => 'Projetos';
	@override String get experience => 'Experiência';
	@override String get language => 'Idioma';
}

// Path: skill
class _LocaleKeysSkillPt extends LocaleKeysSkillEn {
	_LocaleKeysSkillPt._(LocaleKeysPt root) : this._root = root, super.internal(root);

	final LocaleKeysPt _root; // ignore: unused_field

	// Translations
	@override String get teamPlayer => 'Jogadora de equipe';
	@override String get communicative => 'Comunicativa';
	@override String get problemSolver => 'Resolutora de problemas';
	@override String get leader => 'Líder';
	@override String get nonConflictual => 'Sem conflito';
}

// Path: welcome
class _LocaleKeysWelcomePt extends LocaleKeysWelcomeEn {
	_LocaleKeysWelcomePt._(LocaleKeysPt root) : this._root = root, super.internal(root);

	final LocaleKeysPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Desenvolvedora Flutter';
	@override String get subtitle => 'Kseniia Nikitina';
}

// Path: summary
class _LocaleKeysSummaryPt extends LocaleKeysSummaryEn {
	_LocaleKeysSummaryPt._(LocaleKeysPt root) : this._root = root, super.internal(root);

	final LocaleKeysPt _root; // ignore: unused_field

	// Translations
	@override late final _LocaleKeysSummaryTotalExperiencePt totalExperience = _LocaleKeysSummaryTotalExperiencePt._(_root);
	@override late final _LocaleKeysSummaryFlutterExperiencePt flutterExperience = _LocaleKeysSummaryFlutterExperiencePt._(_root);
	@override late final _LocaleKeysSummaryHighEducationPt highEducation = _LocaleKeysSummaryHighEducationPt._(_root);
	@override late final _LocaleKeysSummaryOpenSourcePt openSource = _LocaleKeysSummaryOpenSourcePt._(_root);
	@override late final _LocaleKeysSummaryGooglePlayPt googlePlay = _LocaleKeysSummaryGooglePlayPt._(_root);
	@override late final _LocaleKeysSummaryEnglishPt english = _LocaleKeysSummaryEnglishPt._(_root);
	@override String get title => 'Resumo';
	@override String get subtitle => 'Muito curto e doce';
}

// Path: petProjects
class _LocaleKeysPetProjectsPt extends LocaleKeysPetProjectsEn {
	_LocaleKeysPetProjectsPt._(LocaleKeysPt root) : this._root = root, super.internal(root);

	final LocaleKeysPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Pet projetos';
	@override String get subtitle => 'Únicos, criativos, meus!';
	@override late final _LocaleKeysPetProjectsMarkdownPt markdown = _LocaleKeysPetProjectsMarkdownPt._(_root);
	@override late final _LocaleKeysPetProjectsErrorPt error = _LocaleKeysPetProjectsErrorPt._(_root);
}

// Path: notFound
class _LocaleKeysNotFoundPt extends LocaleKeysNotFoundEn {
	_LocaleKeysNotFoundPt._(LocaleKeysPt root) : this._root = root, super.internal(root);

	final LocaleKeysPt _root; // ignore: unused_field

	// Translations
	@override String get title => '404';
	@override String get subtitle => 'Esta página não existe';
	@override String get button => 'Ir para a página inicial';
}

// Path: experience
class _LocaleKeysExperiencePt extends LocaleKeysExperienceEn {
	_LocaleKeysExperiencePt._(LocaleKeysPt root) : this._root = root, super.internal(root);

	final LocaleKeysPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Experiência';
	@override String get subtitle => 'A parte chata';
	@override late final _LocaleKeysExperienceCvPt cv = _LocaleKeysExperienceCvPt._(_root);
	@override late final _LocaleKeysExperienceGreenfluxPt greenflux = _LocaleKeysExperienceGreenfluxPt._(_root);
	@override late final _LocaleKeysExperienceFriflexPt friflex = _LocaleKeysExperienceFriflexPt._(_root);
	@override late final _LocaleKeysExperienceAgroStabPt agroStab = _LocaleKeysExperienceAgroStabPt._(_root);
}

// Path: summary.totalExperience
class _LocaleKeysSummaryTotalExperiencePt extends LocaleKeysSummaryTotalExperienceEn {
	_LocaleKeysSummaryTotalExperiencePt._(LocaleKeysPt root) : this._root = root, super.internal(root);

	final LocaleKeysPt _root; // ignore: unused_field

	// Translations
	@override String get subtitle => 'experiência total';
	@override String get content => 'Além de Dart, tenho experiência com Kotlin, Swift, JavaScript, Python, C#, R e mais';
}

// Path: summary.flutterExperience
class _LocaleKeysSummaryFlutterExperiencePt extends LocaleKeysSummaryFlutterExperienceEn {
	_LocaleKeysSummaryFlutterExperiencePt._(LocaleKeysPt root) : this._root = root, super.internal(root);

	final LocaleKeysPt _root; // ignore: unused_field

	// Translations
	@override String get subtitle => 'Experiência em Flutter';
	@override String get content1 => 'Eu desenvolvo';
	@override String get content2 => 'aplicações web e móveis';
	@override String get content3 => 'bem como';
	@override String get content4 => 'estruturas de backend';
	@override String get content5 => 'Especializo-me em sistemas complexos e pacotes personalizados para Flutter';
}

// Path: summary.highEducation
class _LocaleKeysSummaryHighEducationPt extends LocaleKeysSummaryHighEducationEn {
	_LocaleKeysSummaryHighEducationPt._(LocaleKeysPt root) : this._root = root, super.internal(root);

	final LocaleKeysPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Educação superior';
	@override String get subtitle => 'em engenharia';
	@override String get content1 => '«Programação em sistemas de informação e comunicação» na';
	@override String get content2 => 'Universidade ITMO';
}

// Path: summary.openSource
class _LocaleKeysSummaryOpenSourcePt extends LocaleKeysSummaryOpenSourceEn {
	_LocaleKeysSummaryOpenSourcePt._(LocaleKeysPt root) : this._root = root, super.internal(root);

	final LocaleKeysPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Open-source';
	@override String get subtitle => 'projeto ativo';
	@override String get content => 'Um pacote para comunicação P2P';
	@override String get contentButton => 'Ver pacote';
}

// Path: summary.googlePlay
class _LocaleKeysSummaryGooglePlayPt extends LocaleKeysSummaryGooglePlayEn {
	_LocaleKeysSummaryGooglePlayPt._(LocaleKeysPt root) : this._root = root, super.internal(root);

	final LocaleKeysPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Google Play';
	@override String get subtitle => 'aplicativo ativo';
	@override String get content => 'Um aplicativo de chat offline com suporte para compartilhamento de texto e arquivos';
	@override String get contentButton => 'Abrir aplicativo';
}

// Path: summary.english
class _LocaleKeysSummaryEnglishPt extends LocaleKeysSummaryEnglishEn {
	_LocaleKeysSummaryEnglishPt._(LocaleKeysPt root) : this._root = root, super.internal(root);

	final LocaleKeysPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Inglês';
	@override String get subtitle => 'proficiência no trabalho';
	@override String get content => 'I very, very, very speak English';
}

// Path: petProjects.markdown
class _LocaleKeysPetProjectsMarkdownPt extends LocaleKeysPetProjectsMarkdownEn {
	_LocaleKeysPetProjectsMarkdownPt._(LocaleKeysPt root) : this._root = root, super.internal(root);

	final LocaleKeysPt _root; // ignore: unused_field

	// Translations
	@override String get imageButton => 'Ver imagem no GitHub';
}

// Path: petProjects.error
class _LocaleKeysPetProjectsErrorPt extends LocaleKeysPetProjectsErrorEn {
	_LocaleKeysPetProjectsErrorPt._(LocaleKeysPt root) : this._root = root, super.internal(root);

	final LocaleKeysPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Opa!';
	@override String subtitle({required Object id}) => 'Projeto com ID=${id} não encontrado. Por favor, verifique o ID e tente novamente.';
}

// Path: experience.cv
class _LocaleKeysExperienceCvPt extends LocaleKeysExperienceCvEn {
	_LocaleKeysExperienceCvPt._(LocaleKeysPt root) : this._root = root, super.internal(root);

	final LocaleKeysPt _root; // ignore: unused_field

	// Translations
	@override String get caption => 'Leia mais sobre minha experiência no CV';
	@override String get button => 'CV aberto';
}

// Path: experience.greenflux
class _LocaleKeysExperienceGreenfluxPt extends LocaleKeysExperienceGreenfluxEn {
	_LocaleKeysExperienceGreenfluxPt._(LocaleKeysPt root) : this._root = root, super.internal(root);

	final LocaleKeysPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Desenvolvedora de Aplicativos Móveis';
	@override String get organization => 'Greenflux Assets B.V.';
	@override String get location => 'Amsterdã, Países Baixos (Híbrido)';
	@override String get duration => 'Fevereiro de 2024 – Presente';
	@override String get subtitle => 'Desenvolvimento de aplicativos para estações de recarga de veículos elétricos';
	@override late final _LocaleKeysExperienceGreenfluxSkillsPt skills = _LocaleKeysExperienceGreenfluxSkillsPt._(_root);
	@override late final _LocaleKeysExperienceGreenfluxAchievementsPt achievements = _LocaleKeysExperienceGreenfluxAchievementsPt._(_root);
}

// Path: experience.friflex
class _LocaleKeysExperienceFriflexPt extends LocaleKeysExperienceFriflexEn {
	_LocaleKeysExperienceFriflexPt._(LocaleKeysPt root) : this._root = root, super.internal(root);

	final LocaleKeysPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Desenvolvedora de Aplicativos Móveis';
	@override String get organization => 'Friflex';
	@override String get location => 'Moscou, Rússia';
	@override String get duration => 'Agosto de 2022 – Dezembro de 2023';
	@override String get subtitle => 'Desenvolvimento de serviços para reconhecimento de jogos de xadrez e damas';
	@override late final _LocaleKeysExperienceFriflexSkillsPt skills = _LocaleKeysExperienceFriflexSkillsPt._(_root);
	@override late final _LocaleKeysExperienceFriflexAchievementsPt achievements = _LocaleKeysExperienceFriflexAchievementsPt._(_root);
}

// Path: experience.agroStab
class _LocaleKeysExperienceAgroStabPt extends LocaleKeysExperienceAgroStabEn {
	_LocaleKeysExperienceAgroStabPt._(LocaleKeysPt root) : this._root = root, super.internal(root);

	final LocaleKeysPt _root; // ignore: unused_field

	// Translations
	@override String get title => 'Desenvolvedora Full-stack';
	@override String get organization => 'AgroSTAB';
	@override String get location => 'São Petersburgo, Rússia';
	@override String get duration => 'Fevereiro de 2022 – Julho de 2022';
	@override String get subtitle => 'Desenvolvimento de painel administrativo para estufas inteligentes';
	@override late final _LocaleKeysExperienceAgroStabSkillsPt skills = _LocaleKeysExperienceAgroStabSkillsPt._(_root);
	@override late final _LocaleKeysExperienceAgroStabAchievementsPt achievements = _LocaleKeysExperienceAgroStabAchievementsPt._(_root);
}

// Path: experience.greenflux.skills
class _LocaleKeysExperienceGreenfluxSkillsPt extends LocaleKeysExperienceGreenfluxSkillsEn {
	_LocaleKeysExperienceGreenfluxSkillsPt._(LocaleKeysPt root) : this._root = root, super.internal(root);

	final LocaleKeysPt _root; // ignore: unused_field

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
	@override String get skill10 => 'Inglês';
	@override String get skill11 => 'REST API';
	@override String get skill12 => 'Figma';
	@override String get skill13 => 'Programação Orientada a Objetos (OOP)';
}

// Path: experience.greenflux.achievements
class _LocaleKeysExperienceGreenfluxAchievementsPt extends LocaleKeysExperienceGreenfluxAchievementsEn {
	_LocaleKeysExperienceGreenfluxAchievementsPt._(LocaleKeysPt root) : this._root = root, super.internal(root);

	final LocaleKeysPt _root; // ignore: unused_field

	// Translations
	@override String get achievement1 => 'Apoiei todo o ciclo de desenvolvimento: da especificação técnica à publicação';
	@override String get achievement2 => 'Mantive um sistema com mais de 10 aplicativos compartilhando a base de código';
	@override String get achievement3 => 'Configurei linters, formatação e implementei um sistema de classes comum para todos os aplicativos';
	@override String get achievement4 => 'Criei pipelines para revisar pull requests, compilar e publicar aplicativos, além de scripts para simplificar processos';
	@override String get achievement5 => 'Configurei o Git Flow e monitorei sua conformidade';
	@override String get achievement6 => 'Trabalhei de perto com Google Maps, notificações e outras funcionalidades complexas';
	@override String get achievement7 => 'Implementei completamente o Live Activities do iOS utilizando SwiftUI e estendi para diversos aplicativos';
	@override String get achievement8 => 'Cobri toda a base de código com testes';
}

// Path: experience.friflex.skills
class _LocaleKeysExperienceFriflexSkillsPt extends LocaleKeysExperienceFriflexSkillsEn {
	_LocaleKeysExperienceFriflexSkillsPt._(LocaleKeysPt root) : this._root = root, super.internal(root);

	final LocaleKeysPt _root; // ignore: unused_field

	// Translations
	@override String get skill1 => 'Firebase';
	@override String get skill2 => 'Bancos de Dados';
	@override String get skill3 => 'PostgreSQL';
	@override String get skill4 => 'Figma';
	@override String get skill5 => 'Localização';
	@override String get skill6 => 'ChatGPT';
	@override String get skill7 => 'Dart';
	@override String get skill8 => 'REST API';
	@override String get skill9 => 'Flutter';
	@override String get skill10 => 'Google Play';
	@override String get skill11 => 'Padrões de Design';
	@override String get skill12 => 'Git';
	@override String get skill13 => 'BloC';
	@override String get skill14 => 'Programação Orientada a Objetos (OOP)';
}

// Path: experience.friflex.achievements
class _LocaleKeysExperienceFriflexAchievementsPt extends LocaleKeysExperienceFriflexAchievementsEn {
	_LocaleKeysExperienceFriflexAchievementsPt._(LocaleKeysPt root) : this._root = root, super.internal(root);

	final LocaleKeysPt _root; // ignore: unused_field

	// Translations
	@override String get achievement1 => 'Apoiei todo o ciclo de desenvolvimento: da especificação técnica à publicação';
	@override String get achievement2 => 'Criei 3 pacotes personalizados e mantive mais de 10 pacotes, além de configurar dependências';
	@override String get achievement3 => 'Integrei com sucesso serviços de terceiros (MiniO, Firebase)';
	@override String get achievement4 => 'Desenvolvi dashboards administrativos com Flutter Web';
	@override String get achievement5 => 'Desenvolvi o backend utilizando Dart';
	@override String get achievement6 => 'Criei diversos componentes de UI e animações';
	@override String get achievement7 => 'Desenvolvi um serviço de fundo para enviar dados para o armazenamento em nuvem em pedaços';
	@override String get achievement8 => 'Mantive o sistema de streaming ao vivo composto pelo aplicativo móvel, backend e parte web';
}

// Path: experience.agroStab.skills
class _LocaleKeysExperienceAgroStabSkillsPt extends LocaleKeysExperienceAgroStabSkillsEn {
	_LocaleKeysExperienceAgroStabSkillsPt._(LocaleKeysPt root) : this._root = root, super.internal(root);

	final LocaleKeysPt _root; // ignore: unused_field

	// Translations
	@override String get skill1 => 'Mqtt';
	@override String get skill2 => 'Cron';
	@override String get skill3 => 'PostgreSQL';
	@override String get skill4 => 'Linux';
	@override String get skill5 => 'Inglês';
	@override String get skill6 => 'Git';
	@override String get skill7 => 'ReactJS';
	@override String get skill8 => 'GitLab';
}

// Path: experience.agroStab.achievements
class _LocaleKeysExperienceAgroStabAchievementsPt extends LocaleKeysExperienceAgroStabAchievementsEn {
	_LocaleKeysExperienceAgroStabAchievementsPt._(LocaleKeysPt root) : this._root = root, super.internal(root);

	final LocaleKeysPt _root; // ignore: unused_field

	// Translations
	@override String get achievement1 => 'Apoiei todo o ciclo de desenvolvimento: da especificação técnica à publicação';
	@override String get achievement2 => 'Desenvolvi a interface do usuário utilizando React.js';
	@override String get achievement3 => 'Integrei o processamento de dados utilizando react-redux';
	@override String get achievement4 => 'Projetei a estrutura dos componentes, seu posicionamento e conexões';
	@override String get achievement5 => 'Adicionei elementos interativos para melhorar a experiência do usuário';
	@override String get achievement6 => 'Melhorei a estrutura do backend escrito em Nest.js e adicionei lógica de processamento de dados';
	@override String get achievement7 => 'Projetei a arquitetura do banco de dados PostgreSQL e implementei atualizações';
	@override String get achievement8 => 'Desenvolvi algoritmos para atualizações agendadas dos dados no banco de dados utilizando Cron';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on LocaleKeysPt {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'tab.home': return 'Início';
			case 'tab.summary': return 'Resumo';
			case 'tab.projects': return 'Projetos';
			case 'tab.experience': return 'Experiência';
			case 'tab.language': return 'Idioma';
			case 'skill.teamPlayer': return 'Jogadora de equipe';
			case 'skill.communicative': return 'Comunicativa';
			case 'skill.problemSolver': return 'Resolutora de problemas';
			case 'skill.leader': return 'Líder';
			case 'skill.nonConflictual': return 'Sem conflito';
			case 'welcome.title': return 'Desenvolvedora Flutter';
			case 'welcome.subtitle': return 'Kseniia Nikitina';
			case 'summary.totalExperience.subtitle': return 'experiência total';
			case 'summary.totalExperience.content': return 'Além de Dart, tenho experiência com Kotlin, Swift, JavaScript, Python, C#, R e mais';
			case 'summary.flutterExperience.subtitle': return 'Experiência em Flutter';
			case 'summary.flutterExperience.content1': return 'Eu desenvolvo';
			case 'summary.flutterExperience.content2': return 'aplicações web e móveis';
			case 'summary.flutterExperience.content3': return 'bem como';
			case 'summary.flutterExperience.content4': return 'estruturas de backend';
			case 'summary.flutterExperience.content5': return 'Especializo-me em sistemas complexos e pacotes personalizados para Flutter';
			case 'summary.highEducation.title': return 'Educação superior';
			case 'summary.highEducation.subtitle': return 'em engenharia';
			case 'summary.highEducation.content1': return '«Programação em sistemas de informação e comunicação» na';
			case 'summary.highEducation.content2': return 'Universidade ITMO';
			case 'summary.openSource.title': return 'Open-source';
			case 'summary.openSource.subtitle': return 'projeto ativo';
			case 'summary.openSource.content': return 'Um pacote para comunicação P2P';
			case 'summary.openSource.contentButton': return 'Ver pacote';
			case 'summary.googlePlay.title': return 'Google Play';
			case 'summary.googlePlay.subtitle': return 'aplicativo ativo';
			case 'summary.googlePlay.content': return 'Um aplicativo de chat offline com suporte para compartilhamento de texto e arquivos';
			case 'summary.googlePlay.contentButton': return 'Abrir aplicativo';
			case 'summary.english.title': return 'Inglês';
			case 'summary.english.subtitle': return 'proficiência no trabalho';
			case 'summary.english.content': return 'I very, very, very speak English';
			case 'summary.title': return 'Resumo';
			case 'summary.subtitle': return 'Muito curto e doce';
			case 'petProjects.title': return 'Pet projetos';
			case 'petProjects.subtitle': return 'Únicos, criativos, meus!';
			case 'petProjects.markdown.imageButton': return 'Ver imagem no GitHub';
			case 'petProjects.error.title': return 'Opa!';
			case 'petProjects.error.subtitle': return ({required Object id}) => 'Projeto com ID=${id} não encontrado. Por favor, verifique o ID e tente novamente.';
			case 'year': return ({required num n}) => (_root.$meta.ordinalResolver ?? PluralResolvers.ordinal('pt'))(n,
				zero: '${n} anos',
				one: '${n} ano',
				two: '${n} anos',
				few: '${n} anos',
				many: '${n} anos',
				other: '${n} anos',
			);
			case 'androidDemo': return 'Demo Android';
			case 'iosDemo': return 'Demo iOS';
			case 'notFound.title': return '404';
			case 'notFound.subtitle': return 'Esta página não existe';
			case 'notFound.button': return 'Ir para a página inicial';
			case 'pageTitle': return 'Kseniia | Desenvolvedora Flutter';
			case 'mainImageCaption': return 'A imagem foi criada usando processamento gráfico';
			case 'experience.title': return 'Experiência';
			case 'experience.subtitle': return 'A parte chata';
			case 'experience.cv.caption': return 'Leia mais sobre minha experiência no CV';
			case 'experience.cv.button': return 'CV aberto';
			case 'experience.greenflux.title': return 'Desenvolvedora de Aplicativos Móveis';
			case 'experience.greenflux.organization': return 'Greenflux Assets B.V.';
			case 'experience.greenflux.location': return 'Amsterdã, Países Baixos (Híbrido)';
			case 'experience.greenflux.duration': return 'Fevereiro de 2024 – Presente';
			case 'experience.greenflux.subtitle': return 'Desenvolvimento de aplicativos para estações de recarga de veículos elétricos';
			case 'experience.greenflux.skills.skill1': return 'Dart';
			case 'experience.greenflux.skills.skill2': return 'Flutter';
			case 'experience.greenflux.skills.skill3': return 'Google Play';
			case 'experience.greenflux.skills.skill4': return 'Firebase';
			case 'experience.greenflux.skills.skill5': return 'Git';
			case 'experience.greenflux.skills.skill6': return 'ChatGPT';
			case 'experience.greenflux.skills.skill7': return 'BloC';
			case 'experience.greenflux.skills.skill8': return 'App Store';
			case 'experience.greenflux.skills.skill9': return 'SwiftUI';
			case 'experience.greenflux.skills.skill10': return 'Inglês';
			case 'experience.greenflux.skills.skill11': return 'REST API';
			case 'experience.greenflux.skills.skill12': return 'Figma';
			case 'experience.greenflux.skills.skill13': return 'Programação Orientada a Objetos (OOP)';
			case 'experience.greenflux.achievements.achievement1': return 'Apoiei todo o ciclo de desenvolvimento: da especificação técnica à publicação';
			case 'experience.greenflux.achievements.achievement2': return 'Mantive um sistema com mais de 10 aplicativos compartilhando a base de código';
			case 'experience.greenflux.achievements.achievement3': return 'Configurei linters, formatação e implementei um sistema de classes comum para todos os aplicativos';
			case 'experience.greenflux.achievements.achievement4': return 'Criei pipelines para revisar pull requests, compilar e publicar aplicativos, além de scripts para simplificar processos';
			case 'experience.greenflux.achievements.achievement5': return 'Configurei o Git Flow e monitorei sua conformidade';
			case 'experience.greenflux.achievements.achievement6': return 'Trabalhei de perto com Google Maps, notificações e outras funcionalidades complexas';
			case 'experience.greenflux.achievements.achievement7': return 'Implementei completamente o Live Activities do iOS utilizando SwiftUI e estendi para diversos aplicativos';
			case 'experience.greenflux.achievements.achievement8': return 'Cobri toda a base de código com testes';
			case 'experience.friflex.title': return 'Desenvolvedora de Aplicativos Móveis';
			case 'experience.friflex.organization': return 'Friflex';
			case 'experience.friflex.location': return 'Moscou, Rússia';
			case 'experience.friflex.duration': return 'Agosto de 2022 – Dezembro de 2023';
			case 'experience.friflex.subtitle': return 'Desenvolvimento de serviços para reconhecimento de jogos de xadrez e damas';
			case 'experience.friflex.skills.skill1': return 'Firebase';
			case 'experience.friflex.skills.skill2': return 'Bancos de Dados';
			case 'experience.friflex.skills.skill3': return 'PostgreSQL';
			case 'experience.friflex.skills.skill4': return 'Figma';
			case 'experience.friflex.skills.skill5': return 'Localização';
			case 'experience.friflex.skills.skill6': return 'ChatGPT';
			case 'experience.friflex.skills.skill7': return 'Dart';
			case 'experience.friflex.skills.skill8': return 'REST API';
			case 'experience.friflex.skills.skill9': return 'Flutter';
			case 'experience.friflex.skills.skill10': return 'Google Play';
			case 'experience.friflex.skills.skill11': return 'Padrões de Design';
			case 'experience.friflex.skills.skill12': return 'Git';
			case 'experience.friflex.skills.skill13': return 'BloC';
			case 'experience.friflex.skills.skill14': return 'Programação Orientada a Objetos (OOP)';
			case 'experience.friflex.achievements.achievement1': return 'Apoiei todo o ciclo de desenvolvimento: da especificação técnica à publicação';
			case 'experience.friflex.achievements.achievement2': return 'Criei 3 pacotes personalizados e mantive mais de 10 pacotes, além de configurar dependências';
			case 'experience.friflex.achievements.achievement3': return 'Integrei com sucesso serviços de terceiros (MiniO, Firebase)';
			case 'experience.friflex.achievements.achievement4': return 'Desenvolvi dashboards administrativos com Flutter Web';
			case 'experience.friflex.achievements.achievement5': return 'Desenvolvi o backend utilizando Dart';
			case 'experience.friflex.achievements.achievement6': return 'Criei diversos componentes de UI e animações';
			case 'experience.friflex.achievements.achievement7': return 'Desenvolvi um serviço de fundo para enviar dados para o armazenamento em nuvem em pedaços';
			case 'experience.friflex.achievements.achievement8': return 'Mantive o sistema de streaming ao vivo composto pelo aplicativo móvel, backend e parte web';
			case 'experience.agroStab.title': return 'Desenvolvedora Full-stack';
			case 'experience.agroStab.organization': return 'AgroSTAB';
			case 'experience.agroStab.location': return 'São Petersburgo, Rússia';
			case 'experience.agroStab.duration': return 'Fevereiro de 2022 – Julho de 2022';
			case 'experience.agroStab.subtitle': return 'Desenvolvimento de painel administrativo para estufas inteligentes';
			case 'experience.agroStab.skills.skill1': return 'Mqtt';
			case 'experience.agroStab.skills.skill2': return 'Cron';
			case 'experience.agroStab.skills.skill3': return 'PostgreSQL';
			case 'experience.agroStab.skills.skill4': return 'Linux';
			case 'experience.agroStab.skills.skill5': return 'Inglês';
			case 'experience.agroStab.skills.skill6': return 'Git';
			case 'experience.agroStab.skills.skill7': return 'ReactJS';
			case 'experience.agroStab.skills.skill8': return 'GitLab';
			case 'experience.agroStab.achievements.achievement1': return 'Apoiei todo o ciclo de desenvolvimento: da especificação técnica à publicação';
			case 'experience.agroStab.achievements.achievement2': return 'Desenvolvi a interface do usuário utilizando React.js';
			case 'experience.agroStab.achievements.achievement3': return 'Integrei o processamento de dados utilizando react-redux';
			case 'experience.agroStab.achievements.achievement4': return 'Projetei a estrutura dos componentes, seu posicionamento e conexões';
			case 'experience.agroStab.achievements.achievement5': return 'Adicionei elementos interativos para melhorar a experiência do usuário';
			case 'experience.agroStab.achievements.achievement6': return 'Melhorei a estrutura do backend escrito em Nest.js e adicionei lógica de processamento de dados';
			case 'experience.agroStab.achievements.achievement7': return 'Projetei a arquitetura do banco de dados PostgreSQL e implementei atualizações';
			case 'experience.agroStab.achievements.achievement8': return 'Desenvolvi algoritmos para atualizações agendadas dos dados no banco de dados utilizando Cron';
			default: return null;
		}
	}
}

