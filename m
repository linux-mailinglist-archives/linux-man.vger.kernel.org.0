Return-Path: <linux-man+bounces-2486-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B19A3B2FF
	for <lists+linux-man@lfdr.de>; Wed, 19 Feb 2025 09:00:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BBDEA16BD5B
	for <lists+linux-man@lfdr.de>; Wed, 19 Feb 2025 08:00:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 384F01BEF7E;
	Wed, 19 Feb 2025 07:59:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t2fS14UX"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAA121B85D7
	for <linux-man@vger.kernel.org>; Wed, 19 Feb 2025 07:59:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739951997; cv=none; b=AblLPwchol/UWJxUu+0Fku/9XCFa85SRF5W3cu6+fOzc49KE1EKytuzxvW8igWVkpejuMAXKT3o11YsYel/+YjbNHpBqGJkBT4M06rWze5YHlJtmE32EVIP5GfTZ0Xi+EqeOPsCdnTB5NTYcTPbklIH4uNpr+yFeTkN7WIhNfmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739951997; c=relaxed/simple;
	bh=9Ke7D0jM5S18qWyqdA7qvPiIaReQ7jZ9wmeRU15BGtc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LzUyKO2sn0yaynF3EVUjrbLqyC0yXB2u8SHPp6N/bxLNH5MXX/EbScE8XuW7ut529sHIjwoqAtfqOY+HuFh68zxbX55NoqKPjz/V+/n7S3axmDkM1YnmxVvBTZMBC9FExIomfu2/VhXUT9XSLuzZT5dh/lXOSRCwtIQr7oO0lLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t2fS14UX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39E2BC4CEEB;
	Wed, 19 Feb 2025 07:59:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739951996;
	bh=9Ke7D0jM5S18qWyqdA7qvPiIaReQ7jZ9wmeRU15BGtc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=t2fS14UXE0Ku1IseA8X7vQ2/T/tdYuX1STxAEwLBfAykhBFjqIZ28GehWhb0kDY8a
	 BTJT6xjYxX7TTu8nYPHEOoMQD58e8gxx8DjKGvAm2Xdc/T8KcodHNIymbe5/3N8g4i
	 tUjO0jQn9gsOo8T6SlYcttJVqGJHsxKseEro1ajC/UoW33360K+huwxS4FTdZKU3pn
	 6Znn/WNvFqnM5ZwfIPFcgE8O8NRxtFSsEFDafcQ76U6liC58n8o4aSNuAyl9GCNgkP
	 fmlcs/ViS5/CtiDr6SjaXLUGAoEvQdqUp9HSpTW6dUtWA5oHEbVBbmvCYuep7JR2Pr
	 XaYcrimel/WZQ==
Date: Wed, 19 Feb 2025 08:59:52 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: Askar Safin <safinaskar@zohomail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v3 2/2] man/man3/getcwd.3: tfix (pathname => pathnames)
Message-ID: <pgfwvmgg2w3ys6tnd7z6jo6tkhud4ndbtnplajwazyope7d4uq@ckgwqx5c4jvu>
References: <20250216061828.2277971-1-safinaskar@zohomail.com>
 <20250217165143.1265542-1-safinaskar@zohomail.com>
 <20250217165143.1265542-3-safinaskar@zohomail.com>
 <1a4ff544-28d6-45e3-96c9-55097cd6fa4a@redhat.com>
 <gqpxaoxm3vhe67i3pqa3erbsmovf2i6y5nb7djnqanatfof2ic@2ehts6pa5axu>
 <124fdcc1-6380-49d4-b25d-13046a4693b9@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="d43d6klhsqdar72c"
Content-Disposition: inline
In-Reply-To: <124fdcc1-6380-49d4-b25d-13046a4693b9@redhat.com>


--d43d6klhsqdar72c
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: Askar Safin <safinaskar@zohomail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v3 2/2] man/man3/getcwd.3: tfix (pathname => pathnames)
References: <20250216061828.2277971-1-safinaskar@zohomail.com>
 <20250217165143.1265542-1-safinaskar@zohomail.com>
 <20250217165143.1265542-3-safinaskar@zohomail.com>
 <1a4ff544-28d6-45e3-96c9-55097cd6fa4a@redhat.com>
 <gqpxaoxm3vhe67i3pqa3erbsmovf2i6y5nb7djnqanatfof2ic@2ehts6pa5axu>
 <124fdcc1-6380-49d4-b25d-13046a4693b9@redhat.com>
MIME-Version: 1.0
In-Reply-To: <124fdcc1-6380-49d4-b25d-13046a4693b9@redhat.com>

On Tue, Feb 18, 2025 at 09:30:00PM -0500, Carlos O'Donell wrote:
> On 2/18/25 6:48 PM, Alejandro Colomar wrote:
> > On Tue, Feb 18, 2025 at 06:33:26PM -0500, Carlos O'Donell wrote:
> >> On 2/17/25 11:51 AM, Askar Safin wrote:
> >>> Signed-off-by: Askar Safin <safinaskar@zohomail.com>
> >>
> >> LGTM.
> >>
> >> Reviewed-by: Carlos O'Donell <carlos@redhat.com>
> >=20
> > Hi Carlos,
> >=20
> > Thanks!  Does this apply to the entire patch set, or to this patch only?
>=20
> Only to this patch.
>=20
> I'll provide Reviewed-by's for individual patches in a series as I make it
> through review of a given series.
>=20
> Does that answer your question?

Yep.  Since this was a trivial typo I expected you'd only give the RB to
the other one, and I hadn't yet received the other mail.  So I was
wondering if you accidentally replied to the wrong email.  Sorry for the
confusion.  :)

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--d43d6klhsqdar72c
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAme1j3EACgkQ64mZXMKQ
wqnBfQ/9Hacf7ppCPCI/TE/QDGhklNEQJfgEuDsudI0Sx5Txark5ogiVi1q8rKFX
AhTlZTuIs/ZhsFUX2NggbbVzZBKO2THWJFOKVsonhG+ihX2dyEN7H8RFgidyMFFa
ii7AK22rYUPSs6NZHpp7/30wCTJXrcR8DgVVhkpHpazBu3lTQXutfA4WKWdpP65c
hAEjyyxEjrl7MshD8OPJ4yivzFtAX4jbSLp+GR4Gl1JWO5UtgSoXWfLAtxceBZHB
YKWkaB2gZ+WagqA6ZkPT7uZYiLK5tx0k7IXuZOEc24Q+iQ7wwfatg8NXGrnti2CU
g3llx5AVcInEX6NgI1n0l9JjeQDMy9vzBlHXwzB24IzuFaZDh4/CPmisuyMZot4m
OdorBELYe/IMkRl3QiwXC64j3k3KcyJSAqNp08iEBu+pLKFPtxTyvXJR+vSov844
sqkWrt3T/E5U2vM1Ed97AUJQJts5RLIecxdntjL2DdCffkiR3OgSXmuaTl1frc90
VGIqJ6Mt+SGDa9bT3kYfzY04/r5Z56yOPLLiWOUqCIlnZIZ7QEeu8QlRh/u9wJVj
eyUjmtOIdtrRdCCaW7wvLOsWSO/GBmZZzS/7XyjE89ENQWiyvBy8OdoIicPG+0c6
kObMzWMpc8M2/Exs1wnzz3epaFcZyq8YjD5zuJp7rxWGDuab24U=
=0XXa
-----END PGP SIGNATURE-----

--d43d6klhsqdar72c--

