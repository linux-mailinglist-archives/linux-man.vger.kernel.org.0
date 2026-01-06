Return-Path: <linux-man+bounces-4694-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA93CF8BB9
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 15:19:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AB916300F640
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 14:18:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2CB62FCBE3;
	Tue,  6 Jan 2026 14:18:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hZse7Y/e"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B324A25DB0D
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 14:18:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767709132; cv=none; b=JgGdWpyIPoGWZbFzuIgcvlFgDF7xO0mVVN8Fn9WRovNJKeeVEDhQ/SBCgsRqXdH67uBvNJ24X1faczTs8uvDpxHWpNK/NLgCEzGpVafWlbiejpLUGjYAPyZV2q3AkyhIDTF3+6Tgrcof3+s1C4HnwDq96xycBF9h6tCEK+20AZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767709132; c=relaxed/simple;
	bh=h19tdBvZqy3Zj2rukZ5yHx1bpH2ULC5W47JOn6BlaPU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=O79AxitmxHMDO7SHhCl2Ls3LHxjh4xTgAqS9E+lUMe+fSWiq2MnRY1Uq018kTBmnhQODxWVXRKpV6LicqdkMWEuwj0BSb0ZnWkx1QbIfCig64JbC9qwF7tOz3bTGB6K8z1mO7I4LYLaEzmLBEzRawGSWZgTaqMxg+blY/sbjmfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hZse7Y/e; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A4739C116C6;
	Tue,  6 Jan 2026 14:18:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767709132;
	bh=h19tdBvZqy3Zj2rukZ5yHx1bpH2ULC5W47JOn6BlaPU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hZse7Y/e5TOhtEDtNl0gOC6jfd0CjUB13/ZoqMT9jrWzqsSRvM2w+RWOaFNRB1hOb
	 ozirPHBBbFXZbWustBpYBhhz3cnbzH/K+yVlRm4pya+3Yu0T/lXrKAT1o44Y5HQOFa
	 +kFzomNM+R32yfketVpd6l8+6HCa2IOqfOIjksczXTfaDZMQ7SLQUYoD8L7vSF3GSn
	 8x0bQw4fP/XeckvKRGxC9lVBrOrxtvcJ47PjoCJ2wIKGXY0Qr8TjN268JbcL5Rat8b
	 BHVGJwC/kk5JBMjDwHJ2YVT1t65MeUnA5mk3so6e4f0E83DBkjAti5VgNtHnun0K9U
	 KtctT1IH+vxGg==
Date: Tue, 6 Jan 2026 15:18:49 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 00/15] man/man3type/*: Update history of types A-INTN
Message-ID: <aV0Zst6LjBrxJDEt@devuan>
References: <cover.1767675322.git.sethmcmail@pm.me>
 <aVz_ZyQwZ796x4mV@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bcuwilxky2hq67sb"
Content-Disposition: inline
In-Reply-To: <aVz_ZyQwZ796x4mV@devuan>


--bcuwilxky2hq67sb
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 00/15] man/man3type/*: Update history of types A-INTN
Message-ID: <aV0Zst6LjBrxJDEt@devuan>
References: <cover.1767675322.git.sethmcmail@pm.me>
 <aVz_ZyQwZ796x4mV@devuan>
MIME-Version: 1.0
In-Reply-To: <aVz_ZyQwZ796x4mV@devuan>

Hi Seth,

On Tue, Jan 06, 2026 at 01:35:03PM +0100, Alejandro Colomar wrote:
> Hi Seth,
>=20
> On Tue, Jan 06, 2026 at 05:07:49PM +1000, Seth McDonald wrote:
> > Hello again!
> >=20
> > My next few patch sets should update datatypes in the 3type section.
> > There are 48 patches total for this section, though I will be
> > partitioning them into three separate sets according to alphabetical
> > order.  This is primarily based on Linux's documentation recommending
> > patch sets of at most ~15 patches.[1]  But if this mailing list has
> > different preferences, let me know and I'll adjust accordingly.
>=20
> We have no bounds on the size of patch sets.  On the other hand, it may
> be good for you not sending a lot of patches that will be rejected due
> to some small detail, so you may choose to self-restrict to some size.
> As far as I'm concerned, you could send the 48 patches just fine.
>=20
> > This patch set regards types whose identifiers start with A-INTN (case
> > insensitive, of course).
> >=20
> > Regarding the order of the listed standards in HISTORY sections, I've
> > seen man pages with the same set of standards listed in different
> > orders.  But I have found a general ordering that a good number of pages
> > adhere to.  That being:
> >=20
> > SVrX, X.XBSD, SUSvX, POSIX.1-YYYY, POSIX.2, Linux X.X, glibc X.X[.X],
> > others (e.g. OpenBSD, Solaris, AIX).
>=20
> I think it would be better to use chronologic order.  I leave it up to
> you if you want to keep the patches as they are, and (optionally)
> improve the order afterwards, or fix the patches to use chronologic
> order.  Since, as you say, there's no existing consistency, I'll accept
> the patches in any order; just let me know what you prefer.
>=20
> > I call this a 'general' ordering because very rarely (if ever) are all
> > seven standards/systems listed (excluding 'others').  But subsets of
> > them tend to follow their relative ordering above, at least from what
> > I've seen.  So for consistency, I tended to use this ordering when
> > adding/updating standards.  That is, listing SUS and POSIX.1 after SV
> > and BSD, and before Linux, glibc, and other systems.
> >=20
> > I also followed a few more guidelines when editing these lists that may
> > be noteworthy:
> > - Since POSIX and SUS merged into the same document in POSIX.1-2001/
> >   SUSv3, only POSIX.1-2001 is listed for functions in these standards
> >   (or later), but with XSI appended if the function was part of the XSI
> >   extension (e.g. POSIX.1-2008 XSI).
>=20
> LGTM
>=20
> > - Since SUSv1 is aligned with POSIX.1-1990,[2] if a function's first
> >   POSIX appearance was in POSIX.1-1988 or POSIX.1-1990, then it's first
> >   appearance in SUSv1 is not also listed due to being implied by its
> >   POSIX appearance.
>=20
> This should be documented in standards(7).
>=20
> > - Similarly, since SUSv2 is aligned with POSIX.1-1996,[3] the same is
> >   true for functions first appearing in POSIX.1-1996 and SUSv2.
>=20
> This should be documented in standards(7).
>=20
> > So in general, SUS is listed if the function (or constant/type) appeared
> > in SUSv1 or SUSv2 before it appeared in POSIX.1.
>=20
> LGTM.
>=20
> > [1] <https://www.kernel.org/doc/Documentation/process/submitting-patche=
s.rst>
> > [2] X/Open CAE Specification, System Interfaces and Headers Issue 4,
> > Version 2, Chapter 1.6 "Relationship to Formal Standards", p. 10.
>=20
> Do you have a link?
>=20
> > [3] CAE Specification, System Interfaces and Headers, Issue 5, Chapter
> > 1.6 "Relationship to Formal Standards", p. 11.
>=20
> Do you have a link?
>=20
> > Seth McDonald (15):
> >   man/man3type/aiocb.3type: HISTORY: Update first POSIX appearance of
> >     aiocb(3type)
> >   man/man3type/blk{cnt,size}_t.3type: HISTORY: Update first SUS
> >     appearance of blk{cnt,size}_t(3type)
> >   man/man3type/cc_t.3type: HISTORY: Update first POSIX appearance of
> >     types
> >   man/man3type/clockid_t.3type: HISTORY: Update first POSIX appearance
> >     of clockid_t(3type)
> >   man/man3type/clock_t.3type: HISTORY: Update first POSIX appearance of
> >     clock_t(3type)
> >   man/man3type/dev_t.3type: HISTORY: Update first POSIX appearance of
> >     dev_t(3type)
> >   man/man3type/div_t.3type: HISTORY: Split [l]div_t(3type) and
> >     {ll,imax}div_t(3type)
> >   man/man3type/div_t.3type: HISTORY: Update first SUS appearance of
> >     [l]div_t(3type)
> >   man/man3type/FILE.3type: HISTORY: Update first POSIX appearance of
> >     FILE(3type)
> >   man/man3type/id_t.3type: HISTORY: Split id_t(3type) from
> >     [pug]id_t(3type)
> >   man/man3type/id_t.3type: HISTORY: Update first POSIX appearance of
> >     [pug]id_t(3type)
> >   man/man3type/id_t.3type: HISTORY: Mention change in datatypes of
> >     [pug]id_t(3type)
> >   man/man3type/id_t.3type: HISTORY: Update first POSIX appearance of
> >     id_t(3type)
> >   man/man3type/intN_t.3type: HISTORY: Split types and macros
> >   man/man3type/intN_t.3type: HISTORY: Update first SUS appearance of
> >     [u]intN_t(3type)
>=20
> I'll ignore all of these patches for now, waiting for your feedback.

In the end, I applied most patches.  :)


Cheers,
Alex

>=20
>=20
> Have a lovely day!
> Alex
>=20
> >=20
> >  man/man3type/FILE.3type      |  3 ++-
> >  man/man3type/aiocb.3type     |  2 +-
> >  man/man3type/blkcnt_t.3type  |  1 +
> >  man/man3type/blksize_t.3type |  1 +
> >  man/man3type/cc_t.3type      |  2 +-
> >  man/man3type/clock_t.3type   |  3 ++-
> >  man/man3type/clockid_t.3type |  2 +-
> >  man/man3type/dev_t.3type     |  2 +-
> >  man/man3type/div_t.3type     | 11 +++++++++++
> >  man/man3type/id_t.3type      | 22 +++++++++++++++++++++-
> >  man/man3type/intN_t.3type    | 20 ++++++++++++++++++++
> >  11 files changed, 62 insertions(+), 7 deletions(-)
> >=20
> > Range-diff against v0:
> >  -:  ------------ >  1:  9d2453196924 man/man3type/aiocb.3type: HISTORY=
: Update first POSIX appearance of aiocb(3type)
> >  -:  ------------ >  2:  3e3cdf605fad man/man3type/blk{cnt,size}_t.3typ=
e: HISTORY: Update first SUS appearance of blk{cnt,size}_t(3type)
> >  -:  ------------ >  3:  eb523868fce1 man/man3type/cc_t.3type: HISTORY:=
 Update first POSIX appearance of types
> >  -:  ------------ >  4:  75786342c4cc man/man3type/clockid_t.3type: HIS=
TORY: Update first POSIX appearance of clockid_t(3type)
> >  -:  ------------ >  5:  24395294f63b man/man3type/clock_t.3type: HISTO=
RY: Update first POSIX appearance of clock_t(3type)
> >  -:  ------------ >  6:  2bb3f33e65b7 man/man3type/dev_t.3type: HISTORY=
: Update first POSIX appearance of dev_t(3type)
> >  -:  ------------ >  7:  417e53f6394a man/man3type/div_t.3type: HISTORY=
: Split [l]div_t(3type) and {ll,imax}div_t(3type)
> >  -:  ------------ >  8:  feb8d662b9fe man/man3type/div_t.3type: HISTORY=
: Update first SUS appearance of [l]div_t(3type)
> >  -:  ------------ >  9:  77b4c360910f man/man3type/FILE.3type: HISTORY:=
 Update first POSIX appearance of FILE(3type)
> >  -:  ------------ > 10:  18896b1be985 man/man3type/id_t.3type: HISTORY:=
 Split id_t(3type) from [pug]id_t(3type)
> >  -:  ------------ > 11:  d32b6148d2a9 man/man3type/id_t.3type: HISTORY:=
 Update first POSIX appearance of [pug]id_t(3type)
> >  -:  ------------ > 12:  00eec0f9aa43 man/man3type/id_t.3type: HISTORY:=
 Mention change in datatypes of [pug]id_t(3type)
> >  -:  ------------ > 13:  e5992856df9c man/man3type/id_t.3type: HISTORY:=
 Update first POSIX appearance of id_t(3type)
> >  -:  ------------ > 14:  903b6a6dee42 man/man3type/intN_t.3type: HISTOR=
Y: Split types and macros
> >  -:  ------------ > 15:  43f013547fbe man/man3type/intN_t.3type: HISTOR=
Y: Update first SUS appearance of [u]intN_t(3type)
> > --=20
> > 2.47.3
> >=20
>=20
> --=20
> <https://www.alejandro-colomar.es>



--=20
<https://www.alejandro-colomar.es>

--bcuwilxky2hq67sb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmldGckACgkQ64mZXMKQ
wqlr7BAAkGVDQ+5ybQqs2F+61Js+38qcPFuimwiPdUJ1ilW7UKKwoWYt9brWhzmU
tzsTgR/DmdsGZwjihDplm6ppM//B9yLRWK6CYdC2b4Z2JmgbQI+gFl7/xYIxum8u
a5YhXJh3zntjpxdxybpWpPWVhNEfZTAbaRm3TblGWktk+KoTCBlEG4vmqr4+RDy2
/P/sochJjFXZc9cMMOIO3Zu/SpI/o1Q6ndw6bf/6XpyJlNSqyt6vJ4YD7iVHZSQR
9YJGtTb6sLHNF6//EEHO8Vvcnfruz9N+hhbnIo7FkXCfdZjuzYgZon8iFEUG2rjw
8bQbk8PcjsmKDDWau7DShbVv2GHnKwpqdiVp+JlefBH94o7RJFk8EPZO/qajEeyp
dqE8rho1fjq2lFP9y3pajPtEP5ME/rtVPMIx5Xh7dX4uLt1brM4N5DA/aYYO6Tn9
yGZARFrCHkUjD/62Mu0zuiQZiH2xrOyyz/CCdR9bx4Z8H4hgVcGVmOtuf4JiOKcn
4dqtRPpx701El24ySRvNldOtRadmu/wKgGMw3piED/VATs8z617FukG0rMwQqaGV
fPXG6DJuJm6T8NuSNRVTKvO9DkchbxLf7H0cG3kkxkxPVgVnvG7hl1NBXlqPR1IN
NMIOslwAIym2bKcsM2bliU8MRF9RQSiWUkWR1tPeqq+Du8rcf3Y=
=5/LF
-----END PGP SIGNATURE-----

--bcuwilxky2hq67sb--

