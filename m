Return-Path: <linux-man+bounces-3155-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 03B0FADFA5B
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 02:45:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 73F96189F9EA
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 00:45:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5704113959D;
	Thu, 19 Jun 2025 00:45:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M5vaZohF"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1756F18024
	for <linux-man@vger.kernel.org>; Thu, 19 Jun 2025 00:45:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750293912; cv=none; b=lOjLhcMdlbywuXSxNvSNW1/KcMGxhGims6bYirgBvuAh3ggUl7sit/4LjvAenYymXO/u/tRnhC1UeXTR4wI4OrndtEbDFQl2rwTiWzBU6Ue2Ebt1KDUhlXKTF42gTNeIR0QjqJ9o0oZ8bqGyNMDSLFou+NHGm1E8/FVBFoBsEfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750293912; c=relaxed/simple;
	bh=lo7FFAtsYcmKhMjSdjplTh2YWYm6OTd6ZWaStx5nJqM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TxlzsregrTUH59vdjx+60Zu2gjGs/ok4OEOq+VK3hxuokjHgDDIXFhEJAqpDhZo4Ogmf2T+suQfNmIZo6mRPliG7UhjS76swdMPkAIRCYY6Jrr+yndDiIPZLiopmz0jjDg3zuPLKXyd8zgxlbJaMfAoK72DYkujrtUXEHjwu3SQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M5vaZohF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8155AC4CEE7;
	Thu, 19 Jun 2025 00:45:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750293911;
	bh=lo7FFAtsYcmKhMjSdjplTh2YWYm6OTd6ZWaStx5nJqM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=M5vaZohFoTZLR+nPmHwhsxtOCjHb1wocFEUSkzs63nR8NJnqfyZzEJRSQLP0VFHcu
	 1KL+2zEcvOjWWGIkZX41TrDwCCfYu1AVDdMYVNzRAuVVkeTmmVjASPa30r8PE7vkR2
	 k++wPkcj0qQ8bNvnyFz26dgFu38FEBpA/Wwx9AVaTlhJagJ5wLiR71owd7e5+0xn09
	 iKNub1GJ7X32E9fYCqFQs0dc6AZdVBYr1X3WJAMDR3rws16vbiLrcdIZogbUMtcPI5
	 Q59oQN0WC1DVA00b8ONF0rAwGq7gIhMR9ofjLY+6TIUDop+dfOvRM+tcfz5zSmunAQ
	 mZSAaS+2/RJLA==
Date: Thu, 19 Jun 2025 02:45:03 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Jelle van der Waa <jvanderwaa@redhat.com>
Cc: Jelle van der Waa <jvanderw@redhat.com>, linux-man@vger.kernel.org, 
	Christian Brauner <brauner@kernel.org>
Subject: Re: [PATCH] man/man5/core.5: document the new %F identifier in
 core_pattern
Message-ID: <psbi24omqbb7rcckmb7jevfh2q4fgqif4aorqi2nndbqq4jmkh@5ihlmlai7lgc>
References: <20250616133212.131064-1-jvanderwaa@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6zygcn5cz4wrd2hp"
Content-Disposition: inline
In-Reply-To: <20250616133212.131064-1-jvanderwaa@redhat.com>


--6zygcn5cz4wrd2hp
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jelle van der Waa <jvanderwaa@redhat.com>
Cc: Jelle van der Waa <jvanderw@redhat.com>, linux-man@vger.kernel.org, 
	Christian Brauner <brauner@kernel.org>
Subject: Re: [PATCH] man/man5/core.5: document the new %F identifier in
 core_pattern
References: <20250616133212.131064-1-jvanderwaa@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20250616133212.131064-1-jvanderwaa@redhat.com>

Hi Jelle,

On Mon, Jun 16, 2025 at 03:32:09PM +0200, Jelle van der Waa wrote:
> From: Jelle van der Waa <jvanderw@redhat.com>
>=20
> Signed-off-by: Jelle van der Waa <jvanderw@redhat.com>

Patch applied.  Thanks!
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D1c8f4389a62fab1811609b22fb16fd7e5831887c>


Have a lovely day!
Alex

> ---
>  man/man5/core.5 | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/man/man5/core.5 b/man/man5/core.5
> index 556502214..b1361eea0 100644
> --- a/man/man5/core.5
> +++ b/man/man5/core.5
> @@ -174,6 +174,11 @@ Pathname of executable,
>  with slashes (\[aq]/\[aq]) replaced by exclamation marks (\[aq]!\[aq])
>  (since Linux 3.0).
>  .TP
> +%F
> +PIDFD of dumped process
> +.\" commit b5325b2a270fcaf7b2a9a0f23d422ca8a5a8bdea
> +(since Linux 6.16).
> +.TP
>  %g
>  Numeric real GID of dumped process.
>  .TP
> --=20
> 2.49.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--6zygcn5cz4wrd2hp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhTXY4ACgkQ64mZXMKQ
wqmaRQ/+OQupnYBCj1sCvTpvo6k5Qpk7r5vItgqfOTFeMWhCWnTm2D1FRZQ4Y1kn
FmHQiVSlZ+piuylzZDzYAlneRYsrvOcvjce75i0miyPJeYJMbtHsTAORznJlGqHM
Phxz//M/SGSgVIudMexEqph5Ft9hkdakqNAegnSvtsCMgadj6GjCpxciut7l8qrH
UO62ilUTQu/O0MOzmuXhZDJhzNCmAN3uRBlzQJ2Dw4t068YNyfYdjVrlKRIcAmsi
mpU5F7uakS0gnZKF9iPmgn+tWzAs62ieXxmc+WFnaOH+2GjVXCyozfuVsRKA8KTb
Zljj008C5H0Zo/8mVR0YsTfYDeLYDMdb3hscwvABg8yAzAcXBerMlESGowLz2Thf
0ipjfeS18RQPy1WM79z4BuvSQQP2eafxv9ETL6LxI8G1mWRsVc/0ltZK9oQS5KCZ
MtATpouoqEH1yhXVStDC2BPMtFRbq4MKEXgEtww6SYrKetV33XshV4uc4h1iT9TE
j3W+JhFGO/EUX90i5QDMkgvpfO9IKUet9W67H7xEUvmagV9P/YABdQeIKtcNKuNy
WA9maEKf6DRqUm956O9x59y421C4KRtc64du1vL/nHaVbosp+trdoBTj5wVnqQQe
CDvM6mFvLcEUtPNQ7DNiDPuuu/Z0PEyG0TUW5GQhmzLsy4gs1WI=
=b0lg
-----END PGP SIGNATURE-----

--6zygcn5cz4wrd2hp--

