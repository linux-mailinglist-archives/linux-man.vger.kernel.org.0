Return-Path: <linux-man+bounces-2960-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D2BBAABAE84
	for <lists+linux-man@lfdr.de>; Sun, 18 May 2025 09:52:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8B3663B7D7A
	for <lists+linux-man@lfdr.de>; Sun, 18 May 2025 07:52:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB5EB1CCEE0;
	Sun, 18 May 2025 07:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sGiht5n/"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABEEE3C30
	for <linux-man@vger.kernel.org>; Sun, 18 May 2025 07:52:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747554754; cv=none; b=M+kaswwdWpGFEkaMMTHGwU8pTkYPxBLochi2SB4tYSpO6CgSwXQCsokdazO8nJjdTpX5fmRNINGbsdWIUW3G3D6s5USEBPtRpquqCdfs1HU9H1LHtrpiQaChtnyGUNQytNNaIeebMSF7bEcl7J/cSmmQnwIc18O7JoH/9YCtYOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747554754; c=relaxed/simple;
	bh=I7cVL7QnPOLRk7Nc9aOSzTmjTggZNTt3Hv9Kli6uMuE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VgU7ac6XYHLrdgF5cCyBliQbtgPGfxXDVU/AcOQKoQ77czXmRP70LV2kU3+S8UWifFubnGrAXkHUGydXosJgrMJDq1KSlR2HrMVjXt9uj5q89//0SthThp5ZhSXAPQwbmoUGGDcVrvUbb9PljcwtkHJCqWkI84r8b8sgAKeyrZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sGiht5n/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EEBB3C4CEE7;
	Sun, 18 May 2025 07:52:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747554754;
	bh=I7cVL7QnPOLRk7Nc9aOSzTmjTggZNTt3Hv9Kli6uMuE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sGiht5n/L7YPyqcP9sXWCK7+0z/Bf+6l7ttTV/lq4Ku/zJ0VHl+s06bYUFL4uccxt
	 N1aFL55EnkG1bJ7gzMqy4F7YEtx3cuIUAcQYnQ0f/akjrQISOU9CXKzZiYWMGvMTlg
	 iB7SXNGf5znrNIaqcIAryQIHQ8he9Fph+Lb+YMxd596bqojznPNCsPhI+dLI2zEVSl
	 SXITpKhCUsn4zRP3cNJHVFBLcYt8c3kLZKF/tFpqNCV1lVJxPexnrrX8OaF2wWeNg+
	 LHqyX3pJb5R+EjTsrNIIRyk/TTGBa7UCDmR3TjT1bdqIjm9ElRwEOJHBVByd1OdELU
	 pNWoq6tD4wmng==
Date: Sun, 18 May 2025 09:52:29 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: the correct way to say "POSIX 2024"
Message-ID: <pdpbbdtjuok3ymbm45sy652gcmokpkci2pfx2mwl2mrcrh34dv@vdiasi2xnlrr>
References: <6abbe99f5e8710202650bfee5d41e6fceaff4d1c.1747515178.git.collin.funk1@gmail.com>
 <dfcy75vkqhlitfddrvbtaufcir3mour2g6cczxstpp32fhkedn@wj7k34u2rk6l>
 <20250517214356.cpueutlfgi6t2enl@illithid>
 <vwkqpnktj54fyu4nligdwcb2pgq6rovxaix6zm23ymcw4awcmt@4t6exody7zlu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5rtzwncfsonnkeho"
Content-Disposition: inline
In-Reply-To: <vwkqpnktj54fyu4nligdwcb2pgq6rovxaix6zm23ymcw4awcmt@4t6exody7zlu>


--5rtzwncfsonnkeho
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: the correct way to say "POSIX 2024"
References: <6abbe99f5e8710202650bfee5d41e6fceaff4d1c.1747515178.git.collin.funk1@gmail.com>
 <dfcy75vkqhlitfddrvbtaufcir3mour2g6cczxstpp32fhkedn@wj7k34u2rk6l>
 <20250517214356.cpueutlfgi6t2enl@illithid>
 <vwkqpnktj54fyu4nligdwcb2pgq6rovxaix6zm23ymcw4awcmt@4t6exody7zlu>
MIME-Version: 1.0
In-Reply-To: <vwkqpnktj54fyu4nligdwcb2pgq6rovxaix6zm23ymcw4awcmt@4t6exody7zlu>

On Sun, May 18, 2025 at 09:12:25AM +0200, Alejandro Colomar wrote:
> Hi Branden,
>=20
> On Sat, May 17, 2025 at 04:43:56PM -0500, G. Branden Robinson wrote:
> > Hi Alex,
> >=20
> > At 2025-05-17T23:16:20+0200, Alejandro Colomar wrote:
> > > On Sat, May 17, 2025 at 01:53:02PM -0700, Collin Funk wrote:
> > > > +"P2024" indicates that the signal was added or its definition chan=
ged in
> > > > +POSIX 2024.
> > >=20
> > > This should be "POSIX.1-2024", not "POSIX 2024".
> >=20
> > Do you have a supporting reference for this?
>=20
> Yep.  POSIX itself; see below.
>=20
> >  I thought that since the
> > POSIX standard was no longer organized into subdivisions in the way it
> > was historically (with POSIX.1, POSIX.2, POSIX.4a, and so on), that
> > "POSIX.1-2004" was something of a misnomer.
> >=20
> > I checked <https://www.opengroup.org/austin/>, but that page seems
> > careful not to use _either_ formulation!  (It instead refers only to
> > IEEE Std 1003.1-2024.)
>=20
> In a few places, they use POSIX.1-2024.  They don't do it often, because
> most of the time they use either IEEE... or just Issue 8, but yesterday
> while reviewing POSIX to update the manual pages, I remember having seen
> a mention of "This volume of POSIX.1-2024", and it did indeed surprise
> me, because I had never seen before POSIX using that term itself before.
> I can't find it now (don't remember which page it was, and their search
> engine isn't very useful).  I'll try to download and grep later the HTML
> sources for that, 'cause I'm curious.

Uhh, it's actually quite common:

	$ grep -rl 'This volume of POSIX.1-2024' \
	| grep ^functions/ \
	| wc -l;
	658

>=20
> But trying to find it, I found another page where they use it even more,
> and it's an introductory one, so it clearly is not something they
> introduced by accident (which could have been the case of the one I saw
> yesterday).  See:
>=20
> <https://pubs.opengroup.org/onlinepubs/9799919799/mindex.html>
>=20
> Quoting:
>=20
> | POSIX.1-2024 is simultaneously IEEE Std 1003.1=E2=84=A2-2024 and The Op=
en
> | Group Standard Base Specifications, Issue 8.
> |
> | POSIX.1-2024 defines a standard operating system interface and
> | environment, including a command interpreter (or "shell"), and common
> | utility programs to support applications portability at the source
> | code level.  POSIX.1-2024 is intended to be used by both application
> | developers and system implementors and comprises four major components
> | (each in an associated volume):
>=20
>=20
> Have a lovely day!
> Alex
>=20
> --=20
> <https://www.alejandro-colomar.es/>



--=20
<https://www.alejandro-colomar.es/>

--5rtzwncfsonnkeho
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgpkbUACgkQ64mZXMKQ
wqmVQhAAix3TDc0jPzehhnpEGNxRjdz3lrXrp1YLpgXwR6KzNNbGg3yMDZuoZWAm
wDIfNdjb1EZq6y+IHFH5juzlyZA6rPZa6eJviRjM4feUUssjmbKiiiXIc5Ie0GsK
8PLCcjJFsBVWyyItXwgRqrUE/uhIV1B2fzAXyn5fbMIsexaKDfxwaWPQa49TdLOz
1yEeSO60K1mXMX6EbgRYkWeSnTI2mJAvQUglY3NjKZ5EkAroU4zaw8Ndwi8gf2b2
1PtPHb0mXqRTXqsnoaW9be+IsVRPVdhxYL1N8qNTBV9AiSZNboCKMWVmcAX58aDZ
rG3tCR0IAZZuKbE51T9njzkqLu2YN+2yhZmjfifPq0TTxhBHGTsa9eXzmK6BHqbf
0esVuDKGocIOSNS86BJhuJL21wMyBQcGqrl7y4C3i5STChZKemvlfbUkrTrMb33h
Un4aeknKnnvTy8QzNkru9DlcUTufsmQCWM3IB0K464FQ7BAVpLUPMLCcALcMmLAp
LcEx88LWgIn+97BQ//4cN0sNToAE7KRAEx0OAK8hUdaH4T6Mr2JZKZgDk11VsDpS
/qBfEKLQQVRB2fNVTHks9B7VlHHmmK8FFb2mSzv3DwZFoJ/Xm6ikrMYq4COaMP1e
bGQl2FxO/tqGFK54fu5pLjOf2aRMLiwkyBN4osgbjm70+sgX/ZE=
=UAwc
-----END PGP SIGNATURE-----

--5rtzwncfsonnkeho--

