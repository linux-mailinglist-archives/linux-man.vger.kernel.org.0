Return-Path: <linux-man+bounces-687-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 881A088A56E
	for <lists+linux-man@lfdr.de>; Mon, 25 Mar 2024 15:57:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E468A1F28CCC
	for <lists+linux-man@lfdr.de>; Mon, 25 Mar 2024 14:57:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EE0316ABFB;
	Mon, 25 Mar 2024 11:58:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bADl9bTZ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56A5B13249F
	for <linux-man@vger.kernel.org>; Mon, 25 Mar 2024 11:40:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711366820; cv=none; b=lk7RNBDXVQmEzgqyHogzLF6I7xQxKhDPE8/YBiju3pEihbXm1JUrfT3B2RQFobuJhhvv0pm7HCtLcsO4sUx+jpnVX0SujKKGArNwmZGWCeqEr+RR+Cwm/O+wfhHd1cbvl6udbGSG4Z7yXbsW26YhqgowNExA8JAFXJ9z5pbZrn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711366820; c=relaxed/simple;
	bh=kpUS6mlj9qeOsBbbqdeiWiIqhhltkWdAmapERPrluVU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BJaCBp/GmFNeEwZmk93ouu1dL8knbPeJqbh4BrRbWKYDH1lrslWSQUUFhdbVw5ujiQ+qCIVDYCirq5w1AefqnMzmz3Ut8/EYdTeZaN1mTtYl7HBAVZWo+8TdSFcV+jxtx/tPQp0g9X3VA2LkgyBeTRbSv22PQSSqTCTqr+F9uSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bADl9bTZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 41B23C433C7;
	Mon, 25 Mar 2024 11:40:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711366819;
	bh=kpUS6mlj9qeOsBbbqdeiWiIqhhltkWdAmapERPrluVU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bADl9bTZUOLnMxSLYJ3xE1mMSmrxkQ68hZQF+BD7d5ZkGjB+FmKrjdNiPCRJHDfCW
	 DvxEV7LDC0X3xOG8FyHcWgDoXnyWlClBGmgh52bwZch1FECcO2khE85h68Ulfuo05x
	 CXqPeUhAJ+g5/t7ttndT6pqbewH+0G5R8hBkvYlLFy2Hn+xVH9YRlixJVu6adah2oY
	 dGmfFxSjGlNP/0Om9beyXQK1rEldAqENsd3P3nxCzVSlNGeqO4b5/VmUpgTU83eSzU
	 xVKYnx4MZyP/eL8WvfxJRTLtDI6W8NbhuQEkKQ/r9yg5UM4HCQYz0pkqZ2IKnciCsB
	 LogpJCz0rXihw==
Date: Mon, 25 Mar 2024 12:40:07 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: man-pages PDF book: fonts
Message-ID: <ZgFioIO94vFupB53@debian>
References: <Zf3BRmfTFvADOIBG@debian>
 <20240325041954.fofjtgghwhe4znm6@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="HwfmsbfaHlVUZik+"
Content-Disposition: inline
In-Reply-To: <20240325041954.fofjtgghwhe4znm6@illithid>


--HwfmsbfaHlVUZik+
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 25 Mar 2024 12:40:07 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: man-pages PDF book: fonts

Hi Branden!

On Sun, Mar 24, 2024 at 11:19:54PM -0500, G. Branden Robinson wrote:
> Hi Alex,
>=20
> At 2024-03-22T18:35:02+0100, Alejandro Colomar wrote:
> > I see that Debian provides the Tinos font in some package:
> >=20
> > $ apt-file find -x Tinos.*pf
> > texlive-fonts-extra: /usr/share/texlive/texmf-dist/fonts/type1/google/t=
inos/Tinos-Bold.pfb
> > texlive-fonts-extra: /usr/share/texlive/texmf-dist/fonts/type1/google/t=
inos/Tinos-BoldItalic.pfb
> > texlive-fonts-extra: /usr/share/texlive/texmf-dist/fonts/type1/google/t=
inos/Tinos-Italic.pfb
> > texlive-fonts-extra: /usr/share/texlive/texmf-dist/fonts/type1/google/t=
inos/Tinos.pfb
> >=20
> > The above is .pfb, not .pfa, which I don't understand and may not be
> > usable for our purposes,
>=20
> PFA and PFB are closely related font file formats.  Reputedly, they
> stand for "PostScript" (or "Printer") "Font" "ASCII" or "Binary",
> respectively.  PFB was much more widely used on MS-DOS, due either to
> the meager disk space there, the 640kB RAM limit, or because it was
> thought that the fonts would be "pirated" (or even understood) less
> because the nature of their contents was less obvious.  Who knows?
>=20
> Regardless, groff provides a tool for converting uncouth PFB to
> civilized PFA.
>=20
> $ apropos pfbtops
> pfbtops (1)    - translate Printer Font Binary files to PostScript ASCII
>=20
> The grops(1) and gropdf(1) man pages in groff 1.23.0 discuss using this
> tool to prepare fonts so that groff can read them.

Hmmm, so I could add a Makefile target to produce this .pfa font from
the packaged .pfb one, and then get gropdf(1) to use this one.  --Using
a Makefile pays for itself.--  The process is fast, it seems.

$ time pfbtops \
	/usr/share/texlive/texmf-dist/fonts/type1/google/tinos/Tinos.pfb \
| wc -l
19570

real	0m0.012s
user	0m0.015s
sys	0m0.001s

I'll try it.  This should remove a gigantic file from the project
repository.  Thanks!  =3D)

> (Why not "pfbtopfa"?  Ghostscript was already using that name.  Why does
> groff provide a tool that does the same thing?  Good question.  I don't
> know.  It is not a young program--it is old.[1]  Maybe at one time groff
> was portable to MS-DOS but Ghostscript was not.)

Which one do you recommend?  pfbtopfa(1) seems to have problems:

$ pfbtopfa /usr/share/texlive/texmf-dist/fonts/type1/google/tinos/Tinos.pfb
Error: /invalidfileaccess in --file--
Operand stack:   in1   (/usr/share/texlive/texmf-dist/fonts/type1/google/ti=
nos/Tinos.pfb)   (r)
Execution stack:   %interp_exit   .runexec2   --nostringval--   --nostringv=
al--   --nostringval--   2   %stopped_push   --nostringval--   --nostringva=
l--   --nostringval--   false   1   %stopped_push   1949   1   3   %oparray=
_pop   1948   1   3   %oparray_pop   1933   1   3   %oparray_pop   1803   1=
   3   %oparray_pop   --nostringval--   %errorexec_pop   .runexec2   --nost=
ringval--   --nostringval--   --nostringval--   2   %stopped_push   --nostr=
ingval--   --nostringval--
Dictionary stack:   --dict:746/1123(ro)(G)--   --dict:0/20(G)--   --dict:88=
/200(L)--
Current allocation mode is local
Last OS error: Permission deniedCurrent file position is 980
GPL Ghostscript 10.03.0: Unrecoverable error, exit code 1

> > Can we similarly get the Unifont for zh_CN PDFs?
>=20
> As I understand it, GNU Unifont is a low-resolution bitmap font intended
> for terminal emulators.[2]  I expect it would look offensively bad when
> typeset.

That's the font Deri used in his patch:
<https://lore.kernel.org/linux-man/2607548.uBY7QHFjlC@pip/>

I guess that's better than nothing.

Have a lovely day!
Alex

>=20
> Regards,
> Branden
>=20
> [1] https://git.savannah.gnu.org/cgit/groff.git/tree/NEWS?h=3D1.23.0#n3211
>     https://www.youtube.com/watch?v=3DK2tgZCabTzs
> [2] https://unifoundry.com/unifont/index.html



--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--HwfmsbfaHlVUZik+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYBYpcACgkQnowa+77/
2zJLIA//eJ0bi+IXU5+wc20/OlxUEVy9ATylH3XcrJl40FvAATzA8XJsnLsxSbQx
9gH135i91SlgJxOEjSFWOPw210tpzHTWTp3T/6lnnd/2gXV5NxapaKWk7Jl7zsvE
1WYEbLcl/Xx46CnYGQOjO+2d6jkL9oeO3v297JYeU+en1At7W/iJcaxYLcW8bMqe
nzTzuv/cVZ6eQyd9Kj9EYLt6P3Mcv9hgINIrOFvHQRkOWZx15+lGwNjFUIhszbn3
GanUka0jTS55QniGyI480lOnAE74Ogl9u2f2591mlXlGcaTJrfZdQg5jZfapk8Zs
7wdhnD4xtboZPKVNO2qvpUHpOkfQ2AnhKZj74vQvJwPMNT9HVnbAwt/nPAQMLY9/
6VSnLWkYlRLG2zsv6BrO7Qa7cJELIT0SdFkJsMqCvUuNzYgSLWKrWgStxm54yFoT
0ToO8uWt7sCzh6t+Yt2ahw3C9CvkarkijV66t3tQEK3mQWkHthevBqEdFs8o29uv
KPmUYXyl6c4f5tejuzJTJCKlAiyofitvOe17nvWkAza06HnXCSDDNwxcQw3Eg6wp
qXAwRtkB7+2Ol9EwQBMk/9AjpkyH7rNaSdAwiFc6AxdZ2XFJcB5zBjrXKvgrUJ6H
c+/qcOpPslU5JBSww4SVW3aYLyNxfQO/MNEn06et4O7xihDwgiw=
=BTtb
-----END PGP SIGNATURE-----

--HwfmsbfaHlVUZik+--

