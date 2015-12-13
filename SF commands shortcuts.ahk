; Symfony — console commands shortcuts
; ------------------------------------

; The script includes commands from the following bundles: FOS User, Doctrine Fixtures.


#Hotstring EndChars `t ; allowed ending characters to expand the abbreviations


; processes names to identify which windows to operate on
GroupAdd, consoles, ahk_exe cmd.exe
GroupAdd, consoles, ahk_exe Console.exe
GroupAdd, consoles, ahk_exe ConEmu.exe
GroupAdd, consoles, ahk_exe ConEmu64.exe
GroupAdd, consoles, ahk_exe ColorConsole.exe
GroupAdd, consoles, ahk_exe ColorConsole_Portable.exe

#IfWinActive ahk_group consoles
{

; lists available commands
:*:__::php app/console{enter}

; assetic
:*:_assetic::REM :dump | :watch{Enter}php app/console assetic:
	:o:_ad::php app/console assetic:dump{Space}
	:o:_aw::php app/console assetic:watch{Space}

; assets
:*:_assets::REM :install{Enter}php app/console assets:
	:o:_ai::php app/console assets:install{Space}

; cache
:*:_cache::REM :clear | :warmup{Enter}php app/console cache:
	:o:_cc::php app/console cache:clear{Space}
	:o:_cw::php app/console cache:warmup{Space}

; config
:*:_config::REM :debug | :dump-reference{Enter}php app/console config:
	:o:_cd::php app/console config:debug{Space}
	:o:_cdr::php app/console config:dump-reference{Space}

; debug
:*:_debug::REM :config | :container | :event-dispatcher | :router | :swiftmailer | :translation | :twig{Enter}php app/console debug:
	:o:_dc::REM [c]onfig | [c]ontainer{Enter}php app/console debug:c
	:o:_ded::php app/console debug:event-dispatcher{Space}
	:o:_dr::php app/console debug:router{Space}
	:o:_ds::php app/console debug:swiftmailer{Space}
	:o:_dt::REM [t]ranslation | [t]wig{Enter}php app/console debug:t

; doctrine
:*:_doctrine::REM :cache:* | :database:* | :ensure-production-settings | :fixtures:* | :generate:* | :mapping:* | :query:* | :schema:*{Enter}php app/console doctrine:
	:o:_deps::php app/console doctrine:ensure-production-settings{Space}
	:*:_d:cache::REM :clear-collection-region | :clear-entity-region | :clear-metadata | :clear-query | :clear-query-region | :cache:clear-result{Enter}php app/console doctrine:cache:
		:o:_dccc::php app/console doctrine:cache:clear-collection-region{Space}
		:o:_dcce::php app/console doctrine:cache:clear-entity-region{Space}
		:o:_dccm::php app/console doctrine:cache:clear-metadata{Space}
		:o:_dccq::php app/console doctrine:cache:clear-query{Space}
		:o:_dccqr::php app/console doctrine:cache:clear-query-region{Space}
		:o:_dccr::php app/console doctrine:cache:clear-result{Space}
	:*:_d:database::REM :create | :drop{Enter}php app/console doctrine:database:
		:o:_ddc::php app/console doctrine:database:create{Space}
		:o:_ddd::php app/console doctrine:database:drop{Space}
	:*:_d:fixtures::REM :load{Enter}php app/console doctrine:fixtures:
		:o:_dfl::php app/console doctrine:fixtures:load{Space}
	:*:_d:generate::REM :crud | :entities | :entity | :form{Enter}php app/console doctrine:generate:
		:o:_dgc::php app/console doctrine:generate:crud{Space}
		:o:_dge::REM [e]ntities | [e]ntity{Enter}php app/console doctrine:generate:e
		:o:_dgf::php app/console doctrine:generate:form{Space}
	:*:_d:mapping::REM :convert | :import | :info{Enter}php app/console doctrine:mapping:
		:o:_dmc::php app/console doctrine:mapping:convert{Space}
		:o:_dmi::REM [i]mport | [i]nfo{Enter}php app/console doctrine:mapping:i
	:*:_d:query::REM :dql | :sql{Enter}php app/console doctrine:query:
		:o:_dqd::php app/console doctrine:query:dql{Space}
		:o:_dqs::php app/console doctrine:query:sql{Space}
	:*:_d:schema::REM :create | :drop | :update | :validate{Enter}php app/console doctrine:schema:
		:o:_dsc::php app/console doctrine:schema:create{Space}
		:o:_dsd::php app/console doctrine:schema:drop{Space}
		:o:_dsu::php app/console doctrine:schema:update{Space}
		:o:_dsv::php app/console doctrine:schema:validate{Space}

; fos
:*:_fos::REM :user:*{Enter}php app/console fos:
	:*:_f:user::REM :activate | :change | :create | :deactivate | :demote | :promote{Enter}php app/console fos:user
		:o:_fua::php app/console fos:user:activate{Space}
		:o:_fucp::php app/console fos:user:change-password{Space}
		:o:_fuc::php app/console fos:user:create{Space}
		:o:_fud::REM :[d]eactivate | :[d]demote{Enter}php app/console fos:user:d
		:o:_fup::php app/console fos:user:promote{Space}

; generate
 :*:_generate::REM :bundle | :controller | :doctrine:*{Enter}php app/console generate:
	 :o:_gb::php app/console generate:bundle{Space}
	 :o:_gc::php app/console generate:controller{Space}
	 :*:_g:doctrine::REM :crud | :entities | :entity | :form{Enter}php app/console generate:doctrine:
		 :o:_gdc::php app/console generate:doctrine:crud{Space}
		 :o:_gde::REM [e]ntities | [e]ntity{Enter}php app/console generate:doctrine:e
		 :o:_gdf::php app/console generate:doctrine:form{Space}

; init
:*:_init::REM :acl{Enter}php app/console init:
	:o:_ia::php app/console init:acl{Space}

; lint
:*:_lint::REM :twig | :yaml{Enter}php app/console lint:
	:o:_lt::php app/console lint:twig{Space}
	:o:_ly::php app/console lint:yaml{Space}

; orm
:*:_orm::REM :convert:*{Enter}php app/console orm:
	:*:_o:convert::REM :mapping{Enter}php app/console orm:convert:
		:o:_ocm::php app/console orm:convert:mapping{Space}

; router
:*:_router::REM :debug | :dump-apache | :match{Enter}php app/console router:
	:o:_rd::php app/console router:debug{Space}
	:o:_rda::php app/console router:dump-apache{Space}
	:o:_rm::php app/console router:match{Space}

; security
:*:_security::REM :check | :encode-password{Enter}php app/console security:
	:o:_sc::php app/console security:check{Space}
	:o:_sep::php app/console security:encode-password{Space}

; server
:*:_server::REM :run | :start | :status | :stop{Enter}php app/console server:
	:o:_sr::php app/console server:run{Space}
	:o:_ss::REM [s]tart | [s]tatus | [s]top{Enter}php app/console server:s

; swiftmailer
:*:_swiftmailer::REM :debug | :email:* | :spool:*{Enter}php app/console swiftmailer:
	:o:_sd::php app/console swiftmailer:debug{Space}
	:*:_s:email::REM :send{Enter}php app/console swiftmailer:email:
		:o:_ses::php app/console swiftmailer:email:send{Space}
	:*:_s:spool::REM :send{Enter}php app/console swiftmailer:spool:
		:o:_sss::php app/console swiftmailer:spool:send{Space}

; translation
:*:_translation::REM :debug | :update{Enter}php app/console translation:
	:o:_td::REM [t]ranslation | [t]wig{Enter}php app/console t:debug{Space}{Left 7}
	:o:_tu::php app/console translation:update{Space}

; twig
:*:_twig::REM :debug | :lint{Enter}php app/console twig:
	:o:_tl::php app/console twig:lint{Space}

; yaml
:*:_yaml::REM :lint{Enter}php app/console yaml:
	:o:_yl::php app/console yaml:lint{Space}

} #IfWinActive