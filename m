Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AD0E05A9921
	for <lists+linux-man@lfdr.de>; Thu,  1 Sep 2022 15:40:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232845AbiIANix (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Sep 2022 09:38:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233399AbiIANiJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Sep 2022 09:38:09 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 89BF97E814
        for <linux-man@vger.kernel.org>; Thu,  1 Sep 2022 06:36:24 -0700 (PDT)
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 8C44FA04;
        Thu,  1 Sep 2022 15:36:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202205; t=1662039383;
        bh=k8jjJq76/85AFkiJKu8MGHYv0lW/2cEqrELQhey2X5c=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=DXMKBWcOb4rQtgk6OJxPYOFhWuJgwy6t9B0skpn4cbYFjiwedAgHqmWEoNcK0H598
         on++giWjtd23lIVppcLDnT1n3kGMw0mKP+7oNhsLd6WX9mdD1qK0m8gmn93c47hnA/
         Jl9Fy3jGA7GxXddeQkysOTOQgj16IbdQ+snWWLi0dFBY3RIXaGnfQmqRfWnei95BAM
         ctvoMxPTBAkaaHUaWaWDlmA1xUp1l4Ko8nVKaQlv0YSeZLup8pCSEq66+ZrlxEhrY5
         /sAwT05+rUkbri9XxHGvE2aOfpd2g+NTF3je+5BPuDUcDH57Tm3B1e3KOXFnd8k3oj
         h6xPXcetR6uRHBLJ3Ts4WozQrMLMt+vI7aDwu9Ff/RsdsI1MQLXI17Cm2zMJLSfe2f
         HzHr698cSdoT+d79xFi8oWeQ3e3u3WndBt0LEvShyrWZwcubrUv+vAIiBdCqyAH+et
         O7dXw/gxkfIPF2idlpQaukAK+aw3w5yh/wOpkxEQhNrQ2lEcd34NIR4+9I9ozyqiYV
         Nf4qQMP2lnjJ/o9A48B3VHo7p3X7+bYmgm9dyN0BjWgB607MmSCSjaJMXdPkdTwze5
         0ZvMJ8SVjpEIyB/hPbj/Qu55ooeXEiyC16tcjeUwtvVG6JzvDtfGgn+VYOruuxSNVu
         PJtr33dho0w/Yb6qR+CMqZpc=
Date:   Thu, 1 Sep 2022 15:36:22 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH 3/4] ioctl_console.2: devices/char/console.c and sel_buffer
 don't exist anymore
Message-ID: <77d0c2d9ef77bc6236e5cc3d6df9d395adddbb9f.1662039344.git.nabijaczleweli@nabijaczleweli.xyz>
References: <120d03d4df30e5cdd87a850abff5eae116ed8963.1662039344.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="ozcsmt3frfgmsu53"
Content-Disposition: inline
In-Reply-To: <120d03d4df30e5cdd87a850abff5eae116ed8963.1662039344.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20220429
X-Spam-Status: No, score=0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FROM_SUSPICIOUS_NTLD,
        PDS_OTHER_BAD_TLD,RDNS_DYNAMIC,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--ozcsmt3frfgmsu53
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

And haven't for over a decade.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man2/ioctl_console.2 | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/man2/ioctl_console.2 b/man2/ioctl_console.2
index 4de0673af..6532f1069 100644
--- a/man2/ioctl_console.2
+++ b/man2/ioctl_console.2
@@ -711,8 +711,7 @@ is 0 for character-by-character selection,
 1 for word-by-word selection,
 or 2 for line-by-line selection.
 The indicated screen characters are highlighted and saved
-in the static array sel_buffer in
-.IR devices/char/console.c .
+in a kernel buffer.
 .TP
 .BR TIOCLINUX ", " subcode =3D TIOCL_PASTESEL
 Paste selection.
--=20
2.30.2


--ozcsmt3frfgmsu53
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmMQtVYACgkQvP0LAY0m
WPH38Q/9H/FyazUYQJ9t7/aZytZhZM/rNA3YWnHrwyK54bfOEAp2h5fTpdbPNdey
Jx+RM9U8gaJTp8K7Ol8KP92R+aeem+o87wA8Q9PKItNVn8rzCbwvf/sTFcdxa+lE
PfR1hJoDYrvR43OLuyraPHIGuN3Mpm4M1SfDHKW9NHgoH/2o6aB+FEdwdKM5Ie2j
XDVhFtFL5TiD+kOaqYL3az/wppzq9YWtkVDI4aGt532DZFl5eTihhEN33OGdfsNl
ECaOppgu3AYPfTdSGCjIeo3cBqVBFadwVwREKzWPzAr6MuuWdpMo0MsNsZ4ZUrFd
nFHr1Y//xQB78fC9d6EFneYvM6Friy1iniNQeCUjPXyIdlsx14U3LFVpFFHh3lUt
q0Fs9alMfX1RoCMx+U9ZHA2VRt19y3qirKt495fhQ7Xn7zdnwsN4pCXujOXKcx/1
V+AqCTPUpar41gsZ82kUz0+64ujOZcakfny5287loZ1xc6wcU92LjWdPEFq75hGd
vPrQXAULr3D/4Tqjx3+S+WHAw0+nGTOjvE3Ow33V8yFrNxtthLT83PNvDtGiwTa4
oLF7/2YAvuHb6ChQaDtcH4llbFiHQMZdg3OqrAflfxhLJ37W7jMXIKR/jDls00dL
tJon7qn5IQqNwXh1ofhP2CGblXI4EH4c6+F2nZvQHdnj+QvLmR8=
=4UKF
-----END PGP SIGNATURE-----

--ozcsmt3frfgmsu53--
