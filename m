Return-Path: <linux-man+bounces-277-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 98ACA81B9BE
	for <lists+linux-man@lfdr.de>; Thu, 21 Dec 2023 15:42:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 393BCB21132
	for <lists+linux-man@lfdr.de>; Thu, 21 Dec 2023 14:42:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E6281D6A9;
	Thu, 21 Dec 2023 14:42:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mDXidEHH"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A678A5C
	for <linux-man@vger.kernel.org>; Thu, 21 Dec 2023 14:42:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32C84C433C8;
	Thu, 21 Dec 2023 14:42:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703169751;
	bh=lm6Et6KeJqB/ru8vAwgvjy1g645/LV/qh/uxC6R74As=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mDXidEHHD81hRDJPxglGacWKNV5KT0HEJdCm0CtbaY5XPPbkyMkc4lUEAPyG+S1Fe
	 9cCCnxKKMJNxbNO4HZi8DwRJqhxRvRUZu/g/4TcLjbrGtEZLnM+EXXbr93QcKz/cO+
	 vz7Mv6yDSisbjzwuZi8IdqnnrF6xjys6cFD5h8s3NJIWNwphRNwKQxaPRWXKSSuBvG
	 R/t5p1DjEszeMTBYX8Yg0Ir3ZoTOldlfr5XvCM1VxW0uHJ80aqDVxLvAzOSJ3str8F
	 4OIQ94mFXtJqq1yXkrGpHYA8Fdi3JopZZSY0+QPaY1JaaXgVO/isSjRyKaEFr7bkf5
	 ZLqKr/cYokwuA==
Date: Thu, 21 Dec 2023 15:42:27 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: linux-man@vger.kernel.org, Hanno =?utf-8?B?QsO2Y2s=?= <hanno@hboeck.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] ioctl_console: Document new CAP_SYS_ADMIN restrictions
 (since Linux 6.7)
Message-ID: <ZYRO07YHw0Qk9bev@debian>
References: <20231201122645.3237941-1-gnoack@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6aBErLwFJ3uQdKsM"
Content-Disposition: inline
In-Reply-To: <20231201122645.3237941-1-gnoack@google.com>


--6aBErLwFJ3uQdKsM
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 21 Dec 2023 15:42:27 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: linux-man@vger.kernel.org, Hanno =?utf-8?B?QsO2Y2s=?= <hanno@hboeck.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] ioctl_console: Document new CAP_SYS_ADMIN restrictions
 (since Linux 6.7)

Hi G=C3=BCnther,

> Cc: Alejandro Colomar <alx.manpages@gmail.com>

I'm deprecating my gmail address; please use <alx@kernel.org>.

On Fri, Dec 01, 2023 at 01:26:45PM +0100, G=C3=BCnther Noack wrote:
> Since Linux commit 8d1b43f6a6df7bce ("tty: Restrict access to TIOCLINUX'
> copy-and-paste subcommands"), the TIOCL_SETSEL, TIOCL_PASTESEL and
> TIOCL_SELLOADLUT subcommands require CAP_SYS_ADMIN.
>=20
> Cc: Hanno B=C3=B6ck <hanno@hboeck.de>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Signed-off-by: G=C3=BCnther Noack <gnoack@google.com>
> ---

Patch applied; sorry for the delay.  :)
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D846876d13a446836ca19ba1f619515a2cd992217>

Have a lovely day,
Alex

>  man2/ioctl_console.2 | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>=20
> diff --git a/man2/ioctl_console.2 b/man2/ioctl_console.2
> index 684b4d013..abc50b786 100644
> --- a/man2/ioctl_console.2
> +++ b/man2/ioctl_console.2
> @@ -715,12 +715,20 @@ is 0 for character-by-character selection,
>  or 2 for line-by-line selection.
>  The indicated screen characters are highlighted and saved
>  in a kernel buffer.
> +.IP
> +Since Linux 6.7, using this subcode requires the
> +.B CAP_SYS_ADMIN
> +capability.
>  .TP
>  .BR TIOCLINUX ", " subcode =3D TIOCL_PASTESEL
>  Paste selection.
>  The characters in the selection buffer are
>  written to
>  .IR fd .
> +.IP
> +Since Linux 6.7, using this subcode requires the
> +.B CAP_SYS_ADMIN
> +capability.
>  .TP
>  .BR TIOCLINUX ", " subcode =3D TIOCL_UNBLANKSCREEN
>  Unblank the screen.
> @@ -729,6 +737,10 @@ Unblank the screen.
>  Sets contents of a 256-bit look up table defining characters in a "word",
>  for word-by-word selection.
>  (Since Linux 1.1.32.)
> +.IP
> +Since Linux 6.7, using this subcode requires the
> +.B CAP_SYS_ADMIN
> +capability.
>  .TP
>  .BR TIOCLINUX ", " subcode =3D TIOCL_GETSHIFTSTATE
>  .I argp
> --=20
> 2.43.0.rc2.451.g8631bc7472-goog
>=20

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--6aBErLwFJ3uQdKsM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmWETtMACgkQnowa+77/
2zKBGw/8CUl5CH20NvNx3M8AbPTrcKIVzWGCq5S5CYGnErmm1MnkNn/0OP/IJ/PA
GSPYOPut4F0TjIYjb10rAm0RtD4id6pbrrMGhFVDc8Tz6XMUC/7KcCGtxz6Ei0LC
EAZXpBZ6FeKxJFr6+OQPFZMTDzMgMjbdCukUDybxokcEGF3osMin4I8zjXJv8/Za
btNJGERV6UZSEgYAKWiAeAwARmNcb+K2BhGKSNSoSaCsd7FBAiuSeVA9+9u+1wN0
P49/Hk6LXBUgqaeMyDTBJ7C9095cQIU1Z/xRw7rX9E0xUGKcVBeUnnejtLI2ugKD
aDstmmLP/mzWu6Xnuf3nhZbjugkkQ4IVnvWVpAEF08FDNN3tMWIOhd22oKkkCQwW
dR2aqJnf4ToEFjdxKYNtHVcPSl6b4xrZ3fDJ/ANHw1T9M8h9CYd/4BZ4l7ZAkiNa
5/TVjiCrnJIS8euojt9F3a96dfrBJNUYAkRyrD/69koy96hK5slK0DM0S3XaKNH+
EbMzJOXve+CkPwulaSCHV8/A7pPnDLMft27FyIrUAwCovhcUM3XCC97x1vaFryDw
26RGRwp/Rj6F7hQouozzNlroAmymxi5HXijqvP2mGAFAmSMzFLmb1vxNSVBSUadO
V+mObiTphv9GuN+ywkZLm+5o931g7ptpGFNz6DuXiv0PowU7AfI=
=tkut
-----END PGP SIGNATURE-----

--6aBErLwFJ3uQdKsM--

