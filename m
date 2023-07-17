Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 75C4D7570A0
	for <lists+linux-man@lfdr.de>; Tue, 18 Jul 2023 01:42:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229762AbjGQXme (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 17 Jul 2023 19:42:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57436 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230129AbjGQXmd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 17 Jul 2023 19:42:33 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id ACE2695
        for <linux-man@vger.kernel.org>; Mon, 17 Jul 2023 16:42:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202305; t=1689636679;
        bh=shiLY/XSkRCzTlYzkjxVfUzyYknLrN510YfygyODCLc=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=blFa2l19RPZvvd0A7YuVXQbS3msb6aLFXfKpHQqiJ0WRISNuZAwKCzERtSliZGrTA
         Rr4Gk8y+YIeYc81FHL2yFWYHVHz1vYAXKH0+9XiBaOYDEubQxLgwKFViqhIyohvBx0
         /lQr98W0GwMvIwXGhjuzPabkmFZ4v4HL1qLNVpQP/fxL3onBMeHdUunuP2tD1QlWEs
         oFz7Pfaf6WvqQ3OAhMfP2Zy2O2EOhqj+mNN4Z0pbnHTtCZQLgXMcPPUy/nzn1SE6CP
         Z+q+R6jgym6Kyz9EssZgfZicz/xDv+mwt72Q3YcUspvnKlwoJiE4qmOZ75hOoTFZ+R
         g10lJNYNM3nIw==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 0B669335A;
        Tue, 18 Jul 2023 01:31:19 +0200 (CEST)
Date:   Tue, 18 Jul 2023 01:31:17 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org, Jakub Wilk <jwilk@jwilk.net>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: [PATCH v6] grantpt.3: no-op on modern glibc and other UNIXes,
 HISTORYise
Message-ID: <4ag7sqe4pro4yguwbik6bdlfs75erm5ftip7c2ukazlubklr7y@ornznqzh7jle>
References: <7d88523e-d0be-e65e-2dd3-d7776960dde8@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="sl4zqhs4ksw7lpry"
Content-Disposition: inline
In-Reply-To: <7d88523e-d0be-e65e-2dd3-d7776960dde8@kernel.org>
User-Agent: NeoMutt/20230517
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        RDNS_DYNAMIC,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--sl4zqhs4ksw7lpry
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

There really aren't many cohesive "versions" of this =E2=80=92 indeed, so l=
ong
as grantpt(3) exists it behaves precisely as described here =E2=80=92
inasmuch as different systems, historically, had different ptys,
and thus different implementations. These are all but trivia.

Cc: Jakub Wilk <jwilk@jwilk.net>
Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
I originally thought to do so, but decided against it because I'm not
substantially changing this paragraph and it's already in VERSIONS...
Moved with rationale added.

Also, administriva-wise, git pull tells me
  [PATCH 1/2] statfs.2: unshade as deprecated, but direct to statvfs(3)
with msgid
  <b4b871ffdf8f764ffd6c25039f3944b08748bd3e.1687553930.git.nabijaczleweli@n=
abijaczleweli.xyz>
is the last outstanding patch I have rn, sans this one.

 man3/grantpt.3 | 22 ++++++++++------------
 1 file changed, 10 insertions(+), 12 deletions(-)

diff --git a/man3/grantpt.3 b/man3/grantpt.3
index a19172a3e..949f70de9 100644
--- a/man3/grantpt.3
+++ b/man3/grantpt.3
@@ -83,18 +83,6 @@ .SH ATTRIBUTES
 .hy
 .ad
 .sp 1
-.SH VERSIONS
-Many systems implement this function via a set-user-ID helper binary
-called "pt_chown".
-On Linux systems with a devpts filesystem (present since Linux 2.2),
-the kernel normally sets the correct ownership and permissions
-for the pseudoterminal slave when the master is opened
-.RB ( posix_openpt (3)),
-so that nothing must be done by
-.BR grantpt ().
-Thus, no such helper binary is required
-(and indeed it is configured to be absent during the
-glibc build that is typical on many systems).
 .SH STANDARDS
 POSIX.1-2008.
 .SH HISTORY
@@ -103,6 +91,16 @@ .SH HISTORY
 .PP
 This is part of the UNIX 98 pseudoterminal support, see
 .BR pts (4).
+.PP
+Historical systems implemented this function via a set-user-ID helper bina=
ry
+called "pt_chown".
+glibc on Linux before glibc 2.33 could do so as well,
+in order to support configurations with only BSD pseudoterminals;
+this support has been removed.
+On modern systems this is either a no-op
+\[em]with permissions configured on pty allocation, as is the case on Linu=
x\[em]
+or an
+.BR ioctl (2).
 .SH SEE ALSO
 .BR open (2),
 .BR posix_openpt (3),
--=20
2.39.2

--sl4zqhs4ksw7lpry
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmS1z0UACgkQvP0LAY0m
WPGcWQ//a2RGtNrwA4tQFQhLZarTDhIG6NHhJFo7W3tO9QO1vjpQ45qoTkqxOYDA
DuyGfUrpWPUOJS0Woa/UbBX+2KW8ix2nlvtfcpdFpOPZnbcOQLvBb5mgpKg+Z1GQ
+7DDXVv/C4sY5OhRo8YciZmD3L++tJrgc+xv9zlwgAaInSUgBVT+p7jyX9Paa42h
6apVer9YrlvvcoL79Ws0vKx90ffN5k2boh38W0vUf/8kB/uq57jw2a/xOxMp0OSl
Nuv4C29LmgYUAXLixG3LQWGySuphPslr7rlB6gk1NXh8sMcF3i/wWDttx6EAWGXu
SVWRQepzGVxTQ3Yz3tP5f/Lbd21Zo3QdVOnqGqe7fEAU8AS1+QO+CeFDApKbbMve
remDmj+7Kq126aYQ595Sw33s0yQwxCN9GnHOOgiFp4kfBtKRgDHskRrkRJk5y/f+
9Qc4brM78wWnYpgbnrUiF8QEm4g3LTH5URSVD0baXCOJsO+qWu3z23EMMqnmolyz
WFR77J0QO2T080xBG5cRpugWuFYNNq60XKfRJJkGKqCqnPFCDOJRLwFzNARj0exJ
ZBk5sbc4XlM920AS5g4WxynFrjxRkNT8crsfHacdK7ABnMjH2wKmmB9TtaLzyODw
gU3v0/a1eoSpXw7G3Vm0JQYBjZmSR6LG7huRNwnPcFtiLwA3X7M=
=unuQ
-----END PGP SIGNATURE-----

--sl4zqhs4ksw7lpry--
