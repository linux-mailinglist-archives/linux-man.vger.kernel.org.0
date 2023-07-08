Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 716FC74BF0B
	for <lists+linux-man@lfdr.de>; Sat,  8 Jul 2023 21:59:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229520AbjGHT7U (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jul 2023 15:59:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34048 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229437AbjGHT7U (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jul 2023 15:59:20 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 112F21BB
        for <linux-man@vger.kernel.org>; Sat,  8 Jul 2023 12:59:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202305; t=1688846358;
        bh=hcFVgI1IeBPzmdf0qOsxWUJTsRDCOihuSbQ5WqEhXWk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=g+AgIFEjfTl8SDD/UkEeO1L864syZ8MmON/vO2hOQKvimFguiGWVgw7TTCvp9fL47
         JqT8GMUl8W4yhj4HIuOP+tDW1kmtdSeTOXRphfzlPf27BT3AkOmSi9DwTBSgdGyzKm
         zgsyyOcxz0pMdN0Bdu7szaq9vRrAiNiFlGzHHIMZ4MCa84aYO2k5SoYAM2oLIFH+9m
         1VW1vK71VAswFpHe+EsR0VW28lbd5FJ0ldHYfP3mzkplvTmZQ18obEDJjXGKYTHuH0
         VFLP0HW5kCVw7tUpYs/i2zt7ovrH4U+73zeBpxa1qqYZLcposvKWf8DW5Nfzb9gmjM
         2WppVoMgzTSAA==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 54C362930;
        Sat,  8 Jul 2023 21:59:18 +0200 (CEST)
Date:   Sat, 8 Jul 2023 21:59:17 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>
Subject: [PATCH v3] grantpt.3: no-op on modern glibc and other UNIXes
Message-ID: <iv3vxr6twi4wuw44yxomgtuez43o7kqsy4w4fl2lmajzyc2xpa@by52b2pyhttr>
References: <885059d5-7b95-8468-01a3-0264e0da1288@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="ofww6nl5nps3djd6"
Content-Disposition: inline
In-Reply-To: <885059d5-7b95-8468-01a3-0264e0da1288@kernel.org>
User-Agent: NeoMutt/20230517
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        RDNS_DYNAMIC,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ofww6nl5nps3djd6
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

FreeBSD, OpenBSD, and Linux (/dev/ptmx) do all intialisation in open,
and grantpt() is a no-op (that checks whether the fd is a pty, except on
musl).

The illumos gate and NetBSD do a ioctl (and, indeed, illumos-gate commit
 facf4a8d7b59fde89a8662b4f4c73a758e6c402c ("PSARC/2003/246 Filesystem
  Driven Device Naming"), which kills pt_chmod, notes that it's been
    6464196 bfu should remove pt_chmod, obsoleted by /dev filesystem).

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
Trivia, but rephrased slightly to make it more obvious.

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
+glibc on Linux before 2.33 could do so as well,
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

--ofww6nl5nps3djd6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmSpwBQACgkQvP0LAY0m
WPE/OhAAjJQkeWUPM33O5GqO3/2jX65BT0Xp4NdxSecy5WgAfvOcsrHafHkdVIQr
YVztKPGix2ftnFNytUW+wd+ZUYSoDnu9ybi8Nl7npKROpgP0rn/k3eAgtCl4SwY6
U4QbT4uyx8+Es2k4J59TZeMnz64dK7J5Id1sK7xyQFqhExPKFABF5YxX5xh9OrjR
p7lv0y+c8TIHUKcO/y59BSwzR3j/Gsg/BIucWZAoYq1jGxfT2Yqp7pnE2L5IGHI/
EIwAURQ7k6kyDlem9pELNnaEUjGBLq1cH+lonJNObFcZDlL7lT3m4AICTJ/0JTEW
ssETNHypN4Pb57wKWtYaW1vWV9TnJS9/Ay7C4PyabAJ4fpdgi9jzSITFAYYGlIDe
JZYPLdVI9Fj7wQ1L2Xey84yqGU2zcGrRTQwUUBQbNkMTfcJw2iesXx3xVKYRjaf+
FSr9PpN+DY6MH1zfD0JFx94uU0UshcimLOcRcj3IaoExiV8YuMAtbgRnoeLS5lEQ
xbNuZVmzE1TiZr4xBM99gQoA3sRRaKt06qeuBT8ICQM72SJbJLk8Cru3UBA88LqC
AIj0aMWmjMGVfBy0CxHYDgcyxzbI7JuKoh7Yq3I0ZUb6yzoXoQMLjuXihrFUC6dz
LqEluMc7zjL6mOvMVYs7c5qYB3ugTPx2MMusTwSV8nL1mEyqsN8=
=U0gq
-----END PGP SIGNATURE-----

--ofww6nl5nps3djd6--
