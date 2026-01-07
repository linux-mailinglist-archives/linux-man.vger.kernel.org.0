Return-Path: <linux-man+bounces-4705-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E89FACFC78F
	for <lists+linux-man@lfdr.de>; Wed, 07 Jan 2026 08:58:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5E1BA300F8B6
	for <lists+linux-man@lfdr.de>; Wed,  7 Jan 2026 07:55:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86F09279DCD;
	Wed,  7 Jan 2026 07:55:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lR+r91CT"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F5B259C84
	for <linux-man@vger.kernel.org>; Wed,  7 Jan 2026 07:55:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767772532; cv=none; b=lsDq2EhpyGrXIRcQWqQnKva7layCOxRg0VvIk30r7XRe0fndKWrmC6wz+GPuTn7w9FonZCv0RTBUoNgc9ywrlI5MlZo9HemCl2Pki2d/mf+cVcqbIpvO+4cRCSIFqFofByTMJfJtmtNtcNu0tNcHMNXV0KGSQZDZSBen8vdF5dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767772532; c=relaxed/simple;
	bh=RFqsAqw9PGqJ2hN5KT5ITYlQ/dzB4xry8Nj+sUuRy5I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nKADE7BUo2KGmRDZUnKrpuKo1PtTXwmLn2JyZV4pUyZ1jqj8qRveRjZkhjc4h2mmKM2FiBtdUkflPXRU/eB48ZlG/K8NVW+CrJndfjTqCa7IOXV+elsr4W5U3FPk/zlksPccXPAFinnSL33KPM1p5zFTo7Jqg98GcRl9CRFXLlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lR+r91CT; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35C69C4CEF7;
	Wed,  7 Jan 2026 07:55:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767772531;
	bh=RFqsAqw9PGqJ2hN5KT5ITYlQ/dzB4xry8Nj+sUuRy5I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lR+r91CTZZaTNJl4fkwpqAFJJMbGO4MxK1V1nHvvWY0Bd4pqo6MOXNbT+zLeVh17E
	 +8spQuwLwQ0x6pUPTlV4+87CbGHCjNpc97XFnm7tmuFOncaOQB+gJZkl9fNatTFuee
	 EyCp3a3CPOvZEv4tY/4glEttX8hxGFLCfZtm402BMwUUzddr4PRCEiLs/rwFE+CtNy
	 /YF5X6WZEO+j3VsYzLNnigUrmhv7b0jXuRHTCtRuTKfrFO5Nq0qE08enzKW7LPtuLh
	 k55o6+03dLDWQGobSC8VMhnlKqLet8XfGp4Ajd16FagUyAFR+D4DuwC2cIrVncLow9
	 ddHYqoQKaOljw==
Date: Wed, 7 Jan 2026 08:55:28 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 12/15] man/man3type/id_t.3type: HISTORY: Mention
 change in datatypes of [pug]id_t(3type)
Message-ID: <aV4RGWzP3C9pbjI8@devuan>
References: <cover.1767675322.git.sethmcmail@pm.me>
 <00eec0f9aa43bd9337490c1150976223aa753754.1767675322.git.sethmcmail@pm.me>
 <aV0XZSgwGCE5G65j@devuan>
 <gHyhP1AZqkBsRi0hv6l8PDU6sBL-xpDdUXlo7Wc7CdcG51IQsX0yIsJttySsSRfLoZZDMpKZALvQ4tCQIMnLEFoWtSyuSB1OOcQor4cIfuQ=@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="te3r6ze2jujrfayf"
Content-Disposition: inline
In-Reply-To: <gHyhP1AZqkBsRi0hv6l8PDU6sBL-xpDdUXlo7Wc7CdcG51IQsX0yIsJttySsSRfLoZZDMpKZALvQ4tCQIMnLEFoWtSyuSB1OOcQor4cIfuQ=@pm.me>


--te3r6ze2jujrfayf
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 12/15] man/man3type/id_t.3type: HISTORY: Mention
 change in datatypes of [pug]id_t(3type)
Message-ID: <aV4RGWzP3C9pbjI8@devuan>
References: <cover.1767675322.git.sethmcmail@pm.me>
 <00eec0f9aa43bd9337490c1150976223aa753754.1767675322.git.sethmcmail@pm.me>
 <aV0XZSgwGCE5G65j@devuan>
 <gHyhP1AZqkBsRi0hv6l8PDU6sBL-xpDdUXlo7Wc7CdcG51IQsX0yIsJttySsSRfLoZZDMpKZALvQ4tCQIMnLEFoWtSyuSB1OOcQor4cIfuQ=@pm.me>
MIME-Version: 1.0
In-Reply-To: <gHyhP1AZqkBsRi0hv6l8PDU6sBL-xpDdUXlo7Wc7CdcG51IQsX0yIsJttySsSRfLoZZDMpKZALvQ4tCQIMnLEFoWtSyuSB1OOcQor4cIfuQ=@pm.me>

Hi Seth,

On Wed, Jan 07, 2026 at 02:08:38AM +0000, Seth McDonald wrote:
> On Wednesday, 7 January 2026 at 00:13, Alejandro Colomar <alx@kernel.org>=
 wrote:
> > Hi Seth,
> >
> > On Tue, Jan 06, 2026 at 05:08:01PM +1000, Seth McDonald wrote:
> > > pid_t(3type), uid_t(3type), and gid_t(3type) were initially not
> > > specified as integer types, but as arithmetic types:
> > >
> > > "All of the types listed in Table 2-1 shall be arithmetic types; pid_t
> > > shall be a signed arithmetic type."[1]
> > >
> > > This technically means the types could be floating-point arithmetic
> > > types in systems conforming to early versions of POSIX.1.
> >
> > But did any implementations do this? As far as I know, there were none,
> > which turns this into something that was only true in paper, and can be
> > entirely ignored.
>=20
> While I'm not the most knowledgeable on past implementations, I too
> can't think of any that used non-integer values for these types.  The
> rationale for them doesn't mention floating-point types,[1] which does
> suggest there weren't any such implementations to consider.
>=20
> The purpose of this patch was mainly to document a quirk in the language
> of early specifications, rather than to imply that such quirky
> implementations exist and should be accounted for.  However, if this
> isn't appropriate and no such implementations can be found, then I'd
> agree the paragraph probably shouldn't be added.

I think it would be better to ignore it as a defect in the specification
that didn't get noticed by implementors, and never affected real users.
It would be a waste of manual page real estate.


Have a lovely day!
Alex

> ----
> [1] IEEE Std 1003.1-2024, Volume 4, Appendix B.2.11.1 "Defined Types",
> p. 3838.
> <https://pubs.opengroup.org/onlinepubs/9799919799/xrat/V4_xsh_chap01.html>
>=20
> ----
> Seth McDonald.
> sethmcmail at pm dot me (mailing lists)
> 2336 E8D2 FEB1 5300 692C=C2=A0 62A9 5839 6AD8 9243 D369




--=20
<https://www.alejandro-colomar.es>

--te3r6ze2jujrfayf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIyBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmleEXAACgkQ64mZXMKQ
wqlCQw/zB17Made32zqRHbByOlrS96kvn6dt3W3fyJRx25vvAdwHB6yRNAid/GMc
G3+GagztYvB1eju1rNF8dNVWytJ+nk2pyYeGRCSIdJZxOtBV1Zxcm+hyMYahwB+B
9dMQ04yv6lamAPgVxDOpgxVqB+NIKA9i2O/GB2s2bvOr7V3d8uC2DdEXoht6GaTp
hE64O/h3L1yr5tojH9FyhEyMRe5G//IQmS8BPuJn8xH8w9Cci4bib2cxOIKJsBfG
d8RqT9tb6Kzb9Q7Wji9R5mCxmmrNfO6QYs9jVU4+Jb404daY+hekBj0efjVQ8t1m
kF09jMOD00C9mEaffyNZ2nFs5F8NXK/DG78dFBBxdMT+lFMiMgwFMeA6ttYlatXz
tgK+yaegd3cxepvgc3lj1/JbU1hOCEx0df4dQdqirXbdztoMp+3npGjvylrPPaYd
QUd55suAGcpqslK/fxaUTzBWgxFrIk/B88u6Eg4VFt9fe6JWoCYO39J7LalfDreF
v4OwIDniNw8vO5LaINrMkWk7rIyMSHRRay1DBfWBFYPcmwQLK1KDppX4QUPLRG3z
YyygA0MQcr3lSjLRYJx3+tmnAZWOSSMAOwwvIBsyAmoC1dwD40/cXNortzl/KyQq
lUUpjW2JL4enl4naKEnJubN6n9BcNHcvpENILntSwMa3zg66sA==
=dJTn
-----END PGP SIGNATURE-----

--te3r6ze2jujrfayf--

