Return-Path: <linux-man+bounces-1032-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 276A38FD151
	for <lists+linux-man@lfdr.de>; Wed,  5 Jun 2024 17:00:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 30304B2186D
	for <lists+linux-man@lfdr.de>; Wed,  5 Jun 2024 15:00:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AEC517BCB;
	Wed,  5 Jun 2024 15:00:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CiaCV8no"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1552C17BD5
	for <linux-man@vger.kernel.org>; Wed,  5 Jun 2024 15:00:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717599640; cv=none; b=EXxg+aMAT4DSptDBQmNjype6D5TVd/IEXELOMD7JhpEXGu+EknDC4BzAEd4jNsnneOzXZLpPtgZpRswnOLDgoim7bVIBWKDUSXqssmtP2FDcqGi6fNYvJbjP5OFHDBaY69CyRmkZF9Ii/F42xQA+4IRmRb4Nn0ZIu9r+spnN3Bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717599640; c=relaxed/simple;
	bh=Ri2vS5+mkK5c8Qmqv9pKdBgfmG00zch0e0+/3SsqB5s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ciCYDP4Hjtuw06ShKJ2HPgE6MqUgPXgJMvPzEovtm+bC+xeenvy9Do58FCsH1oaUu5rGC034QCXh13/Z3EEDXv07Q86zkXOUYAM9TGzMHUYap9Zw1FgOseO09peMViJZv6ILse5+8oJTHop2si7weYNt9OFmXChM+SFfZTKQSxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CiaCV8no; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 52DE6C3277B;
	Wed,  5 Jun 2024 15:00:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717599639;
	bh=Ri2vS5+mkK5c8Qmqv9pKdBgfmG00zch0e0+/3SsqB5s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CiaCV8noYy+XviuEY1lb7Lzvuln0J1SwCPKQ7SK12KM6XEldFUsf79Zv+FnHmecIG
	 /D12H74S33v9wSd8xHT69qqd+s5Z5VYWIJtk4IKo+AKgD352ynu1MUuccu395RDs3R
	 kM0ljgBw5toTkjt1mX71TqMB4t+VYTl+zFbwKc4D61cOlndGMWP7MaIfxroguu7LFv
	 GtycO0dNn+O50IiCaYv+/smuXGFkaryFp2A5qW8SeItJrqumjLHKHC8OrH3tcntXLF
	 sNE4bgaOitMtMkbBCwQh63UtKefG5qo2AvEGw+GhOvTjKKShGxYFg5Osp5OZqJJNWf
	 WYxgPNQFSs9ag==
Date: Wed, 5 Jun 2024 17:00:36 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Andrew Josey <ajosey@opengroup.org>
Cc: Geoff Clare <gwc@opengroup.org>, linux-man <linux-man@vger.kernel.org>, 
	Eric Blake <eblake@redhat.com>, Brian Inglis <Brian.Inglis@shaw.ca>, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: POSIX manual pages
Message-ID: <67ts6skczbmijcea7kggnrugewtvo6222cohp7yb27fejti6nu@mszgfze5akbv>
References: <25806cfb-8845-e4d4-6c18-6b02cb8c92ab@kernel.org>
 <0ABD21B4-4E03-4EE0-9F6D-D04CDDF00260@opengroup.org>
 <ab297c03-412d-45df-8d7b-6f5223327694@kernel.org>
 <3ct4esw4xculwxyyohfuboecqfleateyz4qib6fn6ehhxyphes@3aimq4vlwxyf>
 <04801FEA-3560-4BA5-93EF-76E503032C40@opengroup.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pb7qvofftctznik3"
Content-Disposition: inline
In-Reply-To: <04801FEA-3560-4BA5-93EF-76E503032C40@opengroup.org>


--pb7qvofftctznik3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Andrew Josey <ajosey@opengroup.org>
Cc: Geoff Clare <gwc@opengroup.org>, linux-man <linux-man@vger.kernel.org>, 
	Eric Blake <eblake@redhat.com>, Brian Inglis <Brian.Inglis@shaw.ca>, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: POSIX manual pages
References: <25806cfb-8845-e4d4-6c18-6b02cb8c92ab@kernel.org>
 <0ABD21B4-4E03-4EE0-9F6D-D04CDDF00260@opengroup.org>
 <ab297c03-412d-45df-8d7b-6f5223327694@kernel.org>
 <3ct4esw4xculwxyyohfuboecqfleateyz4qib6fn6ehhxyphes@3aimq4vlwxyf>
 <04801FEA-3560-4BA5-93EF-76E503032C40@opengroup.org>
MIME-Version: 1.0
In-Reply-To: <04801FEA-3560-4BA5-93EF-76E503032C40@opengroup.org>

On Wed, Jun 05, 2024 at 02:35:16PM GMT, Andrew Josey wrote:
> hi Alejandro

Hi Andrew,

> Unfortunately, we have no plans to move to a public git repository for ma=
naging the development of the standard.

Okay.

And would you be able to publish a tarball of the roff(7) source with
which I should generate the manual pages?

The thing I want to avoid is having to receive the roff(7) sources via
a private (or walled) channel (as Michael did, AFAIK).

If anyone is able to take those sources and regenerate the manual pages
with the script that I maintain, that's fine by me.

Have a lovely day!
Alex

>=20
> regards
> Andrew

--=20
<https://www.alejandro-colomar.es/>

--pb7qvofftctznik3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZgfZMACgkQnowa+77/
2zK6vA//SCXH3dxO+ohJYVMOOc9t3X6R5udGWEIvap08Yb6bYOwceinatlghiv+z
g1u8ROkbjFaD3vf6TfrOBYnX2ew6ygdD1ONQASPKIO75TWlJsrI5ygG8AJyfhE2Z
5EeRs9NKB7isqz9uq0ZpPuVea9KeIG6diEvwjpoHtMw690ueOWlZ2svgpOjs2KO5
xikDGGHO5hPUc/t6jC1mCHnnGb7rLCZCgZnz1WHoA7FPwykKQRcxTOd77+Bsh8Q9
wfqcbWWfSwoCYBxOkBPo6bQ+mtbT1c7Yst7h3sJMIvC8+TQj21b2skfOhkrLnoE5
mJox5BEVi/Zr4w+5TZklR4xqowO2HKRQINVqSMnxAXnPwCTsyKhjGZ+PB1T6KplZ
epvyXywm2juQrIRmScmMJTqNTv4XAKpUWTKlcb32GDmaKEiSwgsFY5hoerCdoWbP
29YTbHTpZym+Uu+espMA3YAarf0OpCVh1DnretuVkEYO5l3OITEV2G3N96QQbDvH
HnkSJ4QM5LnMqS4vQDsQfK9pD34/xq4Q4X/BKgLfVTSDsG4stt3zpv30Ua623BCj
rXz8rzZpj2qR2qdbJ8DfEssWkEc6zdrzRwl+W1/f9x5kYT9nj2jY4a47fg/chxEb
4QYYYR51fOhMaIGk2KZapfARYnPChMrmr+N/Vy7DqlCJpXuGeIo=
=NzWs
-----END PGP SIGNATURE-----

--pb7qvofftctznik3--

