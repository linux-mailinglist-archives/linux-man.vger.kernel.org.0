Return-Path: <linux-man+bounces-3108-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 68A72ACF2AF
	for <lists+linux-man@lfdr.de>; Thu,  5 Jun 2025 17:13:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 548E1176176
	for <lists+linux-man@lfdr.de>; Thu,  5 Jun 2025 15:13:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36E2F2777E2;
	Thu,  5 Jun 2025 15:10:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oUgFzU8L"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E93A827703E
	for <linux-man@vger.kernel.org>; Thu,  5 Jun 2025 15:10:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749136240; cv=none; b=GWZeJc/Q5j1MZ9/Hq5uiXJs0g8c3w/JlYsyupMCDS9cnZoJ31BmV+3SU2hI3FsYKn5bVhIbe68hRNOsfFT0n9SWPE4kxVj5rwnH9TtJZvH4yJqlGhLpjTrSlAKriB3ceZ+muVHPepaBHAh7Yw9/yTKzSpRUikYCXyXPbvvzLW7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749136240; c=relaxed/simple;
	bh=QZzWbS3QgPGPLbkE9ZToiUr7umyJvS03dwQphGai+Tw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HpIXopnpm3GUWit5quwmxxGAg6zXvz1GNhdJxdbhxEP4Jfk+a+PPlUGu4jq+EiLEF7UhOt0n6IYSIHpCoBoMaNHiJJp7wRwTHgycnVxwKQKSrbqbLohkhaO6V1NJPh5MwwJCRuDSgdwUFdDeqGc347ZtpSFS+uhp5n3GdOk/G6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oUgFzU8L; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 375EBC4CEE7;
	Thu,  5 Jun 2025 15:10:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749136237;
	bh=QZzWbS3QgPGPLbkE9ZToiUr7umyJvS03dwQphGai+Tw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oUgFzU8LD6EZMyalMjH/GKcGGpBKDJAvyxbxYnIJXXHyeNSlyHoJOOVr6nk8FXJ9P
	 kvQvjV+J/V4aZLocSfOu8AINJBnjk1fMbc/tflEP7DrxSx6erNHG0NK7+9nS4PKTOB
	 thd7HpFbKs4/IFmYtAh7KNMw4rS4CaFqjLwYVXve/IyopFMHzCQuEiekr1SMRRxNMd
	 51Tr6Vy7lh71d/UHNd01+PKtWutH6aDOlovRnzhxBUE9og6pq0gY2YQi/g2BrxBqmj
	 j6bapFCiLzRg1T9KmqAnMMaA//REnHHsgbjZ/MgNC+m1FpYdEYPmpAh7S7oj59/PsT
	 be6ZxWB2I7XFw==
Date: Thu, 5 Jun 2025 17:10:33 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Florian Weimer <fweimer@redhat.com>
Cc: Mark Naughton <mnaughto@redhat.com>, Mark Harris <mark.hsj@gmail.com>, 
	linux-man@vger.kernel.org, Joseph Myers <josmyers@redhat.com>
Subject: strncmp(3) in the SYNOPSIS
Message-ID: <hkyvvyqkhbseev7cyqkdjvknur6tghu6xt7ekjfhjsfyicwsm2@awrjajnvugz5>
References: <CACdZg2UAkDE2KZ=0tCN+pV+-mjupeY=qdGALYPshS3Q0BrHnzw@mail.gmail.com>
 <7zkvtkaafxycu2si3r4jl6qaynzfkedvphhh26rfjibq3kbxc7@56katuftwykv>
 <CACdZg2XOB9gmH0aJRLZVn4gfsd8xHyn78ohB7=wwo2ppzsXzig@mail.gmail.com>
 <kghzj5sfvb7dmkdg5iqtt2l25unqw4voxps3jcy6s7wcznr4gx@e2dn6h3geupq>
 <CAMdZqKFhcNgH-xWSUZa=N6X0kkpH=XqtZNxnBCmgoCT+XY=7Bg@mail.gmail.com>
 <CACdZg2W6+EuYn+GJYUAr+6OdU7M886GChn1+uMUC-iNxCsV7pA@mail.gmail.com>
 <movtjbigtmqu5qwwijxng7pc62bvfxhqf5fhf36rd5wq67c4yy@wnpjvmfuti2i>
 <87a56mxmsx.fsf@oldenburg.str.redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="x3ppo227xcsowqxm"
Content-Disposition: inline
In-Reply-To: <87a56mxmsx.fsf@oldenburg.str.redhat.com>


--x3ppo227xcsowqxm
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Florian Weimer <fweimer@redhat.com>
Cc: Mark Naughton <mnaughto@redhat.com>, Mark Harris <mark.hsj@gmail.com>, 
	linux-man@vger.kernel.org, Joseph Myers <josmyers@redhat.com>
Subject: strncmp(3) in the SYNOPSIS
References: <CACdZg2UAkDE2KZ=0tCN+pV+-mjupeY=qdGALYPshS3Q0BrHnzw@mail.gmail.com>
 <7zkvtkaafxycu2si3r4jl6qaynzfkedvphhh26rfjibq3kbxc7@56katuftwykv>
 <CACdZg2XOB9gmH0aJRLZVn4gfsd8xHyn78ohB7=wwo2ppzsXzig@mail.gmail.com>
 <kghzj5sfvb7dmkdg5iqtt2l25unqw4voxps3jcy6s7wcznr4gx@e2dn6h3geupq>
 <CAMdZqKFhcNgH-xWSUZa=N6X0kkpH=XqtZNxnBCmgoCT+XY=7Bg@mail.gmail.com>
 <CACdZg2W6+EuYn+GJYUAr+6OdU7M886GChn1+uMUC-iNxCsV7pA@mail.gmail.com>
 <movtjbigtmqu5qwwijxng7pc62bvfxhqf5fhf36rd5wq67c4yy@wnpjvmfuti2i>
 <87a56mxmsx.fsf@oldenburg.str.redhat.com>
MIME-Version: 1.0
In-Reply-To: <87a56mxmsx.fsf@oldenburg.str.redhat.com>

Hi Florian,

On Thu, Jun 05, 2025 at 04:53:02PM +0200, Florian Weimer wrote:
> Somewhat related: This syntax is currently used for inputs that can be
> either strings or arrays.  Two examples:
>=20
>        size_t strnlen(size_t maxlen;
>                       const char s[maxlen], size_t maxlen);
>=20
>        int strncmp(size_t n;
>                    const char s1[n], const char s2[n], size_t n);
>=20
> Obviously, we want
>=20
>      strncnmp(subject, "prefix", 6)
>=20
> to be valid independently of the length of the subject string,

I'm not sure I understand your statement.  It assumes that the subject
is a string, which it need not be.

	[[gnu::nonstring]] char subject[7] =3D "asdfghi";
	strncmp(subject, "prefix", 6);

> and the
> declaration with the array syntax does not seem to be compatible with
> that.

The only way to be pedantically correct with this API would be to use a
pointer (or an incomplete array), but then you have the issue of
pessimizing documentation of the use with non-strings.  I don't want to
do that.

Yes, that's a bit opinionated, but I'm working on having strprefix() and
strsuffix() in ISO C, which would render this use case of strncmp(3)
obsolete, so hopefully that aspect of the documentation can be neglected
in the SYNOPSIS (of course it will be well documented in the
DESCRIPTION).

I suggest you implement something like this in glibc:

<https://github.com/shadow-maint/shadow/blob/master/lib/string/strcmp/strpr=
efix.h>

	// string prefix
	#define strprefix(s, prefix)                                          \
	({                                                                    \
		const char  *p_;                                              \
									      \
		p_ =3D strprefix_(s, prefix);                                   \
									      \
		_Generic(s,                                                   \
			const char *:                     p_,                 \
			const void *:                     p_,                 \
			char *:        const_cast(char *, p_),                \
			void *:        const_cast(char *, p_)                 \
		);                                                            \
	})

	inline const char *
	strprefix_(const char *s, const char *prefix)
	{
		if (strncmp(s, prefix, strlen(prefix)) !=3D 0)
			return NULL;

		return s + strlen(prefix);
	}



Have a lovely day!
Alex

>=20
> Thanks,
> Florian
>=20

--=20
<https://www.alejandro-colomar.es/>

--x3ppo227xcsowqxm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhBs2MACgkQ64mZXMKQ
wqkXvw/9EcEE85oWGEyAmfITw87Zuf0GhdzLCMhuwlDRfNgUAX/8x2pVkMAOlLFZ
a25B6hU2BF1Zfa69YTGQ9owG4RaRU9gUVrLMDr0r2Rr1wW2ogasy07kMLeezNmjz
O6atay3R16+QHmFuM53jmHT3kkR9mVrxbY58oPoF444YShyfe2hbHxl8HyrkwPaR
58OJMVI6BlJ5RRWPIrJHSATQ2F6xeVW7ensYRW4tF0TgVbVdlf7jPQio2OPWoAke
/M6uc+EFQEs0brEvF+AiBsNQZYB9/dojo8g1s1jqdlH/lxqVpLQM4yU4JjWxyljY
fu5l5BhODiugEZmnVY295aJevAeAYbME0lkwLG1F8S08bgh9bFrLjSNWA4gmdqC6
6kn/UAhBbJ0KlcMkVQAkCfQeFwsEY9qqFIkfS7dWcoyBVBuhdtLalBhOwJBQ0Jhe
U1sNhGdJmp0uBBSuPcGszEurZUKDpG3XmX7wHKFsjs82jHJ3/jc9VOZdj58wx28s
YN53D8GdC3CMpPCHzJ0q+HfaWNgc111s+66lwkehKi9dJJPjRVyheIQ2OZXGl69O
LTKbMpzLpsXmJcuVtKyLxQ4CB4hAvcuc/8hM/X4f/sHUBFltxt53cb1gmrURaRqi
WG+QLTTQ7vIb3ScG3XCxzIbskMw9dqvsZ4NQEhW4wffqA2yPTLo=
=YKVv
-----END PGP SIGNATURE-----

--x3ppo227xcsowqxm--

