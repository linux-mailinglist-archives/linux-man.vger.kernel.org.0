Return-Path: <linux-man+bounces-4050-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id D92BDBBDAE8
	for <lists+linux-man@lfdr.de>; Mon, 06 Oct 2025 12:25:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 3A32134A4EA
	for <lists+linux-man@lfdr.de>; Mon,  6 Oct 2025 10:25:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1318233155;
	Mon,  6 Oct 2025 10:25:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o6ivTT2k"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE5DC23314B
	for <linux-man@vger.kernel.org>; Mon,  6 Oct 2025 10:25:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759746326; cv=none; b=dkFN2xVWem6cn+rpesVprCltv+Q/quWabABaFjMhIax5ucAuPDRYl+F7C8HKJUZM7V54uGh91ZVSPostSx6S3U9kDD/O6KaLgqLZLR3X4324bmkGdZcPaqwHuEPBQW7u3FPKMCcyelPcHdYk/lxMPPsvRZ0aqPu9idnlmNEg3qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759746326; c=relaxed/simple;
	bh=sZJAwYtjW21brwqLcvmF+mg+D3LfQxFTEv2kQtbMH+c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hmvM9Z9mN7aXa0uaEhZrROcYjUkqfLXcY14oH4sYgRD+PRLAAMQ9i6Q5IjebY/rGxtpLmeqFwZgEm7+9tD320x1qcZH1F2blA2eMT3uT1E0RyVfWowbCjD6GiMhIa2ZmrJ9tgxIuwNuC4N0E6RvQHGV3vKh34YyeBIkQxvnYGVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o6ivTT2k; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7AFFC4CEF5;
	Mon,  6 Oct 2025 10:25:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759746326;
	bh=sZJAwYtjW21brwqLcvmF+mg+D3LfQxFTEv2kQtbMH+c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=o6ivTT2kSnBCqSbHO++TtsJ/83R/HH86Mc/faEh7cNfpGmSsweZEptu2HAm6zPacQ
	 hvWNLR+sNf/g9X8lOxoqjBjze4NDjmMBxdiMoY9Xslv/HcuVF4mYhULLf/iq2XMvor
	 wTa94gc6Q3U88kUJIpR4138Mr3jHuNBn7rq4q7wqQaEhd46I9ddPTbB2dd8wCEoR1D
	 /GHKPTQcjqzhj2NWsNJDfVy/Rq68QSmqwqVGfpMkcfzvATPObhH6Jrbe/5OuBzDan/
	 BKTiWftB56UmfR+7qG+DMzg+W2cqcRO0CIj6aeAdgpl0vLgZWLAkVg8wutEzsz0tw0
	 XwkK5SIZQjYjg==
Date: Mon, 6 Oct 2025 12:25:23 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Bjarni Ingi Gislason <bjarniig@simnet.is>, linux-man@vger.kernel.org
Subject: Re: '^\}$' is (not) changed to a space character
Message-ID: <bfl4642gesg23ysveu3dfbkzd4orct75malbxnyg7biud4aln7@mzh34qxcd65p>
References: <aNwetmt-I0cT-u93@kassi.invalid.is>
 <20250930194004.btcbo4xspyo3j3ua@illithid>
 <6zdtfxpuemava6k4zecq5pfzjnothtlqckm5wn5d2b2vam5xtt@dkzgvtc5vzf4>
 <20251004094243.avg4hvwwir7ink5u@illithid>
 <20251005134812.jvwyjjklabmnzejp@illithid>
 <66cvsf636zixy2o7inf7usaq4r56fiwaewfo7czjjbkv3hsqc2@vcxyruqmonxa>
 <20251006085149.oor3kddfih63yutt@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wtjexi36hvqlacej"
Content-Disposition: inline
In-Reply-To: <20251006085149.oor3kddfih63yutt@illithid>


--wtjexi36hvqlacej
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Bjarni Ingi Gislason <bjarniig@simnet.is>, linux-man@vger.kernel.org
Subject: Re: '^\}$' is (not) changed to a space character
Message-ID: <bfl4642gesg23ysveu3dfbkzd4orct75malbxnyg7biud4aln7@mzh34qxcd65p>
References: <aNwetmt-I0cT-u93@kassi.invalid.is>
 <20250930194004.btcbo4xspyo3j3ua@illithid>
 <6zdtfxpuemava6k4zecq5pfzjnothtlqckm5wn5d2b2vam5xtt@dkzgvtc5vzf4>
 <20251004094243.avg4hvwwir7ink5u@illithid>
 <20251005134812.jvwyjjklabmnzejp@illithid>
 <66cvsf636zixy2o7inf7usaq4r56fiwaewfo7czjjbkv3hsqc2@vcxyruqmonxa>
 <20251006085149.oor3kddfih63yutt@illithid>
MIME-Version: 1.0
In-Reply-To: <20251006085149.oor3kddfih63yutt@illithid>

Hi Branden,

On Mon, Oct 06, 2025 at 03:51:49AM -0500, G. Branden Robinson wrote:
> > 	-.if t \{\
> > 	-.ft CW
> > 	-\}
> > 	+.P
> [...]
>=20
> > So, I expect the explanation shouldn't hold anymore, right?  There are
> > no closing brace escape sequences anymore.
>=20
> Right, but the excess space in the document should not still be present,
> either.

Hmmm, it's weird.  If I produce the PDF in my computer, the space is
now correct.  However, the PDF book served on my website still has the
wrong space.  I know it has the correct source code, because it doesn't
use CW anymore.

The only difference I can see is the groff(1) version.  In my computer,
I have

	GNU groff version 1.23.0.2695-49927

but on my server I have

	GNU groff version 1.23.0.1254-19a18

But I also tested 1.23.0, and it does the right thing.
Maybe the version on my server has a temporary bug that appeared after
1.23.0 and was fixed before 1.23.0.2695-49927.

I tried building groff from git HEAD to see if that fixed the issues in
my server.  However, it seems groff doesn't build at the moment:

	$ make=20
	make  all-recursive
	make[1]: Entering directory '/srv/alx/src/gnu/groff/master'
	make[2]: Entering directory '/srv/alx/src/gnu/groff/master'
	  CXX      src/roff/troff/div.o
	In file included from src/roff/troff/div.cpp:29:
	src/roff/troff/hvunits.h: In member function =E2=80=98units vunits::to_uni=
ts()=E2=80=99:
	src/roff/troff/hvunits.h:91:7: error: =E2=80=98ckd_mul=E2=80=99 was not de=
clared in this scope
	   91 |   if (ckd_mul(&r, n, vresolution))
	      |       ^~~~~~~
	src/roff/troff/hvunits.h: In function =E2=80=98vunits operator+(const vuni=
ts&, const vunits&)=E2=80=99:
	src/roff/troff/hvunits.h:105:7: error: =E2=80=98ckd_add=E2=80=99 was not d=
eclared in this scope
	  105 |   if (ckd_add(&r.n, r.n, y.n))
	      |       ^~~~~~~
	src/roff/troff/hvunits.h: In function =E2=80=98vunits operator-(const vuni=
ts&, const vunits&)=E2=80=99:
	src/roff/troff/hvunits.h:114:7: error: =E2=80=98ckd_sub=E2=80=99 was not d=
eclared in this scope
	  114 |   if (ckd_sub(&r.n, r.n, y.n))
	      |       ^~~~~~~
	src/roff/troff/hvunits.h: In function =E2=80=98vunits operator-(const vuni=
ts&)=E2=80=99:
	src/roff/troff/hvunits.h:123:7: error: =E2=80=98ckd_mul=E2=80=99 was not d=
eclared in this scope
	  123 |   if (ckd_mul(&r.n, x.n, -1))
	      |       ^~~~~~~
	src/roff/troff/hvunits.h: In function =E2=80=98vunits operator*(const vuni=
ts&, int)=E2=80=99:
	src/roff/troff/hvunits.h:145:7: error: =E2=80=98ckd_mul=E2=80=99 was not d=
eclared in this scope
	  145 |   if (ckd_mul(&r.n, x.n, n))
	      |       ^~~~~~~
	src/roff/troff/hvunits.h: In function =E2=80=98vunits operator*(int, const=
 vunits&)=E2=80=99:
	src/roff/troff/hvunits.h:154:7: error: =E2=80=98ckd_mul=E2=80=99 was not d=
eclared in this scope
	  154 |   if (ckd_mul(&r.n, n, x.n))
	      |       ^~~~~~~
	src/roff/troff/hvunits.h: In member function =E2=80=98units hunits::to_uni=
ts()=E2=80=99:
	src/roff/troff/hvunits.h:208:7: error: =E2=80=98ckd_mul=E2=80=99 was not d=
eclared in this scope
	  208 |   if (ckd_mul(&r, n, hresolution))
	      |       ^~~~~~~
	src/roff/troff/hvunits.h: In function =E2=80=98hunits operator+(const huni=
ts&, const hunits&)=E2=80=99:
	src/roff/troff/hvunits.h:222:7: error: =E2=80=98ckd_add=E2=80=99 was not d=
eclared in this scope
	  222 |   if (ckd_add(&r.n, r.n, y.n))
	      |       ^~~~~~~
	src/roff/troff/hvunits.h: In function =E2=80=98hunits operator-(const huni=
ts&, const hunits&)=E2=80=99:
	src/roff/troff/hvunits.h:231:7: error: =E2=80=98ckd_sub=E2=80=99 was not d=
eclared in this scope
	  231 |   if (ckd_sub(&r.n, r.n, y.n))
	      |       ^~~~~~~
	src/roff/troff/hvunits.h: In function =E2=80=98hunits operator-(const huni=
ts&)=E2=80=99:
	src/roff/troff/hvunits.h:241:7: error: =E2=80=98ckd_mul=E2=80=99 was not d=
eclared in this scope
	  241 |   if (ckd_mul(&r.n, x.n, -1))
	      |       ^~~~~~~
	src/roff/troff/hvunits.h: In function =E2=80=98hunits operator*(const huni=
ts&, int)=E2=80=99:
	src/roff/troff/hvunits.h:263:7: error: =E2=80=98ckd_mul=E2=80=99 was not d=
eclared in this scope
	  263 |   if (ckd_mul(&r.n, x.n, n))
	      |       ^~~~~~~
	src/roff/troff/hvunits.h: In function =E2=80=98hunits operator*(int, const=
 hunits&)=E2=80=99:
	src/roff/troff/hvunits.h:272:7: error: =E2=80=98ckd_mul=E2=80=99 was not d=
eclared in this scope
	  272 |   if (ckd_mul(&r.n, x.n, n))
	      |       ^~~~~~~
	src/roff/troff/div.cpp: In member function =E2=80=98virtual void macro_div=
ersion::output(node*, bool, vunits, vunits, hunits)=E2=80=99:
	src/roff/troff/div.cpp:325:7: error: =E2=80=98ckd_add=E2=80=99 was not dec=
lared in this scope
	  325 |   if (ckd_add(&new_vpos, vpos, lineht))
	      |       ^~~~~~~
	make[2]: *** [Makefile:9395: src/roff/troff/div.o] Error 1
	make[2]: Leaving directory '/srv/alx/src/gnu/groff/master'
	make[1]: *** [Makefile:11776: all-recursive] Error 1
	make[1]: Leaving directory '/srv/alx/src/gnu/groff/master'
	make: *** [Makefile:6977: all] Error 2

Did you forget some #include?


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--wtjexi36hvqlacej
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjjmQwACgkQ64mZXMKQ
wql2qxAAuuWY/nZl/8WBfmb/2PEdKTonpPWclFSCcVOzNdbybre3doCUtUQUmfW4
dWoYP5xBvGHt6+cSxx8d8QVle2usxaNxpubD1iAwtAKc6U5LhmmLhcWsoCVj1aal
H+DGK+RscSgziiTWdRvKzg/YRvx2B2SwmFLmKlR1JVSVvxp0GyQw+1M3JcJtWZPc
2XYdBUZsEVDqFyP1mqqfd3t5Z/mGG1EfAoYlP8bWMtDR9rmSNT61co41S6p2a01B
iL7eHaA2ZTt8NC5YAuI6JrxbzbZQgcjkRbXBjQk34iswALRerZAbtmx9924iDpPf
5Dw49AoLyoJXTKrJJ25caM7CNi40+7P087RxQDMH32JMKmlNf5jTbHzjk8U2PxkJ
0MR921mrudCRK/8KSm1pNSCkf5SRrEvparMU7z1ioodHK0DiHwfh7X6Pyr2bIUdA
Hp4ZKSqQ1wSdpzdNSjGg2B0uKhS2QFlkO2Gj88ZF+83pi/PY2s8Q17+cgOpwQ5mW
T8inzR7TgmJpGOq2FK3WDvg331dwZxdtNnGQ2vJezrHJ6qU/Fy+WOo/aAm4eyGg4
ZbxCsxbjrT85X05+ulSeTMmmdbNwtd2izeQkSSXhBl6BytZDrSKD4wfM3noPNR6E
QxIxaaZTSPbDimewi5XoEk7Ay3Reok2jl9EUlvQKpVtQSYk/JOs=
=/rFR
-----END PGP SIGNATURE-----

--wtjexi36hvqlacej--

