Return-Path: <linux-man+bounces-2506-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 91AC0A4114B
	for <lists+linux-man@lfdr.de>; Sun, 23 Feb 2025 20:36:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 637B71710CC
	for <lists+linux-man@lfdr.de>; Sun, 23 Feb 2025 19:36:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7128A15667B;
	Sun, 23 Feb 2025 19:36:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mfo+1q/u"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF421419A9
	for <linux-man@vger.kernel.org>; Sun, 23 Feb 2025 19:36:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740339399; cv=none; b=WJ0ClBrnomqr7tfO/NzJtHLuyFO/mskB3yBw8kYuoVrDiaX4rebKHzwws/sh2aguJpHFXiTKT/KKIByks+s9HXkAV4igcBoio3tPMaMuTPc+kyxdIMpwPIxBkk3glAOFO2gPzzUqe0WEyuwU4azcvnVs8GZUkzJcMTCR1PZQiR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740339399; c=relaxed/simple;
	bh=j5UJPVDo7xlQdYMau7Cs5A2nglBfU4uesitnU0MF9/Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GhgexNqSGyjQg4t1efCRHR+W33pFqKaUxEK5oue/OKWveZAasKBU6gD7Lxz90In4t+TiXhCbggy5Vf2Qqky1uBI9reoOzVHAuhaDJ+RI3lisZ2zJjRuRFWVYrXXqj5vYUq8/LjGVPIFE5RfyoA80WfyOPAUaWsTju0Y8miczV1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mfo+1q/u; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF917C4CEDD;
	Sun, 23 Feb 2025 19:36:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740339398;
	bh=j5UJPVDo7xlQdYMau7Cs5A2nglBfU4uesitnU0MF9/Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mfo+1q/uxorZ69u4vYJzGpchSJS2pDVDffA6Bxvavis3qwpjOO54TmU+n4bdsAAyC
	 GdUn0aECjO50x8y379OuJxYiu65REkJi0MnW3P5GdyjSjj12N3m6GbD9dxDtMBG20J
	 Jgq8BbnTK0xIY7KlnyNbmK3o7sHhTNUqcq11CgZv66QgyB4Le+DtxaHSFNhoStkh8u
	 Xcn27uKsaMiT5GZakAsTyQFNK0C6B9jELFDaPSigwTriC+mKEZ0YkWViUHvuSLyMh2
	 s36NXwq4+HXfpiGIZdmWPpIn2n8XLYsH8BPOCRY2NIk2+Z+WbB17EBMFj+GZBjTVNj
	 L6YTPSsiZGNXg==
Date: Sun, 23 Feb 2025 20:36:33 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Cc: Alejandro Colomar <alx.manpages@gmail.com>, linux-man@vger.kernel.org, 
	Jared Finder <jared@finder.org>, Hanno =?utf-8?B?QsO2Y2s=?= <hanno@hboeck.de>, 
	Jann Horn <jannh@google.com>, Jiri Slaby <jirislaby@kernel.org>, jwilk@jwilk.net
Subject: Re: [PATCH man 1/1] TIOCLINUX.2const: Document TIOCL_SETSEL
 selection modes
Message-ID: <753ynh2ta45wtmrfttuxqo76cx5itzvvlsovacdrekt6go3ats@v6jg4xuomrp7>
References: <20250223091342.35523-1-gnoack3000@gmail.com>
 <20250223091342.35523-2-gnoack3000@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="pge4fmubgiltbaff"
Content-Disposition: inline
In-Reply-To: <20250223091342.35523-2-gnoack3000@gmail.com>


--pge4fmubgiltbaff
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Cc: Alejandro Colomar <alx.manpages@gmail.com>, linux-man@vger.kernel.org, 
	Jared Finder <jared@finder.org>, Hanno =?utf-8?B?QsO2Y2s=?= <hanno@hboeck.de>, 
	Jann Horn <jannh@google.com>, Jiri Slaby <jirislaby@kernel.org>, jwilk@jwilk.net
Subject: Re: [PATCH man 1/1] TIOCLINUX.2const: Document TIOCL_SETSEL
 selection modes
References: <20250223091342.35523-1-gnoack3000@gmail.com>
 <20250223091342.35523-2-gnoack3000@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20250223091342.35523-2-gnoack3000@gmail.com>

Hi!

On Sun, Feb 23, 2025 at 10:13:42AM +0100, G=C3=BCnther Noack wrote:
> These previously undocumented selection modes for the Linux console
> are implemented in drivers/tty/vt/selection.c.
>=20
> Cc: Jared Finder <jared@finder.org>
> Cc: Hanno B=C3=B6ck <hanno@hboeck.de>
> Cc: Jann Horn <jannh@google.com>
> Cc: Jiri Slaby <jirislaby@kernel.org>
> Cc: jwilk@jwilk.net
> Signed-off-by: G=C3=BCnther Noack <gnoack3000@gmail.com>
> ---
>  man/man2const/TIOCLINUX.2const | 48 ++++++++++++++++++++++++++++++----
>  1 file changed, 43 insertions(+), 5 deletions(-)
>=20
> diff --git a/man/man2const/TIOCLINUX.2const b/man/man2const/TIOCLINUX.2co=
nst
> index c0acdd0ea..27758584e 100644
> --- a/man/man2const/TIOCLINUX.2const
> +++ b/man/man2const/TIOCLINUX.2const
> @@ -65,11 +65,49 @@ are the ending
>  column and row.
>  (Upper left corner is row=3Dcolumn=3D1.)
>  .I sel_mode
> -is 0 for character-by-character selection,
> -1 for word-by-word selection,
> -or 2 for line-by-line selection.
> -The indicated screen characters are highlighted and saved
> -in a kernel buffer.
> +may be one of the following operations:
> +.RS
> +.TP
> +.B TIOCL_SELCHAR
> +Select character-by-character.
> +The indicated screen characters are highlighted
> +and saved in a kernel buffer.
> +.TP
> +.B TIOCL_SELWORD
> +Select word-by-word.
> +The indicated screen characters are highlighted
> +and saved in a kernel buffer.
> +.TP
> +.B TIOCL_SELLINE
> +Select line-by-line.
> +The indicated screen characters are highlighted
> +and saved in a kernel buffer.

It might be interesting to split this into two patches:

1)  A first one that fixes existing wording, line breaks, etc, and gives
    names to the values 0,1,2.

2)  And a second one that adds new documentation.

> +.TP
> +.B TIOCL_SELPOINTER
> +Show the pointer at position
> +.RI ( xe ", " ye ).

I'd use a non-breaking space \~, which also has the benefit of not
needing quotes:

	.RI ( xe ,\~ ye ).

> +.TP
> +.B TIOCL_SELCLEAR
> +Remove the current selection highlight, if any,
> +from the console holding the selection.
> +.TP
> +.B TIOCL_SELMOUSEREPORT
> +Report
> +.RI ( xs ", " ys )

=2E

> +as the current mouse location.
> +In this selection mode,
> +the lower 4 bits of
> +.I sel_mode
> +.RB ( TIOCL_SELBUTTONMASK )
> +may additionally be set to indicate the desired button press and
> +modifier key information for the mouse event.
> +.\" https://invisible-island.net/xterm/ctlseqs/ctlseqs.html#h3-Normal-tr=
acking-mode

Please always enclose URIs in <>.  (See uri(7).)

> +.IP
> +If mouse reporting is not enabled for the terminal,
> +this operation yields an
> +.B EINVAL
> +error.
> +.RE

Have a lovely night!
Alex

>  .IP
>  Since Linux 6.7, using this subcode requires the
>  .B CAP_SYS_ADMIN
> --=20
> 2.48.1
>=20

--=20
<https://www.alejandro-colomar.es/>

--pge4fmubgiltbaff
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAme7eLIACgkQ64mZXMKQ
wqmI1Q//RB1rtH+wrocNK3CQzBEtwFpMAwQIc1dQVushdMJrxCQO9IGoVXbRT/b7
6u9XFm+7AhMALL/Y/0Fjr33ubK2OYgm5QdFiQKA2QvaZO0Nb+sTYJ8F2YBd6Z7p7
cpM16qz0k+miR1OlCnlGjT4U2JXjJw6WdB2bDQ/5LDoxRRbTHa1v4T5f6Rf7gjbx
33GoYUC6A1wnAkC6+W2XSzNQnjSv7hD6213JbPVolsURpdSEI7Tl926djlaevzuk
kiS/Z+1PKhLW39K2b0MyxeXAwrE5X2RSxzpVyo0+5YmYzVE+yngmksTcxJBn768O
wMYeVkMM0epfOxC3RzVMtYUcdzhDH8PXJEqBn6gUUS7RCaRzL5ZY9lOssxkR4tRB
ZRdSzfDOINamorUQnOYOGUkr0n9HISO6Vvv+J2oIhOOT5by6knlMNoUWR06O9ndX
2+x7eAQDlJQW0pwGAdNwmwTOx0XXmkDKqcLfJeDMoSmwJUCUTnr0s5rMrfq57DAe
FDp98SnGLCdq+l3ZYNwQQr5VY2tJCmlmH5Pco/vp5zRsSCjO/HgFo95CNnBC1Ffy
Mt5u5DZ9apdrdLNp4Q13kvWhq4SpDBJ+BAx5aokHkbRLerUbYmHow0FhM+bU6KmV
hjbjVg36JI5ZE0SoHVJi8bTic292Pw/Jym+ScQ7xpOew34rrOkA=
=1vOm
-----END PGP SIGNATURE-----

--pge4fmubgiltbaff--

