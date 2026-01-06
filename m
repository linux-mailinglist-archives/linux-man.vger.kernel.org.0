Return-Path: <linux-man+bounces-4676-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AC4DCF85ED
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 13:46:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1F854301F8E3
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 12:35:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AA4A30DEA4;
	Tue,  6 Jan 2026 12:35:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zqec3YH9"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0C032BF2E
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 12:35:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767702903; cv=none; b=HFAM8PNL4P5eARKBPone36eD8sSdE3Kat6KFTAHpCL3DB3ZCNIJs7UfKA+HTztOh/KhEUMzTdd8Y43rglySzEWn90MKgfnCEfvReR8yZ/0QYNdERW+VEVtvNKGwjYmjGW9G/n8D53otbWVFq1c5efMhaxgJMeevOmpJBg002eNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767702903; c=relaxed/simple;
	bh=E0amL95u5d6eFM2tyydkpOi1EKY4tR5T0hx/oxcwtUU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=G095wlwPiuxJxmLKEI/GTCZnOhnHXBRI7FRBCRlMid0GmUwFrvIX9XTnei/1E/AJZ8rNZI5K8OnskHdh+gBaGmZmHZxHjgG1qgF1CRzuPsjjsLj4dSDcOJ+7GTyo7Iq6PUZJjdK8/oY2gwAi0XneqMbnLkHlGKz0PqHQFQpL7YM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zqec3YH9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 45639C116C6;
	Tue,  6 Jan 2026 12:35:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767702902;
	bh=E0amL95u5d6eFM2tyydkpOi1EKY4tR5T0hx/oxcwtUU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Zqec3YH9hQWVyik+SJJ6Bw8X4eSZZ6MI8Bm1QkbkZaa3HC21GpSbyG/GTetBNbUTL
	 dR/Xgh5GQVk+oPMalJLI4Zr4VJfAw2dpMuTB2CyqeJwhSToOl2cONmMURzhJzF/2uz
	 ZhVD3E2ZByL5TNj/Ht4x/qIhQR0h8qLW7V9JRj6N3XXEBDOYFdLCJ4JjyVJdMAL+7R
	 lXTM14vF1KkkxavqimX+j1URbsbTg8K8/pdaGPty5YWZ8q385/oOPlQ0abv70O3sZt
	 /19pXUIgyyfGZH7yC/8cJNu7oCp62hGuGbh0UcqqO6sQ8nG7QX6lRg152chW7rzAY8
	 aRRh3UgVya8hw==
Date: Tue, 6 Jan 2026 13:34:59 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 00/15] man/man3type/*: Update history of types A-INTN
Message-ID: <aVz_ZyQwZ796x4mV@devuan>
References: <cover.1767675322.git.sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="z44lzmz4fxqy3ala"
Content-Disposition: inline
In-Reply-To: <cover.1767675322.git.sethmcmail@pm.me>


--z44lzmz4fxqy3ala
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 00/15] man/man3type/*: Update history of types A-INTN
Message-ID: <aVz_ZyQwZ796x4mV@devuan>
References: <cover.1767675322.git.sethmcmail@pm.me>
MIME-Version: 1.0
In-Reply-To: <cover.1767675322.git.sethmcmail@pm.me>

Hi Seth,

On Tue, Jan 06, 2026 at 05:07:49PM +1000, Seth McDonald wrote:
> Hello again!
>=20
> My next few patch sets should update datatypes in the 3type section.
> There are 48 patches total for this section, though I will be
> partitioning them into three separate sets according to alphabetical
> order.  This is primarily based on Linux's documentation recommending
> patch sets of at most ~15 patches.[1]  But if this mailing list has
> different preferences, let me know and I'll adjust accordingly.

We have no bounds on the size of patch sets.  On the other hand, it may
be good for you not sending a lot of patches that will be rejected due
to some small detail, so you may choose to self-restrict to some size.
As far as I'm concerned, you could send the 48 patches just fine.

> This patch set regards types whose identifiers start with A-INTN (case
> insensitive, of course).
>=20
> Regarding the order of the listed standards in HISTORY sections, I've
> seen man pages with the same set of standards listed in different
> orders.  But I have found a general ordering that a good number of pages
> adhere to.  That being:
>=20
> SVrX, X.XBSD, SUSvX, POSIX.1-YYYY, POSIX.2, Linux X.X, glibc X.X[.X],
> others (e.g. OpenBSD, Solaris, AIX).

I think it would be better to use chronologic order.  I leave it up to
you if you want to keep the patches as they are, and (optionally)
improve the order afterwards, or fix the patches to use chronologic
order.  Since, as you say, there's no existing consistency, I'll accept
the patches in any order; just let me know what you prefer.

> I call this a 'general' ordering because very rarely (if ever) are all
> seven standards/systems listed (excluding 'others').  But subsets of
> them tend to follow their relative ordering above, at least from what
> I've seen.  So for consistency, I tended to use this ordering when
> adding/updating standards.  That is, listing SUS and POSIX.1 after SV
> and BSD, and before Linux, glibc, and other systems.
>=20
> I also followed a few more guidelines when editing these lists that may
> be noteworthy:
> - Since POSIX and SUS merged into the same document in POSIX.1-2001/
>   SUSv3, only POSIX.1-2001 is listed for functions in these standards
>   (or later), but with XSI appended if the function was part of the XSI
>   extension (e.g. POSIX.1-2008 XSI).

LGTM

> - Since SUSv1 is aligned with POSIX.1-1990,[2] if a function's first
>   POSIX appearance was in POSIX.1-1988 or POSIX.1-1990, then it's first
>   appearance in SUSv1 is not also listed due to being implied by its
>   POSIX appearance.

This should be documented in standards(7).

> - Similarly, since SUSv2 is aligned with POSIX.1-1996,[3] the same is
>   true for functions first appearing in POSIX.1-1996 and SUSv2.

This should be documented in standards(7).

> So in general, SUS is listed if the function (or constant/type) appeared
> in SUSv1 or SUSv2 before it appeared in POSIX.1.

LGTM.

> [1] <https://www.kernel.org/doc/Documentation/process/submitting-patches.=
rst>
> [2] X/Open CAE Specification, System Interfaces and Headers Issue 4,
> Version 2, Chapter 1.6 "Relationship to Formal Standards", p. 10.

Do you have a link?

> [3] CAE Specification, System Interfaces and Headers, Issue 5, Chapter
> 1.6 "Relationship to Formal Standards", p. 11.

Do you have a link?

> Seth McDonald (15):
>   man/man3type/aiocb.3type: HISTORY: Update first POSIX appearance of
>     aiocb(3type)
>   man/man3type/blk{cnt,size}_t.3type: HISTORY: Update first SUS
>     appearance of blk{cnt,size}_t(3type)
>   man/man3type/cc_t.3type: HISTORY: Update first POSIX appearance of
>     types
>   man/man3type/clockid_t.3type: HISTORY: Update first POSIX appearance
>     of clockid_t(3type)
>   man/man3type/clock_t.3type: HISTORY: Update first POSIX appearance of
>     clock_t(3type)
>   man/man3type/dev_t.3type: HISTORY: Update first POSIX appearance of
>     dev_t(3type)
>   man/man3type/div_t.3type: HISTORY: Split [l]div_t(3type) and
>     {ll,imax}div_t(3type)
>   man/man3type/div_t.3type: HISTORY: Update first SUS appearance of
>     [l]div_t(3type)
>   man/man3type/FILE.3type: HISTORY: Update first POSIX appearance of
>     FILE(3type)
>   man/man3type/id_t.3type: HISTORY: Split id_t(3type) from
>     [pug]id_t(3type)
>   man/man3type/id_t.3type: HISTORY: Update first POSIX appearance of
>     [pug]id_t(3type)
>   man/man3type/id_t.3type: HISTORY: Mention change in datatypes of
>     [pug]id_t(3type)
>   man/man3type/id_t.3type: HISTORY: Update first POSIX appearance of
>     id_t(3type)
>   man/man3type/intN_t.3type: HISTORY: Split types and macros
>   man/man3type/intN_t.3type: HISTORY: Update first SUS appearance of
>     [u]intN_t(3type)

I'll ignore all of these patches for now, waiting for your feedback.


Have a lovely day!
Alex

>=20
>  man/man3type/FILE.3type      |  3 ++-
>  man/man3type/aiocb.3type     |  2 +-
>  man/man3type/blkcnt_t.3type  |  1 +
>  man/man3type/blksize_t.3type |  1 +
>  man/man3type/cc_t.3type      |  2 +-
>  man/man3type/clock_t.3type   |  3 ++-
>  man/man3type/clockid_t.3type |  2 +-
>  man/man3type/dev_t.3type     |  2 +-
>  man/man3type/div_t.3type     | 11 +++++++++++
>  man/man3type/id_t.3type      | 22 +++++++++++++++++++++-
>  man/man3type/intN_t.3type    | 20 ++++++++++++++++++++
>  11 files changed, 62 insertions(+), 7 deletions(-)
>=20
> Range-diff against v0:
>  -:  ------------ >  1:  9d2453196924 man/man3type/aiocb.3type: HISTORY: =
Update first POSIX appearance of aiocb(3type)
>  -:  ------------ >  2:  3e3cdf605fad man/man3type/blk{cnt,size}_t.3type:=
 HISTORY: Update first SUS appearance of blk{cnt,size}_t(3type)
>  -:  ------------ >  3:  eb523868fce1 man/man3type/cc_t.3type: HISTORY: U=
pdate first POSIX appearance of types
>  -:  ------------ >  4:  75786342c4cc man/man3type/clockid_t.3type: HISTO=
RY: Update first POSIX appearance of clockid_t(3type)
>  -:  ------------ >  5:  24395294f63b man/man3type/clock_t.3type: HISTORY=
: Update first POSIX appearance of clock_t(3type)
>  -:  ------------ >  6:  2bb3f33e65b7 man/man3type/dev_t.3type: HISTORY: =
Update first POSIX appearance of dev_t(3type)
>  -:  ------------ >  7:  417e53f6394a man/man3type/div_t.3type: HISTORY: =
Split [l]div_t(3type) and {ll,imax}div_t(3type)
>  -:  ------------ >  8:  feb8d662b9fe man/man3type/div_t.3type: HISTORY: =
Update first SUS appearance of [l]div_t(3type)
>  -:  ------------ >  9:  77b4c360910f man/man3type/FILE.3type: HISTORY: U=
pdate first POSIX appearance of FILE(3type)
>  -:  ------------ > 10:  18896b1be985 man/man3type/id_t.3type: HISTORY: S=
plit id_t(3type) from [pug]id_t(3type)
>  -:  ------------ > 11:  d32b6148d2a9 man/man3type/id_t.3type: HISTORY: U=
pdate first POSIX appearance of [pug]id_t(3type)
>  -:  ------------ > 12:  00eec0f9aa43 man/man3type/id_t.3type: HISTORY: M=
ention change in datatypes of [pug]id_t(3type)
>  -:  ------------ > 13:  e5992856df9c man/man3type/id_t.3type: HISTORY: U=
pdate first POSIX appearance of id_t(3type)
>  -:  ------------ > 14:  903b6a6dee42 man/man3type/intN_t.3type: HISTORY:=
 Split types and macros
>  -:  ------------ > 15:  43f013547fbe man/man3type/intN_t.3type: HISTORY:=
 Update first SUS appearance of [u]intN_t(3type)
> --=20
> 2.47.3
>=20

--=20
<https://www.alejandro-colomar.es>

--z44lzmz4fxqy3ala
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmldAWoACgkQ64mZXMKQ
wqmRqQ//QAwW4RGhn7WFspwEj7YSybTTbDG5Aq34tqKSnHb1iGim/1OCMy5tMDQD
YfXhAn102ECGev01hvQUBfgkYZozNpWdAu4vrKOS0iuu6ptpoGF+kOdSkO8pjsjE
HlZ0+6re1QHCUb5obloX4eikQ+qMXTYNyMXPwx47yg8pDRWHLR+8mM2mzLlbsHn1
9cfebgyOADBUpIQeGjv5zrKkQFfIf67mfv5AELWGmLJnOUJ9cm7xvxGCEDxg/I7U
M+r2MBUv6xp71y7uwEkQLYJPSLV/cPu26Z96DAESS5WO3QTAZikGvMK3JcZdQPtF
t3Ht7pxYdmFcOfS/EC0Paw/ppa5RysmiRjYr0uxVUc5gGWGIw3O7409v7Zas3ZkE
QBumvJtaB+358uG9RYEqNhllvlExoCzcQTTklzR1E/ATTL6sNjSNLct7wdGwBFDA
xxwzdi21WI3775Wdq0HJCf90jo3MdFIJYGpBRjls7sUurB0GeS8MFj1DRVVFwLNh
iXsYH6SrjuNMXF0OWwCcAiNiIloxY0ddMgCbRlohjHG7/XCjz8JirYjVyQmTVcVO
O5OuMt28WR4jKnRbCb4JLYbTUzAuPwl1xHvjCzIYm4sis77HWKoq6rKJ9JRffrEi
a2swe7OuOyGvpAiXVNavgTdzOO3ETy+oMWv6SgZ+I44NRNnqkcA=
=QJbh
-----END PGP SIGNATURE-----

--z44lzmz4fxqy3ala--

