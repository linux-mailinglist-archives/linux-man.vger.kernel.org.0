Return-Path: <linux-man+bounces-2322-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DD4C4A24DF9
	for <lists+linux-man@lfdr.de>; Sun,  2 Feb 2025 13:30:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 986FA3A399C
	for <lists+linux-man@lfdr.de>; Sun,  2 Feb 2025 12:29:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A97F8535DC;
	Sun,  2 Feb 2025 12:30:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fr/OluDs"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E5381D79A0
	for <linux-man@vger.kernel.org>; Sun,  2 Feb 2025 12:30:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738499403; cv=none; b=AjXsFmDnswfUUTLvYCqewaKViYbnRN0E1lzgX6yv9F8IrHo/cEIbRYMsv0idAbuL4I1g5j6PzEBQ1lEVy+VHOeqLt8snPx6b7o1bkoM/QQUh7evwgqL6je+JLoeFyn1lHW5zlWEjAwDnAmo/F7p91t3CGs5/OJczwWDd/d5hMm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738499403; c=relaxed/simple;
	bh=JTpPErNbIoU9Au5y1oOmDmDaal4IPcCeKnZIfZLrVHg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LT8iunjyaux0G866+eICP4j4d2bekKrnZShL2va1EO+qXHqSRTNnymM+UG3cPDllQo+P3Sx4+ZhJE4bJptMUlsSnuvfP8jO/lm0zF1SbzFeaE9BhIxCRE5uNq5uOElgsAfECt/LMONe4IBkShwvmg4xzu/hlasQfmuy4Rgy7jCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fr/OluDs; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 392EFC4CED1;
	Sun,  2 Feb 2025 12:30:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738499402;
	bh=JTpPErNbIoU9Au5y1oOmDmDaal4IPcCeKnZIfZLrVHg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Fr/OluDsWtDyIC7mrrrhoKm4du18JVMXKq/R7ctpZVSZZmdwQpvlbSh5KpzcScD1G
	 2nhGoGjRQ9wQAb8kAIbVEpnYUpk/ytlA18B1KtL/ThX9H87Wf3DFDQ7WXwPSuV4dGE
	 SSzd5FJuYZTcxBKFsJQnLPQri/d5X5pJi8i1DDPwziTz1J/5v7kZ/J/dvjAOX07JpO
	 lT0LsXjn2L/GWTSDMf4V4tvjgqQf27q4ccm1zMuG9Ts6wQeZ/uCQbTWAKPnR4ZtC88
	 OYUeNavh5RfdWM1tue7MJDM8LIdTwl6Ql4R3mNeQfXXIwrcHGPQC0CAIm28n6bg0/k
	 QBZ5nhiIcLKbw==
Date: Sun, 2 Feb 2025 13:30:00 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man7/signal.7: Update definition of SIGCHLD
Message-ID: <daw7t3a6apgrepg35pxrhfnirxqtkjtzutonvv6ry5lvc7sdfg@5lj7652rabim>
References: <20250202121112.9911-1-arkadiusz@drabczyk.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xymq2c3ywrfnwl7k"
Content-Disposition: inline
In-Reply-To: <20250202121112.9911-1-arkadiusz@drabczyk.org>


--xymq2c3ywrfnwl7k
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man7/signal.7: Update definition of SIGCHLD
References: <20250202121112.9911-1-arkadiusz@drabczyk.org>
MIME-Version: 1.0
In-Reply-To: <20250202121112.9911-1-arkadiusz@drabczyk.org>

Hi Arkadiusz,

On Sun, Feb 02, 2025 at 01:11:12PM +0100, Arkadiusz Drabczyk wrote:
> Link: <https://unix.stackexchange.com/q/790116/72304>
> Link: <https://lore.kernel.org/linux-man/Z5U0Wh_KF3Ki62Pk@comp../>
> Signed-off-by: Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
> ---
>  man/man7/signal.7 | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>=20
> diff --git a/man/man7/signal.7 b/man/man7/signal.7
> index dd04c6d1a..d2929dab1 100644
> --- a/man/man7/signal.7
> +++ b/man/man7/signal.7
> @@ -360,7 +360,8 @@ Linux supports the standard signals listed below.
>  The second column of the table indicates which standard (if any)
>  specified the signal: "P1990" indicates that the signal is described
>  in the original POSIX.1-1990 standard;
> -"P2001" indicates that the signal was added in SUSv2 and POSIX.1-2001.
> +"P2001" indicates that the signal was added or its definition changed
> +in SUSv2 and POSIX.1-2001.

Thanks!

>  .TS
>  l c c l
>  ____
> @@ -369,7 +370,7 @@ Signal	Standard	Action	Comment
>  SIGABRT	P1990	Core	Abort signal from \fBabort\fP(3)
>  SIGALRM	P1990	Term	Timer signal from \fBalarm\fP(2)
>  SIGBUS	P2001	Core	Bus error (bad memory access)
> -SIGCHLD	P1990	Ign	Child stopped or terminated
> +SIGCHLD	P2001	Ign	Child stopped, terminated or continued

Please add a comma before the 'or' (Oxford comma).  Other than that, it
LGTM.  Do you know if there are any other XSI extensions documented here
and what we do with them?  It would be interesting to be consistent
about that.


Cheers,
Alex

>  SIGCLD	\-	Ign	A synonym for \fBSIGCHLD\fP
>  SIGCONT	P1990	Cont	Continue if stopped
>  SIGEMT	\-	Term	Emulator trap
> --=20
> 2.45.2
>=20

--=20
<https://www.alejandro-colomar.es/>

--xymq2c3ywrfnwl7k
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmefZUcACgkQnowa+77/
2zI0Sw//XJp9WmCOlSeSbdBut8B+ITuexdnPBR5Zff/n1ZBTBiQ3cjhRETm05Afo
HHL0GuWreF3YZrceONzndxkAyZRGJSbaqc9JFtyORXLxkVNNKM5pF4zXv18LhxxB
fNK3Uvk1J0UqdbkKQVxt5Eb+H1pXKZMC1QgObyE5yVYRW4NvQ6Kcs3sTUuzdr4gJ
cGxDJmkcskjXE2hExL2qnpcLqxuH+X1dV0L5VTM+QiX8Yh/Ad1Io4yjqi6dSMIOm
GrOd+Lj5u7bcL/BMY10NZOquan1XpSsRuO+1MdE/Qt7qnZ8GlHLAIlUMTP5JuGb0
wI738IvRe4jGU/YMhUqNx9JldWFwmA8wuwOaxPJ/PIBSYxOGm1UGrULcxJFdXAf0
kX+F7qcEyuzUSqIzB7aT3mWbpBQiqF3Ka4g1CigWfK1/sjXMoU2PjKzMwp3haOK+
HhVjI3VBXL43gZ+VxQUSuHy2IEH57oHBoVxkauHHo3bWrnFc0JZYGFt8Y7Tr95Er
byrrBLxlkckoEoiHzH4YmmJ3YHMdrYHaYzuEu5tcASLe8DB1dLPaJtCyCXJ8xH3J
PPzPNalV0ujQ/Bk8c+yKhNVs/ETGsuJSAXfP0ub8HUidQgHQ3sHaOnMfqDt9Sa5o
whAPDsMXwpFs9Nu7tWsUKVJmJC0KHV2a1R58TwE/P8i0Hi6AfWo=
=HYu6
-----END PGP SIGNATURE-----

--xymq2c3ywrfnwl7k--

