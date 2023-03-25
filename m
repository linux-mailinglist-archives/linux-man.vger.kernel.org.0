Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7ED5C6C90DD
	for <lists+linux-man@lfdr.de>; Sat, 25 Mar 2023 22:00:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229528AbjCYVAm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 25 Mar 2023 17:00:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229446AbjCYVAl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 25 Mar 2023 17:00:41 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 0ED952706
        for <linux-man@vger.kernel.org>; Sat, 25 Mar 2023 14:00:39 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 81C2043DE;
        Sat, 25 Mar 2023 22:00:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202211; t=1679778035;
        bh=k1zlkPjXL6Jt+P/kyW7UOli+vxM4ffjP7sTamkSCbTU=;
        h=Date:From:To:Cc:Subject:From;
        b=GQa+/2yKrZtpx2uC1AbK/A1D7zsXPVVwBbysK/KyATTANBf3amKIjCbfmlAF6MQHb
         5ov7ZjNLnq1crI2fZcW07eeZJK/lh24P1YH8oteirvfEsM1OhWtUdA14+MKg/qU0aA
         eOtD0H/qhkw0zxsg6fzZB5afncsMQwf439T4nhGx0Gh+uZpKPLFWWoKC7imspxyIgt
         krqAyBnaKx1RkuKMYNeqfCT7qyAwoXjLdJ5pJZGcqjMKcdWZq8KZ8CiLeMWT/IxXen
         aluzt8NBBINPzTGLp0oqqInfC/KRS4QcSWZwm2iM+hU5hocoUwrcnEenJuHqMDrl6k
         LQBfAq+ZkYsxw==
Date:   Sat, 25 Mar 2023 22:00:34 +0100
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] symlink.7: expound upon fs.protected_symlinks
Message-ID: <7hom4rr5yfxcoiwa3hsxlpigcotdhdrdaqaawvuedptmqxs2ny@s2wz5f2c2xjc>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="j6zq5uqndn5bzaro"
Content-Disposition: inline
User-Agent: NeoMutt/20230322
X-Spam-Status: No, score=0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,PDS_RDNS_DYNAMIC_FP,RDNS_DYNAMIC,
        SPF_HELO_PASS,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--j6zq5uqndn5bzaro
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

This is on by default in Debian, maybe the next reader won't spend an
hour tracing the kernel.

Closes: https://bugs.debian.org/1033477
Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man7/symlink.7 | 21 +++++++++++++++++----
 1 file changed, 17 insertions(+), 4 deletions(-)

diff --git a/man7/symlink.7 b/man7/symlink.7
index 77fefb743..550b60486 100644
--- a/man7/symlink.7
+++ b/man7/symlink.7
@@ -84,10 +84,23 @@ magic links have been used as attack vectors in various=
 exploits.
 The owner and group of an existing symbolic link can be changed
 using
 .BR lchown (2).
-The only time that the ownership of a symbolic link matters is
-when the link is being removed or renamed in a directory that
-has the sticky bit set (see
-.BR stat (2)).
+Only when a symbolic link is in a sticky directory (see
+.BR stat (2))
+does its ownership matter\[em]deletions and renames are subject
+to standard semantics.
+.\" Documentation/admin-guide/sysctl/fs.rst:
+.\" fs/namei.c#may_follow_link()
+Additionally, if the
+.I fs.protected_symlinks
+sysctl is set, a symbolic link may only be followed if:
+.br
+\[bu] not in a sticky, world-writable
+.RB ( o+wt )
+directory,
+.br
+\[bu] owned by the user which follows it, or
+.br
+\[bu] owned by the same user which owns the directory it resides in.
 .PP
 The last access and last modification timestamps
 of a symbolic link can be changed using
--=20
2.30.2

--j6zq5uqndn5bzaro
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmQfYPIACgkQvP0LAY0m
WPHpBxAAg3VNJhi79jHt3oQ5U5+Kk3uvx2DbTK02fwEjjEkOL5p4Kl831TQCybth
xLdRknyLWESWW54TyU81K1inaFO3dDUebKrbKzf91wpwPGzz8RRW1FNmVoCckeiv
ncXDKjFLyfpRqFZW54wEpizngVcQEeEExcmJchUBa3g13JYi9DOHBLs7uApF43Yf
BPL+brdzp7dZGOy+r0vfvL9nQXnUJCrIRCK1l5RT+WrNzVIDD7EWmOAbAo64KSov
ReqVkEAXQuol0Y8Uc5X3pOGxwCgV/1Qz7lyPKW5Z7PAPusGCtPWiLjidEFLx8ZTf
WKOicRGB56zaQoDTaPBv9Pv2LnfYe125N+1rkBa5PNTKnLDAEK/T9WyFlEKfy7OZ
iX100pIGovnYOteguZshXw8adBnRHiZv1iqa7A2T/OAmIRjwQ/5ilEGWIIjChCUN
SGVJ/NrfJpKvo3RU0yGuX8AuJZc0neeDQSLqD8ytfAqL++4N2hXqxu4cetusGZBc
VqMN/8xhcrGKvQoMufs4EFZc+XnEuj74mDgTInX/O6ejXj1Unq37hGjIbqeYxI/+
mfNoQGNQIni5/qa3shP2YMu7dugFZxRsOMDEyVxu2AO7yrxvxG4k2e7v8POV0LzZ
UrxcZ+0g/zE36r06RdrA5tyYwE6hyt0OEonjh3zurqmqkBb1ba8=
=BCUP
-----END PGP SIGNATURE-----

--j6zq5uqndn5bzaro--
