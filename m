Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ACB3D57A9D1
	for <lists+linux-man@lfdr.de>; Wed, 20 Jul 2022 00:28:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238262AbiGSW2f (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Jul 2022 18:28:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60510 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239744AbiGSW2S (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Jul 2022 18:28:18 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 55F9A606B9
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 15:28:14 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id CD8B4826;
        Wed, 20 Jul 2022 00:28:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1658269691;
        bh=D+IsY2Y/1GPLXSQ0rQFp/J0ZQ0ysR1W8oV244Aluq5c=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=PRzYOSn3L+KbeTI2YuvW1u3PZVVAGupM5eod2AdNR6mh9MJ/lBioFvvbfT8S9DxZn
         tYl+fSKoNu3SsjYEl4nD3pfxnbGaHDbNuxuW63O9QvGNAFE9MNnXy2aQHEIyAjUrJK
         RU+C+oLr/ovB1cUwrrc0m25pOPoa5zPkuaHoihQY8gA6rdOEfi5nxP2O8zPKaHeA7t
         jJ4E4PUXSXqCfZwh2pzQ/eNesmkuP/ou7v2WAife1HwYvyqUKJDgPxuW17th/Ci+yn
         GurECoNnJMlTYqXCFIrJxESJT3uyre++80f69ULvlMenbgmw2bB9SsgZiiu7wc4hrV
         QaCdGldMpXtJfza4RQ5b/BGcwmic82sJSQ61DZ6O4POsOFYinF160oC/mumj1mPvqY
         UOhA5fQnp8u5eeG4D5HUzmdmMrgDv0xDysJzXJHaGLHeIjSVEu61Gg9bKnxZC/FZ5J
         idLPDFuXfftzBLNjegJpW44xnsPBKub+xFyQhAbUYbTrJ6bTVjNshvdPpWonVdzdM1
         FRq6FcO3NCB/QIO+ZIeYVipjgm2e4ALUsCac/W9KpB460ZnvoRS9BOROWovkuKUE2x
         LY4YXkTKABK6lPhlzWiGso/1A5Amp9a+8MnYOoACZWymegNyEGjP2TEUIpcSLZCdEO
         9J+J8BUbMyEwqxpHPhj6WayM=
Date:   Wed, 20 Jul 2022 00:28:10 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v4] strftime.3, strftime_l.3: mention strftime_l() with .so
 link
Message-ID: <20220719222810.gujuec4m6jt7rrbs@tarta.nabijaczleweli.xyz>
References: <84e06095-1dac-0f3c-bb86-5ab81610d8c2@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="aue2offn2f46dpag"
Content-Disposition: inline
In-Reply-To: <84e06095-1dac-0f3c-bb86-5ab81610d8c2@gmail.com>
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


--aue2offn2f46dpag
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

POSIX.1-2008 TC2:
> [CX] The strftime_l() function shall be equivalent to the strftime()
  function, except that the locale data used is from the locale
  represented by locale.
> [CX] The behavior is undefined if the locale argument to strftime_l()
  is the special locale object LC_GLOBAL_LOCALE or is not a valid locale
  object handle.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/strftime.3   | 26 +++++++++++++++++++++++++-
 man3/strftime_l.3 |  1 +
 2 files changed, 26 insertions(+), 1 deletion(-)
 create mode 100644 man3/strftime_l.3

diff --git a/man3/strftime.3 b/man3/strftime.3
index dc98a5122..6eff815ad 100644
--- a/man3/strftime.3
+++ b/man3/strftime.3
@@ -27,6 +27,11 @@ Standard C library
 .BI "size_t strftime(char *restrict " s ", size_t " max ,
 .BI "                const char *restrict " format ,
 .BI "                const struct tm *restrict " tm );
+.PP
+.BI "size_t strftime_l(char *restrict " s ", size_t " max ,
+.BI "                const char *restrict " format ,
+.BI "                const struct tm *restrict " tm ,
+.BI "                locale_t " locale );
 .fi
 .SH DESCRIPTION
 The
@@ -471,6 +476,17 @@ as an argument to a
 One example of such alternative forms is the Japanese era calendar scheme =
in the
 .B ja_JP
 glibc locale.
+.PP
+.BR strftime_l ()
+is equivalent to
+.BR strftime (),
+except it uses the specified
+.I locale
+instead of the current locale.
+The behaviour is undefined if
+.I locale
+is invalid or
+.BR LC_GLOBAL_LOCALE .
 .SH RETURN VALUE
 Provided that the result string,
 including the terminating null byte, does not exceed
@@ -516,14 +532,22 @@ lbx lb lb
 l l l.
 Interface	Attribute	Value
 T{
-.BR strftime ()
+.BR strftime (),
+.BR strftime_l ()
 T}	Thread safety	MT-Safe env locale
 .TE
 .hy
 .ad
 .sp 1
 .SH CONFORMING TO
+.BR strftime ():
 SVr4, C89, C99.
+.PD 0
+.PP
+.PD
+.BR strftime_l ():
+POSIX.1-2008.
+.PP
 .\" FIXME strftime() is in POSIX.1-2001 and POSIX.1-2008, but the details
 .\" in the standards changed across versions. Investigate and
 .\" write up.
diff --git a/man3/strftime_l.3 b/man3/strftime_l.3
new file mode 100644
index 000000000..02e797a23
--- /dev/null
+++ b/man3/strftime_l.3
@@ -0,0 +1 @@
+.so man3/strftime.3
--=20
2.30.2

--aue2offn2f46dpag
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmLXL/oACgkQvP0LAY0m
WPHvmg/+M61Vyg3WqXpeiYmbeIhPWqopvAt4zMXNU99YcYe18YBPUq2fgc9v6kc5
nSOpf7X8E4QkPb/WxcZUy/DHxL/l7YctEb5yb8OqiwcNZqHURsX/yakZTqua+5v1
7i4MWIXzUiX+dggHVQgTOciviuHPWLY3MRvFy8YUCbM39H6K1yyBCFRLpYJJRrS7
z+0Em2hqnpGYSnrm4CwFJC8ByDMW/NMg6K2siA1aYvuf79e49dajxh/DrEfqu3zj
H3a6oATbsHuhNjdxlk4UYCi+WYKtYz0HgQFtblbsf2xC+RAOkInGCB/SvxQz+k5v
WHUulBMkiEKZsE+o+gKVRBXI8pCr3h/Ru6SCGD7i0NWT2lW+4MQ9xZTG1F5cKWnk
5eliUdbzni0s5GNU9dGVkNCVRCpXh0im26m+ZQ6gxWDGQS1pp3/1hMVXpp0XeAST
JvdGHAhtYIpHpTYy1vFqbnN+kkW0JYVBRB5f6xYRzVe4S4n97VSdGnRxbrLJZiNW
RlBDKdnIOZ2LGio6Fv2x7TgLO1Kw8tdmy59h2OY3lxvpudqqb3CzzR4YphQd64g2
eCphK8aFGdzRY5wJcM3YTZXHDuOcua/2uhSDv6zpnKU8oUgM7wvc6fviGt3I/3j8
O8d6BJ3I5UgD6B7DvJIpIGRIv3+q0AB3qTtU9LUUpQmQLkmJ3Jw=
=z5SP
-----END PGP SIGNATURE-----

--aue2offn2f46dpag--
