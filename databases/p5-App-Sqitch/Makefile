PORTNAME=													App-Sqitch
PORTVERSION=											1.3.0
PORTREVISION=											1
CATEGORIES=												databases perl5
MASTER_SITES=											CPAN
MASTER_SITE_SUBDIR=								CPAN:DWHEELER
DISTVERSIONPREFIX= 								v
PKGNAMEPREFIX=										p5-
MAINTAINER=												me@peeyushsingh.com
COMMENT=													Sane database change management
LICENSE=													MIT
WWW=															https://metacpan.org/release/App-Sqitch

USES=															gettext perl5 sqlite pgsql mysql
USE_PERL5=												modbuild
NO_ARCH=													yes

BUILD_DEPENDS=										${RUN_DEPENDS}
RUN_DEPENDS=											p5-Algorithm-Backoff>=0:devel/p5-Algorithm-Backoff \
																	p5-Clone>=0:devel/p5-Clone \
																	p5-Config-GitLike>=0:devel/p5-Config-GitLike \
																	p5-DBI>=0:databases/p5-DBI \
																	p5-DBD-SQLite>=0:databases/p5-DBD-SQLite \
																	p5-DBD-Pg>=0:databases/p5-DBD-Pg \
																	p5-DBD-mysql>=0:databases/p5-DBD-mysql \
																	p5-DateTime>=0:devel/p5-DateTime \
																	p5-DateTime-TimeZone>=0:devel/p5-DateTime-TimeZone \
																	p5-Devel-StackTrace>=0:devel/p5-Devel-StackTrace \
																	p5-Encode>=0:converters/p5-Encode \
																	p5-Encode-Locale>=0:converters/p5-Encode-Locale \
																	p5-Hash-Merge>=0:textproc/p5-Hash-Merge \
																	p5-IO-Pager>=0:devel/p5-IO-Pager \
																	p5-IPC-Run3>=0:devel/p5-IPC-Run3 \
																	p5-IPC-System-Simple>=0:devel/p5-IPC-System-Simple \
																	p5-List-MoreUtils>=0:lang/p5-List-MoreUtils \
																	p5-Locale-gettext>=0:devel/p5-Locale-gettext \
																	p5-Locale-libintl>=0:devel/p5-Locale-libintl \
																	p5-Moo>=0:devel/p5-Moo \
																	p5-Module-Build>=0:devel/p5-Module-Build \
																	p5-Path-Class>=0:devel/p5-Path-Class \
																	p5-PerlIO-utf8_strict>=0:devel/p5-PerlIO-utf8_strict \
																	p5-Pod-Parser>=0:textproc/p5-Pod-Parser \
																	p5-String-Formatter>=0:devel/p5-String-Formatter \
																	p5-String-ShellQuote>=0:textproc/p5-String-ShellQuote \
																	p5-Sub-Exporter>=0:devel/p5-Sub-Exporter \
																	p5-Template-Tiny>=0:textproc/p5-Template-Tiny \
																	p5-Throwable>=0:devel/p5-Throwable \
																	p5-Try-Tiny>=0:lang/p5-Try-Tiny \
																	p5-Type-Tiny>=0:devel/p5-Type-Tiny \
 																	p5-URI>=0:net/p5-URI \
																	p5-URI-Query>=0:net/p5-URI-Query \
 																	p5-URI-db>=0:net/p5-URI-db \
																	p5-namespace-autoclean>=0:devel/p5-namespace-autoclean \
																	p5-Type-Tiny-XS>=0:devel/p5-Type-Tiny-XS \
																	p5-Class-XSAccessor>=0:devel/p5-Class-XSAccessor

TEST_DEPENDS=											p5-Capture-Tiny>=0:devel/p5-Capture-Tiny \
																	p5-IO-Pager>=0:devel/p5-IO-Pager \
																	p5-Module-Runtime>=0:devel/p5-Module-Runtime \
																	p5-Path-Class>=0:devel/p5-Path-Class \
																	p5-Test-Deep>=0:devel/p5-Test-Deep \
																	p5-Test-Dir>=0:misc/p5-Test-Dir \
																	p5-Test-Exception>=0:devel/p5-Test-Exception \
																	p5-Test-File>=0:devel/p5-Test-File \
																	p5-Test-File-Contents>=0:devel/p5-Test-File-Contents \
																	p5-Test-MockModule>=0:devel/p5-Test-MockModule \
																	p5-Test-MockObject>=0:devel/p5-Test-MockObject \
																	p5-Test-NoWarnings>=0:devel/p5-Test-NoWarnings \
																	p5-Test-Warn>=0:devel/p5-Test-Warn

.include <bsd.port.mk>
