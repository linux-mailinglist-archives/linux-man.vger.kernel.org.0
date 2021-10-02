Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A266E41FBC0
	for <lists+linux-man@lfdr.de>; Sat,  2 Oct 2021 14:18:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233110AbhJBMUm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 2 Oct 2021 08:20:42 -0400
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:42276 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S233082AbhJBMUm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 2 Oct 2021 08:20:42 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 86C153612AB;
        Sat,  2 Oct 2021 14:18:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=nabijaczleweli.xyz;
        s=202006; t=1633177135;
        bh=W6B4Lr5WWvx+7J9zbIkrh1kWiH+xotQA3e/TpFyzsbM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=UtEzBF1vYKMAdMnSIYQ2V1nisgLWsBNvKHlJvrpXxQGJvw73MCM2Q40Sh9Fe0Bfir
         IOCAc+ViCLNrHCkBZS6X9KZ5TQ0+bwvnX26tFvQVB27D/Rjlp9GFL12Eku76GF3FaE
         TafyuUZA45wQUJ4qOErGSX1aW9/8WteJUGApjeM76zgZ3RVNIBsaAB9Rl8LlEumkAw
         9mdaEBD92+7m5kr69d5RjfRSrz/7FTSqZ7hBzOQKz7zS0ZY0102hg8fVnWs425G6c2
         xFMr54ZD+ZfI/ZW/mCcKCTwPMFL1H2lon2liM+SIIKMrMn9O665KJaEjF+qZsMhGnU
         zR91sO27cKGOA==
Date:   Sat, 2 Oct 2021 14:18:54 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH v2 2/2] rpmatch.3: clarify availability to glibc, Fx, and AIX
Message-ID: <65b6fbe81776d9d92025b60b6bc242d9d44f0be3.1633177011.git.nabijaczleweli@nabijaczleweli.xyz>
References: <8f5f9b7d4f067a4a479fe400dee99120bf0a1abd.1632231952.git.nabijaczleweli@nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="hbj6acriug7aq6bl"
Content-Disposition: inline
In-Reply-To: <8f5f9b7d4f067a4a479fe400dee99120bf0a1abd.1632231952.git.nabijaczleweli@nabijaczleweli.xyz>
User-Agent: NeoMutt/20210205
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--hbj6acriug7aq6bl
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

"On a few other systems" is misleading, implying that it's available on
/this/ system; this is not strictly true, seeing as musl doesn't have it

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man3/rpmatch.3 | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/man3/rpmatch.3 b/man3/rpmatch.3
index 1f9732e3f..39e3926d7 100644
--- a/man3/rpmatch.3
+++ b/man3/rpmatch.3
@@ -120,9 +120,8 @@ T}	Thread safety	MT-Safe locale
 .sp 1
 .SH CONFORMING TO
 .BR rpmatch ()
-is not required by any standard, but
-is available on a few other systems.
-.\" It is available on at least AIX 5.1 and FreeBSD 6.0.
+is not required by any standard,
+but available under the GNU C library, FreeBSD, and AIX.
 .SH BUGS
 The
 .BR YESEXPR " and " NOEXPR
--=20
2.20.1

--hbj6acriug7aq6bl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmFYTi4ACgkQvP0LAY0m
WPFz3g//VdjMSZNFTc8K5FIoEmX29S7/CdOyQ2E0MEf8pffq2+9I6iHyWgoIrSXr
pNjIgP53Wb2jXZA/qHl/3aytLxNsOpKyH/hi5GQoPA3dl3A1OrfNV3GaO4LfI+nl
VNbq5PjGUhhgXFjjh1HMWj5aPXCIsZ6Hzqz/oUUIcgMq8k9wnzRfvlWl5J5Swf3V
GA3mxzzRx9aTgUyFniIYD4UoYOOUBWwsRRnNjTDJe+RBBBKoNUYk8BK5fqJ8yqJS
I/oeAcq3M623YwvXigp+bKXGss2CIYif13DQ0qz4StY/RXnOljX5JjX8M1lSZTtp
PtrSTE+Kbv6JVzk70UvxdyFcthrnfI91T2huZxqn+O4y1MAZkFzZTg8CMRkjGzuR
nqYU8955Ne+RdfOixW+qB6hyrgGspNCx4ZrHCdymKP1rW0Civ7g0RCw2vI0OguQ2
qLkJvdhR4UrgcZbM1wwmS63GdGy/Gr8Bi5/sHLvL+heqRyytCTRDWhqi617ltYGH
07iXcph7LOthuVl+5NESkoU5GygnQVNrMYOYETc9Nvm4YmTXwPq7RisaipX/a5MD
weR7AifwHnQPz6I6LyUC7hfPCKSF/mNKDQoNMfbJehZ5Lj193dcarozy1BttzIP9
dR+emgVCu6u9WnTk83oQwoDu2UE6ujdOURYFbrrTrWQUliKVsDc=
=iVVc
-----END PGP SIGNATURE-----

--hbj6acriug7aq6bl--
