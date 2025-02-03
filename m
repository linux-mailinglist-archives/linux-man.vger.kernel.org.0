Return-Path: <linux-man+bounces-2342-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 44CE5A25F56
	for <lists+linux-man@lfdr.de>; Mon,  3 Feb 2025 16:57:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DD8C13A2849
	for <lists+linux-man@lfdr.de>; Mon,  3 Feb 2025 15:57:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4ECE0209F5C;
	Mon,  3 Feb 2025 15:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QMiEpYSF"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C29320A5C0
	for <linux-man@vger.kernel.org>; Mon,  3 Feb 2025 15:57:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738598243; cv=none; b=KOxgXPTEiMXB1p9m5tztvoJ+b05TSjaNe3K1Am49dIn1+nuKrv0BuzSHiRyLfJ/JnSPiv2a7tJNeClPa7LzuL0UlNFuSroOvUEzsBhpWARfIEk/ApHc0/+5tRUGRi4ypwMPiwizvkD/PnMkaARS6Gd60EmykwN6wztwRQChmzng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738598243; c=relaxed/simple;
	bh=Cq6+/SmSz3kCfVI0wSiCw78AnlLWfDCamw0ePsoCkL8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UfMHze6THyoAVjslo1HhGMBoe58BqSRQBg4fcArTGT4KGz4bXRgLfNepH9NwBs2WOW4WIyFR3uBO1WKhesrQ+n9UnT69EkyfmOYQCVJHys/NN/w31eT/6AN+rYAHhVrMQivaMu9okmJ2+idK8dvmhuGnI3mreLbwypjuVK/lTyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QMiEpYSF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A597DC4CED2;
	Mon,  3 Feb 2025 15:57:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738598242;
	bh=Cq6+/SmSz3kCfVI0wSiCw78AnlLWfDCamw0ePsoCkL8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QMiEpYSFtC61FgEDtZ1oeJPLQl48UCmFS3eekDhs5YjagHwmD34e0uqR/gUvAl50i
	 pXfbzF54BXZtMvRlyHxATxh5XCdNfPL8KoUkGgm6ng2mVDbRwOhy2YEV1OfaRdXD8O
	 47lOkkLewgP12BPMfyVYH2omec7dfyzy5F/gwxzosrRHWkJ0Uz/RgjpN64qESE5IWl
	 XouJQS9p8vdwcT+Fk9tJ0Y4awp6COfaTYeRy7Gh3kRVMPtM8rjH40i5UQd5BX4suRs
	 Sn1mlAo5Aoxw/o4NHA17+b7AnlcQNaxo8nKgDsssPONT8RqMHe7TWT0x/iwJqHlfhV
	 n/q7JHUM/7eQQ==
Date: Mon, 3 Feb 2025 16:56:51 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Chen Linxuan <chenlinxuan@uniontech.com>
Cc: linux-man@vger.kernel.org, 
	"Eric W . Biederman" <ebiederm@xmission.com>
Subject: Re: [PATCH v2] man/man2/clone.2: Use munmap() to free child stack
Message-ID: <kqygul7gjkbgwwx7hror3hwqrfirndwp2epklmulalua3w7nnc@tjxq6jlocia2>
References: <A6B3C875B683B1DD+20250203153004.70234-2-chenlinxuan@uniontech.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2tt5mwsoszgj4ia6"
Content-Disposition: inline
In-Reply-To: <A6B3C875B683B1DD+20250203153004.70234-2-chenlinxuan@uniontech.com>


--2tt5mwsoszgj4ia6
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Chen Linxuan <chenlinxuan@uniontech.com>
Cc: linux-man@vger.kernel.org, 
	"Eric W . Biederman" <ebiederm@xmission.com>
Subject: Re: [PATCH v2] man/man2/clone.2: Use munmap() to free child stack
References: <A6B3C875B683B1DD+20250203153004.70234-2-chenlinxuan@uniontech.com>
MIME-Version: 1.0
In-Reply-To: <A6B3C875B683B1DD+20250203153004.70234-2-chenlinxuan@uniontech.com>

Hi Chen,

On Mon, Feb 03, 2025 at 11:30:05PM +0800, Chen Linxuan wrote:
> ---
>  man/man2/clone.2 | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man2/clone.2 b/man/man2/clone.2
> index 3ffe8e7b8..cd63fe0b1 100644
> --- a/man/man2/clone.2
> +++ b/man/man2/clone.2
> @@ -1891,6 +1891,7 @@ main(int argc, char *argv[])
>      char            *stackTop;      /* End of stack buffer */
>      pid_t           pid;
>      struct utsname  uts;
> +    int savedErrno;
>  \&
>      if (argc < 2) {
>          fprintf(stderr, "Usage: %s <child\-hostname>\[rs]n", argv[0]);
> @@ -1910,8 +1911,18 @@ main(int argc, char *argv[])
>         child commences execution in childFunc(). */
>  \&
>      pid =3D clone(childFunc, stackTop, CLONE_NEWUTS | SIGCHLD, argv[1]);
> -    if (pid =3D=3D \-1)
> +\&
> +    /* Free child stack, as it is not used by the parent. */
> +\&
> +    savedErrno =3D errno;
> +    if (munmap(stack, STACK_SIZE)) {
> +        warn("munmap");
> +    }
> +    errno =3D savedErrno;
> +\&
> +    if (pid =3D=3D \-1) {
>          err(EXIT_FAILURE, "clone");
> +    }

This is too complex for an example program.  A goto alternative might be
easier.


Cheers,
Alex

>      printf("clone() returned %jd\[rs]n", (intmax_t) pid);
>  \&
>      /* Parent falls through to here */
> --=20
> 2.43.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--2tt5mwsoszgj4ia6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmeg50MACgkQnowa+77/
2zJgcRAAlDvqWd38HpO45eVgXCuUbcOMXrlDtryt0of7hZUDym/uuX3CYx0JVPLJ
5uoCgEi0tCtQCszb4yJ6NK0i+iciwnM1qhmM5Safu1odlaNEYkx81IHZYNG1Itum
W2AyR/rtONNeJv1APW14M83REAKL0kTbCTdtaAUYj6xumYCIzkBDUiKP7Jv47iXx
SP5UudD7mieyymJC18LGoDzb/TAjUvrkvNoE6OGVkeoxlQkRMmvyNP5wOkGYN1vl
19vbtlptXEGwOtTwMQWnKVjo5DPGv7gaNSd8SNyE4WQGmWMVfw3ctA4piDRT3UbT
ZXfEahT8sgt/sb2RCCfFNFnRexD/GoW5y2jcImZ6rxp0WAg3WzxC1NJx3sxEXER4
Ppu+fO0wyLxaIy4hgWK3sZXJsnjX4zrPc1Ntn5FfUdO8NzK4nnHZxYkfFyCBROJS
izVNl+dClttE4cPdfPntt3ThEKX5OFzUksM91rUkCiHifQHY/Xh/Uy0zfEh0JozJ
GF0NYGPKGSSd6BsarLr5HZB9cFEC5wa0/GN2f1rc8bd36C4okWLLDA9CcVuTG9tA
OF5rsL5grTFptM7NYPh2dYDQzG3tG/XQZW5owpfRsxhdDcNwJcWGRSKDnYre9LLQ
k/a+ARyi6GnCncHZeOrtXOUjHwvM4EqtoPkJCDbV4i+FqdzMI7Y=
=8YXj
-----END PGP SIGNATURE-----

--2tt5mwsoszgj4ia6--

