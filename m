Return-Path: <linux-man+bounces-2328-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D5A40A24E2D
	for <lists+linux-man@lfdr.de>; Sun,  2 Feb 2025 14:19:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8B5081886098
	for <lists+linux-man@lfdr.de>; Sun,  2 Feb 2025 13:19:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19EBD1EB3D;
	Sun,  2 Feb 2025 13:19:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kapQOUK4"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC3DAAD2F
	for <linux-man@vger.kernel.org>; Sun,  2 Feb 2025 13:19:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738502376; cv=none; b=ho7aBDzHDGUmPHESNP6NYkfjqdwWeS8EpKRuuZLHKNXeM9HD27pss1r6rZxSLAF+pGzC7lgyNEDzKEoGu4dX+sW0PSsCfsHdgvHOWz27XVItGYuZFIQbnJHzGDUG3hokKjbcHbViWITApQA5bWuprMjppAhNUsWsEKsS2hJIeV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738502376; c=relaxed/simple;
	bh=2DcJ3x5w3vTRPs1YjNuHn8JliGJvmbFQx01snTneknU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=K+QAYX/Ts4MSCpXUA7/ZjPB5wRK2DajuVOAr69rE+VSj4R3QMmMKo3G4WjGb3VlmyGshus4iFmt4fBB7bY8r15I93uEl0jqQOQORkr4VAojE+U8IMwx9BGsykV0tWqggsnztwnMA/cpvyaPa6qWazrwgAkILeK+jmynD590qUMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kapQOUK4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F50FC4CED1;
	Sun,  2 Feb 2025 13:19:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738502376;
	bh=2DcJ3x5w3vTRPs1YjNuHn8JliGJvmbFQx01snTneknU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kapQOUK4AH0ddWu7wYbcIu62myhLXFASUOc+gIiD98LY0BzO4/5h8sYoqKi/Wi2D6
	 dKwkSUONUS/f2D3Ue1YmQ64tUXPxKzfDyDMLe+iH+FX/YStEqdyVb5P5jLqp3CELZO
	 sfHhwGtyQiEampe/GiUJbnpHE4OZE4jHkly8BJ1Mts3g0FPPicLtF10bEu5Oj3dh2g
	 Oe3e1RQkNDEidlHX7cQOUz23MMYStACCQgj6j1mTFoClYNCS8Iwid9L5IA/6D3s6Gl
	 dHnwlnRZhEprjoswE3JePc2VRrvc0cGU4rQxZ5cRotGpv2fvfpJ/YrjS3FO3Ieu/sB
	 2ys8yWyvkL7wQ==
Date: Sun, 2 Feb 2025 14:19:29 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
Cc: mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man/man7/signal.7: Update definition of SIGCHLD
Message-ID: <xnlz36ksyiyuxpcilzcokmhrtfbpqwkejwqfjv46bfu253onsl@xkxj3ckec75w>
References: <20250202121112.9911-1-arkadiusz@drabczyk.org>
 <20250202130331.20320-1-arkadiusz@drabczyk.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="apr4sribwjj6lrws"
Content-Disposition: inline
In-Reply-To: <20250202130331.20320-1-arkadiusz@drabczyk.org>


--apr4sribwjj6lrws
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Arkadiusz Drabczyk <arkadiusz@drabczyk.org>
Cc: mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man/man7/signal.7: Update definition of SIGCHLD
References: <20250202121112.9911-1-arkadiusz@drabczyk.org>
 <20250202130331.20320-1-arkadiusz@drabczyk.org>
MIME-Version: 1.0
In-Reply-To: <20250202130331.20320-1-arkadiusz@drabczyk.org>

Hi Arkadiusz,

On Sun, Feb 02, 2025 at 02:03:31PM +0100, Arkadiusz Drabczyk wrote:
> Link: <https://unix.stackexchange.com/q/790116/72304>
> Link: <https://lore.kernel.org/linux-man/Z5U0Wh_KF3Ki62Pk@comp../>
> Signed-off-by: Arkadiusz Drabczyk <arkadiusz@drabczyk.org>

Thanks!  I've applied the patch.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Dac93c406a779bd0def5817d78c30f8a25bb318b9>


Cheers,
Alex

> ---
>  man/man7/signal.7 | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>=20
> diff --git a/man/man7/signal.7 b/man/man7/signal.7
> index dd04c6d1a..83251e071 100644
> --- a/man/man7/signal.7
> +++ b/man/man7/signal.7
> @@ -360,7 +360,8 @@ Linux supports the standard signals listed below.
>  The second column of the table indicates which standard (if any)
>  specified the signal: "P1990" indicates that the signal is described
>  in the original POSIX.1-1990 standard;
> -"P2001" indicates that the signal was added in SUSv2 and POSIX.1-2001.
> +"P2001" indicates that the signal was added or its definition changed
> +in SUSv2 and POSIX.1-2001.
>  .TS
>  l c c l
>  ____
> @@ -369,7 +370,7 @@ Signal	Standard	Action	Comment
>  SIGABRT	P1990	Core	Abort signal from \fBabort\fP(3)
>  SIGALRM	P1990	Term	Timer signal from \fBalarm\fP(2)
>  SIGBUS	P2001	Core	Bus error (bad memory access)
> -SIGCHLD	P1990	Ign	Child stopped or terminated
> +SIGCHLD	P2001	Ign	Child stopped, terminated, or continued
>  SIGCLD	\-	Ign	A synonym for \fBSIGCHLD\fP
>  SIGCONT	P1990	Cont	Continue if stopped
>  SIGEMT	\-	Term	Emulator trap
> --=20
> 2.45.2
>=20

--=20
<https://www.alejandro-colomar.es/>

--apr4sribwjj6lrws
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmefcOEACgkQnowa+77/
2zKP+g//fcAaU7ai5tTsk7VSJMT4mm+AbgD7JFiGdzGgrRl50j7ZxpJ2LsjzV8Ww
x7neh+I0GEQ6QDKFYGhcpe5fwZVFF6lnX5ty26O5Q2Ypb2eoFqF1McLICN1LVNYI
x0jeJjvVT2vnCktVTdBJnLDsYVzd9ZbOKS2NWuA5lvqQIN6PX2WD8Yhz/PFYzyVa
oVtfJ6+ENz0R/h6Xeu8zQ93miHW33hU9lPh7SE81NIhJIlTjfDikC5Sw2gElORU8
vMwFHdm+TXy5Nb6/vel7EHHpBiz5bHKbCtwTvm16/9HaMs1rZDGlcXLNUr6Dcht3
WmeJQsbJKrl14LhBAge5SviIAiIdXS8TAAgME7NjGRBc3AEzP8D7Og7n45MSoO8m
+SlozRZxAG6r/nCyOLtd/ttK10XcnTCnjv6M/pldxYm69CqTznqTgmU+W4bqEFkq
IfYeAbS7yhkwZnorFtugnek1RMJgm29sKI4BuFLtP9LxTUWtccGX8I+XEy2AN376
H4k3cDa/+ArrtNTVK0LKqzHDYB4cF80wWxV3PndttsXXaPE8g51rgnxOfB5tkvv+
0Cz6xlzq1/6Pzor0RhFFVQDaFN8BCKPKMHpStLdYQlxn5EFPCyGws79q0VYy6bTB
miNigR9niNgG1Tb+peaH6zDpJ7Mb6DdxBue2cWAfaMnKmcKk9wM=
=Wnba
-----END PGP SIGNATURE-----

--apr4sribwjj6lrws--

