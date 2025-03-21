Return-Path: <linux-man+bounces-2628-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E0085A6C5DE
	for <lists+linux-man@lfdr.de>; Fri, 21 Mar 2025 23:22:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 040DC188756C
	for <lists+linux-man@lfdr.de>; Fri, 21 Mar 2025 22:21:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 451321F03D9;
	Fri, 21 Mar 2025 22:21:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lkRrzmdU"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 066F48BEE
	for <linux-man@vger.kernel.org>; Fri, 21 Mar 2025 22:21:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742595693; cv=none; b=YN2o4Jvgdjz8XsVNwDgZwAfPz811rGG5v8e4Fe+O1Ylxvmi096bnzXqEmLX44unS6brJoMWz+bZA8e3BuvL/tviwvZcdF0kCpht1CDMiVUTjNjWq/M+lhzgAp3xmg1VBU6d3mr11MmNd6IiUDRIYvRUKEnqCijFkbAhF+9Z8i3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742595693; c=relaxed/simple;
	bh=C0nvKYqOaXb9enm2zDeNIWylHiO7eO2Be2H8O8RXMUc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KAeoSOwGsknKwyHHCOo+QzR4P4qOSllPN/nuvgAVkdAE9NpLrUI4hDNtYuQwESO6nI6HDsRkA+kEKNoJ4PxvzzJg9M3BNEOQGk9exwOEv6rCaBprSSvWhbUlv5zngeai980+C+iUXdR30AGR0RKiBSKxvNz4tG79ei7RYDjrHwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lkRrzmdU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A33CC4CEE3;
	Fri, 21 Mar 2025 22:21:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742595692;
	bh=C0nvKYqOaXb9enm2zDeNIWylHiO7eO2Be2H8O8RXMUc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lkRrzmdURf/GCytQwQaA9p+jGCC1Ro1V9l4PodjASRbaMtx/JOJElUtYQ95TRKrRw
	 pp2nuLm5QY/zDka9zMfzTYFm0dISBGmZGke/OYIACsk1rulLZ46xP9xNsYVR180RHh
	 e71AA+5howtvZJcXIUzc3VV7oIzdVz+OZyUHpTX7/qd6RLpeZFFdBrhBagPashdTPW
	 WfVPUKfTIWWlFl+I4IpkAnItTTVJiGhC6hY3RisItdoADEyd9207gUCNlPfT9WzMZ+
	 it8JsKWwTEUlNsG2xQofV9bcGB/MW1zJrFc7Zwq2hywZ9IZ7cbbEIjSdHKiDDs5NH/
	 +/CF29y+J5gFA==
Date: Fri, 21 Mar 2025 23:21:30 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Bruno Haible <bruno@clisp.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1] man/man3/strtoul.3: BUGS: Signed numbers are not
 rejected
Message-ID: <fgszgmrdxijbbmcd732hmftgaubtfkv32yppucg3stauua5l2z@jjecbe7zbr7i>
References: <939641570ee1c36bfd2ef8788789b54357ed5971.1742589662.git.alx@kernel.org>
 <5145342.a9HWlOh95j@nimes>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hblj6h2mzko6nn6a"
Content-Disposition: inline
In-Reply-To: <5145342.a9HWlOh95j@nimes>


--hblj6h2mzko6nn6a
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Bruno Haible <bruno@clisp.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1] man/man3/strtoul.3: BUGS: Signed numbers are not
 rejected
References: <939641570ee1c36bfd2ef8788789b54357ed5971.1742589662.git.alx@kernel.org>
 <5145342.a9HWlOh95j@nimes>
MIME-Version: 1.0
In-Reply-To: <5145342.a9HWlOh95j@nimes>

Hi,

On Fri, Mar 21, 2025 at 10:31:39PM +0100, Bruno Haible wrote:
> Alejandro Colomar wrote:
> > This is one of the patches I will apply after your report.  Please
> > review.
>=20
> Looks good to me, except for one line in the sample:
>=20
> > +	if (!isxdigit((unsigned char) *s))
>=20
> For a general base, this should be
>=20
>           if (!isalnum((unsigned char) *s))

Hmmm, thanks!  I fogot about base 29.  :)
I'll take that for v3.

>=20
> For base <=3D 16, it can be simplified to
>=20
>           if (!isxdigit((unsigned char) *s))
>=20
> For base <=3D 10, it can be simplified to
>=20
>           if (!isdigit((unsigned char) *s))

Yep, although I won't mention that.  Since isalnum(3) works for all,
I'll say that.


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--hblj6h2mzko6nn6a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfd5mkACgkQ64mZXMKQ
wqly/A/+M7Jvdmk5uih1+Lcx7yHyS+nSMkEWkhuB09RLC4gUNz6D7g7x033DzjwW
7pF15DhTVirIBt4DGrhP7vij1exD3ShcPnGm5IRYY6VAQVDMFR6c/f8O5dAY0FBB
EzsTyZ8KCpcWUOvuKnYnBzKuBvVrtIOnKhhXkkoGA+aqDIGroIHxrwYtv3Gbwn3c
aKPbbEY6hDaVXZh3D5uUsYuaz4gBZKcLcSB1PArnrYVA+vFTM00W6wUGmLrcFB7y
fd/BOrGsCl7nrHqMcsVtws21JwECUjrgipmo+ucVe30Eaulp4+tTmJyMwv3mmNDe
wBRwl3VtJ035+01+CXzBViOINLZwf4WFTWs5QDHYhqUwdAjysRQ+usdBeiFaaGtA
haDmnTvsUVzLd5iewU326vfnqT06lp12NNjMMGVraRaTXyD3Vdfs44/wyzly0jp9
sdrLYa0p6dyQMpzJ9RocTsyCSQ4nmgAeqDrRH/h3/7hyUR2dg+ZHXBtpfj9gpAag
CvsidG+kYxI3rgQ640DtiKI+LX6qFgDoWWtkjTVJfdkoYv6nhjo2pE3xsT2xWkZT
hNxNH2JqWjwJdSDkz977dpFQWZdlKp6cgi56vxv1vjcy/V+Cs6qXA7xrHnMyt5jz
Zz22qR4GnDbHw6s5yPyXZIjgCkmYsi9Teh2z8GN578Bzt0MM5RU=
=cQYp
-----END PGP SIGNATURE-----

--hblj6h2mzko6nn6a--

