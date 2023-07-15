Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B6782754AC5
	for <lists+linux-man@lfdr.de>; Sat, 15 Jul 2023 20:36:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229649AbjGOSgp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 15 Jul 2023 14:36:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229490AbjGOSgo (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 15 Jul 2023 14:36:44 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id EFB492702
        for <linux-man@vger.kernel.org>; Sat, 15 Jul 2023 11:36:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202305; t=1689446200;
        bh=rKLGzfztgE3DhNBA8AMBpS/9x5DGZB+cSh4RfeyNj1w=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=pIYM3F7rJa73KevIMXyXsoUxIRx7DQEiLCqSiKlbTlRUML0QhKHSL15oKPEBKXmKh
         SDdYBRZMp4//xxhjU3RH2uJKP2ihWSTE488kirNDQd9mA2uZO2QYdjSHiG/mMBFZfv
         M27zpVzFYS5JyY/UkCHHWWsIZ9R5XC60pMiHMS+xZ0kRptSYI3JgbuNB6OaJ5MFFA0
         0BIU2bvAw6W+p51KlR/abC2rsW4oyoITv9kYI6RzLMM3/AGWt8Rav400pD5rub2uym
         +ojkvh2/eSmRlOpfkrPOZTAh4Rb+M8T4zdcLhpHl31TLwcqGP3P40BVyN2B/SvOlpL
         VQOHq1c5xXD5w==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 9638134A4;
        Sat, 15 Jul 2023 20:36:40 +0200 (CEST)
Date:   Sat, 15 Jul 2023 20:36:39 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx@kernel.org>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v3] pipe.7: document read()s with O_NONBLOCK
Message-ID: <ohlr6zojoreknhkmbmrsjwtkhpm6hj7twgh6lbtpo2cyslb7nz@omy6j2ilcano>
References: <c45d6b71-f054-c3df-9a9f-749f30aaabee@kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="52w77wbl3snkc3r3"
Content-Disposition: inline
In-Reply-To: <c45d6b71-f054-c3df-9a9f-749f30aaabee@kernel.org>
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


--52w77wbl3snkc3r3
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Which don't behave like you may expect them to;
unprimed, I expected the natural extension of either:
files   (being a  filesystem object), always returning 0 if no data, or
sockets (being an IPC mechanism),     always EAGAINing   if no data.

The pipe semantics make sense of course =E2=80=92 pipes can be modelled as
sockets if there aren't writers, but files if there are; indeed,
this makes sense as the writer continuously appending a sliding
"window" over a file =E2=80=92 but they're unique amongst the UNIX file typ=
es,
but arriving at that specific interaction table is non-obvious,
especially to a user.

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

--52w77wbl3snkc3r3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmSy5zcACgkQvP0LAY0m
WPGx6Q//attpYtMmkL1YbPdzOOm4TtznI/vGpjaEfPQAZcK4vy+bOmuiUgvzP2/V
OGBPhdH0tdj3rgj8KK7PA5Ok6aNB6bIW7rQbVydNQmtn6NLLiPo+3LeucctRLIqt
I3VWxO+KlQ4yrzTvFXj086ztKIzfHYDd8nrNnuhtRoK78V4PnlYm5TOfKhzMmRmx
lDHNyGAvCooGQLBH8ig2/CgdJDOHxqSGyBo5c2vOsFpZR3glmuhcpirfUNzwkxhx
/ZVT1SvU72uqtHM7ZW9zji0X1gCzQP+i+9hldj06N574VjIdtepSWVCH5EjvoHyG
6OtFp2sdYZqsF/uIC/xIeyW27ZfASv6IzJIF+vLtSLfyopBjmH1U+4Y2cicLh1EY
58VjrBHPC+7F/G7KYMcbF6q7V2dA+AhtPYFbBwAltH+L4dVIJ+O/CPAdvrc/6C3g
CsHan3HmARIQ+MOqL2JachkdAo3hX2g8GQKyWaAckuO+yTaHDOdFMBd65lOFsul0
sCC8VhiFclzaLJ/eB4sbneG59GduxqW31dBVwSKNiGDE80jxPo709jYEQbaG4BRS
YHKh6u/gRTftWNXRUL+dSLyIuo8nzaquEo+X09PbWuYGVFTaqUDnmfTrP8PpKbj3
YoyGNlJFl8qZlu3iRImVuZpAnCrAE9yAJQfz+43Nvl9BN2yK2vE=
=yvMn
-----END PGP SIGNATURE-----

--52w77wbl3snkc3r3--
