Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E52F757A69D
	for <lists+linux-man@lfdr.de>; Tue, 19 Jul 2022 20:39:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231495AbiGSSjB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Jul 2022 14:39:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38050 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230052AbiGSSjB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Jul 2022 14:39:01 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 0E7F95A143
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 11:38:58 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 00743910;
        Tue, 19 Jul 2022 20:38:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1658255937;
        bh=HcNa7ZJT0xCebJBVQqHVmwD7Yy6++shxTAUDpUGpPvU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=XkPs+Alp9RwZJShEdEzkNslJ7ht1JRfQAc8r8g0qNDElzQQQbS9+InqDbkxJux66v
         w3W2NPXy0XSdJtKGg91zeLN1ydoIt8IMHllcKskCgseKj7PtWLzgx5EyMUCNnCwFO5
         kOf2YEXUrLCFcIcspJh3fQIrmjPvMU4S7KxKv5U2lHPmA7cHU9m8vVBgetrzylNIO4
         pu/ZPyptK30SaG4nlj0s5oCefqDLUHDq8KV8CzuJxxmr+aSL2oHF2u6ov2YBx1AdMH
         IQWTGY2fvDd3SCNrThbjH5doJ025ALL0lGLUM9n2eUweMy0o3oP7Sm3S6HXvRa+Krh
         NjD093yCtG5m8JxsC0ejL6c699x4bjJ/6wOEYQotYJhxeDemlmT0cnz2u4S130ZU96
         I/3JkAS6jPUYdSupLv4MWqabnkvZnPs590Qppg1RS9G9KFOO9BXFnQMpOWu2rwpAj5
         0JDzhDeDZh4UI7MhAFzfScd6d41hB4+cL7fPu3QAsocgwIZQWDyTiyr9+3/5tyHrsZ
         V4WFmZwICWQI50D7sUUCYHVES59eOhmHCGd1lSqvVr6Cr7nelRPVxrkaKQki/lsndm
         65qK/4biMyS1by/kuN88JZIxCwx9x2OdhCoyZvFU94LuPJNPTvzUW1Ay6Kfl4HXEaS
         mfupwnPpd+Qbpcis8OcMOyDw=
Date:   Tue, 19 Jul 2022 20:38:55 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v3 1/2] tm.3type: describe tm_zone, tm_gmtoff
Message-ID: <b84f1ff5815f24cc23e55a0d89ddd1878f35faa7.1658255829.git.nabijaczleweli@nabijaczleweli.xyz>
References: <28ce4bcb0318b42c5fe6e286887bdab935995192.1658244821.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="nteny2y4axjv6fo7"
Content-Disposition: inline
In-Reply-To: <28ce4bcb0318b42c5fe6e286887bdab935995192.1658244821.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        PDS_OTHER_BAD_TLD,RDNS_DYNAMIC,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--nteny2y4axjv6fo7
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

FreeBSD timezone(3) is V7 char *timezone(int zone, int dst),
our documentation would imply it's impossible to service this type of
system portably

Indeed, glibc defines them both, and they make more sense for most
use-cases than trying to use the globals

glibc cited for __USE_MISC, tm_zone invalidation is Debian 2.33-7
POSIX cited for XSI marking is Issue 7 TC2
CSRG CD #2 contains 4.3BSD-Tahoe with both members

We currently ship an outdated (and factually misleading) version
of this description in ctime.3

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/tm.3type | 50 ++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/man3/tm.3type b/man3/tm.3type
index 78e05a41a..c23fc023e 100644
--- a/man3/tm.3type
+++ b/man3/tm.3type
@@ -25,8 +25,26 @@ Standard C library
 .BR "    int         tm_yday;" \
 "   /* Day of the year  [" 0 ", " 365 "] (Jan/01 =3D " 0 ") */"
 .BR "    int         tm_isdst;" "  /* Daylight savings flag */"
+
+.BR "    long        tm_gmtoff;" " /* Seconds East of UTC */"
+.BR "    const char *tm_zone;" "   /* Timezone abbreviation */"
 .B };
 .fi
+.PP
+.RS -4
+Feature Test Macro Requirements for glibc (see
+.BR feature_test_macros (7)):
+.RE
+.PP
+.IR tm_gmtoff ,
+.IR tm_zone :
+.nf
+.\" Guarded with __USE_MISC:
+    Since glibc 2.20:
+        _DEFAULT_SOURCE
+    Glibc 2.20 and earlier:
+        _BSD_SOURCE
+.fi
 .SH DESCRIPTION
 Describes time, broken down into distinct components.
 .PP
@@ -35,6 +53,16 @@ describes wether daylight saving time is in effect at th=
e time described.
 The value is positive if daylight saving time is in effect,
 zero if it is not,
 and negative if the information is not available.
+.PP
+.I tm_gmtoff
+is the difference, in seconds, of the timezone represented by this broken-=
down time and UTC
+(this is the additive inverse of
+.BR timezone (3)).
+.PP
+.I tm_zone
+is the equivalent of
+.BR tzname (3)
+for the timezone represented by this broken-down time.
 .SH VERSIONS
 In C90,
 .I tm_sec
@@ -48,10 +76,32 @@ in C99.
 .SH CONFORMING TO
 C90 and later;
 POSIX.1-2001 and later.
+.PP
+.I tm_gmtoff
+and
+.I tm_zone
+originate from 4.3BSD-Tahoe (where
+.I tm_zone
+is a
+.IR "char *" ).
 .SH NOTES
 .I tm_sec
 can represent a leap second with the value
 .BR 60 .
+.PP
+.BR timezone (3),
+as a variable, is an XSI extension: some systems provide the V7-compatible
+.\" FreeBSD
+.BR timezone ()
+function.
+The
+.I tm_gmtoff
+field provides an alternative (with the opposite sign) for those systems.
+.PP
+.I tm_zone
+points to static storage and may be overriden on subsequent calls to
+.BR localtime (3)
+and similar functions (however, this never happens under glibc).
 .SH SEE ALSO
 .BR ctime (3),
 .BR strftime (3),
--=20
2.30.2


--nteny2y4axjv6fo7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmLW+j8ACgkQvP0LAY0m
WPGZsQ/8D2Dl+NgDl4hr3qEYMT/39SPhmakJL4RBsiztN2KpzWPzNoZZMQ8t30kL
8MvCQaDUgL2NcvPdJyLIMzt8hGisyJOhX7bEH/5/h5VDFzKi8ly7zmSsP/bxE1ce
gt8fT1n+TLwYYFAzUjyA9e7dIS07DHxyHyRucHN93vkKL/xuxrvb8o+huKBz9aIG
WqTKlThL8ojAIF6MTpS6kArNE8ujsxUITW6oTevt1D7Adh1Gz4rhVhbihzqFEGIt
w7xgxRIdZcNpgbbL9/Hi0naehO5Di0kEhV0jSjEV8p7wogtn8Mve26wiK+3nGB3k
iglTyeGa+1qOXqDf/KBlrfk+wXt8c6oOzVZIlWa9WOfPPM5X42J+Ge4YDvWc5BvS
WRsKqoKggCp0Y97jgS1S1gQSUm/SaacBudA0tXTjlZgyqim/3q4VKmheMvC87iVF
atqbDuIM2mv6VabmHqtLvPDKOi6QIrDGlgsM5PwQLhSgKAbPCfNO8XDYLnZTeTI4
+hgKZp+XlRbM2jXM0DEB/4mw/PQw/QDcS9S2nohAyyn69RwLTVvC7BrwiSqfCBF2
H8yDh0FMeZ55UoKUPMQquCpze1d9Rl2bqumtNur9iN20Cpb5bC1u97F208sWLovL
kiM1RGXk8PhBJZC5avQtx/jrMp9eLe1E2JTbf4cQ7MtoaEV2bVc=
=GtMc
-----END PGP SIGNATURE-----

--nteny2y4axjv6fo7--
