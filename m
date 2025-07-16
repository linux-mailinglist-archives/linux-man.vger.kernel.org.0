Return-Path: <linux-man+bounces-3274-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CA609B07B25
	for <lists+linux-man@lfdr.de>; Wed, 16 Jul 2025 18:26:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AAF8C3A3DAD
	for <lists+linux-man@lfdr.de>; Wed, 16 Jul 2025 16:26:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B39D21A238C;
	Wed, 16 Jul 2025 16:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ci18E1j2"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7300F2F3C3E
	for <linux-man@vger.kernel.org>; Wed, 16 Jul 2025 16:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752683193; cv=none; b=JlE/KazaGhC/qFQ/KMzq//yZ2qyBd0fMHysWWzfVZKx8cityjvoI8qy54FDhHkUh6DYEsk03wK/3/H2XYsgA2eC6hvxgrVOlNwQZ4z61EVb6tlX/PBrNia83gbTDeVr1fP3PqaDBmLXj5ti1K4AU901dedyu0WPHxQGxdMFbtfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752683193; c=relaxed/simple;
	bh=ZojbLmhD9TvQormoEApF7BVyJARqvKCVaQhWGiMZwM8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mpwgZIOn58rdHOn5SNBnzwu/dgpH7B2u5Imh6akC9gmz1o1pslg7DSs8Do9yWdE2j75e6BVx4j6ASNEZT1IIwvAXnFI0297uSlMetHmBGBzk6r6GabhRZbrfeRuk8n1vvsgfQ3Xi3hNhXsk271+wMxdteVqPh3+jLzGJufQRnE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ci18E1j2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A183C4CEE7;
	Wed, 16 Jul 2025 16:26:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752683192;
	bh=ZojbLmhD9TvQormoEApF7BVyJARqvKCVaQhWGiMZwM8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ci18E1j2O6obJhUnxNjXr53xWlPhzPJ0bGOxuf1TVcU7QI5JrSXOSzp4/h5yt6s97
	 ZoZXOWz8vwIISk7u8zOS4KQ1sk6vaZrmScG6R//gVS/ilhXcmmcCr9Ejl5mJSMdNWJ
	 gakm39p+JzZceYUgzI1eJHtF/JN8zvQKCCl3vMt86hny0EPe1Y9VVE/YaqkLfC4aeU
	 mPfyC4O94BHK4s/O4A/2r9rEOqa/UPNPWKe+5p7BJHkldB6Y0QEEKghRIovOWxb3Gd
	 dnY/TGTBGj9CUnYkBbVPp/UiHsobbRmYkqpc5jf+0l+zcxxyeYzla+mFnIbh2eNKMo
	 0zl5h4It51B4g==
Date: Wed, 16 Jul 2025 18:26:29 +0200
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: drop ia64 from man pages?
Message-ID: <qg66hasjtm5tkk6dfp4em4fhx6wo567224l5egnfyvmb4ddp45@pgxwr2muteby>
References: <CAJgzZor3iAMrE8y1gz0C5_v87qfYfZiLjm2xi-1qUscm8pT+TA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2pw6anc7k7sap4ue"
Content-Disposition: inline
In-Reply-To: <CAJgzZor3iAMrE8y1gz0C5_v87qfYfZiLjm2xi-1qUscm8pT+TA@mail.gmail.com>


--2pw6anc7k7sap4ue
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: drop ia64 from man pages?
References: <CAJgzZor3iAMrE8y1gz0C5_v87qfYfZiLjm2xi-1qUscm8pT+TA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJgzZor3iAMrE8y1gz0C5_v87qfYfZiLjm2xi-1qUscm8pT+TA@mail.gmail.com>

Hi Elliott,

On Wed, Jul 16, 2025 at 12:20:58PM -0400, enh wrote:
> aiui linux 6.7 dropped ia64 support, but it lives on in the man pages
> ... clone(2) in particular has quite a lot of ia64-specific text. is
> this intentional, or should we start removing this stuff?

We could move that text to the HISTORY section.  We should keep it, as
uses of that arch may want to read documentation about it, regardless of
it not being supported by new releases.

Say, you're using a 20-year old system, and want good documentation
about it.  You could find it in the latest version of the manual page.

Of course, we may omit some details that are unimportant, but we should
keep the main points about it in the HISTORY section.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--2pw6anc7k7sap4ue
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmh30q8ACgkQ64mZXMKQ
wqnC7g/+KwGc8AwGzg4zsLbwOMBaAaoOkzs+5wCb1XUkx49iBl085mSRpjGtRv92
j9OaJkTG7ox/PDy46N1HlZRqbRlGX84mqyUfAcmwoCMq5gvDps/mFPgjJoRliHG+
KDZHi+wBOzOh/fmWCNSKmy3PZkKu4YElf1N6/hPs/EJRHgTHR1mupX2dndrHx1BC
esZAdQ2krTToaRWgZUKTxOGRfOs7RAYfEEitOVAEpL/axYHLJBprV4cVyKybSec2
K9nwIOb7NUTB2/HavTObCdlTJBufprvVJDr5tR9H4NWb6hnnFxKdMnVh767M+cZi
Zcmhm/b6s6dNG8uPt8+UVUrfHf4hIrW93xUJiEHM9tXJ4iUG5x0i61CfKqyFv5h7
2yJ/IB4CFDQU3VZPiXd+e1o2ruxi69EIr/q7S2e6qkl0EsCn+3YL73nmbuLWKyji
k3MCptGLoW41EgrCyUT5TyrRkxhVso+HLEkbAcvowbC+R4YAYIHM+7xAH58UMkPz
5MBFjvCH0TZbh1vdDN4UW5ybqtfwxVdn75zXYSiACKHslOJ4GMbA2eCQDY37O/Ej
kHctrFEWVcqcs5Vr6og7QwAPqfPmSzg0WONDKB29hzlz03gL55OxhqJFGSBL/ybp
DY5gVbJ6zzjotx36IdBQrlWbEkXB6rvqS3gqUX9awAK+qTzzBos=
=rK2K
-----END PGP SIGNATURE-----

--2pw6anc7k7sap4ue--

