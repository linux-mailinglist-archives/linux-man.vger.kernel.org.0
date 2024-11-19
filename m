Return-Path: <linux-man+bounces-2048-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 992739D26BA
	for <lists+linux-man@lfdr.de>; Tue, 19 Nov 2024 14:19:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5E3ED282AA5
	for <lists+linux-man@lfdr.de>; Tue, 19 Nov 2024 13:19:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9ADE71CCB21;
	Tue, 19 Nov 2024 13:19:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gfBbdzIz"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ABD71CBEBB
	for <linux-man@vger.kernel.org>; Tue, 19 Nov 2024 13:19:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732022381; cv=none; b=EgL2he/U/U2SB+PWQk4exzvLsXjIxcLY5h0TZJpyKjyKm5I7u8PPtwwz6iYvc2qPSlGnf+m9CAZ9hXJqc7yDkdz7mZ4I4G4V5Kek/2jqDYQVvOpTSGjPvlmZZ555pMsZfDGSK7f713XIrVKkmwfKSKLoO+ySvXzg9ERI9lxuBVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732022381; c=relaxed/simple;
	bh=gTmEVP15bokA+RR1cOms544/YFOaHXuFP41+1DXfL3A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PbfaL4FztXvpZA6w0wrM3cPN44XJpmVIjMdgNaDC1bxxXhus5ZJ1+THe1zhcgj8qFd1A8bUZaO/Q+QdtJMxj57DaD0ZbAXu/Hea+WgG0fdk7NkioZP6IFs6FBMR+StVoSxO6ghHXjtfiJsWtYui6UMDq1ftrB16SuGmL1OkQ6u4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gfBbdzIz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D92DCC4CECF;
	Tue, 19 Nov 2024 13:19:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732022380;
	bh=gTmEVP15bokA+RR1cOms544/YFOaHXuFP41+1DXfL3A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gfBbdzIzraTA4kVDkI8QRxefeqdziF5IvR8PBWfN6Jqu3UxRd/Xe/UbcwuhY/3xvS
	 h5dvSrl8wsv19ML8gwnddXWQTj9pSsj07iGySpKLDGzFL0ILzVX14YJZYIRWiQqtUO
	 XY0XUUX2PzsQL+E+PzxnRBBa0cotVyGhzRMdM1tWYWb6loGCqyBf8fQjniLnlXAkhz
	 bAi/zOaDgDzjsN8+qnUER+5Li4wiupSWdjMToGVzjKRhVluTa3i3J+mfr/9/y1qJQh
	 HDUcfr98rsfgzEgZXa6oHP9FuwEur45XJDWEadHwGcBGPz23XOBP8YnuK3M+PAOTGZ
	 018wppBSV7TpA==
Date: Tue, 19 Nov 2024 14:19:37 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: Helge Kreutzmann <debian@helgefjell.de>, mario.blaettermann@gmail.com,
	linux-man@vger.kernel.org
Subject: Re: Issue in man page getent.1
Message-ID: <20241119131937.bv5xrxw3o4j32uxn@devuan>
References: <ZznJgjKF5psWsP3d@meinfjell.helgefjelltest.de>
 <4b802b9f-dc7a-49c1-a363-7ac987c82474@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jhapdkj7lfsan6yf"
Content-Disposition: inline
In-Reply-To: <4b802b9f-dc7a-49c1-a363-7ac987c82474@redhat.com>


--jhapdkj7lfsan6yf
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Issue in man page getent.1
MIME-Version: 1.0

Hi Carlos,

On Tue, Nov 19, 2024 at 08:14:48AM -0500, Carlos O'Donell wrote:
> On 11/17/24 5:46 AM, Helge Kreutzmann wrote:
> > Without further ado, the following was found:
> >=20
> > Issue:    No "in succession" here on purpose?
> >=20
> > "When no I<key> is provided, use B<sethostent>(3), B<gethostent>(3), an=
d "
> > "B<endhostent>(3)  to enumerate the hosts database.  When one or more I=
<key> "
> > "arguments are provided, pass each I<key> to B<gethostbyaddr>(3)  or "
> > "B<gethostbyname2>(3), depending on whether a call to B<inet_pton>(3)  "
> > "indicates that the I<key> is an IPv6 or IPv4 address or not, and displ=
ay the "
> > "result."
>=20
> This text is for the "hosts" database.
>=20
> > =E2=80=A6 and in many other paragraphs (I can provide you the full list=
). Last
> > time you said, that this is under review with glibc - are there any
> > results on this?
>=20
> As an upstream glibc maintainer I can comment on this.
>=20
> The getent program today iterates over the keys passing them in successio=
n to the calls
> as listed for the "hosts" database i.e. nss/getent.c:hosts_keys.
>=20
> I think the text could be improved by making it consistent for "hosts."

Thanks!

>=20
> Each one of these instances is different so they each should be enumerate=
d and reviewed
> separately.

Would you mind proposing some patches?

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--jhapdkj7lfsan6yf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc8kGkACgkQnowa+77/
2zKXqg//QTy+4/z3WppSfhWYy67n2mp8d7GwwFoe5JKqX4L5yhU7JaJSJeXgyfNU
arXeigsHsJ7ROXiLiCkciXRc85mGuV22cZBEnhY8f8kkYqyi6jMF1eVI6LloPnFQ
/48cGm+Jzq52769mIg8h2a2ufPMJcccIhwkYylL11c5n6NdFbhQnUU7j/4jOqfCX
aqT9FAn7gLQQPZW9u5AFoWulmDmgRs2KR+xgFtBC3xeGVWmlkkC+lrOKRmRUN+EA
OxhY8c0xua6XvXA5mG/yXuFtD30Cygzxkbkc/xNWxfCP18zt1IvLIS5UzpysnVSm
9UzgM7myRW7y+rcbwdXGsYeKMlD/pbm8lq7HFEWULoMKeO7sQzgKxjz+8xzTsJti
OPoqEvRC3CkxyUnlulUoKgC0uNl1u21B4QIiu+PFoPHe/79OWD0HJq0MoLUjO9qv
J/mflhiFdwu9Jk38r5A3/jMn+Qe5ZnkxpW/8bcCZHl5/82o2oGGJn5URP7ULapux
/w52ijtvaDfSQdHzAZex5LYcq1ekrGMkri3rnzFr4YOrr1IAcZCY+uOHYVcbRVpz
0aQB7oKDHBuTczuuTNjlHuEmEb7Qv7V9A45/DZsFitvynrMVMQ1Hm2qqF02xau1K
p9Fk4G8brep2M6K4AjGBvieEl7bbk0DIIqPS7AqjHqFmZ117ieo=
=YV03
-----END PGP SIGNATURE-----

--jhapdkj7lfsan6yf--

