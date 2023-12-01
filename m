Return-Path: <linux-man+bounces-202-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BB690800B4E
	for <lists+linux-man@lfdr.de>; Fri,  1 Dec 2023 13:56:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EC6DD1C20A88
	for <lists+linux-man@lfdr.de>; Fri,  1 Dec 2023 12:56:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDDA625545;
	Fri,  1 Dec 2023 12:56:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="psdUa9DR"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8213D2511E
	for <linux-man@vger.kernel.org>; Fri,  1 Dec 2023 12:56:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D137C433C7;
	Fri,  1 Dec 2023 12:56:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701435405;
	bh=8xGuzxEa9uj2BAO6zGYSfrOBfYQ6UHsbMRtj4hjX+R8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=psdUa9DR71Gu5H1QHP4VKW9aontM/9DWI41k/FG8GsVZRYnQ3Tcr0Jk8s4164ENDN
	 hbWLNsLe67GqGDWozLd6l2zAsZsUL5vkVk3rUufABMojHPtCP2YjXmqHD2AbzXyMXd
	 Jl7LPguEmODAwGH8j4kO0mDO7s4kZVHS5vHvACSG9YG7brtmYyyHQBwoSfm5z9YWId
	 zsZgzuH9rIHlG526VihRiXmO9Gc3FrybKIrbcdegYhmeekQzr6rM0YiIMQqtR48KQy
	 lnxA9NjAH2Ee/UYpn+73qjzCDQbFMf58IRvHrdBFMnkBagaYVvl3rRwskFygg/IP8A
	 qF9GqZ5IvzD1g==
Date: Fri, 1 Dec 2023 13:56:41 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: Alejandro Colomar <alx.manpages@gmail.com>, linux-man@vger.kernel.org,
	Hanno =?utf-8?B?QsO2Y2s=?= <hanno@hboeck.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] ioctl_console: Document new CAP_SYS_ADMIN restrictions
 (since Linux 6.7)
Message-ID: <ZWnYCcuJql0Pm4Yr@debian>
References: <20231201122645.3237941-1-gnoack@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Jz1Bob29lVoAntgF"
Content-Disposition: inline
In-Reply-To: <20231201122645.3237941-1-gnoack@google.com>


--Jz1Bob29lVoAntgF
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 1 Dec 2023 13:56:41 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: Alejandro Colomar <alx.manpages@gmail.com>, linux-man@vger.kernel.org,
	Hanno =?utf-8?B?QsO2Y2s=?= <hanno@hboeck.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] ioctl_console: Document new CAP_SYS_ADMIN restrictions
 (since Linux 6.7)

Hi G=C3=BCnther, Greg,

On Fri, Dec 01, 2023 at 01:26:45PM +0100, G=C3=BCnther Noack wrote:
> Since Linux commit 8d1b43f6a6df7bce ("tty: Restrict access to TIOCLINUX'
> copy-and-paste subcommands"), the TIOCL_SETSEL, TIOCL_PASTESEL and
> TIOCL_SELLOADLUT subcommands require CAP_SYS_ADMIN.
>=20
> Cc: Hanno B=C3=B6ck <hanno@hboeck.de>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Signed-off-by: G=C3=BCnther Noack <gnoack@google.com>
> ---
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

Are these requirements expected to be backported to stable kernels?

Cheers,
Alex

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

--Jz1Bob29lVoAntgF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVp2AkACgkQnowa+77/
2zJT3g/+K345BEP5bqz7iHNizqBKHBTiJa2OvzxlL7GyR0VQfA7OoQtTI+1V4bhS
AmQvdQ09ivQCGOOGtBC/qaf7UHyBTC4ItcVdrDKv6UOoWy0MNjcuHvJOgMSQk69p
vDoq2WJX8dT4zzEsmAbiyJ5QNtEFHccQovzH2vBhvtl819x8mjUOMqoxFOf/Do+x
aAynjNZBQIQ5JYByJ8nQRtsTs4lmii4Y5Xdx6mcWkWbE/UVP1eF+1cQlQ2vkhG6H
p+F4lDYfW9nY//xVEkmBO53QKeC8NDHXTLuSM+T5h7wWImqjpI8UeurB/lTNu07O
z9B5c9JVG/BZzNuf5AUL/9WV8SxYsfztu3s8HZdb7deIzn14LfmKYCRHJ3JCSnb+
SPY00XHKuAVoqt76XzvKMF/txdmdjRJ4MlXz9wHFonKbXkpmm7V/4/z2FFKVcY7t
95/Zrw2lNv9LxClEzfec3Ls+HZ1r4Bfub9sJRFOh5aha/0mFTBsa7+LnPn56EFkl
aCFBD8CwXv9OoGLplSJ6a2iO5H4HBsYo+DZAqkW3UlmfBFpnkLm5b25/eo6zV+wB
MK0XMuoeHBouHtLHENn6WiKhTw1+X8lQV5neu3LKMKwoxEMXT2ObuLIvQFqXXrTf
b7T0iborHZhjDPsnigrICUJGO8Z6B46629zewaoxMH89TbCNtd4=
=BPAS
-----END PGP SIGNATURE-----

--Jz1Bob29lVoAntgF--

