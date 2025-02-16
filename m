Return-Path: <linux-man+bounces-2455-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B7BE9A37548
	for <lists+linux-man@lfdr.de>; Sun, 16 Feb 2025 16:55:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 78B7716EAA3
	for <lists+linux-man@lfdr.de>; Sun, 16 Feb 2025 15:55:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E20B5192B77;
	Sun, 16 Feb 2025 15:55:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PJ02QU7L"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EE0B1CD2C
	for <linux-man@vger.kernel.org>; Sun, 16 Feb 2025 15:55:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739721351; cv=none; b=tZ7hnEpI0yBOGrY2nQxQ2j7yVfVNljyAut51iIfaWDho0/2qt/KysMo6pTBOgpF/9PD94EffiyTF+UAdWfRxGtOo3r+He8YruDSKQ/Js4FmVO1oVS1MT+8qiUTPNA4RGEMRZ4G+Gt1twdjbRPHFje3NkqR/IDdomGZe1mRlUPD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739721351; c=relaxed/simple;
	bh=lOe3prCvDNz2wZvdre8NwTp7scnwPCSthTNKqygklxo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EJ05Bcv0Aql48zpyjCR0QDZUQ8kwXCt+MySDYNH5rXbKmGCMpWM3YD0WUlo8lFHVUEteMCXzznvXWV+i0cOX8LZhHBk8OWPFj8bug5e+JOPEbJusuBMYy+Xhc7wp59iCrWC39EQeMVWvEnnFFlpWprMh9t7j0dpWbe0DgRFSTzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PJ02QU7L; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E466EC4CEDD;
	Sun, 16 Feb 2025 15:55:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739721351;
	bh=lOe3prCvDNz2wZvdre8NwTp7scnwPCSthTNKqygklxo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PJ02QU7LZF+BcHyYSGhgx394pdnGKdeeLAieuDjfYfEZOxofAU4du1ryDBlLEKeLL
	 2r4EVNFxe4t7GMHbz/KCqZAQj/S2c4K6NrcweRqs+w8j2N0uJunTiKwSQ5xtHyNEJW
	 xoZzBpeFGGB25dn4QuZufoCfyPviZGtv+LWMjSq56ujXjYYCC9lzJfHnD2Bz79DWmr
	 vCVX9Z99eNHMLPMPlZG5uEnQB1LLWmWPvHvTOAXxhZ8lHLY8grcc7il8Daf98nA8B8
	 CAo9ArQtlII9B3yi/VuuzOhzj1i1fJf/jAd4DRxi3/5NROxv/jCe6m5BqOpNKZhZvZ
	 xS2pIZ57SHo0Q==
Date: Sun, 16 Feb 2025 16:56:30 +0100
From: Alejandro Colomar <alx@kernel.org>
To: brian.inglis@systematicsw.ab.ca
Cc: linux-man@vger.kernel.org, help-make@gnu.org, psmith@gnu.org, 
	sam@gentoo.org
Subject: Re: man-pages-6.11 released
Message-ID: <qrn7rp65mgrp6ojpjtnxdjhmrypsquokuhzxshwistcffc64ks@5gn3vvhzgi7t>
References: <frz5e2i7dv3kpl3mqxnkrrl5v54bjvw77fev6szkrggtx2ztxh@oyfvhx7zfm4u>
 <b6a4f0ba-2d13-4fa2-933d-131792adea3e@systematicsw.ab.ca>
 <t3ha5wm6yqgkx43y5mycwcw2ynwidl6gi2sq5erlhssadibvcr@mbmk2qff45fl>
 <672qhmdi2ef7l2lgczjaxwmkxdxhhi3ng7ivqgp6w6clgfhznj@hk3it3n4vz6v>
 <krlptdeymwpx4i6cb464p2rjo5pugmszrw7lnio5ioln5iw6jl@sfs7bnishw7y>
 <378a2eba-c973-4de9-a362-6e25123bf75b@systematicsw.ab.ca>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="57ydiwztzxswbfgv"
Content-Disposition: inline
In-Reply-To: <378a2eba-c973-4de9-a362-6e25123bf75b@systematicsw.ab.ca>


--57ydiwztzxswbfgv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: brian.inglis@systematicsw.ab.ca
Cc: linux-man@vger.kernel.org, help-make@gnu.org, psmith@gnu.org, 
	sam@gentoo.org
Subject: Re: man-pages-6.11 released
References: <frz5e2i7dv3kpl3mqxnkrrl5v54bjvw77fev6szkrggtx2ztxh@oyfvhx7zfm4u>
 <b6a4f0ba-2d13-4fa2-933d-131792adea3e@systematicsw.ab.ca>
 <t3ha5wm6yqgkx43y5mycwcw2ynwidl6gi2sq5erlhssadibvcr@mbmk2qff45fl>
 <672qhmdi2ef7l2lgczjaxwmkxdxhhi3ng7ivqgp6w6clgfhznj@hk3it3n4vz6v>
 <krlptdeymwpx4i6cb464p2rjo5pugmszrw7lnio5ioln5iw6jl@sfs7bnishw7y>
 <378a2eba-c973-4de9-a362-6e25123bf75b@systematicsw.ab.ca>
MIME-Version: 1.0
In-Reply-To: <378a2eba-c973-4de9-a362-6e25123bf75b@systematicsw.ab.ca>

Hi Brian,

On Sun, Feb 16, 2025 at 08:17:33AM -0700, brian.inglis@systematicsw.ab.ca w=
rote:
> > My second guess is that ?=3D since has the =3D behavior, which is diffe=
rent
> > from :=3D, that might be the problem.  We'd need a hypothetical ?:=3D,
> > maybe?

It was that.  Bug fixed now:

<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Dafbd0973b226a2b19a855bee76efe0eb0089384e>

The fix is ugly, as it involves plaguing the code with ifndef.  But
that's what we have for now.  Some day, we'll be able to compact that
with ?:=3D but make(1) prior to 4.5 need to die before that happens.

Thanks for the report!  I'll release 6.11.1 soon (maybe tomorrow).

> > Sam, that means that I'll have to revert this change with no short-term
> > replacement.  We'll have to live without environment variables for some
> > more time.  ?=3D doesn't work for well here, it seems.
> >=20
> > I remember GNU make(1) was working on some of that.  Paul, how is it
> > going with the idea you suggested some time ago of adding "trigraphs" to
> > GNU make(1)?
>=20
> Cygwin like Gentoo uses a shell script based build and packaging system
> (Cygport vs Ebuild) using env vars so the following variables may conflic=
t:
>=20
> CC=3Dgcc
> CFLAGS=3D-ggdb -O2 -pipe -Wall -Werror=3Dformat-security -Wp,-D_FORTIFY_S=
OURCE=3D3
> -fstack-protector-strong --param=3Dssp-buffer-size=3D4
> PKG_CONFIG=3Dpkg-config
> VERSION=3D6.11

That sounds like Cygwin or Gentoo attempted to workaround this bug by
hard-coding the VERSION.  I've now fixed the bug.  That workaround code
can be removed.

> VERSION is the only package dependent variable that conflicts, but that
> should not be an issue unless you assume somewhere that it may not be a
> "clean" version.

Nah, that should work.  It is the same exact format that you can find in
the 6.10 tarball:

	alx@devuan:~/Downloads/man/man-pages-6.10$ grepc -xmk VERSION share/mk/
	share/mk/configure/version.mk:VERSION :=3D 6.10

In 6.11, the value is bogus, due to using ?=3D.

	alx@devuan:~/Downloads/man/man-pages-6.11$ grepc -xmk VERSION share/mk/
	share/mk/configure/version.mk:VERSION       ?=3D $(shell $(GIT) describe -=
-dirty | $(SED) 's/$(projname)-//')

Which I guess is the reason they hard-coded it.  I've fixed it in my
working tree.  Here are the contents of a tarball I generated with it:

	alx@devuan:~/tmp/man/man-pages-6.11-3-g69f2407ef$ grepc -xmk VERSION share=
/mk/
	share/mk/configure/version.mk:VERSION :=3D 6.11-3-g69f2407ef

> Non-Make-Standard "local" variables could perhaps be prefixed or suffixed=
 by
> _ - _VERSION VERSION_?
>=20
> Trying to write packaging checks to ensure man pages installed either
> sourced another file .so, or had the version in the .TH line, found
> exceptions:
>=20
> man7/bpf-helpers.7.gz - "Linux v6.?" - you may wish to change that?

That's probably a consequence of the bug due to using ?=3D.  That's not
there in the source code:

	alx@devuan:~/src/linux/man-pages/man-pages/contrib$ grep '^.TH' man7/bpf-h=
elpers.7=20
	.TH "BPF-HELPERS" "7" "2024-10-10" "Linux v6.13"

And it is neither there if I install the page from a tarball generated
=66rom my working tree:

	alx@devuan:~/tmp/man/man-pages-6.11-3-g69f2407ef$ grep '^.TH' i/usr/local/=
share/man/man7/bpf-helpers.7=20
	.TH "BPF-HELPERS" "7" "2024-10-10" "Linux v6.13"

So I'll assume that bug is the same one, and that it's been fixed.
If you keep experiencing it, please report.

> man5/tzfile.5.gz man8/tzselect.8.gz man8/zdump.8.gz man8/zic.8.gz
> - "Time Zone Database" - I can live with those four (or five?)

Hmmm, I think I mentioned this to Paul Eggert.  I don't remember what
was the result of that conversation.  I'll check that some day, but
yeah, I can also live with the tzdb pages not specifying their version
for now.

If you talk to him, you could ask if he would add version info to the
tzbd manual pages.  I only pull them pristine, as far as I remember.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--57ydiwztzxswbfgv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmeyCq4ACgkQ64mZXMKQ
wqkJow//RieOSemJVooCgQgLNjg6HReZJI50PEr8iWtbtUSxu2ceoRNY0qjhnme0
FvWsIHg4wnQO8U9yCS54tEXexTBD+UQ59IM696m+gByzxreCZ1T/wEjAiIuAzI9I
Th/p727FB/cijXRY+yaA+z8oB5DCa5Tnpv29YPClnJC1lSGZcmZw2FRpbxvfJg5W
b05hCaZcjnRVvcufHpcrMkJ7XZB6AGrLggOBEAOaf46zkf1DGF5S3EGxLnQ+ND2o
XNpVAjlarg6FYZIyZD21inrvpqgS2cjZkvv71TlfoXVLD0yiffIq3ZLKfMcr74Ra
2ibi6CqA+uOYcfPwyT3x7aImErZB8xoUzsSCujdCaP6HOBxpbLr5/Fjg4uagQj6q
8NQJ6YGAAQvZimjxBWh/xWOIILN5g8ewRWN2CRlysiOP34FNmkzzRPPuvJ4V54fT
cVBgXYarjbfBM2vhiDVokFU85agkUntFvFAa0GqG26+faI5wgOO5O2EgG/iiQ/DD
qlyyKQ1y2qfeLYA9vUJEF9JAeeREMmQBMzenlAixYeyLR0smQO6z+p3ZBpK9ofq9
hMdDZ18Ffg/6kn3nGaIx2UOvDZdCaseB+m9mlP8GPdd2NzZXE6sug0rQvXbwUWz2
sq76bk+4+FB1fqv2IOATDcKK1xen5MacuoNkoZjdrXNBwLeHu1Q=
=9MRy
-----END PGP SIGNATURE-----

--57ydiwztzxswbfgv--

