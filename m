Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F25AD754ACB
	for <lists+linux-man@lfdr.de>; Sat, 15 Jul 2023 20:49:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229840AbjGOSt0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 Jul 2023 14:49:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229490AbjGOSt0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 Jul 2023 14:49:26 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id ECFE12726
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 11:49:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202305; t=1689446964;
        bh=ZBlstxlToTMltKLEGCH50VNRz12EFgB69Op/7H35q1A=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=kCbu2brI4P932OnE/yW27Bt9hvFLSzFg580K8ie3yAlSMkojLuRqh/PodXBQtfz+h
         pcpZgGizYusfePjxWY1tgo2VGaTvQKmwoY3fpUYEdW8P6k/FwCzi8g9+JN/P+J4hS8
         BMIWWZvzQvF0uhZzfBM8FdHxU0Ucw0aIOYClGdQvp42zcLDX1+qKES4IHpujl3Mttz
         dENeQ2kXlHmfDSVzUPD0+KifN1k7wBDpuCWOOidsA4mgtgAgftDPbCX3oaAktAE/dW
         3qamVyjkDBXZ9LE6u0iKMfLj9kPW/bqXAO8kUs44/Y9fhNZqtI+XHujxcuQjF3Ngjq
         dpC/z4n9nSYOw==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 1722D3160;
        Sat, 15 Jul 2023 20:49:24 +0200 (CEST)
Date:   Sat, 15 Jul 2023 20:49:22 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
Subject: [PATCH v4] grantpt.3: no-op on modern glibc and other UNIXes
Message-ID: <prx5h5lm7gnytjwm3jgmm2d5vrg3xgdnxssocx2gplcubexvf7@fkdavhrtedoo>
References: <232d8f2c-6a4f-de01-7fc8-739da2b71964@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="hoaxlp7s5nd66uh3"
Content-Disposition: inline
In-Reply-To: <232d8f2c-6a4f-de01-7fc8-739da2b71964@kernel.org>
User-Agent: NeoMutt/20230517
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RDNS_DYNAMIC,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--hoaxlp7s5nd66uh3
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

FreeBSD, OpenBSD, and Linux (/dev/ptmx) do all intialisation in open(2),
and grantpt(3) is a no-op (that checks whether the fd is a pty, except on
musl).

The illumos gate and NetBSD do a ioctl (and, indeed, illumos-gate commit
 facf4a8d7b59fde89a8662b4f4c73a758e6c402c ("PSARC/2003/246 Filesystem
  Driven Device Naming"), which kills pt_chmod, notes that it's been
 "6464196 bfu should remove pt_chmod, obsoleted by /dev filesystem").

glibc 2.33 completely kills BSD PTY support on Linux
(Debian hasn't configured with them on any architecture since 2007:
   https://bugs.debian.org/338404
 and even earlier on some arches; they're really just trivia under
 Linux =E2=80=92 this may be better served stuffed into HISTORY as an expla=
iner
 for the SIGCHLD thing, since regardless of the "version", the behaviour
 is well-defined and consistent).

Cc: Jakub Wilk <jwilk@jwilk.net>
Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
> The illumos gate and NetBSD do a ioctl (and, indeed, illumos-gate commit
paren level 1
  v
>  facf4a8d7b59fde89a8662b4f4c73a758e6c402c ("PSARC/2003/246 Filesystem
paren level 2
   v
>   Driven Device Naming"), which kills pt_chmod, notes that it's been
this is an in-line 2-column quote of the commit message
(which I've misindented to 3)
   vvv
>     6464196 bfu should remove pt_chmod, obsoleted by /dev filesystem).

So it works by "it doesn't", it's psycho indent, probably related to
  Date: Mon Jun 19 02:01:46 2023 +0200
I turned the blockquote into a ""-quote, which should make more sense.

Numberised open() and grantpt().

 man3/grantpt.3 | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/man3/grantpt.3 b/man3/grantpt.3
index a19172a3e..e3d4e4aaa 100644
--- a/man3/grantpt.3
+++ b/man3/grantpt.3
@@ -84,17 +84,15 @@ .SH ATTRIBUTES
 .ad
 .sp 1
 .SH VERSIONS
-Many systems implement this function via a set-user-ID helper binary
+Historical systems implemented this function via a set-user-ID helper bina=
ry
 called "pt_chown".
-On Linux systems with a devpts filesystem (present since Linux 2.2),
-the kernel normally sets the correct ownership and permissions
-for the pseudoterminal slave when the master is opened
-.RB ( posix_openpt (3)),
-so that nothing must be done by
-.BR grantpt ().
-Thus, no such helper binary is required
-(and indeed it is configured to be absent during the
-glibc build that is typical on many systems).
+glibc on Linux before glibc 2.33 could do so as well,
+in order to support configurations with only BSD pseudoterminals;
+this support has been removed.
+On modern systems this is either a no-op\[em]with
+permissions configured on pty allocation,
+as is the case on Linux\[em]or an
+.BR ioctl (2).
 .SH STANDARDS
 POSIX.1-2008.
 .SH HISTORY
--=20
2.39.2

--hoaxlp7s5nd66uh3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmSy6jIACgkQvP0LAY0m
WPEaLg/7BtTgJuyjyI05IaEGvSE0CIjVDSr17tVFTErsLLJGefphLyJEEC7B9Gwd
pUj2jcwkbZ8UQwiDqai96vXyP0bzt8I00M/GdXUnn6cCdn1cT+i1nlF2RzVetqab
fIISgTpKXxQwrkpxMXxjZSPiQv5coTYrqz4ZUG0fm2xUV0F4qcGlSCvem2gMqKEp
5qx5mOxEyxXC1+ymaiEv75xmMJvrmz8l3+OXp/gKSy46ptbvGMQUUpStCjPAF5vV
rfX3+jbwMyTzAy2Vv9l5YCYsI461Uz9HZkyjq3XOoQkD0S4mxwf5UdXaoSRG4Olf
hzRbDWy84a2CY0s1bDdFq4CYNOjXDGwYeom7LfZFZZXV1wIw5T/gzv9FKQ2rlTFh
fAN1gpyVVUuUy0FKsI+mt72RqT2GJqAl9ScGimpb6yAIeC1tWIaP9w3sSQf1ZZk+
FtA7hKvpq1o+DO03JWOvGq4u9/jwvwFLbI+jAorv2I7XfgWKpX+RbQ2WrIz5CT1l
013i3WGNM1usKyl9CwwA78KLx12BSSkUuyofjAm59MVdrwqIJLgD6aCY8TYn5kAb
69J6kIicOudC/UP81oK//9/M7bEZll85NSg/G9Ies+b+/WzEaXVs6dDQ0xiLh+M7
bXhSazQ1heBm6f0Y/LR/S5OJ465wM3PftP6i3bZs9TZq6J9Yyio=
=q6br
-----END PGP SIGNATURE-----

--hoaxlp7s5nd66uh3--
