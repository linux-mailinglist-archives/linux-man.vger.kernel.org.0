Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EC73B74C7E1
	for <lists+linux-man@lfdr.de>; Sun,  9 Jul 2023 21:45:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229655AbjGITpz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 Jul 2023 15:45:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229658AbjGITpy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 Jul 2023 15:45:54 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id A8A1CE8
        for <linux-man@vger.kernel.org>; Sun,  9 Jul 2023 12:45:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202305; t=1688931949;
        bh=GmxUpSiMTrbYn4QpRTeC6NC+TphlZnUAYJYP7nURNNM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=QTZ53DKOoNyOdoVNk1YlWmyQmTUSvpIxYzQ6+KKZ2WtRBugB2od2ijncp58IWoW01
         BMnGrBCRopAWZ+I0z0MMitm/D44spQflvzFICQRLb9fnAx46PAhDVPqAmbwo0YjClY
         avbBGME+KdbiMh/ZYRKNyboOc4mgo364ujgGJaJMquKDQSMF3iSA5pp9kYPNDQD3Ku
         TPy/4DEtcLbVx9N5pAbFBVp7UsXoPKHaaa7rb8sjiCLvlC7mSAdFf2FFQLnbOYl7/g
         mFBEzepT1pToR+n3j7AgR0c/NrNr7IlPJIsM2OsjL+FpJPaXyVKJEYbfBvLwNrpyyL
         aYD56DjB+XkdQ==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id A7BCB2858;
        Sun,  9 Jul 2023 21:45:49 +0200 (CEST)
Date:   Sun, 9 Jul 2023 21:45:48 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2] pipe.7: document read()s with O_NONBLOCK
Message-ID: <fomznwcpuyco5gc43fipa6tve32yh7rhtzjfsj3ivpmnmmvmxv@gs52k2jhlflu>
References: <ff0e5304-2571-2f83-52c6-c07dbed65d3c@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="wk4nabepgqov6yc5"
Content-Disposition: inline
In-Reply-To: <ff0e5304-2571-2f83-52c6-c07dbed65d3c@kernel.org>
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


--wk4nabepgqov6yc5
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Which don't behave like you may expect them to.

Quoth Issue 8 Draft 3:
60746  When attempting to read from an empty pipe or FIFO:
60747    =E2=80=A2 If no process has the pipe open for writing, read( ) sha=
ll return 0 to indicate end-of-file.
60748    =E2=80=A2 If some process has the pipe open for writing and O_NONB=
LOCK is set, read( ) shall return
60749      =E2=88=921 and set errno to [EAGAIN].
60750    =E2=80=A2 If some process has the pipe open for writing and O_NONB=
LOCK is clear, read( ) shall
60751      block the calling thread until some data is written or the pipe =
is closed by all processes that
60752      had the pipe open for writing.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
Killed the "oddities" line. But yes, I'm sure.
/I/ had the luxury of knowing to go to the standard,
other users will give up.

 man7/pipe.7 | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/man7/pipe.7 b/man7/pipe.7
index c3e06bdab..91554fa3c 100644
--- a/man7/pipe.7
+++ b/man7/pipe.7
@@ -56,12 +56,19 @@ .SS I/O on pipes and FIFOs
 .BR write (2)
 blocks until sufficient data has been read from the pipe
 to allow the write to complete.
+.PP
 Nonblocking I/O is possible by using the
 .BR fcntl (2)
 .B F_SETFL
 operation to enable the
 .B O_NONBLOCK
-open file status flag.
+open file status flag or by opening a
+.BR fifo (7)
+with
+.BR O_NONBLOCK .
+If any process has the pipe open for writing, reads fail with
+.BR EAGAIN ;
+otherwise\[em]with no potential writers\[em]reads succeed and return empty.
 .PP
 The communication channel provided by a pipe is a
 .IR "byte stream" :
--=20
2.39.2

--wk4nabepgqov6yc5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmSrDmwACgkQvP0LAY0m
WPEmsg//Uy+QV4oRsMz5frBRQ7XF7iYafbe4sSX1Xb/orCqPXFCwiwovO/DOo1Ok
xxpnyY1TuJpeg8ghHrOPYE2iv5PKnDriqc3pTqeR+V3QrTuK5d2AVmcpmU3ErXrq
7HoIG1wCj6QQTTpfTaAIfyLZhAvQx4r88fWzRLn8+oGUcNbh4JJvlfCyzQoOR9Gh
0C08S+dp0x4Klch7g04Y7yzlRxmLxBKqiP4bfIXpJxL7w7eL5rNkyPrIBH6isRs5
0OD6SL5oviFzHm97GsZ8Ir56fvb0eMIEByl4mLEui9bMkrhY5iLKOKKMO3vq15d8
KgEl8U4Bc1wVU//8NkqCwTq1nD/tlNApc5hyZSSsvBYYy6ASjXrlXmnKXsP97LnQ
KPzMRdoYwP1/YhArZCr23QUbO15zvNOL7xeTOVzKCou7WMOO57SZ3p5pqEFNBKXa
VwXhzUG2R4+SKHZpeFeAYPLWlN90nsEQXH8cTSnE+Yo0GPrshRgd72vJl7XKlmpm
Ayqk6KeSq29jksg15HywsDy6GeGEgsIUHEuFdjDYQ5clgXt2j8SnCkCxvgC7f05W
BWX4xMv8ZEVzIthoEOxV+nGh0EDaVdcNhgG1lPv1FiUPdHDxUEDwiVBmta7UuqhD
ahYxEYFNKYwHSkuqOGWkI0vIrbacmsR5DuZOUCJl43jYmCFE1Dk=
=5vAn
-----END PGP SIGNATURE-----

--wk4nabepgqov6yc5--
