Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EF8C33D49AB
	for <lists+linux-man@lfdr.de>; Sat, 24 Jul 2021 21:46:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229535AbhGXTGA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 24 Jul 2021 15:06:00 -0400
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:34458 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S229481AbhGXTGA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 24 Jul 2021 15:06:00 -0400
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 56FEB3602F7;
        Sat, 24 Jul 2021 21:46:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=nabijaczleweli.xyz;
        s=202006; t=1627155986;
        bh=SP+Dd0A2CFSAgcXix+uD9BO1z6iSgAEfTQCdVocsjEw=;
        h=Date:From:To:Cc:Subject:From;
        b=HResG5+jGYZKXtGd7iPfMUACX80rbRQRLZdeNGeeRbDzo+T0mpXSQ05iTl6PG7XkI
         KBL6dNBEiT0D0Tm8NwtqlTFxmkvmjnjlrzykoC+tn3ExAJ7xlHRJ3x1mHRwX+6lxUs
         tQsJLBLgUpTT4qDW/Mj/sr2RDfuBEVAEaixsRg0BN8GDRVAnMssCDancpdonfvEs4W
         97uxGzNV1+jLJA4KcUjjSs5lRlxdODNNxzbcRTXdYCAMSfIegTJprEuO5rnfPMtnGf
         3UatgV08zbOoJskVY7wrPBEdY043BmgxKI8T8SfiTdiJHV3xJimPYE3cw+/mg0+kAZ
         4ISCzG04b4bXA==
Date:   Sat, 24 Jul 2021 21:46:25 +0200
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: [PATCH] pipe.7: also mention writev(2) in atomicity sexion
Message-ID: <20210724194625.2ruegq4a5jwlnyr7@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="eru5txooxelzokfd"
Content-Disposition: inline
User-Agent: NeoMutt/20210205
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--eru5txooxelzokfd
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

writev(2) notes that buffers don't interleave with other process'
(a reasonable question to ask), but points to pipe(7) for an exception.
pipe(7) did /not/ mention "writev", "iov", "scat", or "gath", which are,
in order, reasonable search terms: this was confusing at best and
alarming at worst

By mentioning writev(2) in the heading, we clearly note that this sort
of interleaving behaviour matches write(2)'s and isn't a concern

Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
---
 man7/pipe.7 | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/man7/pipe.7 b/man7/pipe.7
index c3210320c..29f6cf6cb 100644
--- a/man7/pipe.7
+++ b/man7/pipe.7
@@ -246,6 +246,8 @@ limits; see BUGS.
 .SS PIPE_BUF
 POSIX.1 says that
 .BR write (2)s
+and
+.BR writev (2)s
 of less than
 .B PIPE_BUF
 bytes must be atomic: the output data is written to the pipe as a
--=20
2.20.1

--eru5txooxelzokfd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmD8bhAACgkQvP0LAY0m
WPHBaRAAlr4K4N1pI36Cont2GtwaVdkMG3EoZGPgJGyW9fsNoJu2vJ6l4h+agUNS
pk6ciReWX0dQ9bsrdVYIAN57etJRxH5EpadTdNyk+TEMXiJ75F6GXV4qhVO11V7k
2yZQDK7AznN+Vx2hyx8PjFlzmfKczgB5dtnU3Umw8DOKj9zyxCeej2XH4UDzLjKd
k+C6o7ciLbA25461xPdffcaCO4nhNeHRqAV7pamsRgusaj29NWV4HfLXKgLfkXtT
6CvuI4iczlYmRRwVVfKoCsmWgtLGUeTlTvFrsKBZmTRVjiQQbUgrxNQ9hfv6Uh4d
F7L9eE+zHj8aPvmFF+hWi6q+r8EgjZdu1t7yG7UcXP1yhk0MZ87nqIipBNt07pQL
8MuWBbSUIGBFNJfCvc2s77OUXlAo9sBHpkGMv6RpmPDTtCC9MYexKkK0vmURuPQP
01nxvaAizmNAxYGCki3nMLnVgsZF+OxFpIRqNyfWCuse2tKRVyv3zqyXXr4OjMy3
ndgMLGWIU4U8VE1Ip89cNv/ccf8t3g7gW5SFMxM8VCgTez6fb5RmCrZHCSNKW5dt
N24u5xkX96GXhlszfnEogaXYawymL0lW+xY9X8otBRkIfWQs9SX3o/GmYkwqm7hV
xypvSRajquPc/AgR039w7tpRcegB6Xs1/bhnBBfF95nUv3D3E8M=
=Scoz
-----END PGP SIGNATURE-----

--eru5txooxelzokfd--
