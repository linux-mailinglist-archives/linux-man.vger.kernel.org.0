Return-Path: <linux-man+bounces-1584-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 785DC949B3A
	for <lists+linux-man@lfdr.de>; Wed,  7 Aug 2024 00:20:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 350B62866BE
	for <lists+linux-man@lfdr.de>; Tue,  6 Aug 2024 22:20:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91E5B16CD11;
	Tue,  6 Aug 2024 22:20:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fdbuPL7M"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 508F315B0EE
	for <linux-man@vger.kernel.org>; Tue,  6 Aug 2024 22:20:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722982825; cv=none; b=iywq8abuUn8oPQO6a1XVCt2l6q7usJW21bFwbdKDouReqi9nm1xG2QNyCtH/CalxizlMChcWNNwdB70UNnQmM+tOdkCSxi3sWXNLHClP67F/FN3Xfi9P2ahzvdKYtVPKCiNlt+32cdF3x1zasjHWfaUeqTqujOiOxD3Z/xbSKjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722982825; c=relaxed/simple;
	bh=LHGEyFv4gKUNeEuOnGegKmfgqQ4EprFFK3mY1JuKHpw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bbZjjIhQXv69PSrfHMlui8+pKbJoLgLkwPRtk4L/xxq6cpixkzi4uDHHEhNohGCxY/D2GWP+4OcY1DrzQ03GCaLhDA55IvThwQGhtTT/e3Wy8EZ/V00WDI/kFWoVjgyxeZj3v0uTkPo2fJ/B3nyDV1M4Hpbc0V/AZ6/JyBimE3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fdbuPL7M; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8A4CEC32786;
	Tue,  6 Aug 2024 22:20:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722982824;
	bh=LHGEyFv4gKUNeEuOnGegKmfgqQ4EprFFK3mY1JuKHpw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fdbuPL7MHB6SfFz5vfW6K+HaPjTisHRBj37zEQDOhqfuXTw2sGE1+vhJeCX8sE54S
	 Z+IDgcgW5Xb+ItWslPFfvRp8d1v1zuBALNeBSe+KLSPzLcYviBtcPykz+FDKxKLjYi
	 NIqPoJVGliBaRnUHKmcvx3lQbf74UqSHg99Q0NNsNBlRY0eSrCuUXldl0S0pS0MlU3
	 Ku1l/68Ax8IOP42zq8nX82wadSvfF0qIeXuOOurJGc4qqVBP44sWbP1AB+kie20naA
	 nqVZfWHPdMjj47Qt/pLaHdBpLAiw0VYkVPUSKF+tATL89AJKNFWazvGEu2ar5L0nBz
	 juxwpQuCcvNAg==
Date: Wed, 7 Aug 2024 00:20:21 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?TWlrb8WCYWogS2/FgmVr?= <kolek.mikolaj@gmail.com>
Cc: linux-man@vger.kernel.org, Zack Weinberg <zackw@panix.com>, 
	Andy Lutomirski <luto@kernel.org>, Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>
Subject: Re: [PATCH] sigaction.2: Improve wording and add an example in the
 BUGS section
Message-ID: <geae7xuxzy5pdrn2uwozhyums7kv6l5lubj2p57o52ex675uk2@22pnucysmvoz>
References: <CAHGiy69M+TOOukpuOnkxY2bT4j=aSk5hP3fTRXsuiF-h3v=t4Q@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ailaec5jv5dx5ayv"
Content-Disposition: inline
In-Reply-To: <CAHGiy69M+TOOukpuOnkxY2bT4j=aSk5hP3fTRXsuiF-h3v=t4Q@mail.gmail.com>


--ailaec5jv5dx5ayv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?TWlrb8WCYWogS2/FgmVr?= <kolek.mikolaj@gmail.com>
Cc: linux-man@vger.kernel.org, Zack Weinberg <zackw@panix.com>, 
	Andy Lutomirski <luto@kernel.org>, Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>
Subject: Re: [PATCH] sigaction.2: Improve wording and add an example in the
 BUGS section
References: <CAHGiy69M+TOOukpuOnkxY2bT4j=aSk5hP3fTRXsuiF-h3v=t4Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAHGiy69M+TOOukpuOnkxY2bT4j=aSk5hP3fTRXsuiF-h3v=t4Q@mail.gmail.com>

Hi Miko=C5=82aj,

On Wed, Aug 07, 2024 at 12:07:57AM GMT, Miko=C5=82aj Ko=C5=82ek wrote:
> This patch clears up the wording of the first part of the BUGS section
> of the sigaction.2 man page.
> Currently, it is very unclear when exactly the bug can occur, and
> there is no example, which I aim to fix.
>=20
> I also attach the source code of a C program that,

Please include the example program in the commit message.

> when run on an x86
> Linux computer, shows that my example behaves like I say it does. The
> code runs the int instruction for each value from 0 to 255 with all
> registers set to 0 to show what is contained in the siginfo_t returned
> to the signal handler afterwards.
>=20
> The program is based on the attachment to bug 205831 on the kernel
> Bugzilla, which first dealt with this issue, you can find that bug
> report here: https://bugzilla.kernel.org/show_bug.cgi?id=3D205831. The
> text of my contribution is also partially based on the BUGS section of
> the signal.2 man page.

Please CC the people that contributed in that discussion.

Have a lovely night!
Alex


>=20
> Signed-off-by: Miko=C5=82aj Ko=C5=82ek <kolek.mikolaj@gmail.com>
> ---
>  man/man2/sigaction.2 | 18 +++++++++++++++++-
>  1 file changed, 17 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man2/sigaction.2 b/man/man2/sigaction.2
> index df8826e71..2b797355b 100644
> --- a/man/man2/sigaction.2
> +++ b/man/man2/sigaction.2
> @@ -1129,13 +1129,29 @@ .SS Undocumented
>  See the relevant Linux kernel sources for details.
>  This use is obsolete now.
>  .SH BUGS
> -When delivering a signal with a
> +When delivering a signal resulting from a hardware exception with a
>  .B SA_SIGINFO
>  handler,
>  the kernel does not always provide meaningful values
>  for all of the fields of the
>  .I siginfo_t
>  that are relevant for that signal.
> +For example, when the x86
> +.I int
> +instruction is called with a forbidden argument
> +(any number other than 3 or 128), a
> +.BR SIGSEGV
> +signal is delivered, but the
> +.I siginfo_t
> +passed to the signal handler has all its fields besides
> +.I si_signo
> +and
> +.I si_code
> +set to zero, even if other fields should be set (as an example,
> +.I si_addr
> +should be non-zero for all
> +.BR SIGSEGV
> +signals).
>  .P
>  Up to and including Linux 2.6.13, specifying
>  .B SA_NODEFER
> --
> 2.46.0



--=20
<https://www.alejandro-colomar.es/>

--ailaec5jv5dx5ayv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmayoaUACgkQnowa+77/
2zIjkA/+NOHcOxr4CA3wUmOu3ASZ5/XRpXAOoVv3ge651Ja0it44UDwfMbf/trXl
f5T6CRWpIScju90GNJqeiU2bOQVCpkLVEJPi6g//AQQBy2eijR3NIzSoOR/FqyKE
CaiQB0mJFLWs+m2JXaX3dJ/kGCISrC8y7Me1oSjNR2X1K+xkdSLqNwOscwE4+sCG
dhUrbjLgXWoW4xdQaaNpRe93nW7g77wldY50fyyEfj/tNg+6vrFblji/ZW5ppU/2
LqdXGHbXrJSdhWdWo53+6Af6hKz2Q+xSAPZjjupK1cIDeSouIVmuaXoii4DLQskp
r0qqtkQ34WoMsglvruPpB2GugYQ76KxyqQrRjDbUWsIo5p4JrNKi/XgMzVi1oMzD
LlLEjLtlYonLjp3niBappDbjLMjqt/d8QY2YhL26L7KPtUbLNlGPpn9AHCl1lPuL
SYlRiWr+tQltWiwCXNbni7gyb+G2lmw9npsgH1y1yedgKEk3eStvxu8eh2axt8q3
p2k88rHv4gHB9nL0eJ/F0VTDB7jVlSrNPBQhHEuo18Rab9WIiH/NOW6MXhYusQag
IcjA3tSGzk27DMGn/jj8cNZ0K1afL2tboVOFvQ0AKbjUbEnrh3bk7i/pzEw/jcHV
Eivp3MHeNrHMp6mcgp8pu+HzUeY5BwvX8ZwwdZfKSc6m2WeVCoY=
=9+6X
-----END PGP SIGNATURE-----

--ailaec5jv5dx5ayv--

