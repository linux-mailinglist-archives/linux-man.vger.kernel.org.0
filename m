Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D5F657A33F
	for <lists+linux-man@lfdr.de>; Tue, 19 Jul 2022 17:35:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233245AbiGSPfT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Jul 2022 11:35:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231645AbiGSPfS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Jul 2022 11:35:18 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id A717C32ED7
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 08:35:17 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id E00673DE;
        Tue, 19 Jul 2022 17:35:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1658244916;
        bh=Mr0+51W5tAFET3kwA5Jdr2J/z/Pr1UOq188IYoIQMXs=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=DKQ06u+fqyty7bcEku4pNQhjlGIUwDiFdXvQv6AmmtPcLOobW7y32XE4GKLAj3lOj
         yGe3e/VVKEicC1GQyVinySlBTWUj7NDoOqE+CyGAQweQ/mEkj+S/R6REg7doqcywjh
         eEm2+jzL/04OXGFzJ/33HwmUw8KT3onN5A1nt5IhJQT1VDsntCKf89NDkft7YZVCxX
         CoTGWQOBTjJki39Re0G2CmoACcNedGxfuKwKbOw9uCg7g+VOOXKcZA8ywFCePsUZWD
         QtUBQcHamJA20wjrR8O4TG5LVeUDIbSkH11bZu/jw2GEVVz6MbTJyCZGN/AvrXSCu6
         ivaz4GSA7iKBNXDHm6Q0QZxIjatYcWPqNid9sEp4/K19uI1i+e77ZR3f3e8fjL734j
         OJZl0IVoLKdgNn8ZD0f2b4c+xP+qj4o6BGyfMczrxKCLufXVbyhNEfSDF1TvcjTuVN
         ehH16NugbOqIjPuLe7hMhafg/eClLFVNC7tQvS0nOElCmCSxWGw675NSizdwtvoBAB
         TiVe8rW4qZq5x+F5Vm+mxHiMp+2knovbMO41rBdNvduma7CnVloDv4dxetDt9perzr
         WX8le/sbVO6fdozIKv5zMRvSS5CzdBRA/9wO07fncJt8pG96LnM8eWslSaqmyK+PGu
         LYtLQU4/r4QKhld/P6lhVM3w=
Date:   Tue, 19 Jul 2022 17:35:15 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2 3/4] tm.3type: describe tm_zone, tm_gmtoff
Message-ID: <79b8858b80acc770138afc505eecc08f90ea1be6.1658244821.git.nabijaczleweli@nabijaczleweli.xyz>
References: <62c1b6748d2faa6263264b9fcaa064495357441b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="2lwu3npocxv3btrb"
Content-Disposition: inline
In-Reply-To: <62c1b6748d2faa6263264b9fcaa064495357441b.1658195739.git.nabijaczleweli@nabijaczleweli.xyz>
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


--2lwu3npocxv3btrb
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
 man3/tm.3type | 48 ++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/man3/tm.3type b/man3/tm.3type
index 78e05a41a..e7e39cc5c 100644
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
@@ -48,10 +76,30 @@ in C99.
 .SH CONFORMING TO
 C90 and later;
 POSIX.1-2001 and later.
+.PP
+.IR tm_gmtoff " and " tm_zone
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
+and similar functions (this, however, never happens under glibc).
 .SH SEE ALSO
 .BR ctime (3),
 .BR strftime (3),
--=20
2.30.2


--2lwu3npocxv3btrb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmLWzzMACgkQvP0LAY0m
WPFiSxAAtWwbrNFNxaoHFI/Wg+57OPwxvzjOA4s0wFYl2YzYnKIt5XyPEzUJFqIY
61PBUtWJezzY/hHBD1RVYz78AE+eEF6PoOoheE+tgvvmO1/F/lqRmQL55vTCGJSa
n+idywjkbtKxtg39h4o+5K64YoV9PW5IoIRip4Oc/IxdaVGZ6Uj51wR4Rf0DKxL0
vkEDS7NEyPOCPyLvhxv3upVkBgrqc5ouG9cc6ySKXKDoWkZMr80d9pAVEYdAU/tE
ASXAJhLTSefNA0XQa7o/yHKQMZW2HKSVY6tkpmgy5ADn7mRLvmd6agvfq41Q3uy0
7SLmGEHn09SEh0/8ryQm3nEsZJ5HUmb9qTe+7MXAQ8Ksx6Tv4ydWWyTW5QxBW8QC
tgLdXZ1CuNf5kevfhF6jtpJrDDwT8U6K+aAjVh7/Htg4JjDrqvhHnltzfPKWvEda
vdx3k89n25KcNh8rm/BeMC9nz1gFru1yQi4Fjt6Xuhkia85Gt8jYxcfd5ZOW0Hq1
+qf72M6KFKjDBz+TvaYqF2oRJMNy5N4CpZ1KkRfmYMH+/U+YU5qS9N4+1xdywry2
zoN9OyPsPGzSiSxkqHZwBBmDMw/MieEa30PXvkEWm/VhbbRw0IlqZzYoLmBDufzM
D+hFT2+qaP540mRD/3wJKLcixRW3yeTusaZXxgC10QLrFHTRIJA=
=RpwE
-----END PGP SIGNATURE-----

--2lwu3npocxv3btrb--
