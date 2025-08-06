Return-Path: <linux-man+bounces-3358-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ED99B1C800
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 16:55:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C40B2562A39
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 14:55:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30D9C1DE2C9;
	Wed,  6 Aug 2025 14:55:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y3I0bWPY"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E44171D88D0
	for <linux-man@vger.kernel.org>; Wed,  6 Aug 2025 14:55:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754492108; cv=none; b=SR8+nffsAaVsRVEmt6HMQpwZ3cMP/ILQvCdI8khCN0xpVJdAV/XB6YNvTaJF1vqNGFxvXdgGuCUKxTefiNNxhv29DT/pBmIYT/IlMKG2rSxuNI8ZFoUdostgbm5qrlNbt1PMKEBIyQw/gNUt6aW6OKBYwQGLxODDgMkmhcuQSrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754492108; c=relaxed/simple;
	bh=9xYPYct2VYVRbR2CYKQ1IGGWSm//fBNsSfodENJrHFE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=W8tDWq76o7hbKOEYoveV9cINlvPhPEefbNwKDSeOTLx4+kTnMLO/q641xQ9UV2WN7duTkOcIygRMPrPSMB2aRtjGgjPjSNVKLjHzbhay6iYOiAFn1aUJ/k+6xx9lEC0HhgCB5hWXXqyxZSOfbdUcQqaKWgjMdOO44dGx+p1BryA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y3I0bWPY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 12989C4CEE7;
	Wed,  6 Aug 2025 14:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754492107;
	bh=9xYPYct2VYVRbR2CYKQ1IGGWSm//fBNsSfodENJrHFE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Y3I0bWPYtKfoh05blfa+EQuPwE0W+viGPg3r8w9mzpoVoqAk7lEDErwhZ4VtFqDK4
	 yxnO4o2oYg1v0K3FvoHyvglqXLOZbtv7DH0TR4ksOYUWqtAcgsPf2PeAyWKJSLAxX2
	 u3IEanmFiXEpEq0kYxy732fQdEQHqlqAh+UuTpId0vwAWnLC9bDrktONCtxvf7tYB1
	 JggUzBjjne8PaABj8wKB4u+uMBGE9vnEX6gQPrXC4+Tg8zeUeo6/2OgPXNqi4/9HQI
	 yqC5Q5uvvsFg/Akv6efk8GIWzSrfaUZYSQ9jQyr7EydDon6LJB06DzNekHe+ct0ONO
	 7AK1hhQ5XOwmg==
Date: Wed, 6 Aug 2025 16:55:02 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: How and when to control hyphenation (was: [PATCH 05/10]
 fsconfig.2: document 'new' mount api)
Message-ID: <xgpx6t5tutxv65lzwrqocodlvhulvr4nva3bcuoygxf3mmlxqp@5nkg6qbnxc2b>
References: <20250806-new-mount-api-v1-5-8678f56c6ee0@cyphar.com>
 <20250806074619.59685-1-safinaskar@zohomail.com>
 <20250806075021.ndodyx44xsyzxcu6@illithid>
 <2025-08-06.1754469395-mega-bleep-potent-sharpie-prepaid-quiz-2a9Vy3@cyphar.com>
 <20250806091157.ldpnbcbtik4eudjh@illithid>
 <k34wjawrqcq2aqohsovkca2kad3ba3kmg57zwvrzw4wujq62dg@rittgebtd6ev>
 <20250806140112.wkdw7ksbiycimw7u@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rn6zezm6r7mdnwo5"
Content-Disposition: inline
In-Reply-To: <20250806140112.wkdw7ksbiycimw7u@illithid>


--rn6zezm6r7mdnwo5
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: How and when to control hyphenation (was: [PATCH 05/10]
 fsconfig.2: document 'new' mount api)
References: <20250806-new-mount-api-v1-5-8678f56c6ee0@cyphar.com>
 <20250806074619.59685-1-safinaskar@zohomail.com>
 <20250806075021.ndodyx44xsyzxcu6@illithid>
 <2025-08-06.1754469395-mega-bleep-potent-sharpie-prepaid-quiz-2a9Vy3@cyphar.com>
 <20250806091157.ldpnbcbtik4eudjh@illithid>
 <k34wjawrqcq2aqohsovkca2kad3ba3kmg57zwvrzw4wujq62dg@rittgebtd6ev>
 <20250806140112.wkdw7ksbiycimw7u@illithid>
MIME-Version: 1.0
In-Reply-To: <20250806140112.wkdw7ksbiycimw7u@illithid>

[CC trimmed]

Hi Branden,

On Wed, Aug 06, 2025 at 09:01:12AM -0500, G. Branden Robinson wrote:
> If I went to the Temple of Unix at Murray Hill, New Jersey to petition
> the giant enthroned statue of Ken Thompson for divine aid, a booming
> voice would laugh and mock the folly of mortals in selecting identifier
> names that were longer than five characters in the first place.

Funny thing: I'm proposing many string APIs for standardization in C2y:

	streq, wcseq, strpfx, stppfx, strsfx, stpsfx, wcspfx, wcppfx,
	wcssfx, wcpsfx, aprintf, awprintf, stpsep, wcpsep, stpspn,
	stpcspn, wcpspn, wcpcspn

> That's enough for `creat`, `vflag`, and `swtch`...what more do you need?

Oh, I need some more.  :)

> :-|
>=20
> > I personally never use it, unless I read the page and find some line
> > break ugly.  And *never* use it in manual page references (BR), with the
> > rationale being that we'll eventually replace them with MR, which does
> > that for us.
>=20
> I haven't forgotten about my series of sed scripts to rewrite (mainly)
> syscalls(2).
>=20
> > 	grotty:<standard input>:(<standard input>):9: warning: unrecognized X =
command 'sgr 0' ignored
> > 	grotty:<standard input>:(<standard input>):9: warning: unrecognized X =
command 'sgr 0' ignored
> >=20
> > (BTW, Branden, why am I seeing those error messages recently?)
>=20
> Did you change distributions recently?  The messages are an artifact of
> a downstream patch to groff to force Teletype-style overstriking.  Over
> the past two years, distributors that had it in have been taking it out.

I'm using Debian Sid on my laptop (because Devuan doesn't work well in
my Framework laptop), and Devuan Ceres on my desktop.  So yes, I get any
updates that the Debian maintainers decide to change as soon as they
change them.

> https://git.alpinelinux.org/aports/commit/?id=3Dd6fe59c946066adef3e19e75f=
1e7caffda5a4cd1
> https://gitlab.archlinux.org/archlinux/packaging/packages/groff/-/commit/=
025a63b7e55a24c0a1892045819eef79fdc67873
>=20
> https://metadata.ftp-master.debian.org/changelogs//main/g/groff/groff_1.2=
3.0-9_changelog
>   * Adopt upstream's use of SGR escape sequences for man/mdoc (LP: #61060=
9).
>     I turned these off for Debian in 2002 because pagers didn't cope well=
 at
>     the time, but it's now 21 years later and things have changed; SGR
>     escape sequences resolve some ambiguity (see #963490) and are required
>     for new features such as clickable hyperlinks.

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--rn6zezm6r7mdnwo5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmiTbL8ACgkQ64mZXMKQ
wqkPGA/+J+XZD8rpyQgshoD4apbCH7LcffVN3KMYZ1zyLJS/Yjzswbs6iNLupMmR
hCkGIupfFh50pdlT9uWgF8spgaYsmA8iVPJvkoAptuPzt8EaIVGf1FmLSkKe/x/9
bit8Gf6rFpm4xtx6lTcPxl1UWk1DLtyoEsOTkR36THRH8Em+hgfeYrIn1IHwkhWr
UgYcI2Cybm4c8ldj3AF1leIYU5D5wGLIPeL1cipN8o0G8A0ILd/zUTnpZmBgCFR0
g5FzynQXKJYBc9ybDHWE7+cEf2f0q0M/EqQrCjC21OqZTF4J4B5Tnp4kQlNYbQrB
AER8XJFx5cT8X+KASKtKr0Fbi8ZHPZTV9lvv08cNBq+KlhpIyr0kvYARXXvl5770
3fNk8QBaX2MJuWdSicdVBQr8kjdKi6NamplfdsQkGW22JFdvGF0+37bco648DIWD
cXGv2Lx+0xP8kHW0D2ewdV7D7ezrr0LQnU4lSqMeO21IYZp5MC/5KMthAIxwPzkv
MR+B2vQeWZQrZKoKXOV50rwQZmrNx2HroYNBslpuh2n9PD0XH4Oi1A52msSrnuYK
TrnxzMu9lQoHrfm3DQPsv5TAD0b6gknYXSLthlvdYVZbBkUxXz16Odep0ByTRjjA
MmR6SsgTQjX3q3uMhLWjtQnbsT5BSCwYedosllIY9BbvXxBI2Gw=
=Q2g+
-----END PGP SIGNATURE-----

--rn6zezm6r7mdnwo5--

