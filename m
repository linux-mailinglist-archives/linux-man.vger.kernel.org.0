Return-Path: <linux-man+bounces-1629-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 696639599EF
	for <lists+linux-man@lfdr.de>; Wed, 21 Aug 2024 13:31:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DA8DCB27CD6
	for <lists+linux-man@lfdr.de>; Wed, 21 Aug 2024 11:31:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B330F1D12F6;
	Wed, 21 Aug 2024 10:36:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FTsd2Sjc"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 736C81D12F4
	for <linux-man@vger.kernel.org>; Wed, 21 Aug 2024 10:36:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724236577; cv=none; b=LnS0CnMZk6+XHTWkVnmM0EzNAbPsyqAKoBVsHL9m8X+0BGRyijzcVFw5lQvflQh7ujaPAYQA0FoatObuK6TDLynvyMSe7FPk45iguq/E0nCkSRl5Z6CzZsc1cTuwOU58O0wNTa3XkrRRwq/ju9odX+bfv5UtwwtHKiNUQXL3kl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724236577; c=relaxed/simple;
	bh=7PlmcZSZ0lOnxASA+o1cKAXGngcmnq1Fzl+qeRzkMuc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=G4oABvtPvJhwpFXTwe/1L/0mXlLFERi71jx2hjkmi2mFrReVF87jN9rBuTl6wzbsc2NFMb29P2e7MGKI8niD81Y2jN6SXF5XF1nFg5JrO8HSkAK8mVK2Dn96is9D4uSL0ph7ZVKvsTk/Zt9uFlGxbhz/5Yn3siVH9M4jkyQZeVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FTsd2Sjc; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B7FAC32782;
	Wed, 21 Aug 2024 10:36:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724236577;
	bh=7PlmcZSZ0lOnxASA+o1cKAXGngcmnq1Fzl+qeRzkMuc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FTsd2SjcoMhKYjozJEoP4jMk3/TwIt90xdazCjii01dTH+YKAbLw1fJ4MErotmmEo
	 nPR1k2gcuIcCyEfg9rKshfOTcv0gKwYMKkAVQqRaTWmjvJKxO5/17ZHXB5mNniH0MO
	 OoCJJ9Y5JrddlrSV4Q0aGPpODXEkxHTmf4AdbO1f/78iCwTEjenXquXrX0MC7DnVR6
	 T6hzaL23urUI+tH6N1zL4mGCRNuMW9SHS7N/8rFQqTWcSFrcd+8R2MtQuIRthAhqC5
	 bnaHKueWQXYZ86uqI/ABUXx94WLCzAMjJV/SXx+F2PygMtvmN8os0r06RO+C1SOiwW
	 4YZVUihr4q5ow==
Date: Wed, 21 Aug 2024 12:36:14 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Greg Minshall <minshall@umich.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: getaddrinfo_a man page: add notification example?
Message-ID: <ournrsj2l2cym7kbz5nl65mgtuuuqmd62i5unlkxr3kfduhq65@ajz4sjya43hj>
References: <728184.1724230207@archlinux>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hpjy5rg5se524cwr"
Content-Disposition: inline
In-Reply-To: <728184.1724230207@archlinux>


--hpjy5rg5se524cwr
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Greg Minshall <minshall@umich.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: getaddrinfo_a man page: add notification example?
References: <728184.1724230207@archlinux>
MIME-Version: 1.0
In-Reply-To: <728184.1724230207@archlinux>

Hi Greg,

On Wed, Aug 21, 2024 at 11:50:07AM GMT, Greg Minshall wrote:
> hi.  first, thanks for the man pages.  always a great resource

:-)

> (in spite
> of the --help's of the world).
>=20
> i recently tried to figure out how to use getaddrinfo_a with its
> notification facilities.
> ----
> https://git.sr.ht/~minshall/gai-a
> ----
>=20
> the examples in the man page was very helpful to me.
> ----
> https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/man/man3=
/getaddrinfo_a.3
> ----
>=20
> that there is any example is great, though i can imagine controversial
> (because of length).  but ...
>=20
> > This example shows a simple interactive getaddrinfo_a() front-end.
> > The notification facility is not demonstrated.
>=20
> if there was a desire to expand the asynchronous example to demonstrate
> signal and callback notifications, i could take a stab at it.  maybe
> adding commands to change the facility (for future requests that
> session), or some such.

I think examples are great in the manual pages (I wish we had at least
one example in every page).

If you can provide an example for those features, it could be good.  Do
you think it would fit in the existing examples, or maybe it's better to
add a separate new example?

Have a lovely day!
Alex

>=20
> cheers, and again thanks, Greg

--=20
<https://www.alejandro-colomar.es/>

--hpjy5rg5se524cwr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbFwxgACgkQnowa+77/
2zJoqw/+JMDJvc/f5BRrKns0eq+oLeylNIvN3q5azjclBjpgn/singtf+enNa7M9
e6dBds2gKHwpnt8SN+6Qx89t/FxWS8aGhPYm9RBv+OJhYtRTnNE4x8hN5UeUFHhh
q9wgyVMGHSrR6xbG4KIkPxwJmZw3b1CnMYrdxo2Fuj9F6Jt5/YX3I2rMU5k6zCW1
sRplSiLbI6MiqVymXVi1+Qlhoh2mQXLgEmbmF59SAcfjJ2a80we4yuRE1SaLrFCn
HRPdHwBKm6yvJwobUU7MurEfTowAokI9EUzm6VYtH5uO3fG/Q49bkHYSdIWeIeGc
VvSxs9lpkSzt7IBEdZnzvujr11allqR9SDgCXrpdufKxDe0rwZyHDeqWs0l+V2Y/
+3G60R6NLaVH21OX3SLs5VGqLVRlRqA0nIg9B7ixOEr7ajZUXtUrvzGWhuLlbXLE
a8gzYfaQA0hcsgmSv9wPVQocLqZBHUaL7YKkgWe+JXKAji4J+6qq13R7qdqhVft2
pHWXrw9A9eELBVQ+rdevHzBJaJc/8XDmWZVOv3S6m4i6lmGWZiyIe15RrT1dcwcI
Nk7q6OvmrEo7ewMbHlr8D1CXMHfNwB+0pcLRFgLpcqNQ1AMXByzxgKAW0WXwhJoY
vByIRad9o7s3qXSedvsOnGfUP/g0OKHprHIolZveApIiW9dMe1c=
=wDQm
-----END PGP SIGNATURE-----

--hpjy5rg5se524cwr--

