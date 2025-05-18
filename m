Return-Path: <linux-man+bounces-2959-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E6ACABAE66
	for <lists+linux-man@lfdr.de>; Sun, 18 May 2025 09:12:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 136E63B30C7
	for <lists+linux-man@lfdr.de>; Sun, 18 May 2025 07:12:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A86842AB0;
	Sun, 18 May 2025 07:12:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JqWG0LXr"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 076562FB2
	for <linux-man@vger.kernel.org>; Sun, 18 May 2025 07:12:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747552345; cv=none; b=hGDWpQmiRtap3GSXHkg6Idggj5pPkDd2pH6mPFFiv4nXSwQDHweAk++mNtam2Y6kL7a4wrcXQwkheuaOo0555vZ8vOKiYCELtorDRvLudrV+z308E7Igxwfy4UGP24QcW2ipp8VGMuQP9cQTy0Ei/IhBD4fJAb/dncTMMI8TAxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747552345; c=relaxed/simple;
	bh=iRVbufRr/ariCbZyo2KJXFq9bYVJwSMtlTt6CsgPSPE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=L9MDrxo65rmgxoL5srOHjFtgvd5mfWTpbrGd0jCTMJ352k1PCCFyqIg5TSGLxYqVPDPrhge4r9MWnbjb1FCRMNdI7bRmCGZTRXhEIj/fSqYr7PrIeowmcsY4SS0Kx2daChTl40/I8jmUxRn+AeGLLblm9C56+2owNp+kv2EvR/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JqWG0LXr; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D3C68C4CEE7;
	Sun, 18 May 2025 07:12:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747552344;
	bh=iRVbufRr/ariCbZyo2KJXFq9bYVJwSMtlTt6CsgPSPE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JqWG0LXrhcedo67k/oeOwd5BG21ItBCVQybj5ExJLgDKcVB6jjRIgWOKXw9g/nvz5
	 xXLtSNM8j4+yFFgO5A3QOW8gpQwIPPpkLb1ZxSAaXAMNkZhuey8sAPeqL65OXcda3b
	 BiFSKb8ELy3EXpgZdmatJr6blMjzQefBY85173yzo8Bjn67k/g6e3awogcrpVMR9iI
	 KXV4crORMD3RMJkzKh024QKl35ZBUdEwKD9fkb9AtnzGcTAiPj4CMttmrKME0E+XZ0
	 fh0gHPZS1aJKSjVUBFo+ekwbysxGXOTiKBw0Mzj57S2sRN2M2kCm3stS+aJdoTFHsZ
	 6MlJVsniMwCWw==
Date: Sun, 18 May 2025 09:12:20 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: the correct way to say "POSIX 2024"
Message-ID: <vwkqpnktj54fyu4nligdwcb2pgq6rovxaix6zm23ymcw4awcmt@4t6exody7zlu>
References: <6abbe99f5e8710202650bfee5d41e6fceaff4d1c.1747515178.git.collin.funk1@gmail.com>
 <dfcy75vkqhlitfddrvbtaufcir3mour2g6cczxstpp32fhkedn@wj7k34u2rk6l>
 <20250517214356.cpueutlfgi6t2enl@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qofc75ulwhwxfm5s"
Content-Disposition: inline
In-Reply-To: <20250517214356.cpueutlfgi6t2enl@illithid>


--qofc75ulwhwxfm5s
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
MIME-Version: 1.0
In-Reply-To: <20250517214356.cpueutlfgi6t2enl@illithid>

Hi Branden,

On Sat, May 17, 2025 at 04:43:56PM -0500, G. Branden Robinson wrote:
> Hi Alex,
>=20
> At 2025-05-17T23:16:20+0200, Alejandro Colomar wrote:
> > On Sat, May 17, 2025 at 01:53:02PM -0700, Collin Funk wrote:
> > > +"P2024" indicates that the signal was added or its definition change=
d in
> > > +POSIX 2024.
> >=20
> > This should be "POSIX.1-2024", not "POSIX 2024".
>=20
> Do you have a supporting reference for this?

Yep.  POSIX itself; see below.

>  I thought that since the
> POSIX standard was no longer organized into subdivisions in the way it
> was historically (with POSIX.1, POSIX.2, POSIX.4a, and so on), that
> "POSIX.1-2004" was something of a misnomer.
>=20
> I checked <https://www.opengroup.org/austin/>, but that page seems
> careful not to use _either_ formulation!  (It instead refers only to
> IEEE Std 1003.1-2024.)

In a few places, they use POSIX.1-2024.  They don't do it often, because
most of the time they use either IEEE... or just Issue 8, but yesterday
while reviewing POSIX to update the manual pages, I remember having seen
a mention of "This volume of POSIX.1-2024", and it did indeed surprise
me, because I had never seen before POSIX using that term itself before.
I can't find it now (don't remember which page it was, and their search
engine isn't very useful).  I'll try to download and grep later the HTML
sources for that, 'cause I'm curious.

But trying to find it, I found another page where they use it even more,
and it's an introductory one, so it clearly is not something they
introduced by accident (which could have been the case of the one I saw
yesterday).  See:

<https://pubs.opengroup.org/onlinepubs/9799919799/mindex.html>

Quoting:

| POSIX.1-2024 is simultaneously IEEE Std 1003.1=E2=84=A2-2024 and The Open
| Group Standard Base Specifications, Issue 8.
|
| POSIX.1-2024 defines a standard operating system interface and
| environment, including a command interpreter (or "shell"), and common
| utility programs to support applications portability at the source
| code level.  POSIX.1-2024 is intended to be used by both application
| developers and system implementors and comprises four major components
| (each in an associated volume):


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--qofc75ulwhwxfm5s
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgpiE4ACgkQ64mZXMKQ
wql1ehAAua/RzAMgOefVYK6T46inpw8tpTDWff2imYkWtg0o7Tsk87wdtHcINt8L
9rj3r9FBJQwoALhox529Nb7TK4vlz6u61AnWM8an83tLwuMgmq6/qqHQoEk4GC5l
vvQs4QUK4z4cxFt7mohFsMFV7wjcBadkJUYmNNWcd1rwj8OzUoARYDNlL3Xo1ZRg
mNgmFHOrvMe1Ljf9K9NadoRJ9aLhH3gnYZKRZphrWAeY6bkuGEynxrytRSL0NRdz
KlnU02pkpQlJIGZTDIPfm62lNrUPwlFj+BFWePJNZIqxPJz3VvyU4NpdBUUPCigI
eqEQSXHFU+qJqsxAMriD5imZXGrBdfqHa0ZmAXo33Ocur/QvOYzJ3ReL7qvT/kLb
Us//uU6KZ425LakMlKl1oEQin+TqsGDmY2IvCAKa/75yt261Fw1ilLUqQMocAsMd
TL3/G70TZWgjVUcgr2MF2tc0/67R9v5svq0cmyt67dWTeZo/E+j4u75rTqNyDaJi
NLpwxM4GzuPgL1fjtEh6MwVkIVnGWjb07QexA/0KIFCczll/0f1QD92Y1WDNaXQX
PUNjU9blIPeyRJSgez6OzwumDEbESq1z7idNsmHgwqgNFBzu2dXNbNvrKSqa6IeF
ehJvQX0JoyTmuz0l3MwlPrWIor3Wn/BDEmgnZu5mnsg+AF9HRhA=
=cyty
-----END PGP SIGNATURE-----

--qofc75ulwhwxfm5s--

