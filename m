Return-Path: <linux-man+bounces-2427-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4583FA33B5C
	for <lists+linux-man@lfdr.de>; Thu, 13 Feb 2025 10:39:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F23BD7A3934
	for <lists+linux-man@lfdr.de>; Thu, 13 Feb 2025 09:38:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C33020D4EF;
	Thu, 13 Feb 2025 09:39:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bn9Fsze5"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C09520CCC4
	for <linux-man@vger.kernel.org>; Thu, 13 Feb 2025 09:39:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739439583; cv=none; b=jru8v3+TsCtP4IgkAAJwFmY/19KUYz1PEafW8/F5ZdCqjcoWUIk+af87KSSOdcpGpDZ9X/rVL1tF+2NvtXlRTFS11G7b80gq6JS/PUfG8zW6z5Kf0PsuOiWb/Ff7ag2x6jl1XsvIBv0PeGOMIEVeI7mxku6QfyVo+XbCqkW8qqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739439583; c=relaxed/simple;
	bh=jOxPJUVOS94u3NVewYtioEHfnw9N+b05Ej3kK+xuPF4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=asaztkKuRMrOfhpVY2qs4ugOfbhgL/Gz0dxfZzfOYvp75NowlPVgRk7lHHc1geEWUQtBDQUlTCRlPnGYXlilQrdwc7Y995XmzHZOvHjuZr/LwMt1++WR/FRFMf3EB3ag4OCVlrpKU5P4/CQeghoTeUwG1fCZUt+cvWXbHIbwAXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bn9Fsze5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 12B00C4CED1;
	Thu, 13 Feb 2025 09:39:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739439582;
	bh=jOxPJUVOS94u3NVewYtioEHfnw9N+b05Ej3kK+xuPF4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Bn9Fsze5eB7v+hkyy/ocp0Xsb+R2wCMEQZYjuWwYUZEpph6Atxekwo1b1L391OS+1
	 MjNl37ZMoM5A+z+0JgwD+UpoYJRRpnDAfZSVUqrW0TVfTm1JjL+GCuehFfc5mcCrGE
	 Uz/719DgxXL4gE8Ze/0Sl+J9+dr1SFjHef/P6KNtK4JDLFlfYBumebcyoXuJn7Y5mP
	 6MoIraFuzXT57BBZp9i6A79t8GoH9inD1MjeyTjOHqzYZ7nfNdh2DVQcphmMz3I922
	 YgMD0l7dIScY1yCkqw3vu5XyzeGI9++AT4PhVSioekPrErVPL9k32V0jst3HP6FK/G
	 Foj2Yen/uArmA==
Date: Thu, 13 Feb 2025 10:40:20 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org, tuhs@tuhs.org
Subject: Re: Unix V10 Volume 2 PDFs
Message-ID: <mkfim66dqjnntlxvhkfmcqmzriqi2zcppn2nhtofnogx2lqt22@ljw54si4abue>
References: <6jefoqbmf6fwzjjvonee7npjvpvwayksydqjcouijbfufipn4z@adrjauck4ov4>
 <zflsk242wizk2yb6mw3vuqixcshof4grsb5fk2n7wxwqd7b3e6@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5cwztn2nj6fbmkir"
Content-Disposition: inline
In-Reply-To: <zflsk242wizk2yb6mw3vuqixcshof4grsb5fk2n7wxwqd7b3e6@tarta.nabijaczleweli.xyz>


--5cwztn2nj6fbmkir
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org, tuhs@tuhs.org
Subject: Re: Unix V10 Volume 2 PDFs
References: <6jefoqbmf6fwzjjvonee7npjvpvwayksydqjcouijbfufipn4z@adrjauck4ov4>
 <zflsk242wizk2yb6mw3vuqixcshof4grsb5fk2n7wxwqd7b3e6@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
In-Reply-To: <zflsk242wizk2yb6mw3vuqixcshof4grsb5fk2n7wxwqd7b3e6@tarta.nabijaczleweli.xyz>

Hi =D0=BD=D0=B0=D0=B1,

On Thu, Feb 13, 2025 at 03:12:01AM +0100, =D0=BD=D0=B0=D0=B1 wrote:
> Just for reference since Alex didn't link it: the PDF in question is
>   https://archive.org/details/unix-v10-vol2
> and the "why not" by the scanner is
>   https://labyrinth.zone/notice/AqqVamq2W6Ybq8N3xY
> Pull quotes:
> > the troff source uses some special tools that i think only ever ran ins=
ide
> > of bell labs, and i dont know what im doing wrt building them
> >
> > the tool that gave me hell when i briefly tried to build it is called p=
refer(1),
> > and it=E2=80=99s meant as a successor to refer(1).
> > it works by running a modified version of awk in a subprocess and talki=
ng over a pipe
>=20
> I'm not touching that shit with a ten-mile island,

I would agree on this part.  I think you misunderstood.

> and if she, as an actual 9p user can't, I certainly can't either;
> but the scanned PNGs are real and lord only knows my 7h10m are better-spe=
nt
> levelling and cutting them up to produce something concrete
> than apply-rock-to-head/rinse/repeating with software that barely worked,
> 30 years ago, in fake C, under fake unix and have naught to show for it.

I meant running groff(1) on the .roff sources of the Volume 2 papers.

Certainly, I wouldn't consider looking at the sources of AT&T troff(1)
with my eyes that already bleed when needing to read C89 code, let alone
K&R C.

Is running groff(1) on 1989 sources to re-typeset the old docs something
difficult?  I guess the main difficulty would be in putting the .roff
(or .ms, or whatever they used) sources together.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--5cwztn2nj6fbmkir
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmetvfwACgkQnowa+77/
2zIf7w/7BpU8VeAljjEdACGUfmmU7ug0uiY4JQvh3JNwDyIkYwxnJLYMDRJZ4Ylb
a44rSnYN/JWSZLowyuj1J4ivQP/zCDcw4Ud3eFtbgbh4POoF+4j0KMfPAQWBll61
c1ztfW/2ZJnGrDkKw/nB4jdfWN/3vB9y3/u/enoK4tUBVqqEY9IreVPQwdw0WWxJ
pKhLDHl+2R/vLpW3x2slccdM4xyjLiXlH+/58/GRGNo3B/rimeHTv+8zEMvogpi9
MGq6Ee4AOEgpIwVPt/bRrLukf1EqvlFR1m2iEFsDnXDa2NxUTa7Ytga4X6rY1MvN
m4CSdv1qjbzuu8hL8pr/DR162PRSddhzx1F/Q/zQv/9ssYeOXcFzdkJOVkFpf75x
b1oeg37v5HNVywCOYg7T5CrvRzNZiTvzwhAEf7D4oSViBss3cENq2MGMQknKAz+U
OAwtvlO6LbrW7PD9FHPwU6sc/neMWeuUJZPdp2NrRA+yzEekSUWfLR3cnFTr26qP
f4xAXEzSQxav0CrTWcpBOM+3Ygel2J6V9wkSdpkj/4kH2laFeJHycyElnzMmEi3+
HOs3o/MZIUESe205l70Qn9Z9f94Ldsk4uH9hWTqa5cwB4fDJbLBZIKa8Ur8Rtvq4
8ur5TpGj5irM5VDr/yspKQENyKQy7Qr4ZzweLBENYfs/QEXmxzo=
=YWUV
-----END PGP SIGNATURE-----

--5cwztn2nj6fbmkir--

