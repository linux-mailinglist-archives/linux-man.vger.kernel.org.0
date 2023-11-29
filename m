Return-Path: <linux-man+bounces-186-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B4A247FD825
	for <lists+linux-man@lfdr.de>; Wed, 29 Nov 2023 14:32:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6F7D12825DC
	for <lists+linux-man@lfdr.de>; Wed, 29 Nov 2023 13:32:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DD7020328;
	Wed, 29 Nov 2023 13:32:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mG73FSP0"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426251774A
	for <linux-man@vger.kernel.org>; Wed, 29 Nov 2023 13:32:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 126FEC433C8;
	Wed, 29 Nov 2023 13:32:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701264738;
	bh=yR0nkUVxkWSgG7UG6W7R65N654/i0Fnf7KLDxeptAYo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mG73FSP00Z5enFuSFHTxr6XZUTimPfZ+4BF3Pe63EcqV/iWsyXH4SSvo05WAoIkOe
	 eKKDrHIV3/2OPZ/CXejHqN/Cv8CHyRdRertxt5fgMCO9D6mmJOibyghRUYgdnu+m7U
	 u6vUQsYKEtGxKETFTCFuNAxsGkBbz/O6rAn65LCgkcqKxu8Rh1fyEVbvmQdHi7rrfO
	 92HysP0+2IzDi1fYiN2DqqrI2C2ZB4YnSlhwY0Nl49bHe6Z6URPyzsinqqTynWS+Ud
	 +c5UcY5KC1e+U2BNbvMOTJYzfhwPBNo4p3U4pS16KjFTWa3vmsXLq94e/x43obIfo8
	 YbFJJcAHjCYZg==
Date: Wed, 29 Nov 2023 14:32:15 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jan Kasprzak <kas@fi.muni.cz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] wfix: sigaltstack(2) example: function pointer
Message-ID: <ZWc9X9lLr728N26x@debian>
References: <20231129131359.GH18109@fi.muni.cz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="W5v6+jv/MeAFqjgT"
Content-Disposition: inline
In-Reply-To: <20231129131359.GH18109@fi.muni.cz>


--W5v6+jv/MeAFqjgT
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 29 Nov 2023 14:32:15 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jan Kasprzak <kas@fi.muni.cz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] wfix: sigaltstack(2) example: function pointer

Hi Jan,

On Wed, Nov 29, 2023 at 02:13:59PM +0100, Jan Kasprzak wrote:
> In the following example code:
>=20
>     sa.sa_handler =3D handler();      /* Address of a signal handler */
>=20
> we expect to use a function pointer instead of actually calling a function
> named handler(). So the parentheses in the above are superfluous.

s/superfluous/wrong/

> (Unless there is a function named "handler" returning a pointer to some
> _other_ function, of course).
>=20
> Signed-off-by: Jan "Yenya" Kasprzak <kas@fi.muni.cz>

Thanks,
Alex

> ---
>  man2/sigaltstack.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man2/sigaltstack.2 b/man2/sigaltstack.2
> index bd5e6ab..d88d490 100644
> --- a/man2/sigaltstack.2
> +++ b/man2/sigaltstack.2
> @@ -345,7 +345,7 @@ if (sigaltstack(&ss, NULL) =3D=3D \-1) {
>  }
>  \&
>  sa.sa_flags =3D SA_ONSTACK;
> -sa.sa_handler =3D handler();      /* Address of a signal handler */
> +sa.sa_handler =3D handler;      /* Address of a signal handler */
>  sigemptyset(&sa.sa_mask);
>  if (sigaction(SIGSEGV, &sa, NULL) =3D=3D \-1) {
>      perror("sigaction");
> --=20
> 1.8.3.1
>=20
>=20
> --=20
> | Jan "Yenya" Kasprzak <kas at {fi.muni.cz - work | yenya.net - private}>=
 |
> | https://www.fi.muni.cz/~kas/                        GPG: 4096R/A45477D5=
 |
>     We all agree on the necessity of compromise. We just can't agree on
>     when it's necessary to compromise.                     --Larry Wall

--=20
<https://www.alejandro-colomar.es/>

--W5v6+jv/MeAFqjgT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVnPV8ACgkQnowa+77/
2zIkhBAAh6G7aDwwzaBS2wg7InD2bZouNrkZ5Rv7KzPaDXZBNf1GpOxKlEWUPTH2
0On2GixQrmW53aUJd8s0AisNYXcHAEUTqrLPdo8Z+zjQH7e8z1aACx4jSE4KsZ9O
rUPlQxbxCzGSb1m0sVQjd2bZD9TXhlajFYEMU0FTJ8cNf9dGODeCik6s2Jrnm7Lo
t8Dh/6/DS1DTdFpZLAjT2dYwMQGG59iiOC/wykbGSpisRwWEuO+EEUR8TeGjtvdL
jwLMJnGX9lz9dop3Vi97JRnvkCQuyzYo+HDpWjFqvoiSEy/z2olRmufqB3c4VfUH
bSkknjMlkpImtk6tv+y1YxMeHJBfkKorRUU8GvyTXJJRafnef/+AtvdhxyuGpXhR
sdSKM2Xqvz1WzOucvUyyzVfGXSZNSh6LorkTIj15ZV6EFHeDncSh52/7vzrXTeMV
z0vNargIqGcda7gCg6s13W8wvevBpUhG2nz67pj9nikUIk0lGxTwWXKjAurX8zCm
zaleDH/uMD6F4vMxk1wmz4q9EmvYa2xuKhni5ZLID781s09OmNeoZJ/kBG6gDeBi
tMXROpcyLjzzCkylXB4F9MLe+/rt0CETH0b0LSfJ1bBy4oyE3+kZDdiK/0cxJDLi
yEP1TYpYv0qBVo6TdOamTjh89gkAbJUjfFd+hEfUHdiHLXWj46Q=
=pY4D
-----END PGP SIGNATURE-----

--W5v6+jv/MeAFqjgT--

