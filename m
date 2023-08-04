Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5FBF17703D6
	for <lists+linux-man@lfdr.de>; Fri,  4 Aug 2023 17:03:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229584AbjHDPDk (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 4 Aug 2023 11:03:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230262AbjHDPDj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 4 Aug 2023 11:03:39 -0400
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id EC0854C02
        for <linux-man@vger.kernel.org>; Fri,  4 Aug 2023 08:03:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202305; t=1691161409;
        bh=Qzw6XNAPedoIorwXFASpI6R9qkrd4gjA7dvs6CQJBGw=;
        h=Date:From:To:Subject:References:In-Reply-To:From;
        b=V3mni5VAVM3n6kQXk87AeZZpXhyU/e7ODF3F8pKJhvNS8K87+gGAyK81xjW5qZCse
         iyv+cfJzcCPlhfPs+RwOG5ePpamHtWRNhEbknMQ9qXdj0K5LaY3mBkB9hov9hlk/z3
         5uvlB13Jzt7h/Jo2HCQhS4zS6OA9JEcdbGhVTd/TIuHz9m2fbvpG1tRIiIFj4ONaRm
         p1b9vbpLiUAF3NjsIGx0oeqg0/WIETm7FrV5AudWc5TmRmkpfnakrUel4/gbSq/JDX
         o5nK4VwAjBluLacaVVKqfZ1fowrzfkhJuuunDVfeTSO6KtWHqxkhteUkvcMOdKcSPb
         /jdPGo4wwW1GA==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 942F65716;
        Fri,  4 Aug 2023 17:03:29 +0200 (CEST)
Date:   Fri, 4 Aug 2023 17:03:28 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Guillem Jover <guillem@hadrons.org>,
        Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Subject: [PATCH v3] fsync.2: no writability requirements
Message-ID: <6y74nb7ygo2r2amygscvzzzjaqaglgusebkk5jrr2ephf4lomr@vvalk7o3hqkj>
References: <5lp4wlvjlptmb6iklqi57qgznrnwkvntlykadli3xnarevhmrz@x23swc6t3qap>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="f6g5ecpz57d733sg"
Content-Disposition: inline
In-Reply-To: <5lp4wlvjlptmb6iklqi57qgznrnwkvntlykadli3xnarevhmrz@x23swc6t3qap>
User-Agent: NeoMutt/20230517
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_PASS,SPF_PASS,URIBL_BLOCKED,URI_HEX autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--f6g5ecpz57d733sg
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Since Issue 3 (original release), fsync() was required to operate on
all valid fds. Since Issue 7 2018, fdatasync() is as well (and required
writability only by editorial mistake):
  https://www.austingroupbugs.net/view.php?id=3D501

"Some UNIXes require the fd to be writable" is a
needlessly-adversarial-to-the-user =E2=80=92
  https://101010.pl/@eater@cijber.social/110824211348995583
=E2=80=92 way of saying "HP-UX and AIX have always been broken": just say t=
hat.

Originally appeared in 4.2BSD (4.1c.2BSD) so touch that as well since
we're mentioning the original interface.

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man2/fsync.2 | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/man2/fsync.2 b/man2/fsync.2
index 1043e6a1b..036af0a9e 100644
--- a/man2/fsync.2
+++ b/man2/fsync.2
@@ -155,16 +155,10 @@ .SH VERSIONS
 .\" POSIX.1-2001: It shall be defined to -1 or 0 or 200112L.
 .\" -1: unavailable, 0: ask using sysconf().
 .\" glibc defines them to 1.
-.PP
-On some UNIX systems (but not Linux),
-.I fd
-must be a
-.I writable
-file descriptor.
 .SH STANDARDS
 POSIX.1-2008.
 .SH HISTORY
-POSIX.1-2001, 4.3BSD.
+POSIX.1-2001, 4.2BSD.
 .PP
 In Linux 2.2 and earlier,
 .BR fdatasync ()
@@ -181,6 +175,13 @@ .SH HISTORY
 or
 .BR sdparm (8)
 to guarantee safe operation.
+.PP
+Under AT&T UNIX System V Release 4
+.I fd
+needs to be opened for writing.
+This is by itself incompatible with the original BSD interface
+and forbidden by POSIX,
+but nevertheless survives in HP-UX and AIX.
 .SH SEE ALSO
 .BR sync (1),
 .BR bdflush (2),
--=20
2.39.2

--f6g5ecpz57d733sg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmTNE0AACgkQvP0LAY0m
WPEWlxAAhLPwohlRSuDYnGZUyRckfWrXf+d64/jFpSyl4PUByn3hGCKX/Qdj4QcU
0qWMhVb/pFNZl50C2wMTQXZBNxIArPDBbrqpUkDMDUoJZpZjBJznmpyn0YpxeWAY
X5flPfquMN7kP8oybAPx09Z9mvhPdUjqzciiW1w/Bz4sSKJWpxWQA+aTOQAhAng0
ZBSnJA1WMKCqPv5JUZ/G513lRkDFKUjCZXgpe/3oLGveNpcUQCmI/78rIZTavpTi
yJ6EkwpiAxeu+0HzFk6YrEqZl1e3RvFnoTj+fDXiuE7hUVIfUpkZh9MUBvxPW8hu
0Ias2cG4GtBwAuFdGuUyPmnNw2XBBCLkvgsNc5+B35GrCOcva926rJ52sZFqk7bf
+MWVbG5aaZ9k4Zlf7mlh+OLWoXYzpeFsLzijW1dN8i2RW8CXfGJd5eHb6e0B1fTk
UpnFVltlRZBvOLl/qYu4CjeQrxqsQbnNVdbHkoHlcDy/NdcuEtDVheKfUUbXIODu
AA4MLIhG4tKBETlzyj0iqjGgmGzfw+k1tiptuaQQGEhUqmF6ckBJ0NA6GaBlazRN
dEbyoT84PaqmQ03SUg8IvYJ3ncpK2s+ubHwIDp1sov1jd1mRGvwKYrNxJBC5Jf5U
QNOKaZ1YxDQBUa/o0SxVLme3v9YQasmmx+gToffhmaNAuJjjbro=
=UdkB
-----END PGP SIGNATURE-----

--f6g5ecpz57d733sg--
