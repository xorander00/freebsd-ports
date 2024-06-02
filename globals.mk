# ISO-8601 UTC
UTC_DATETIME_FMT				?= %Y-%m-%dT%H:%M:%SZ
UTC_DATETIME						?= ${UTC_DATETIME_FMT:gmtime}
UNIX_DATETIME_FMT				?= %s
UNIX_DATETIME						?= ${UNIX_DATETIME_FMT:gmtime}

# Calendar versioning
CALVER_PREFIX					  != date -j -u +%Y-%m-%d
CALVER_OFFSET_HMS			  != date -j -u +%T
CALVER_OFFSET_S				  != date -j -u -f "%Y-%m-%d %T" "1970-01-01 ${CALVER_OFFSET_HMS}" +%s
CALVER_SUFFIX					  != printf "%05s" "${CALVER_OFFSET_S}"
CALVER 								  != printf "%s_%s" "${CALVER_PREFIX}" "${CALVER_SUFFIX}"

# Base URLs
DISTSITE_INTERNAL_WAN   ?= https://[REDACTED]/freebsd/
DISTSITE_INTERNAL_LAN   ?= https://[REDACTED]/freebsd/
DISTPATH_INTERNAL_DIR		?= /mnt/[REDACTED]/freebsd/

# Internal distribution archives
INTERNAL_DIST_TYPES     = lan wan dir
INTERNAL_DIST_TYPE 			?= ${INTERNAL_DIST_TYPES:[1]}
INTERNAL_DIST_SRC				?= ${DISTSITE_INTERNAL_${INTERNAL_DIST_TYPE:tu}}
INTERNAL_DIST_DST				?= ${DISTDIR}/${DIST_SUBDIR}

# Internal distribution conventions
DISTFILE_PREFIX					?= ${PORTNAME}-${DISTVERSION}
DISTFILE_SUFFIX					?= zst
DISTFILE_JAIL           ?= ${DISTFILE_PREFIX}.jail.${DISTFILE_SUFFIX}
DISTFILE_PORT						?= ${DISTFILE_PREFIX}.port.${DISTFILE_SUFFIX}
DISTFILE_PORT_DST				?= ${DISTPATH_INTERNAL_DIR}${DISTFILE_PREFIX}.port.${DISTFILE_SUFFIX}

# Github URLs
GH_URL_RELEASE_BASE     ?= https://github.com/${GH_ACCOUNT}/${GH_PROJECT}/releases/download
GH_URL_RELEASE_LATEST   ?= https://github.com/${GH_ACCOUNT}/${GH_PROJECT}/releases/latest/download

# Has an internal distribution archive?
HAS_INTERNAL_DIST				?= no
.if ${HAS_INTERNAL_DIST} == yes
MASTER_SITES						+= ${INTERNAL_DIST_SRC}:internal
.endif

# Use the internal distribution archive?
USE_INTERNAL_DIST				?= no
.if ${USE_INTERNAL_DIST} == yes
DISTFILES								+= ${DISTFILE_PORT}:internal
.endif
