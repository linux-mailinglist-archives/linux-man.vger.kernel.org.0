Return-Path: <linux-man+bounces-4053-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AAD9BBDD62
	for <lists+linux-man@lfdr.de>; Mon, 06 Oct 2025 13:11:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id C344B34BF09
	for <lists+linux-man@lfdr.de>; Mon,  6 Oct 2025 11:11:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6ACB62690E7;
	Mon,  6 Oct 2025 11:11:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HDaJ1Sk5"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E3B170A11
	for <linux-man@vger.kernel.org>; Mon,  6 Oct 2025 11:11:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759749063; cv=none; b=evIy4c0Mu/zMGKfWknVzFCBVqeTh79Y/dc2STsa+38HswCRyaJ0D+VXd8+f8Vw9ZY0002F6MHGk5TMZh02Fmow4FAZxTgp48F0j4cAA0VFpXthZU2ckdOaQLsZfoc86aP4sMeYfQfQCYITDeLGJnZtdEGyqAzh4GCNqRGK8hioU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759749063; c=relaxed/simple;
	bh=SmGi6VODTzGFQKNm3MVQK19ItbcXU00W9HzzK0H3oAU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=f9D4tfWEmEHMtZhib3m+LWv0NF4hSCteBJ/29acA0XVOOQwkKov0NmAGMwWlJDoqUJ9kXvH8LcWPK44fvs1hY0hRclaJJcfyOArCMuLw/DxDJl2HxT7FcT5fwlW5WPejSAZEnOXPsF2T3mGRV6AihHI5Z7/GPg6wZu2UXWSO+uY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HDaJ1Sk5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BBABAC4CEF5;
	Mon,  6 Oct 2025 11:11:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759749062;
	bh=SmGi6VODTzGFQKNm3MVQK19ItbcXU00W9HzzK0H3oAU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HDaJ1Sk5dzp4IhNhm/7iQmqLFZ5aE0eLyxRs0q1uVgKr+PwvmQnDtAbKBXFKH/XsF
	 eHWMtomcgsTsS2n0YLL4iDq+d8SYhIs4HvATj1fpoxIrpRDS3Z9yxlEiSfNNkXeVAW
	 kFOtTkl4LaeshKU8IxkQV1n1ydQSpH6RsFK+TtMnK+ai2JrHw7cgbkqWZ5EPNhlxLj
	 IE6v/oNWodKIFfEKzrzcZaEBsnywezUFtIO9h9XBLBgbgpa4gfNNBz4E4ZwIteANPr
	 6dp2cXIiCZQ5P47zQly3NnV3xsDRBETtUYBgsPCm1Aqp2La0Q3Q6jyPxJnKz1W+dOz
	 24rQrC50SygPg==
Date: Mon, 6 Oct 2025 13:10:59 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Bjarni Ingi Gislason <bjarniig@simnet.is>, linux-man@vger.kernel.org, 
	groff@gnu.org
Subject: Re: groff build problem involving "ckd_mul" and "ckd_add"
Message-ID: <yp5rnfroyllwzxnigmpofdtpycr6fakcytpp2jof2upemftn63@kcpoibftbp7w>
References: <aNwetmt-I0cT-u93@kassi.invalid.is>
 <20250930194004.btcbo4xspyo3j3ua@illithid>
 <6zdtfxpuemava6k4zecq5pfzjnothtlqckm5wn5d2b2vam5xtt@dkzgvtc5vzf4>
 <20251004094243.avg4hvwwir7ink5u@illithid>
 <20251005134812.jvwyjjklabmnzejp@illithid>
 <66cvsf636zixy2o7inf7usaq4r56fiwaewfo7czjjbkv3hsqc2@vcxyruqmonxa>
 <20251006085149.oor3kddfih63yutt@illithid>
 <bfl4642gesg23ysveu3dfbkzd4orct75malbxnyg7biud4aln7@mzh34qxcd65p>
 <20251006104224.yw5dusvjjkw2ymnv@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="n2uyhxjrirhpbqu3"
Content-Disposition: inline
In-Reply-To: <20251006104224.yw5dusvjjkw2ymnv@illithid>


--n2uyhxjrirhpbqu3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Bjarni Ingi Gislason <bjarniig@simnet.is>, linux-man@vger.kernel.org, 
	groff@gnu.org
Subject: Re: groff build problem involving "ckd_mul" and "ckd_add"
Message-ID: <yp5rnfroyllwzxnigmpofdtpycr6fakcytpp2jof2upemftn63@kcpoibftbp7w>
References: <aNwetmt-I0cT-u93@kassi.invalid.is>
 <20250930194004.btcbo4xspyo3j3ua@illithid>
 <6zdtfxpuemava6k4zecq5pfzjnothtlqckm5wn5d2b2vam5xtt@dkzgvtc5vzf4>
 <20251004094243.avg4hvwwir7ink5u@illithid>
 <20251005134812.jvwyjjklabmnzejp@illithid>
 <66cvsf636zixy2o7inf7usaq4r56fiwaewfo7czjjbkv3hsqc2@vcxyruqmonxa>
 <20251006085149.oor3kddfih63yutt@illithid>
 <bfl4642gesg23ysveu3dfbkzd4orct75malbxnyg7biud4aln7@mzh34qxcd65p>
 <20251006104224.yw5dusvjjkw2ymnv@illithid>
MIME-Version: 1.0
In-Reply-To: <20251006104224.yw5dusvjjkw2ymnv@illithid>

Hi Branden,

On Mon, Oct 06, 2025 at 05:42:24AM -0500, G. Branden Robinson wrote:
> [looping in groff@gnu list]

[Actually looping in groff@gnu.org; I think you forgot.  :]

> [was: '^\}$' is (not) changed to a space character]

[...]

> > I tried building groff from git HEAD to see if that fixed the issues
> > in my server.  However, it seems groff doesn't build at the moment:
> >=20
[...]
> >=20
> > Did you forget some #include?
>=20
> It builds for me and others, like Deri and Grisha Levit.
>=20
> https://lists.gnu.org/archive/html/groff/2025-10/msg00009.html
>=20
> Have you "bootstrapped" lately?  That's necessary for Git users when we
> bump the version of gnulib we include, which we probably did after
> either 1.23.0.2695-49927 or 1.23.0.1254-19a18, and maybe both.  One
> thing I do recall is bumping gnulib to get at the checked arithmetic
> functions--precisely the ones you see above.

Yes, I bootstrapped today.  I also ran 'git submodule update' prior to
that.

>=20
> Also, FYI:
>=20
> $ git describe origin/master
> 1.23.0-4017-g3ea378d35

I can reproduce both on my server (Debian) and on my desktop (Devuan).
I'm using Sid, so that may have something to do (maybe I have a more
recent compiler that errors where yours doesn't?).

	alx@devuan:~/src/gnu/groff/master$ git describe HEAD
	1.23.0-4017-g3ea378d35
	alx@devuan:~/src/gnu/groff/master$ git status
	On branch master
	Your branch is up to date with 'gnu/master'.

	nothing to commit, working tree clean
	alx@devuan:~/src/gnu/groff/master$ git submodule update
	alx@devuan:~/src/gnu/groff/master$ git submodule=20
	 3fbc2c7bb371916a6f3433ef28d84874909d1052 gnulib (v1.0-1350-g3fbc2c7bb3)
	alx@devuan:~/src/gnu/groff/master$ set -o pipefail
	alx@devuan:~/src/gnu/groff/master$ time ./bootstrap |& wc -l; echo $?
	681

	real	0m5.284s
	user	0m3.950s
	sys	0m0.496s
	0
	alx@devuan:~/src/gnu/groff/master$ time ./configure |& wc -l; echo $?
	430

	real	0m11.332s
	user	0m8.099s
	sys	0m2.322s
	0
	alx@devuan:~/src/gnu/groff/master$ time make -j24 -k |& wc -l; echo $?
	1385

	real	0m4.765s
	user	0m35.467s
	sys	0m2.930s
	2
	alx@devuan:~/src/gnu/groff/master$ make
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


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--n2uyhxjrirhpbqu3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjjo8MACgkQ64mZXMKQ
wqnYNBAAi1NQeTQBOmMtidTv8UcwSbUCHzjknVvvzHZeKKCldCxP1cLBB1SOZ2gU
zweOb14tLSCy44M58fgs88fnt25UuIP4CqhM33goqXGWglNRgSHbaUT99AId3Lg9
jJzHca/6Qle0FD60ZR34W9Th7FRY6pam1K4Kb0x/4D51myVc54Sqg924pTvj5euM
r1gq9bW2mupb2T0Gu71SioBplrgJ6T/cKaGyTZZUooSHe0m2drzaq0/NZQIBuA0S
oHmiCfxtf2rlSWyukq9GceYFOw7tpY//qQsgd4XP4s9fKECWCoorTndhi9YP9X4+
LiB5bSCna0j+OPNqoN1GNNUiuSKWXVzu1dXJkXW/NfyC90r4W35ZIPcHq8H4cXww
Ul+/dri4UGYSzePWDMQKjygrjfMcXx51LpD1lbCOeG7hAL2rJqg+02VqkWJ1wzbC
w6Tpp8O/ak5l+22rHXYN8Udvahkgvi1T3B5vQsYuZt7RADSFvFmN9HZ8AXnm0LZ1
O97SmnQSvuJwDe0Afd5RF3wi6DpJA3tXRHt7tSkoMpGyF8VZ8EksqEFkbxriM4cE
eM1zTHT1xzLJ7GrAvmIIYqSSfUhen+PfhclJ5PD3UPOnqpC8gCCpx5V10g7vpKBd
upCXK8Z9DHjFTaivo0stvh3CJ8UR8/vbP3SalSEhPPXbnlkdeQI=
=6Zgi
-----END PGP SIGNATURE-----

--n2uyhxjrirhpbqu3--

