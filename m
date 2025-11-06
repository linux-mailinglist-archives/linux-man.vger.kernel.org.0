Return-Path: <linux-man+bounces-4257-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 94CF3C3A4F2
	for <lists+linux-man@lfdr.de>; Thu, 06 Nov 2025 11:39:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 554B31885EEA
	for <lists+linux-man@lfdr.de>; Thu,  6 Nov 2025 10:37:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 165C82248B4;
	Thu,  6 Nov 2025 10:37:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AZWqWXis"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB7522DC341
	for <linux-man@vger.kernel.org>; Thu,  6 Nov 2025 10:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762425431; cv=none; b=XbKTBxxzNYS5u+TghYPmEEXrA8n1Qb5nupAVMwb7S313U0/XcJhh8fOPnQfvqW8cuZZO3O/8VNMV4pzoKC/3Ok2PJVPrqVTELynlfsMG3/9GwfwAGaJMEMAml1p3EqqLB/uiVcQNGNSMR9jPVWw2AQOgw3yhkVal9bzYulk3RZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762425431; c=relaxed/simple;
	bh=sZx6QjjzZh2int5dzAoajTPwKbBcxMsn1gxXr56Tla8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HKIJ/Se6XCh+9m+H3Kfdbvp8wT8Tm3uM8N+Glr8AkPCgVUMPE81dlCxwm/A9WjhJ8IzXyc+bfWYPZlI2erEGxRZ6ofvmU3oEwQhsR2SkARUfuGjdSkcrcI3UI1ZNuxSYl12ppHBeQpEUOxwPUY+88JhLXO2Sty0tpH4AFT29yZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AZWqWXis; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D0C1C4CEF7;
	Thu,  6 Nov 2025 10:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762425429;
	bh=sZx6QjjzZh2int5dzAoajTPwKbBcxMsn1gxXr56Tla8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AZWqWXis4OC6rSFOYT/SDA9rucXMEUzf2DeaKcEZ2uQNQzby1iElsAI/idQn++jR2
	 rqwU0ad/w+eW2TT9yqjQxB6b48pCYbL0gxBMZY2IIA/CCde5HF80lTjkhYonA2dpz8
	 La2kGaHr8dO4+evsPGD6lWuD4aXfJQJKxgkm0DrYQ0ws8BTsymyhEYkxec8l67/i+Y
	 zAgWfQ5256t3X8M260qR+6gxKgJPDoY42gXEi/PHRAVSyr5dqhfW2n3DQLB6T9xEUo
	 zpcGBLMRl7DcmDo3Gryqm1Bf6LPvId7JpytucxCvXnFpiw52qxsoSUituCVC/jqyvx
	 0CdQhlrRNHYaA==
Date: Thu, 6 Nov 2025 11:37:06 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Dirk Gouders <dirk@gouders.net>
Cc: linux-man@vger.kernel.org
Subject: Re: wcwidth(3): wrong #define?
Message-ID: <emx6d3vpgfqodt6lspzmj234iujdyyze677bj3oxwbg3ipr4a5@avjsmrealmr7>
References: <ghms50i7u0.fsf@gouders.net>
 <km4jixjgoknyrfty7fdxxt72uyd76ilib62r7oqtjixmfvwucv@ca7rbihkf5ny>
 <ghecqci13z.fsf@gouders.net>
 <cdhrtmpp26jj6lsascn4mzak5zbztcplvccofhdkrhzqfaivpp@q5wkk5iuxxqu>
 <gha50zivxz.fsf@gouders.net>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ipulfhi7tvr7l24e"
Content-Disposition: inline
In-Reply-To: <gha50zivxz.fsf@gouders.net>


--ipulfhi7tvr7l24e
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Dirk Gouders <dirk@gouders.net>
Cc: linux-man@vger.kernel.org
Subject: Re: wcwidth(3): wrong #define?
Message-ID: <emx6d3vpgfqodt6lspzmj234iujdyyze677bj3oxwbg3ipr4a5@avjsmrealmr7>
References: <ghms50i7u0.fsf@gouders.net>
 <km4jixjgoknyrfty7fdxxt72uyd76ilib62r7oqtjixmfvwucv@ca7rbihkf5ny>
 <ghecqci13z.fsf@gouders.net>
 <cdhrtmpp26jj6lsascn4mzak5zbztcplvccofhdkrhzqfaivpp@q5wkk5iuxxqu>
 <gha50zivxz.fsf@gouders.net>
MIME-Version: 1.0
In-Reply-To: <gha50zivxz.fsf@gouders.net>

Hi Dirk,

On Thu, Nov 06, 2025 at 06:14:48AM +0100, Dirk Gouders wrote:
> > On Wed, Nov 05, 2025 at 11:08:32PM +0100, Dirk Gouders wrote:
> >> > On Wed, Nov 05, 2025 at 08:43:19PM +0100, Dirk Gouders wrote:
> >> >> I'm playing with a program to calculate wide character widths and
> >> >> gcc complains when I use wcwidth(3) according to the manpage:
> >> >
> >> > What's the exact diagnostic you're seeing?  I'm not seeing any issue=
s:
> >>=20
> >> here's my program (meanwhile, I read that _XOPEN_SOURCE should appear
> >> before _any_ header and that indeed would help):
> >
> > Yup, it should be the first thing.  See feature_test_macros(7):
>=20
> thank you, you helped me with two problems:
>=20
> 1) If you think you read enough and should talk, go back and read twice
>    as much ;-)

Yup.  Although there's so much written information that sometimes it's
hard to find the one you need.  Sometimes, asking the right person is
easier.  :)

> 2) For a very long time, I always read patterns like
>=20
> #define FTM
> #include <example.h>
>=20
>   as "Put FTM as close as possible to example.h." but it seems that
>   pattern actually means "Put FTM as far away as possible from
>   example.h."

Yup, there's no order.  I use:

	// feature test macros
	...

	// libc headers
	...  // In alphabetic order

	// other libraries
	...  // In alphabetic order

	// project includes
	...  // In alphabetic order

> Thanks for your kind explanation.

You're welcome!

> Regards,
>=20
> Dirk


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--ipulfhi7tvr7l24e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmkMeksACgkQ64mZXMKQ
wql1ChAAs3CA35h4YCLmgm/E6C/T6ViTGqmhCEnpzqPMAK9aRDVH5hRMc6cHlOcA
6nLEmPbBMdrHAsPUsWbpH+Wd+i2d1v38gF6VoFHId7as1pC8geb/1Iak7Kpi/pkC
2pmLkYd4mV4ROEJ23ZFrwAmBFd34XwbZY2kc2hgGcTYE11lYv8Z7BzSl87y6dnLP
of7DbSgxM0px/Xo8qT5v1Qi6mXzixFc5ez/JBYyC0SZL//WazcT3O5CbmltCFhUW
5m6IHWNTaCIRhg5+Z6EeyiutzGWUtj2Uy//vfGKx2P1lvfzqgMMKyUDRVkFZdw6m
jRuO831qwfP6h2TeiT+2xZfVPvLTPDO9uw6pM8NhqAcKI+WeUh/m3T2h2ceWogXA
KjSs3Bm0QUu/o292qbDR87+4h26/A0ooSE3DCSq6njiQ/lO1Avpd6dcE4lKMyz0O
b+BCCUONWVvDKqHWgi5l+k4PbPNpwmvPCt/rvLPYKsAKRmC6M2KsIfMJObMbg/em
e75268E9wMVB35uPD+i61KgR1qWxgMVLqpZI8H2lTrA3lVAijg65mXqOjdoJizs2
/x4apkaQAKUVB76NK96eipavCKCP5GJhKANvA8OwuXhaaK+01oR0+6n1QmNGDEsh
m4pR2WZK3bJnCzhHg58KYYepNOrBv7bZhuk09/OPDSYCeUgMN7A=
=Wk1z
-----END PGP SIGNATURE-----

--ipulfhi7tvr7l24e--

