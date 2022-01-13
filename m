Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0EFEF48D06D
	for <lists+linux-man@lfdr.de>; Thu, 13 Jan 2022 03:28:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231690AbiAMC2G (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 12 Jan 2022 21:28:06 -0500
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:49284 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S231593AbiAMC2D (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 12 Jan 2022 21:28:03 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 01EC521C8;
        Thu, 13 Jan 2022 03:27:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202006; t=1642040877;
        bh=VFzvc7k+xOeBGzjeBY6NRzNxz+Na4tFhpEJV/9dD9vc=;
        h=Date:From:To:Cc:Subject:From;
        b=aLZSx3pMYl/0yNlbfjge7AV/ySNmDv0AT9mMXZOkZ2Gyo9GtHhLXV1AW6/9W7ZHCM
         TNxo6iFzkkiG/nKihmYf8t7QjrAgjz5zkUHmVoWcQfsOOE29PzfuoAQcSbs1L5xs/P
         DwF/G2Bj5WNx153D8biTDJFmzm8FWrcCRNiVsZre051Yxo20y0OR9ZlbvvO4y0tjh1
         CONb5m8QpraDb78cfK7DP6y9LbL76YAWwSR97VF8QcED4P8vsaotLBx86L4ldM995g
         kd/QqU7hTXxdZlCY/OGDh39+bAB+4SiA0Wff/uEzTdIpPNLa2GLRe/uD2py1GiobXg
         s39FyVIf4/MfA==
Date:   Thu, 13 Jan 2022 03:27:55 +0100
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] epoll_ctl.2: replace input flag footnotes with a list section
Message-ID: <20220113022755.qs32mcusuuca6dv3@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="bl3evnlbzktf3a76"
Content-Disposition: inline
User-Agent: NeoMutt/20211029
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--bl3evnlbzktf3a76
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

This is shorter, clearly separates the events from the flags,
and more consistent (cf. EPOLLEXCLUSIVE which has a different message
than the rest)

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man2/epoll_ctl.2 | 33 +++------------------------------
 1 file changed, 3 insertions(+), 30 deletions(-)

diff --git a/man2/epoll_ctl.2 b/man2/epoll_ctl.2
index ec31cac72..c9f9649a5 100644
--- a/man2/epoll_ctl.2
+++ b/man2/epoll_ctl.2
@@ -156,6 +156,9 @@ Note that when reading from a channel such as a pipe or=
 a stream socket,
 this event merely indicates that the peer closed its end of the channel.
 Subsequent reads from the channel will return 0 (end of file)
 only after all outstanding data in the channel has been consumed.
+.PP
+And one of the following input flags, which are never returned by
+.BR epoll_wait (2):
 .TP
 .B EPOLLET
 Requests edge-triggered notification for the associated file descriptor.
@@ -166,13 +169,6 @@ See
 .BR epoll (7)
 for more detailed information about edge-triggered and
 level-triggered notification.
-.IP
-This flag is an input flag for the
-.I event.events
-field when calling
-.BR epoll_ctl ();
-it is never returned by
-.BR epoll_wait (2).
 .TP
 .BR EPOLLONESHOT " (since Linux 2.6.2)"
 Requests one-shot notification for the associated file descriptor.
@@ -187,13 +183,6 @@ The user must call
 with
 .B EPOLL_CTL_MOD
 to rearm the file descriptor with a new event mask.
-.IP
-This flag is an input flag for the
-.I event.events
-field when calling
-.BR epoll_ctl ();
-it is never returned by
-.BR epoll_wait (2).
 .TP
 .BR EPOLLWAKEUP " (since Linux 3.5)"
 .\" commit 4d7e30d98939a0340022ccd49325a3d70f7e0238
@@ -222,13 +211,6 @@ or the clearing of
 for the event file descriptor with
 .BR EPOLL_CTL_MOD .
 See also BUGS.
-.IP
-This flag is an input flag for the
-.I event.events
-field when calling
-.BR epoll_ctl ();
-it is never returned by
-.BR epoll_wait (2).
 .TP
 .BR EPOLLEXCLUSIVE " (since Linux 4.5)"
 Sets an exclusive wakeup mode for the epoll file descriptor that is being
@@ -299,15 +281,6 @@ and specifies the target file descriptor
 as an epoll instance will likewise fail.
 The error in all of these cases is
 .BR EINVAL .
-.IP
-The
-.BR EPOLLEXCLUSIVE
-flag is an input flag for the
-.I event.events
-field when calling
-.BR epoll_ctl ();
-it is never returned by
-.BR epoll_wait (2).
 .SH RETURN VALUE
 When successful,
 .BR epoll_ctl ()
--=20
2.30.2

--bl3evnlbzktf3a76
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmHfjisACgkQvP0LAY0m
WPFVtw/9F4KrabUObq8j/DPFdpesPM7yi8tMJibMjwZp6YrSalVvIO0nyKFF5DZG
Jx2YcfLmarrYuh9BPg5kGCCF5IIftwc5KXsQ67BfV68/yemYD6etSKoD2StYkiXU
02rApp+y7MinV5joR8Jv8wS118RUfVUqhTFExxrHKkvF2NtkBN6U5K+tVw1s/ka6
bQVlc1XUewslubIJb/zASxmh/hrCt4al10YUE+En/i8LKnsNRCGmVwFKjqEiQgtN
RYrl5qJoAW5yHAxD5yWu2hIYCv/fvrPm/txfKaXsfqOsKrxwgMbPKTR/G+3hSlnG
E5MMuDT0CquaM94YZSzBYOY+4I+aDseTC6qxXMjpgwt1KFiF2d93jxbmxiBUY+u3
mQHYFaQBr84mAv4sTcQRVZJaHtDKeTNG3e9UejcZsZSzRURDs1//HsNiWNTMy5vD
rcB9wzmq5j0NI2blYZo5lKiI1n4vOlOED12aYGYdFeO2en6pDOwvGDNqfoK9QHaF
V+1mHANStLM8YqGEBbFKnaJUZ0gZrFGtKjdTC86+1+Vbh9EDIPL4an/FRcjkZkDq
lb9ttvnqVIIszU1iM/BMzRvNGnfs6isovrV/Hcw4pH4RuTIZcbsehImbsDCubCyN
76Dzv104C/WNKt1spUNQPo+lJg9++RZpBSN2F5iPjMz3tq2lAic=
=cLzS
-----END PGP SIGNATURE-----

--bl3evnlbzktf3a76--
