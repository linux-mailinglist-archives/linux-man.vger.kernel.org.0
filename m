Return-Path: <linux-man+bounces-3487-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A6CBEB2BF56
	for <lists+linux-man@lfdr.de>; Tue, 19 Aug 2025 12:49:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 259095A0378
	for <lists+linux-man@lfdr.de>; Tue, 19 Aug 2025 10:49:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CFBE322DC7;
	Tue, 19 Aug 2025 10:49:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gg0LXPlo"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0438322DC1
	for <linux-man@vger.kernel.org>; Tue, 19 Aug 2025 10:49:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755600565; cv=none; b=PbwSZCjxLYHXc4yB6Gw+P3X/GfRToTcPIo6zUEstEUAH4SyvyHRjYrzXnnIi1B3I5aiHv5eFElvF8WPDZgqP2HmNTGCGQuagwbsDyssgOMcbzIRqosHEk7c1X67+rtR4m3V4gWF/ekVYfP4o3LMkc49+m58qzDXoPUp/pXC/G0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755600565; c=relaxed/simple;
	bh=g8SVprNlC5siiVk6BKqdR3LkxUAyk9rpBMJkJhY5Kxw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ph1Awdejp1L9nScQWrdZztSHlsCtu4cbVsTaKA8eqimHU8bHr0WBaglGOaU9/8Cg2QLQSTrxL4shNz++gnZH4i9ZV/WvpmNGaP+hrrZMIa8BcRRIza9RqkwnsBx1GweboJqZKKbj/sDuAp/m6l3OnABdS4pTkuCLRj8uvFlAOZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gg0LXPlo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 468CBC116B1;
	Tue, 19 Aug 2025 10:49:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755600564;
	bh=g8SVprNlC5siiVk6BKqdR3LkxUAyk9rpBMJkJhY5Kxw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Gg0LXPloq1UQ0/n+6GQnERd+LLlCdq0uRs1uzwiK+OrDumMbflLjUiPf1WXx9H5WM
	 2eZzMHpoB4WYtIsK6S1d8fzb8bTl9VmwjY6XBa0j4ooNQPUM+E4h8OFKeev3XMXMFe
	 ZabQBdaSz/HbCXserpm0TqsqEXAz6646MNO4KMwgro0Z0SZAIhy6yLZgmtEwftV/no
	 cNqZ2CVQazzv4kgNE4hja+tzSghks1+669R+sD3l5rIVJdXv0uUtl/ujAT0AfPETj6
	 FiG5vFk+lxGL9+9n9Xsxjlk1lLvdd6PGU/W/e7LimdYbLAsd7IW2wpDmbH3jCPsrZk
	 lnqrAeUShX/hw==
Date: Tue, 19 Aug 2025 12:49:19 +0200
From: Alejandro Colomar <alx@kernel.org>
To: dave@treblig.org
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man3/posix_spawn.3: Check for executable name in
 example
Message-ID: <i5vll7olkoowngvxzv5iv746o37hhbsbrz2a4tugmfacrjlbxl@udezzdjypuyq>
References: <20250818225910.101238-1-dave@treblig.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="quaxthnnqpf3k3kf"
Content-Disposition: inline
In-Reply-To: <20250818225910.101238-1-dave@treblig.org>


--quaxthnnqpf3k3kf
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: dave@treblig.org
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man3/posix_spawn.3: Check for executable name in
 example
References: <20250818225910.101238-1-dave@treblig.org>
MIME-Version: 1.0
In-Reply-To: <20250818225910.101238-1-dave@treblig.org>

Hi Dave,

On Mon, Aug 18, 2025 at 11:59:10PM +0100, dave@treblig.org wrote:
> From: "Dr. David Alan Gilbert" <dave@treblig.org>
>=20
> Make the example check for an executable name on the command line
> rather than segfaulting in the child.
>=20
> Signed-off-by: Dr. David Alan Gilbert <dave@treblig.org>

Thanks!  I've applied the patch.


Have a lovely day!
Alex

> ---
>  man/man3/posix_spawn.3 | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/man/man3/posix_spawn.3 b/man/man3/posix_spawn.3
> index 3aaf3873e..0d238f51c 100644
> --- a/man/man3/posix_spawn.3
> +++ b/man/man3/posix_spawn.3
> @@ -730,6 +730,11 @@ .SS Program source
>              break;
>          }
>      }
> +\&
> +    if (!argv[optind]) {
> +        fprintf(stderr, "Usage: %s [\-cs] executable [args]\[rs]n", argv=
[0]);
> +        exit(EXIT_FAILURE);
> +    }
>  \&
>      /* Spawn the child. The name of the program to execute and the
>         command\-line arguments are taken from the command\-line arguments
> --=20
> 2.50.1
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--quaxthnnqpf3k3kf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmikVq8ACgkQ64mZXMKQ
wqmYMhAAt7+zGZbHvMpopeP5dvbI66XbBLQgfhb6qr/i9ktGgIXBLvH8w5cwqOba
KB7K1z+kOn+8NgHY6NT82tZe4FgUiAiTc7nG39b9XILQEnVVQmmU86/h1Pw94hr+
pAPRzCLMY1x0LCVx/+PcKFYcQnNPgmF7dU7n4yu4sqlnCoRcG5MqU7Mt8P1KR4b0
YoXkjDBJP5ZZG9AV+2ry8LAOHPL3GOoIpWjv+UumOSIkC4+WLx3IYDHEMe97hpon
4cBsODt2Lnpmm+Oc1P1fyG0+ToHs0208q21tXnvHpZve0DWp/Nrtiq+gWO1irIsp
19eftWnuZBbwuaIH+LIEFj4u0QVONliJCzO1VyuL6OcSe6j8r/xsjM1AFrNZ4n5P
P6RF2whEQ8DRzYFGjhCoZdUdc7CpdQt9x5NIlPmsfu3W6TZ1oGkMjugTPmjOS9NL
a00CM08WslKfecUyvj0ZHt/FWSiZ8qHAO3mMw+aeEJ1cSWrSg37lSeHzzq++cY+W
tnR46xqYT0rdPFqiHlUZlXKgedvg/GGisaEy3/cgoNS5V6XklbxK+8RAgrCK5g6/
iVq7FZ8FTFlKzhuB7LwOtA9SZcd92B8Eu2xE7izOOdTMtWWPeQ2wwImTs/5JXKxL
086vqdCQl6p2HbwtdghSn47t3tdsL5SY+leCI+H1u7ZylMpISOs=
=1iVH
-----END PGP SIGNATURE-----

--quaxthnnqpf3k3kf--

