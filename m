Return-Path: <linux-man+bounces-1994-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E519D037E
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 13:12:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2D462B247F0
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 12:12:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B13DE17A58F;
	Sun, 17 Nov 2024 12:12:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uMyMsh2n"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70D71A937
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 12:12:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731845556; cv=none; b=O9auTzx+7zmMUVayHdxy/aIztt+WI58ib9vp6lpYBMEYlauyAtUwQx1rkjvRJDEX3UpRHeKJHXrbCVPfpnlruCNp+vqJ0npU2/bq6xeNGzJPU7qsHGOY+PJfOQU44OylOQiv6KoSmDiLahDI+bjnseHuquMxvDM10OYglLarKs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731845556; c=relaxed/simple;
	bh=WsBFZdrk4U/jmD+L79genyUcQp4m82xOu7qe4aZKZyw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AOkqi+QCCdaeRFphZ4l7fhiZQp6I8c/7pHCuP3j+v+Yctfbd3dkKBCxMWWNwzpshwlnmer/4HLKjWzQuPabABZdXfXEcc6EobELjwetubbyo/Yh2rpjS1DVF4kyR8TEyDVbzgiWct1+IoiUoyTLCl/M3D/xORKNV5S0LJJBidkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uMyMsh2n; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 20E6CC4CECD;
	Sun, 17 Nov 2024 12:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731845554;
	bh=WsBFZdrk4U/jmD+L79genyUcQp4m82xOu7qe4aZKZyw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uMyMsh2nrtR2q1N2zOHmdNYJtcTaVrlu49R4QDtVHCpxyE10JoqL/JFmAaAac/hwQ
	 2KK2So9W41FpDrwjAW2oYrN5iUuT2yypaYmXhswBryqNn6mEhuyeHGYUqp5Oh3/3b+
	 j4g7YmbEFJ+OBD9tXDGK2LtiDi4RlYBCMc5zkXHncQD78pmm9wDBtGKXwvDOrahDWk
	 0dwRZEcA3gd5SfHjXZw0QuIhUU/OgiDIAmz12gUWWV6dh9cS+iYIASxpBk1lTDJnnj
	 KWwEuZPhAjD/umpW64ctN3u0E8gtiu29nDWdotbisWK/IQvF0YealXuK+KboW26WjK
	 M2CK0W/KQnkwg==
Date: Sun, 17 Nov 2024 13:12:31 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page time.1
Message-ID: <txrfnlxmmte5pnmhr4dax6s33ngxlrdo4sjvazw3vlaa3njuju@dp6ndbsnftfn>
References: <ZznJgFxUqytE7-eR@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="eljbznsjbgnv3lqa"
Content-Disposition: inline
In-Reply-To: <ZznJgFxUqytE7-eR@meinfjell.helgefjelltest.de>


--eljbznsjbgnv3lqa
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page time.1
References: <ZznJgFxUqytE7-eR@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <ZznJgFxUqytE7-eR@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Nov 17, 2024 at 10:46:24AM GMT, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    Remove hard line breaks, they are not necessary, rather use a s=
eparate paragraph for the last two lines
>=20
> "The format string\n"
> "I<FORMAT>\n"
> "controls the contents of the\n"
> "B<time>\n"
> "output.  The format string can be set using the `-f' or `--format', `-v'=
 or\n"
> "`--verbose', or `-p' or `--portability' options.  If they are not\n"
> "given, but the\n"
> "I<TIME>\n"
> "environment variable is set, its value is used as the format string.\n"
> "Otherwise, a built-in default format is used.  The default format is:\n"
> "  %Uuser %Ssystem %Eelapsed %PCPU (%Xtext+%Ddata %Mmax)k\n"
> "  %Iinputs+%Ooutputs (%Fmajor+%Rminor)pagefaults %Wswaps\n"

I don't find that text.  Could you please check where that page comes
=66rom?

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--eljbznsjbgnv3lqa
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc53a8ACgkQnowa+77/
2zLTsA//R5QORqiUjWk1jYThqW3WG0K2W28L9RwVA9/bJXQLNKUPPAnY0Thmm7lo
DYVjPS886oecnuY05kXNHZEi1pEevueaKiHO/LXpqZj2WKLOTHQAVMyNfFz6b7qg
Uk2VkNhBMn2GLRI3P9zvAJ8MrwGL+lG8Vk2Th7TNkjvDxsK3m6ZN16fST82/zh++
f7c14qFhVl+2gBHDhI3i2v87jzS5frfYB6LKZmjoCfPZRbZjYUcooWJWlEDQWbyj
NtZAA6N4m3XDhPf7rCVAlsmVoqmMEm4ALKTvybRPjHO9A/PR9FOf2P5Sietwj3lV
mZboBTytqQSJZFU6samNt2bQ7QVlNtXgw4/37iVRCYlndeh7aWGXIndQe0mg+h1A
NezgBhJaQlqQsKFMRjAI3UwPfP8rpxYgfMBzVgs6qbf4/lcKuD1cZfIrtweqPK3H
Bm1mYOLYmYu5OJ98Ukjp/Jl48YnovAoKMrCy0Do2krwvUQk6F4Zs+cjw7vnAayXZ
5stqph3rZUxeojrQxKW31jf8DdFGH7kOEyODS+LDHEPu0wXuTVU5RX6E2bOkm85/
8yggaxyuEdyvcwShBJ6wiTSNIOnteAuO8dIcIsqUTSOIGDrvJttKE2GdK9M2WsUl
uhgLCEfNW/YxiAy5/8UxtW4DmfCDxnRFP7hX8f14lttemcB+nII=
=DWnq
-----END PGP SIGNATURE-----

--eljbznsjbgnv3lqa--

