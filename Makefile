# See LICENSE for licensing information.

PROJECT = farwest_core

ERLC_OPTS ?= -Werror +debug_info +warn_export_all +warn_export_vars \
	+warn_shadow_vars +warn_obsolete_guard +'{parse_transform, lager_transform}'

# Dependencies.

DEPS = cowboy lager jsx dh_date mimetypes riakc
dep_cowboy = https://github.com/extend/cowboy master
dep_lager = https://github.com/essen/lager update-rebar
dep_jsx = https://github.com/talentdeficit/jsx master
dep_dh_date = https://github.com/essen/dh_date patch-1
dep_mimetypes = https://github.com/essen/mimetypes patch-1
dep_riakc = https://github.com/essen/riak-erlang-client farwest

# Standard targets.

include erlang.mk
