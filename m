Return-Path: <linux-man+bounces-2833-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 20219AA606E
	for <lists+linux-man@lfdr.de>; Thu,  1 May 2025 17:05:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AD3911B63021
	for <lists+linux-man@lfdr.de>; Thu,  1 May 2025 15:05:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CAD41FBC8C;
	Thu,  1 May 2025 15:05:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tDaUm2Hz"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F107D1A08B8
	for <linux-man@vger.kernel.org>; Thu,  1 May 2025 15:05:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746111938; cv=none; b=ubw3/VXYxhec8QCrFsx/FB9fZthfEmdHcTG/K3YkepheBJzgDO1g9Q0ni+XtmPzraOMg9TBKOs5EL1NHxxdl9vvu9vEUzAIcEiLC00HVnnIz2iu/RBC8sAaJWw4T1NB1m7tPXZCZwHIo60sVdtKuSrCxBRbNeoK4MyfJnU5kmF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746111938; c=relaxed/simple;
	bh=r5QTMjLQpmeI3kZDCcdnkTZNtaUrxr3Q/UTpot4tGPw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=m90+gbl0eCEFOATEujDRjT1a4m8K1WtMeyBxuNTWS5/pNLG7MFsb+5ICFngPc9pPHg1ukRgtdXL/sU9/NQLNlcVKTIWL5n7ewaXCVAOsq/22K8CjB0kxqYxaadeVyaoj6uKZfJ/znlGinKw0Fz6lK6AZO1tt2ZKiiIbhiB25tq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tDaUm2Hz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 28B43C4CEED;
	Thu,  1 May 2025 15:05:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746111937;
	bh=r5QTMjLQpmeI3kZDCcdnkTZNtaUrxr3Q/UTpot4tGPw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tDaUm2HzkxAjT7hIAjeQVnKQgTqssXU79/k6HcHqbQjFvYFRM2/SdVSzOKIe7EhgJ
	 PnTxM0VPMZM3P0Fp2jru9gc4KRrufii3d6h2gNhmZrXFU3Xx+p1f9p61AGTewnFco0
	 HUO05JUZJnW/2s+fKeeajtWDH+yu3xdcbM1r+Jep3PzeOkdwImgfsqJKt3G6qW9ZVM
	 UCJd/XrDnXW4HPNdnVrGIZVI2uu/3S3Zqyq/yotur7dmj7T08Y+QBTUq8W8MWHEUMp
	 KzkXL3blzRdemOJomHPox3z4LLf4oc2TOfGWD17t9g/S9dHHMTyIEJ5XZANuck1ZCU
	 zOo+qr/yW5Wdg==
Date: Thu, 1 May 2025 17:05:33 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Jared Finder <jared@finder.org>, Jann Horn <jannh@google.com>, 
	Hanno =?utf-8?B?QsO2Y2s=?= <hanno@hboeck.de>, Jiri Slaby <jirislaby@kernel.org>, Kees Cook <kees@kernel.org>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2const/TIOCLINUX.2const: Document CAP_SYS_ADMIN
 requirement for TIOCL_SETSEL modes
Message-ID: <26e2aje76rj4guq7g3isno6ni2lnzevgywq7y5odnkrykr7gqr@2qmexziuowok>
References: <20250501110024.9225-2-gnoack3000@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4zsxfvjlosgnotp6"
Content-Disposition: inline
In-Reply-To: <20250501110024.9225-2-gnoack3000@gmail.com>


--4zsxfvjlosgnotp6
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Jared Finder <jared@finder.org>, Jann Horn <jannh@google.com>, 
	Hanno =?utf-8?B?QsO2Y2s=?= <hanno@hboeck.de>, Jiri Slaby <jirislaby@kernel.org>, Kees Cook <kees@kernel.org>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2const/TIOCLINUX.2const: Document CAP_SYS_ADMIN
 requirement for TIOCL_SETSEL modes
References: <20250501110024.9225-2-gnoack3000@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20250501110024.9225-2-gnoack3000@gmail.com>

Hi G=C3=BCnther,

On Thu, May 01, 2025 at 01:00:23PM +0200, G=C3=BCnther Noack wrote:
> CAP_SYS_ADMIN was previously required for the entire TIOCL_SETSEL
> subcode, but is now only needed for a subset of the selection modes,
> since linux.git 2f83e38a095f ("tty: Permit some TIOCL_SETSEL modes
> without CAP_SYS_ADMIN").
>=20
> The CAP_SYS_ADMIN requirement for TIOCL_SELMOUSEREPORT was further
> corrected in linux.git ee6a44da3c87 ("tty: Require CAP_SYS_ADMIN for
> all usages of TIOCL_SELMOUSEREPORT").

In these commit references, it would be interesting to include the
commit date (when there are more than one, to get an idea of the
chronology).  This git alias might be useful for you to produce these
references:

	$ grep -A1 '\<ref\>' /etc/gitconfig=20
		ref =3D show --no-patch --abbrev=3D12 --date=3Dshort \
			--format=3Dtformat:'%C(auto)%h%C(reset) %C(white)(%cd%x3B \"%C(reset)%C(=
auto)%s%C(reset)%C(white)\")%C(reset)'
	$ git ref 2f83e38a095f ee6a44da3c87
	2f83e38a095f (2025-01-13; "tty: Permit some TIOCL_SETSEL modes without CAP=
_SYS_ADMIN")
	ee6a44da3c87 (2025-04-11; "tty: Require CAP_SYS_ADMIN for all usages of TI=
OCL_SELMOUSEREPORT")

>=20
> Link: <https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git=
/commit?id=3D2f83e38a095f8bf7c6029883d894668b03b9bd93>
> Link: <https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git=
/commit?id=3Dee6a44da3c87cf64d67dd02be8c0127a5bf56175>
> Signed-off-by: G=C3=BCnther Noack <gnoack3000@gmail.com>
> ---
>  man/man2const/TIOCLINUX.2const | 16 ++++++++++++++--
>  1 file changed, 14 insertions(+), 2 deletions(-)
>=20
> diff --git a/man/man2const/TIOCLINUX.2const b/man/man2const/TIOCLINUX.2co=
nst
> index 61f1c596d..f48132ea1 100644
> --- a/man/man2const/TIOCLINUX.2const
> +++ b/man/man2const/TIOCLINUX.2const
> @@ -72,18 +72,30 @@ may be one of the following operations:
>  Select character-by-character.
>  The indicated screen characters are highlighted
>  and saved in a kernel buffer.
> +.IP
> +Since Linux 6.7, using this selection mode requires the
> +.B CAP_SYS_ADMIN
> +capability.
>  .TP
>  .B TIOCL_SELWORD
>  Select word-by-word,
>  expanding the selection outwards to align with word boundaries.
>  The indicated screen characters are highlighted
>  and saved in a kernel buffer.
> +.IP
> +Since Linux 6.7, using this selection mode requires the
> +.B CAP_SYS_ADMIN
> +capability.
>  .TP
>  .B TIOCL_SELLINE
>  Select line-by-line,
>  expanding the selection outwards to select full lines.
>  The indicated screen characters are highlighted
>  and saved in a kernel buffer.
> +.IP
> +Since Linux 6.7, using this selection mode requires the
> +.B CAP_SYS_ADMIN
> +capability.
>  .TP
>  .B TIOCL_SELPOINTER
>  Show the pointer at position
> @@ -118,11 +130,11 @@ If mouse reporting is not enabled for the terminal,
>  this operation yields an
>  .B EINVAL
>  error.
> -.RE
>  .IP
> -Since Linux 6.7, using this subcode requires the
> +Since Linux 6.12.26, using this selection mode requires the
>  .B CAP_SYS_ADMIN
>  capability.

I'm not sure I understand this part.  Was it required since 6.7 and now
it's only since 6.12.26?  How can that be?


Have a lovely day!
Alex

> +.RE
>  .TP
>  .BR subcode =3D TIOCL_PASTESEL
>  Paste selection.
> --=20
> 2.49.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--4zsxfvjlosgnotp6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgTjbUACgkQ64mZXMKQ
wqk26g/7BMD+1ZvjnxXeKS2Bj0y7S5n4PSIIV7X22jNzWzrwx+qU2VOxKGWK9xxv
7GM0U3H4ARPQLHwtSOX+YziIvkkGUhAey6Qm00IErcC/RiNLtpwffTjh3a4xbiXn
+/Bssc2iLGZEv94Dc8xs4sqXmrz+8ERxrSUlci7ERIBqKQGDdwKTMBNwrTREUrBM
CvQNOJy7j+6JzL3XzOC87V8UIbX7y8MTkL+8aCWiUGhDoWqa8k5TXTnVdq7hNnBh
I03fhLFGZd2C3+WRf5tTJ100HffpdkZO8gFaKzNBTLcO+/xaQ7qCSLivM7G+WKSu
Cqa7QkD8g9tiNphnXTi7ginSiZ/Ma0WrK/njQESfNplU1jAval5YHMuO2JttqEjj
rf+kooDm1YUYLDtCGsPkC7V2h9voIGASb6IkbMxn/fEX5IivpoXIJFoEVT40dWKt
klZZSXvCpf81wRXLQwM1Kc8Z78sEa+TQ4OXuPAsTBjQCwvifcqeQRFD5TwyuNAm5
8c04NYJS/2hjfNF4IXU/N8EtbNlzW1Hg5SOy3Gm68QXQ/G3taig/iyXB8MbAh/AO
EorzIbFXoBHYEnL8x+9N+Rwe6Z6m2eHW1MoqMmBC43sWy8C6qffjnCCx6+MwDvTR
4JjjjN1/VKNb+mdC4WbblN9jTSnPzQnGHeMGFSByw7K7WlxNk2A=
=mFNt
-----END PGP SIGNATURE-----

--4zsxfvjlosgnotp6--

