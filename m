Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 639762DD55A
	for <lists+linux-man@lfdr.de>; Thu, 17 Dec 2020 17:41:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727388AbgLQQlB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 17 Dec 2020 11:41:01 -0500
Received: from [139.28.40.42] ([139.28.40.42]:49278 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-FAIL-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S1727160AbgLQQlB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 17 Dec 2020 11:41:01 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id C49D53601E2;
        Thu, 17 Dec 2020 17:40:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=nabijaczleweli.xyz;
        s=202006; t=1608223229;
        bh=jkfJG+6ttr33gF4zDHXFUuL/W7rLecjbt8FiwCxjoQc=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=ECx13lEmFdRZobUfxE+Cqv/HkLL+AizyAi+gSp9Talo/xSrCfq6CNP5Zy859eY6PJ
         k1Mix7TQ3J8B3gbBhCi9O+qXHIwbAZ20V18alJmvV6fXgBwmIBBa7PfhBhqkUXxkEv
         TRRYcGtnvHp8VP5SeOY9HB+IS6/B8iFW3V7zFwWXRRQ5W2lzutgwA+wl5wkRQPN5u5
         MGBI8f2tkV40tdLpN6jrwWqKgLsKX112krgZtFpHNf6VyBAQAL+F3mJan+80IcaBDu
         vtgfEnU7wYQ3dtCzoc12wsQqEj7LCqP4MC6HOSVryYtSDDs66y8B6FOn6qBcIMjcU1
         lMx75XTUHerYA==
Date:   Thu, 17 Dec 2020 17:40:28 +0100
From:   Ahelenia =?utf-8?Q?Ziemia=C5=84ska?= 
        <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH 2/2] filesystems.5: note ncpfs removal from kernel
Message-ID: <20201217164028.rphpncqtdavr27uy@tarta.nabijaczleweli.xyz>
References: <4443342faae85cfa74bae6efa1a12ff40efe18c0.1608218767.git.nabijaczleweli@nabijaczleweli.xyz>
 <365585882722e9c64478aab1b558923e3153b671.1608218767.git.nabijaczleweli@nabijaczleweli.xyz>
 <71269cb4-db6e-2908-5c42-2747eb930a53@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="c2z2fwkbulgc7sxr"
Content-Disposition: inline
In-Reply-To: <71269cb4-db6e-2908-5c42-2747eb930a53@gmail.com>
User-Agent: NeoMutt/20201127
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--c2z2fwkbulgc7sxr
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 17, 2020 at 05:23:06PM +0100, Alejandro Colomar (man-pages) wro=
te:
> Could you remove the '-rc4' part from the version?
> So that we show the first stable version where it was removed.
Sure thing, see updated scissor-patch below:

-- >8 --
Subject: [PATCH 2/2] filesystems.5: note ncpfs removal from kernel

Relevant Linux commits:
 * moved to staging in 1bb8155080c652c4853e6228f8f0d262b3049699
   (describe: v4.15-rc1-129-g1bb8155080c6) in Nov 2017,
   described as "broken" and "obsolete"
 * purged in bd32895c750bcd2b511bf93917bf7ae723e3d0b6
   (describe: v4.17-rc3-1010-gbd32895c750b) in Jun 2018,
   "since no one has complained or even noticed it was gone"

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man5/filesystems.5 | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/man5/filesystems.5 b/man5/filesystems.5
index 6ec2de9f0..1eda05b22 100644
--- a/man5/filesystems.5
+++ b/man5/filesystems.5
@@ -160,6 +160,10 @@ To use
 you need special programs, which can be found at
 .UR ftp://ftp.gwdg.de\:/pub\:/linux\:/misc\:/ncpfs
 .UE .
+.IP
+The
+.B ncpfs
+filesystem was removed from the kernel in 4.17.
 .TP
 .B nfs
 is the network filesystem used to access disks located on remote computers.
--=20
2.20.1

--c2z2fwkbulgc7sxr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAl/bifwACgkQvP0LAY0m
WPHOfhAAiLLS+XeeKLQCaKzTgjegwm65hSXsBf9PkcD64hLIe0RwCKFU+MUuwS8D
9e5tmEcd9c8UQExucnvmy96zHSPoPbCu/78U0+3HhC5hYWNwPam60JvlUsvgEmiv
0HvRByBBEYuEupNcNEY4+ILUyKd0bY/nwIPkjFFCo0LB5lwJMMLSI6B62bK7kL3Z
JmujPyyhAvN/zyvd0e0KQEm4/XrBe40QvXK5sk/el5ioz1lR3n3sPINixKFOKonG
QLOacczMkiVcKEepikWs4lIGr1rHRSs/ZjRX8Ioqk0hZhuA0gRK4/bk3rfz+Pa5H
griwC19QQDVxoanangH8bNLEGZL14fHUBhzZl5s79GCRc7+HncYO07MIWa4Mi39t
xC106rLuqqyNvjuwb2B1LbLXamjuzZnfb13lbVVWhRCv70HkXEUiZ4ITw/gO/pr6
FhQHSt096Wj3WW8nXc4l9fA/H/7qRqm97b9y+gzCvlBDXIV8ZF5m6tx+D9LJl6VS
jUoJLSS9Nt1iTDDQ/1vAu5hyvfhHYnK0OU3+UeBQ/R94FHg/IgxyYYESQa790mM0
/SmluxpNQP4Doi3cIxAxL6qqUFd1TPkIRp2DiFnwabuxi+s79iO0z82r5nIQQSjW
IscL9aq6ehwOXjpuG4hvLh/DE9VdmvYq168ihq9OGmWBSMPBiAM=
=x1Yk
-----END PGP SIGNATURE-----

--c2z2fwkbulgc7sxr--
