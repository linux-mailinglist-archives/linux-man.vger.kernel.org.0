Return-Path: <linux-man+bounces-4708-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AAEEFCFFF26
	for <lists+linux-man@lfdr.de>; Wed, 07 Jan 2026 21:12:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D764D30DEDDE
	for <lists+linux-man@lfdr.de>; Wed,  7 Jan 2026 20:01:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11CAA1DDC07;
	Wed,  7 Jan 2026 20:01:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alejandro-colomar.es header.i=@alejandro-colomar.es header.b="nVl0slqu"
X-Original-To: linux-man@vger.kernel.org
Received: from out-173.mta1.migadu.com (out-173.mta1.migadu.com [95.215.58.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F0B3A0B37
	for <linux-man@vger.kernel.org>; Wed,  7 Jan 2026 20:01:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767816070; cv=none; b=op57MbSdm5AShgUhfzdjnvzRaaOaxBucsXUAC4dX7OdZTaqLkigkaYQt1KjhjRfgCUnzY+us4MlHa7ZLRDmPG+1zTP+7eyF2ncJaZc991xiQEdxyvdRDjfnnkIs0aSgR9mHMQKZopCv/M302+e+l9SPj4adqh5Ex3Ds9WYjJ/6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767816070; c=relaxed/simple;
	bh=hOt0rrfT7Hk7qqhlZXCmnmUcTvLmcgUD83X5WPy7Yro=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gdYAksLTjMBFdrkefbCNGskniucaj/zcBWRDDijI7X/QpJtpYqMcRq1Ym1hZRN6FHJVVhfAin8ptx5k0cVPIrUWi7yyN7xwD8jk2dxpsRi065SvUWpdD6QhHQiXxoVi+pyMrgKVookBrNo8aDYSicRnjmZUrwAZkMUy6L8yfMbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alejandro-colomar.es; spf=pass smtp.mailfrom=alejandro-colomar.es; dkim=pass (2048-bit key) header.d=alejandro-colomar.es header.i=@alejandro-colomar.es header.b=nVl0slqu; arc=none smtp.client-ip=95.215.58.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alejandro-colomar.es
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alejandro-colomar.es
Date: Wed, 7 Jan 2026 21:00:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alejandro-colomar.es;
	s=key1; t=1767816066;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=VhwpY5pOXj/zLgyVV2vAA0HTYiyh7qMXNBFMuKwFNwI=;
	b=nVl0slquugmEucZChz+2Oa2lWfUwv8UFC1ZQ0M4yOVEq99fJlcx2YkZuknwpV55S8LUXEb
	X39RXvTP3mK++ryHH+iqJeWEj409Tf7YXwDcPbiZFS59EvU7YVvtnp1eTOC8kLBNpPL6ea
	6C1qWHhtqUiWUuEYM7N3qyNKVb4XfLzU5nw/U/HlKX4aWYbTEzlj9G+S0DAreZo8wMEWb2
	vmUUKwjEmTYDLu2r/Zda9X15ubCIONGEzod16nlurEkpPNxzKZUZHOC1vwJ9vzHuUVNtqW
	qosqNMXY4kCj4bxQ3myOlkA0UEVsOnA7SklJ6UvuKAae7cW4Q2I/lTglRzsUeQ==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Alejandro Colomar <une+c@alejandro-colomar.es>
To: Philipp Klaus Krause <philipp@informatik.uni-frankfurt.de>
Cc: "sc22wg14@open-std. org" <sc22wg14@open-std.org>, 
	Robert Seacord <rcseacord@gmail.com>, libc-alpha@sourceware.org, musl@lists.openwall.com, 
	linux-man@vger.kernel.org
Subject: Re: [SC22WG14.34662] n3752, alx-0029r8 - Restore the traditional
 realloc(3) specification
Message-ID: <aV66cpx76ciahOBN@devuan>
References: <20251223161139.196AB356CF9@www.open-std.org>
 <20251223164349.F0BC5356D1A@www.open-std.org>
 <CACqWKsOkbArXm0XBUHkLcFFwDUP8iDQv_xPeNbomR0bKf-GCFw@mail.gmail.com>
 <20251223211529.6365A356CF9@www.open-std.org>
 <20260106201250.2A0A5356CEC@www.open-std.org>
 <4dda2463-3adf-4fdf-a2c9-d58a2cdce415@informatik.uni-frankfurt.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="34btx2iizyyahdbz"
Content-Disposition: inline
In-Reply-To: <4dda2463-3adf-4fdf-a2c9-d58a2cdce415@informatik.uni-frankfurt.de>
X-Migadu-Flow: FLOW_OUT


--34btx2iizyyahdbz
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <une+c@alejandro-colomar.es>
To: Philipp Klaus Krause <philipp@informatik.uni-frankfurt.de>
Cc: "sc22wg14@open-std. org" <sc22wg14@open-std.org>, 
	Robert Seacord <rcseacord@gmail.com>, libc-alpha@sourceware.org, musl@lists.openwall.com, 
	linux-man@vger.kernel.org
Subject: Re: [SC22WG14.34662] n3752, alx-0029r8 - Restore the traditional
 realloc(3) specification
Message-ID: <aV66cpx76ciahOBN@devuan>
References: <20251223161139.196AB356CF9@www.open-std.org>
 <20251223164349.F0BC5356D1A@www.open-std.org>
 <CACqWKsOkbArXm0XBUHkLcFFwDUP8iDQv_xPeNbomR0bKf-GCFw@mail.gmail.com>
 <20251223211529.6365A356CF9@www.open-std.org>
 <20260106201250.2A0A5356CEC@www.open-std.org>
 <4dda2463-3adf-4fdf-a2c9-d58a2cdce415@informatik.uni-frankfurt.de>
MIME-Version: 1.0
In-Reply-To: <4dda2463-3adf-4fdf-a2c9-d58a2cdce415@informatik.uni-frankfurt.de>

Hi Philipp,

On Wed, Jan 07, 2026 at 02:55:03PM +0100, Philipp Klaus Krause wrote:
> Am 06.01.26 um 21:12 schrieb Robert Seacord:
> > I'm still waiting to hear from GCC that they plan to change the behavior
> > of realloc and break their existing code.=C2=A0 If GCC plans to do this=
, it
> > could well change my vote.
>=20
> Not GCC here.
>=20
> SDCC changed its malloc/realloc aligning it with Alejandro's proposal a f=
ew
> months ago, and the new behaviour will be in the next release (SDCC 4.6.0=
).
>=20
> We made this decision after discussion among SDCC developers and users, a=
nd
> think that this is the best solution for SDCC and its users. We are not
> making any statement about this solution being appropriate for the standa=
rd
> or other implementations.

Wow!  Thanks!  That makes it two implementations that have already
changed to adapt to this behavior after the proposal:

	-  SDCC (SDCC 4.6.0)
	-  gnulib (2024-11)

Plus of course the POSIX standard itself.  That's looking good.


Have a lovely night!
Alex

>=20
> Philipp
>=20

--=20
<https://www.alejandro-colomar.es>

--34btx2iizyyahdbz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmleu2UACgkQ64mZXMKQ
wql7jg/+OubO7A14pvHdxRGlvq5t8c5dtXinLB77F9SCwva1nDr7ylSO+bgGPN2p
pFurTOWPZ5IIB7Cb9OJgOQp11bVJZnYs0hwTeF38Ocs/9kq6zNK1e9pndQ6sbFMl
KYY4Pa/ErigrxHjWVBDFV1qnuYK7kf9/eXLsyD1ouVXulimDYO9U7lZKN38YPczk
H3TAXWsbmSJzKLlZy0eTL6K3dTMNulcUaOldn0rJ/g1R3cr27hj77SdQwkF/wHpm
Uh+1L2oMvQ7IU1m6eLM4HKMYPCVg6DZuuUuh6hZlOypfKd0Gkw/fy6FuOsH6GT5b
97AjZVYH2aOtYibQiRcEPzGoG/Vjp7vSayPFxCpBu8xPE1BlTCf388jcEvtF4MPB
T+hfknopZivbulGUDpjAPyvyh8DXZ/t1dRM6gCZGFyU5Q3nIun4RxkZtSUj47fte
oEgpVKcHeU14FymcHmsfvS5OGA2Kcjo4ysrMJTRsRW0Yr4JwakLGTq5lQDPiVvda
gEMNs6uPBjdVjVtyl5N0ivgCnH1jkUdZWDaJ/QNU6m6mZCoYgUEEaT3vMv89kHQm
Ho8SnlDFCz5mOSTQIAcVBbrKcLqoMbH4P4R9FzGWLstTdoHEtfjtQcDchea17iGM
E3LHfsbE4ZphyKT9LNSDnQK3uxjyqlMtoPpY7/TJobUi636wnjY=
=YYZ1
-----END PGP SIGNATURE-----

--34btx2iizyyahdbz--

