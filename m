Return-Path: <linux-man+bounces-4439-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D009CC9031
	for <lists+linux-man@lfdr.de>; Wed, 17 Dec 2025 18:17:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A96A4305FAA9
	for <lists+linux-man@lfdr.de>; Wed, 17 Dec 2025 17:05:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D849A2E9ECA;
	Wed, 17 Dec 2025 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eysd8s0N"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96A332C3757
	for <linux-man@vger.kernel.org>; Wed, 17 Dec 2025 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765991153; cv=none; b=jCIYaPA4nYhMaN6gnReU75PGnO1HouYAhgz/Jzfxw3aHSeFVA5fLdxjEvFxHICMFdSyceokAHkG+TTBOyPXpMTGVULowwC9Hee+nd6XxIRnURhFnqZcYQAI9rBzOisscAER7TRle3oTGQKs/qsU2QHLZOhXq0X9hhKks2H9M1n0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765991153; c=relaxed/simple;
	bh=p73IGJ/RbZkHUsKQ5c4p2u9+/IzQUglwZ8N3xe+nGWg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bcgNjPNmkIXJssPqNrgE3QKGDijbRLEn5j4a75Ef19VaKVlAjNK990BWRli6Frll0w4dXf0xklC7OPwtBM3VJtRcf/VdhWgXNep9PinZgo0NusoTFb7UlmDr2Zle//VgMQjqAt42IV/CXAoKXepc5qowqXsyVPmTHx7AKcEqvxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eysd8s0N; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 455A5C4CEF5;
	Wed, 17 Dec 2025 17:05:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765991153;
	bh=p73IGJ/RbZkHUsKQ5c4p2u9+/IzQUglwZ8N3xe+nGWg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Eysd8s0NFSh8xVMQU87J5ATJfuPw0o8ye5RAaU7UDA+cxi68Gg56yvjV54Ulh7y7q
	 Zq4eWQ2Qj6aWoBMMFm//XBR+7TuR7PQAVnxsliMNOahMC08x1JnvoMDNf/MlnCsMFA
	 rAnniX0VqbGEi1w2ztpF8UMa1xhdf9Oq/NPMui1PDe2GMzNsOHKyVP2ciSbdYVZEvC
	 A+fiQ1qSeplM2rInvLqiL8Er7/e5XdnFtlK1teWz3OZ/si5QMtxGIQEO7GT/CrNqaG
	 H9wbbbyBgTwIHv9RsW7atRaAW/4/mm3wuQIOP4tlNMSRflr8THki1C6T0ucQGKG4jo
	 qdsNt2M3IwmcQ==
Date: Wed, 17 Dec 2025 18:05:48 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Eugene Syromyatnikov <evgsyr@gmail.com>
Cc: linux-man@vger.kernel.org, Seth McDonald <sethmcmail@pm.me>, 
	Ingo Schwarze <schwarze@openbsd.org>, DJ Delorie <dj@redhat.com>, Paul Floyd <pjfloyd@wanadoo.fr>, 
	John Scott <jscott@posteo.net>, misc@openbsd.org, Martin Sebor <msebor@gmail.com>
Subject: Re: [PATCH v3 1/1] man/man3/aligned_alloc.3: HISTORY: Document bogus
 specification from C11
Message-ID: <qn2fq7uklis5vwvcnsla5gfrariqcezeapfq5a7kd5kqfdcjkj@6cm3luja7oed>
References: <cover.1765370035.git.alx@kernel.org>
 <cover.1765979316.git.alx@kernel.org>
 <6ed874153c52cc3f44e37a7c42ba4c69555e04f4.1765979316.git.alx@kernel.org>
 <CACGkJdtOfDcJ=xLu==7FBav8o0TMgRNwNVx3CZQA7H5wgsaEjA@mail.gmail.com>
 <CACGkJdtg9GhOjkqKspKRscebpyAA87=zTJzcZEYYGW5pr-uLtQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lei4zgfpptauhpz5"
Content-Disposition: inline
In-Reply-To: <CACGkJdtg9GhOjkqKspKRscebpyAA87=zTJzcZEYYGW5pr-uLtQ@mail.gmail.com>


--lei4zgfpptauhpz5
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Eugene Syromyatnikov <evgsyr@gmail.com>
Cc: linux-man@vger.kernel.org, Seth McDonald <sethmcmail@pm.me>, 
	Ingo Schwarze <schwarze@openbsd.org>, DJ Delorie <dj@redhat.com>, Paul Floyd <pjfloyd@wanadoo.fr>, 
	John Scott <jscott@posteo.net>, misc@openbsd.org, Martin Sebor <msebor@gmail.com>
Subject: Re: [PATCH v3 1/1] man/man3/aligned_alloc.3: HISTORY: Document bogus
 specification from C11
Message-ID: <qn2fq7uklis5vwvcnsla5gfrariqcezeapfq5a7kd5kqfdcjkj@6cm3luja7oed>
References: <cover.1765370035.git.alx@kernel.org>
 <cover.1765979316.git.alx@kernel.org>
 <6ed874153c52cc3f44e37a7c42ba4c69555e04f4.1765979316.git.alx@kernel.org>
 <CACGkJdtOfDcJ=xLu==7FBav8o0TMgRNwNVx3CZQA7H5wgsaEjA@mail.gmail.com>
 <CACGkJdtg9GhOjkqKspKRscebpyAA87=zTJzcZEYYGW5pr-uLtQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CACGkJdtg9GhOjkqKspKRscebpyAA87=zTJzcZEYYGW5pr-uLtQ@mail.gmail.com>

[CC +=3D Martin Sebor]

Hi Eugene,

On Wed, Dec 17, 2025 at 04:37:30PM +0100, Eugene Syromyatnikov wrote:
> On Wed, Dec 17, 2025 at 3:42=E2=80=AFPM Eugene Syromyatnikov <evgsyr@gmai=
l.com> wrote:
> >
> > On Wed, Dec 17, 2025 at 2:51=E2=80=AFPM Alejandro Colomar <alx@kernel.o=
rg> wrote:
> >
> >
> > > +Otherwise,
> > > +the behavior was undefined.
> >
> > I think this statement is incorrect, or at least misleading, because
> > the current reading (that includes DR460) of ISO 9899:2011 explicitly
> > states that the function must fail when the condition is not satisfied
> > (and that is what OpenBSD has implemented), and that also makes any
> > permissive specification non-conforming wrt C11 as it is now. But that
> > is also true that C11 _used to_ specify a failure to conform to this
> > onerous restriction as UB, which rendered the programs malformed, but,
> > on the other hand, kept libcs that implemented it permissively
> > standard-conformant.
> >
> > I understand that I am unnecessarily conscientious here, but I think
> > it is important to articulate what the standard both says and used to
> > say, as it is the reference point for the language implementations,
> > the totality of which an application developer can neither observe nor
> > inspect, and relying on a couple of anecdotes in terms of
> > implementations may lead to issues down the road. I guess the outcome
> > of my rants is "don't use aligned_alloc and C11 together", or
> > something along those lines.
>=20
> Correction: I was thinking that there was a published TR similar to
> C++, but apparently there wasn't, so the UB-including wording has
> never updated in publicly-available iterations of C11, the next
> published version, that is C17, has removed the requirement
> altogether, and the version with the
> failing-on-size-non-multiple-of-alignment requirement was never
> publicly available similar to the ways standard drafts are, while
> technically the wording existed for two years before the adoption of
> N2072, hence my blabber about the "final version of C11" is
> nonsensical;  however, the point about the standard requiring three
> different things still stands. My apologies for the excessive noise.
>=20

Let's see if I'm following:

C11 (or at least, the draft that I know of, which is n1570) has two
cases of UB for aligned_alloc(3):

-  size is not multiple of alignment
-  alignment is unsupported (often, this means not a power of two)

<https://port70.net/~nsz/c/c11/n1570.html#7.22.3.1p2>

DR460 (2014) reported both cases of UB, and fixed them with a TC.

<https://www.open-std.org/jtc1/sc22/wg14/www/docs/summary.htm#dr_460>

N2072 (2016) reported that the restriction that the size is not a
multiple of alignment is superfluous, and fixed it with a TC.

<https://www.open-std.org/jtc1/sc22/wg14/www/docs/n2072.htm>

C17 (or at least, the draft that I know of, which is n2176) is the first
standard that incorporates both DR460 and N2076.

While C17 is a different standard, it is actually a bugfix release, and
both DR460 and N2072 are meant to retroactively affect C11, so all
conforming implementations of C11 should in fact be conforming to C17
and not C11.  However, OpenBSD conforms to C11+DR460, but not C17.
=46rom what you said, FreeBSD seems to conform to C17, but it claims to
conform to C11.

Please correct me if I'm wrong.


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es>

--lei4zgfpptauhpz5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlC4uYACgkQ64mZXMKQ
wqmLtxAAgaEPxZaI83Y6VDmDEkyluSiFsozFrjT5Z5Rd7mxQ6AmlgnJdwhUXPvig
hUitRokLxFWjdwz6ch3hTixyY5r8d2l0Sy5Z6BUdrNvB9OFXKqCDxDFkv4FXIoxP
M3CUfG9ynz9FJJIfhuAiqisSDkwRoj+wYCB4GEILF1vHEHNTCodkCV73wbZojQB4
z4MTDEZp+B+QjkYS+IGjwkOsStwsI+scmc11zf1ixqQcpBdkmJF+mi3fLv3r3403
Jphi2fiXOsQWOoaYq+sq6cK57P1WnwYa2QUje9U2jmwn5LZSesxyl+s/pExhLMXQ
FyUCTakQhyMVh7TKuHKTwDDULs8xcrAo9P7v1xqaskCxjDY93yyR8Dpp/RQM8d3g
8DDujtgksoL++cnCYRbuzizfefO42WQyYKzDtuHoqnWhlg/ZHoIarPoVdq2lbxcL
XrU2W5d2sCl0Yane/J+OkFQXlEAS4DzwkVVr0tAs5sc/1qGouGL2aFklVcEv3Vnt
YnPW2wPeZSQDCATfPXI0arfMPJSbUKxSUrzy7yx8PlYr1CnwJb9jolzUvs1Cg7w/
v4UYdICFR5HlNOgltfKsx5ZKZbgQKr253YT4kJBUmeVCoGjW2MxbwFft5qZd9RZg
lM5qcB5C+8PcFoex9w2hRqKu/40Do38ovleTsEmJiep2r58CUrU=
=xGmk
-----END PGP SIGNATURE-----

--lei4zgfpptauhpz5--

