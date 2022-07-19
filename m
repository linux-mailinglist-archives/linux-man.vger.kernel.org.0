Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 727E257A8F9
	for <lists+linux-man@lfdr.de>; Tue, 19 Jul 2022 23:28:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238228AbiGSV2G (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Jul 2022 17:28:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38550 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236857AbiGSV2F (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Jul 2022 17:28:05 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id D91712F649
        for <linux-man@vger.kernel.org>; Tue, 19 Jul 2022 14:28:02 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 4AAACB0C;
        Tue, 19 Jul 2022 23:28:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1658266080;
        bh=Y3oIlzkXu9mM+PMAzaYiMR7mDPIpkzka2xUofao3nYI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=h/O0QXZ/fRfUeQda8DNvGRfQOtIvv/g31UfOH6dVnfqqyEKgGcIz6nxepupKnJgnu
         LQjDAeYYIBT9odgWBLotzypSjyJQu7f4B9B9eCeY0pEMJjF6/f68T5uJ07Isa/my+O
         SEfwx7fTIh6ofC4N6xzq9RwstRb4kFdaC7OipYqdboJJWhSwpAucY1f+TDdhB9pNNu
         g9FptMz1P29po6wpRr5jwnjk/7EApaBjl1gaxXKy9F+XEdSjUjy/Ywtm9ocNQmdclX
         3UE07cUPgST2SA9h6isITPjMO0o1JrOeBbdjKAUVrRAnVD37JF5js+3r1CVDhyA9Z6
         VHHEad8TDrHWfsdoejpZvWEHwDXta158V93cIQc6z80DrPmiuLlkJgGijPBB0IpiHO
         XQbojVbe0fkqyOSCBb0KA7ESMpDf9lIQ0JDtyOhAQMCsQhO5gqyxYUpTkKJ7I/epb4
         x1FNOJX7jWd8o9EfHMJpSP04ikGe7SpbRNT9yKYXW8mpfBpVAhD4Fdk8ehgkAcg4Fb
         Hn+0aPGALGooKKsqvEvjPEwkJCiMF1wbJ+V28dD+cCtfkyTmqE0j6YvsS2BuZyjrK9
         jSASqwJy+ciUWGenSrgDgANF26z1j0vhBm0yNDCwYKc9g09AlnaC0DZnlUu3sl1dX/
         B4xXNn2GIRvpbQ2nZRyb10bo=
Date:   Tue, 19 Jul 2022 23:27:59 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH] strftime.3: mention strftime_l() with .so link
Message-ID: <20220719212759.ltj2zvgpiuv5mler@tarta.nabijaczleweli.xyz>
References: <20220719184839.ear4elj2ls3fpzmz@tarta.nabijaczleweli.xyz>
 <9a085e45-f74f-2d6b-2f97-421a46670d8f@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="yp5csspc2bmjn7ho"
Content-Disposition: inline
In-Reply-To: <9a085e45-f74f-2d6b-2f97-421a46670d8f@gmail.com>
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


--yp5csspc2bmjn7ho
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 19, 2022 at 10:50:06PM +0200, Alejandro Colomar wrote:
> Also, please add the link page name to the list of affecteed pages:
> strftime.3, strftime_l.3: ...

Fixed.

> Prefer .PP
>=20
> We avoid raw roff requests in man(7) pages as much as possible.
> I'd tell you how to get the same behavior with rare man(7) macros, but I
> don't think we need to complicate it, when .PP is also nice here.
> But just for you to know, there's .PD 0 in man(7).

I grepped for .br specifically and saw it's used so I used it.
Replaced with .PD 0, .PP, .PD to the same effect.

See updated scissor-patch below:
-- >8 --
Date: Tue, 19 Jul 2022 20:46:49 +0200
Subject: [PATCH v2] strftime.3, strftime_l.3: mention strftime_l() with .so
 link

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/strftime.3   | 29 ++++++++++++++++++++++++++++-
 man3/strftime_l.3 |  1 +
 2 files changed, 29 insertions(+), 1 deletion(-)
 create mode 100644 man3/strftime_l.3

diff --git a/man3/strftime.3 b/man3/strftime.3
index dc98a5122..a93c0f4c2 100644
--- a/man3/strftime.3
+++ b/man3/strftime.3
@@ -27,6 +27,11 @@ Standard C library
 .BI "size_t strftime(char *restrict " s ", size_t " max ,
 .BI "                const char *restrict " format ,
 .BI "                const struct tm *restrict " tm );
+.PP
+.BI "size_t strftime_l(char *restrict " s ", size_t " max ,
+.BI "                  const char *restrict " format ,
+.BI "                  const struct tm *restrict " tm ,
+.BI "                  locale_t " locale );
 .fi
 .SH DESCRIPTION
 The
@@ -471,6 +476,20 @@ as an argument to a
 One example of such alternative forms is the Japanese era calendar scheme =
in the
 .B ja_JP
 glibc locale.
+.PP
+.\" POSIX.1-2008 TC2:
+.\"   [CX] The strftime_l() function shall be equivalent to the strftime()=
 function, except that the locale data used is from the locale represented =
by locale.
+.\"   [CX] The behavior is undefined if the locale argument to strftime_l(=
) is the special locale object LC_GLOBAL_LOCALE or is not a valid locale ob=
ject handle.
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
@@ -516,14 +535,22 @@ lbx lb lb
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

--yp5csspc2bmjn7ho
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmLXId4ACgkQvP0LAY0m
WPFzMg/9G7VZP29Yn+5eI4dZK9O8Jro31UN8Pkyz7Oca5U9qmeCDBpEKSiJPgucp
Luxc3is4dmqJfTQSxwgXGzQ1vOGnHhvdufIWMyer+0ELkqC1A65ssLggZ6JRpgv/
VlykACfywppIIuscwwqcxX2sHu9tuh2kaE3xittf1+FglCUBL2cuWkgRWsr1JUbs
i+tPqVzAIQI21yyhWr9lJyEjEUOfXZSmhvsF65zvRUk0ts3foCaBa1spo5GGF1JB
JlQv7wfkZgxllPlUbtwPe2TnCjzHeaUfP0h/vj7qcYQm9Q04xnoM3Nwj02uNM5p9
8EMGuHiBVsN8sHIuyETQi3sVblCUiOZFOXfDgByRMvdntP+M73+v40j/7SJ6/fda
ygiv8w4XGhuERYT46vYm7d+krQeDsk8J8VeOLll6LCGpRDFcldUAdZ73kKcIR8q4
h3Y4+sk/Ug6qmKWj/Sg1g8KyAntb50q+lAulvBWXssDrBU/IRCuS2SVea/9ubEIV
lc9yXcOdRcW3iW3rsIjo7cEguHxkSMTipL72ROe6g8o5EFIzisNEDEeUxQuIIVav
pjPswrhiIZOfwUJkdMinSPqLeklk/qs1tM6Ee4mnJsumyT8qJjuEhYvWwk9DI68B
VSItImRQIaeDf8h/Qp8+3wSTaUvl/YV/vlRZ/SUXHVvTpvkYfHU=
=lKL/
-----END PGP SIGNATURE-----

--yp5csspc2bmjn7ho--
