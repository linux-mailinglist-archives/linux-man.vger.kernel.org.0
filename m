Return-Path: <linux-man+bounces-2844-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 37452AA6FFC
	for <lists+linux-man@lfdr.de>; Fri,  2 May 2025 12:43:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8CB1A3AE967
	for <lists+linux-man@lfdr.de>; Fri,  2 May 2025 10:43:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DFB24A32;
	Fri,  2 May 2025 10:43:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NO5lRG8z"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFBE223C4F4
	for <linux-man@vger.kernel.org>; Fri,  2 May 2025 10:43:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746182624; cv=none; b=P+3oxNiHZzKfDXN8pSpvMrluFnLVZa+vwy0w5tk3ZKLpVjAanY5YGD9Z656nZLppdMoLqe5uK9VIF3di736K0pai4iPAD35QDGMMZCGnjt6pf4qQYUJil77MyvijcJt7lV9zSwUi4v30vuD2M+tF7pIXutphPrPVP/onxW4RZY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746182624; c=relaxed/simple;
	bh=u41SEnb4HqCt9VS7nc9NdAEdHH0X3RBPd/uXuix9hDg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AHeATcCuHR8ltZjsPgWRZlSoJSxfegftIEEFHtc3K70TL0JNs+Or0b06kW2xG+6q6A4t6Ii4itxqK9C5ZWh6bcWgy9M4pvI4g+GcBWEbxOxjcbZH/0kE8M7u/W/xA0+RFalt6sfc7ruPHt/PfSC/DYn4X2F6HxgQ6svlrXcUzjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NO5lRG8z; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8DE8AC4CEE4;
	Fri,  2 May 2025 10:43:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746182623;
	bh=u41SEnb4HqCt9VS7nc9NdAEdHH0X3RBPd/uXuix9hDg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NO5lRG8z+T18Yy2M/PEnp3RQPUN9wlEklxL5zvOX0N+mThzMUqPQCn4vop8GMMlxH
	 H+LQVV10Vsfh6Zx1KsGrDImfdNB3fEl1pvWktuLH0D8rOBwKz9U2fTpiWpSs6fyj1n
	 XXYiVzDy3alqY4CWNhKgAQu4D8fyEUKE3+yUK32XUaFfhjwnHh6QZTJ7CIz/G4yiL6
	 HIC4pmQ9uhVOJgiqsnplYtSzClvChQg7AKAqBEOy6wnkekSZp5pV7qRdjc/uqdJlKy
	 OSx0bjhA9IWwv7TC+7qmhWctTmYq9uTtlCVins9ImZV+UlqCgWwqr77q5MB1iaOnYJ
	 uvni+A6iQZ4Kg==
Date: Fri, 2 May 2025 12:43:39 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Jared Finder <jared@finder.org>, Jann Horn <jannh@google.com>, 
	Hanno =?utf-8?B?QsO2Y2s=?= <hanno@hboeck.de>, Jiri Slaby <jirislaby@kernel.org>, Kees Cook <kees@kernel.org>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man/man2const/TIOCLINUX.2const: Document
 CAP_SYS_ADMIN requirement for TIOCL_SETSEL modes
Message-ID: <4vfwznjlud7sj4p6g2noyqpkh3eizr3ihskks435avz4a2v67r@o5w7ioqfdvvp>
References: <20250502102405.4891-2-gnoack3000@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cx3othhmvxrfz77p"
Content-Disposition: inline
In-Reply-To: <20250502102405.4891-2-gnoack3000@gmail.com>


--cx3othhmvxrfz77p
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Jared Finder <jared@finder.org>, Jann Horn <jannh@google.com>, 
	Hanno =?utf-8?B?QsO2Y2s=?= <hanno@hboeck.de>, Jiri Slaby <jirislaby@kernel.org>, Kees Cook <kees@kernel.org>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man/man2const/TIOCLINUX.2const: Document
 CAP_SYS_ADMIN requirement for TIOCL_SETSEL modes
References: <20250502102405.4891-2-gnoack3000@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20250502102405.4891-2-gnoack3000@gmail.com>

Hi G=C3=BCnther,

On Fri, May 02, 2025 at 12:24:03PM +0200, G=C3=BCnther Noack wrote:
> CAP_SYS_ADMIN was previously required for the entire TIOCL_SETSEL
> subcode, but is now only needed for a subset of the selection modes,
> since linux.git 2f83e38a095f (2025-01-13; "tty: Permit some
> TIOCL_SETSEL modes without CAP_SYS_ADMIN").
>=20
> The CAP_SYS_ADMIN requirement for TIOCL_SELMOUSEREPORT was further
> corrected in linux.git ee6a44da3c87 (2025-04-11; "tty: Require
> CAP_SYS_ADMIN for all usages of TIOCL_SELMOUSEREPORT").
>=20
> Admittedly, there are kernels where CAP_SYS_ADMIN was briefly not
> required for TIOCL_SELMOUSEREPORT, even after Linux v6.7, but this was
> a mistake which is now fixed in all up-to-date stable kernels.
> Therefore, we still document CAP_SYS_ADMIN as required "since Linux
> 6.7" in this case.
>=20
> Link: <https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git=
/commit?id=3D2f83e38a095f8bf7c6029883d894668b03b9bd93>
> Link: <https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git=
/commit?id=3Dee6a44da3c87cf64d67dd02be8c0127a5bf56175>
> Signed-off-by: G=C3=BCnther Noack <gnoack3000@gmail.com>

Thanks!  I've applied the patch.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D5889aa978ddc93d31d3c48c29899761ebde3f53d>


Have a lovely day!
Alex

> ---
>  man/man2const/TIOCLINUX.2const | 16 ++++++++++++++--
>  1 file changed, 14 insertions(+), 2 deletions(-)
>=20
> diff --git a/man/man2const/TIOCLINUX.2const b/man/man2const/TIOCLINUX.2co=
nst
> index 61f1c596d..b98a0202b 100644
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
> +Since Linux 6.7, using this selection mode requires the
>  .B CAP_SYS_ADMIN
>  capability.
> +.RE
>  .TP
>  .BR subcode =3D TIOCL_PASTESEL
>  Paste selection.
> --=20
> 2.49.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--cx3othhmvxrfz77p
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgUodoACgkQ64mZXMKQ
wql/LQ//R3PAzqah8fbN4dU5N++bmqeH/NClniYKSlmrm+azrVvPKy6uh/oJjfDz
YngrKUKejkFPi7GeewKz+v4y95lei0UVifuuC4l+5Y8bQ+JLSeVh1s8Z3y3zpDCk
VcfSGeAGOBjTZHbzo/U5s9BWnNmmaI1Zsja5Dh6qbfahchYlfPEpR9srPp7fi6rQ
eGd8foRo0bRb5i2vjbqMhvpw0Zs80jCqLY/DetHFFm2R4nFgxfpAeVzvTewtxkAi
uy4/V4bX/77+fCJUIBflFPZ2+q5Al3Q+ui5P0qSxqEXkEr924qWxdZb7Abc+AhWj
hfyKAsGeCCOGw/YTDf/4tRsgD/aMqiz8IbDZFwbfQThw1+u7Zkjt8S2qT4LmAszN
ynIr3KMNb+nKc0hw4l3YXNKll8EhG5XMDcBMNqK7VLndeUw6zmJrW37/NMUVZBUG
ZRceEY/Lzox5rMBvcS0VXMYoRq3T7nbkQlqwIkB4xaUWktQd0IX+cloy6/F0yCiG
2Kc38Wn5qtTziJINy8AiSvdGrDKiuhLis20BmQ2sXBdhRL4FFjDeUJU4KgyzrUDz
K2AcT9rYjn6ork99Fb8EIC7N5aoCPENHqdVCBpqPCHmqasHW+upofXV0sww5Prog
lBF/eA2NOcGAjyrbnljwFDgVPQoyD6f+VMDjbdS3IRI93qb9IX4=
=Db6d
-----END PGP SIGNATURE-----

--cx3othhmvxrfz77p--

