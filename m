Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 426C846AF8C
	for <lists+linux-man@lfdr.de>; Tue,  7 Dec 2021 02:08:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1356285AbhLGBMA (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Dec 2021 20:12:00 -0500
Received: from 139-28-40-42.artus.net.pl ([139.28.40.42]:47208 "EHLO
        tarta.nabijaczleweli.xyz" rhost-flags-OK-FAIL-OK-OK)
        by vger.kernel.org with ESMTP id S243594AbhLGBMA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Dec 2021 20:12:00 -0500
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
        by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 1D4992184;
        Tue,  7 Dec 2021 02:08:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
        s=202006; t=1638839305;
        bh=SJyG0VCSXVM6TAhs2tirtRdlkhpnDNQ5cdhqKfYD2hM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=nCqbLLjjbTpNX1fA1S6lduADmUSB5v6UdmlhTDFBSUqzRAcyg0P9caIZjz2SKCbUV
         3xi71NzcIXfSQGcMf0HjxHp9T7vSjEkgE9gg/cl3/fLvGJq5HfSPyuVVfYtUw4uhpJ
         M4vO6K2VSr6a8+DIVoHwqnSCRLHr4SA6MtSHPt4A0+F9rLf+/U3NxbRji929yr83aJ
         kTtBZV2oH7Nz4KGUcRIjbHjXLhURQ2hic0ZrWZnrPr4Nz0ImdJabeNanrHF8GFlAwH
         ZGrAu1dnczqzGnna8QnW7aFXQuOeZ4++gtyKK9BIc2bhFGVkY8GKpWgU2M3VJKcAix
         4VwMXP9w0Nhig==
Date:   Tue, 7 Dec 2021 02:08:23 +0100
From:   =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     Jakub Wilk <jwilk@jwilk.net>,
        Libc-alpha <libc-alpha@sourceware.org>,
        linux-man@vger.kernel.org,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Zack Weinberg <zackw@panix.com>
Subject: Re: [PATCH v3 3/3] system_data_types.7: note struct
 timespec::tv_nsec type for x32 and portability
Message-ID: <20211207010823.e37d5vurshovd7ee@tarta.nabijaczleweli.xyz>
References: <a6f79435-1d9c-2c12-168b-035164a3b938@gmail.com>
 <8ce5f7ace7a64a499d08228c3aeef870310a78ca.1638827989.git.nabijaczleweli@nabijaczleweli.xyz>
 <539b8054-a29e-32c0-14f0-c772543b2bb3@gmail.com>
 <20211206233138.ahvjamiftceufvmj@tarta.nabijaczleweli.xyz>
 <d400d07c-585c-ded8-afc1-563bb4796881@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
        protocol="application/pgp-signature"; boundary="k6rqvbrv3qmpdfae"
Content-Disposition: inline
In-Reply-To: <d400d07c-585c-ded8-afc1-563bb4796881@gmail.com>
User-Agent: NeoMutt/20211029
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


--k6rqvbrv3qmpdfae
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 07, 2021 at 01:38:34AM +0100, Alejandro Colomar (man-pages) wro=
te:
> On 12/7/21 00:31, =D0=BD=D0=B0=D0=B1 wrote:
> > For my own curiosity: which preposition would you use in Spanish here?
> I would say "en" (which normally translates to "in" in English).
>=20
> Under some circumstances I might use "con" ("with" in English), but it wo=
uld
> be rarer.
Huh! That's neat, I wouldn't've expected it!

> > Eeeeh, not really? That's functionally identical but, like,
> > very verbose for no good reason.
> Are those defined to actual values?  Or are they defined just empty?
> I thought they were empty (but have never used those macros, so don't know
> at all), in which case it would matter:
They're either undefined (=3D> 0) or defined to a truthy value
(1, realistically, but you see versions in some other APIs).
It'd also be logically valid to define them to 0,
but this is rare because people do define-checks.

A "default" -D macro, like all features are, is 1,
so your test program is more accurately represented as:
-- >8 --
nabijaczleweli@tarta:~/uwu$ cat defined.c
#if A && B
#warning AB
#else
#warning notAB
#endif

#if C && D
#warning CD
#else
#warning notCD
#endif
nabijaczleweli@tarta:~/uwu$ cc -E defined.c > /dev/null
defined.c:4:2: warning: notAB [-W#warnings]
#warning notAB
 ^
defined.c:10:2: warning: notCD [-W#warnings]
#warning notCD
 ^
2 warnings generated.
nabijaczleweli@tarta:~/uwu$ cc -DA -DB -E defined.c > /dev/null
defined.c:2:2: warning: AB [-W#warnings]
#warning AB
 ^
defined.c:10:2: warning: notCD [-W#warnings]
#warning notCD
 ^
2 warnings generated.
-- >8 --

Which behaves as expected.

Best,
=D0=BD=D0=B0=D0=B1

--k6rqvbrv3qmpdfae
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmGutAMACgkQvP0LAY0m
WPHe0g//SxqfY5pKIYfLF3ZoTdK4Nu6GVXj1HmqyMnBkpnIUf90c+9H1GUWOJ+dP
muGwrGOhIG/v2EhHFpIaNOT/r+au5/sHcbmZj5xUh2fyGJeoQt4WSBr0Yw7PzyHH
djhHcxPYtVrl+BTOUHs1tM5o/7VAg5qu/y2PAknYN4hKx8TfmeNGm9AXFBVJ3prU
SllktJyDT7fspSylwMMOdWKVDYSpjaLTorLcwO23D9AKM16js9nv8S17ZlN0KvBc
7uJHnMkS6KgFDD74TifseFFOkR9pYiUoMrTFtr9c1/kHdsWCtsZWsnO/Vvz6Bq4x
NPSUAIirWbQwjXq2DuZr9B2ZvF3idLP5omGOlf4vgc5CbCo54ycZOBbP2CHBgFhv
j1EOwRXCDMlHya3U3pZMx1+IpNwfBpQ+rQWU9jFk5DN2Mc3ZX+c43kj6uz+NCIpr
c4iZpUYymvUgmfT3QwWZ8koTT8pHWEppbxQsBNq1nQsIH9o/9kFulzZ3tDo2GMFP
JeP7NopbZtqQoApU1MV0/xJOsWApTB+aPvzF22FdF2EI4YXAb5l1ApAaIEg0u00i
2Ocx+8J6L8+wJtHKzSR2G+dXjdD6Ti0dE5WhPHEX5zy+KSCkEZPrZ2azCVUv2lCj
1zZWJ10qNpMAUuSEAHyihy5vFem1RL/SaeULyWLpHe29xd/N6Qo=
=CoX2
-----END PGP SIGNATURE-----

--k6rqvbrv3qmpdfae--
