Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9D48373496C
	for <lists+linux-man@lfdr.de>; Mon, 19 Jun 2023 02:14:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229472AbjFSAOf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 18 Jun 2023 20:14:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56602 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229456AbjFSAOe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 18 Jun 2023 20:14:34 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 6ECCDE4E
        for <linux-man@vger.kernel.org>; Sun, 18 Jun 2023 17:14:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202305; t=1687133670;
        bh=yrAlmOtf4uuF0W6sdPDwrwUS/2Tr6C3/dgV1qabYTXA=;
        h=Date:From:To:Cc:Subject:From;
        b=O74bmRdPk4Fy5HzfG3grBN2d9QBParQ0pdKfPzqooXdGqe8/d3Hg+EZUpUVrlwDRt
         Y+tuIw/4HXKjP9EWs2gKyRK8GQfzXE2dYU3jEjors3JftCfyBXVbs0+DFoE+uudpqu
         e/zkxHSSLcPpE+SO534NLmaTTupefxSLHECarwFQSHxUZUkCs8pT6TFcEh9F+2RkXR
         OKpfiRs71vUy+ZicH3lmP1OeezBv7h4UkshMzxnzYnwHYGVQtl+9P+cymCGzd9awIE
         fWdH8JioayX3pr/HzhQXQHGbaZtAVlIkIVKKcgSxDzB6QHDRTThrnUfR79esWqA31/
         FP52AbeprtNGQ==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 111EAA32;
        Mon, 19 Jun 2023 02:14:30 +0200 (CEST)
Date:   Mon, 19 Jun 2023 02:14:28 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] grantpt.3: no-op on modern glibc and other UNIXes
Message-ID: <s55h3vx7kapgrkczmyenyijo5munjjpzpmvxmtea5zlamnjqqx@toofqdlalwzl>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="dlh2dknzvlxmoeq2"
Content-Disposition: inline
User-Agent: NeoMutt/20230517
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,PDS_RDNS_DYNAMIC_FP,
        RDNS_DYNAMIC,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--dlh2dknzvlxmoeq2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

FreeBSD, OpenBSD, and Linux (/dev/ptmx) do all intialisation in open,
and grantpt() is a no-op (checking whether the fd is a pty, except on
musl).

The illumos gate and NetBSD do a ioctl (and, indeed, illumos-gate commit
 facf4a8d7b59fde89a8662b4f4c73a758e6c402c ("PSARC/2003/246 Filesystem
  Driven Device Naming"), which kills pt_chmod, notes that it's been
    6464196 bfu should remove pt_chmod, obsoleted by /dev filesystem).

glibc 2.33 completely kills BSD PTY support on Linux
(Debian hasn't configured with them on any architecture since 2007:
   https://bugs.debian.org/338404
 and even earlier on some arches; they're really all but trivia under
 Linux =E2=80=92 this may be better served stuffed into HISTORY as an expla=
iner
 for the SIGCHLD thing, since regardless of the "version", the behaviour
 is well-defined and consistent).

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/grantpt.3 | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/man3/grantpt.3 b/man3/grantpt.3
index a19172a3e..fda2f9625 100644
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
+as is the case on Linux\[em]or a
+.BR ioctl (2).
 .SH STANDARDS
 POSIX.1-2008.
 .SH HISTORY
--=20
2.39.2

--dlh2dknzvlxmoeq2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmSPneQACgkQvP0LAY0m
WPEm8w/9HRxlZIzHr0RHA2/sGnAfr0DnkEXV2wJ+mJc4LxNO0jctmCM98RgZiUL2
Pgd3WadcXdnSsraqB8KzXOh35nhyGYW9fM+dfEBDUfRh/YPNX1XDXuABMYp6GxiJ
JvVWv7PNuRvzGwPhMR9n6iC99RoMTvHVldHpEDwGkFrzUBBFdy2h5TffI67NrECm
AIyRsY0m3Weh3bmn725k4uhJnpLBhjMZWZ8BJbU0hkSWQpNyubHHffMC7Z1dXLCQ
5NyJpmW3Gj6KOJ7UGZDbgZ57Mutdg3z0U4h93KZNjQc2W90GY3eabZFjKuN2qcVQ
Y87SWI9mJYx+LFy2ltxlWVuGo+swp3JTTXN6q/tHnxvhz1mq5IdbNXPXs6igQQue
mj4OlAfWRyPwgjE3gs+hAI5eVT2dUxDT56xXpCwM4gBACgPh2WfJqcIO01OCjxgR
6fyWI3HpLl/fEmDY+c/J1XSQ4WZ9gMKT9R84bhXkx7g2lS+sVPmWXGjOAKM5rB6K
l0k4duhktaunVtTb5/fJxfz2o+npfVKb5wfJl/0ImiTQD739T1zhYfuBzgj1+xN2
ovg/LiPyBB8hqyc04Znhv3hednRI/Xl2rbFrnRDI6s1bWLFU+DrMpw2AwofI6mir
ivg1xrYrdYe6JagcrE5+xZJPh92zCN24pcaSJYlhgfJM+NuAMZc=
=vBLL
-----END PGP SIGNATURE-----

--dlh2dknzvlxmoeq2--
