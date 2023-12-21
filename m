Return-Path: <linux-man+bounces-273-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E1BA381B4AD
	for <lists+linux-man@lfdr.de>; Thu, 21 Dec 2023 12:08:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 99A02285514
	for <lists+linux-man@lfdr.de>; Thu, 21 Dec 2023 11:08:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C20D6AB9F;
	Thu, 21 Dec 2023 11:08:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rJI7YtbF"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5616B6AB88
	for <linux-man@vger.kernel.org>; Thu, 21 Dec 2023 11:08:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 097BEC433C8;
	Thu, 21 Dec 2023 11:08:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703156919;
	bh=00dvmoOxGmqhiHbRHpIKt9q9WiIqJ2BFwq5n3kWpNlw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rJI7YtbFEBr8a4JN6rZuK38LHL9RcQDs8IhUtOYO6XEqx8AtBf9NiQR3MBDpXP953
	 h4F2hVbZRPYM/3e0Cr+8KBrAj/qgeOhHuJHzjR+R01m0MposE75BLtkkyp+I6iKqxR
	 WJ90co5WOY1t78BS94tifWq07qQt+XDL/PWoIDxlk2/Y2Yvd4iqIkOhRO8N5iByKrS
	 vA8w+h84P5hDbBUYQDalj9EbXFO6gXdrdsPqs2ms4kOx86kRstSnMIHEWkl2O7gAVN
	 eHkKRek205mLs6rhPg3K8JNUjiudCwUj3GaLAw9QAMYqt88k7BzKOnZjswvBmTt8Um
	 nH15K+ir3IPYg==
Date: Thu, 21 Dec 2023 12:08:30 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
	linux-man@vger.kernel.org
Subject: Re: [PATCH] sendfile.2: pull in_fd type requirements up to 6.7
Message-ID: <ZYQctE0y1UTy6VvK@debian>
References: <tovce255glwqzbrwuwk3ijzzrww3si4q3jdoh4sdw5zgah7ki7@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cjUPfewy6lj9jaIA"
Content-Disposition: inline
In-Reply-To: <tovce255glwqzbrwuwk3ijzzrww3si4q3jdoh4sdw5zgah7ki7@tarta.nabijaczleweli.xyz>


--cjUPfewy6lj9jaIA
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 21 Dec 2023 12:08:30 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
	linux-man@vger.kernel.org
Subject: Re: [PATCH] sendfile.2: pull in_fd type requirements up to 6.7

Hey =D0=BD=D0=B0=D0=B1,

> Cc: "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>

Please use <alx@kernel.org>; I'm deprecating my gmail account.

On Thu, Dec 21, 2023 at 02:31:35AM +0100, =D0=BD=D0=B0=D0=B1 wrote:
> But this does mean that since 5.12 supports

Did you mean "since 5.12, _it_ supports"?

> (5.12 has ISREG|ISBLK, this actually matches 6.0 semantics):
>   any      -> pipe  via splice
>   seekable -> any
>=20
> Also, there are many seekable files which aren't regular,
> and the offset is updated regardless.
> This is obvious, but the wording is clumsy.
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>
> ---
>  man2/sendfile.2 | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
>=20
> diff --git a/man2/sendfile.2 b/man2/sendfile.2
> index 24de71072..a385949c1 100644
> --- a/man2/sendfile.2
> +++ b/man2/sendfile.2
> @@ -91,12 +91,21 @@ .SH DESCRIPTION
>  .BR mmap (2)-like
>  operations
>  (i.e., it cannot be a socket).
> +Except since Linux 5.12
> +.\" commit b964bf53e540262f2d12672b3cca10842c0172e7
> +and if
> +.I out_fd
> +is a pipe, in which case
> +.BR sendfile ()
> +desugars to a
> +.BR splice (2)
> +and its restrictions apply.
>  .P
>  Before Linux 2.6.33,
>  .I out_fd
>  must refer to a socket.
>  Since Linux 2.6.33 it can be any file.
> -If it is a regular file, then
> +If it's seekable, then
>  .BR sendfile ()
>  changes the file offset appropriately.
>  .SH RETURN VALUE
> --=20
> 2.39.2

LGTM.

Have a lovely day,
Alex

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--cjUPfewy6lj9jaIA
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmWEHK4ACgkQnowa+77/
2zJ8zw/5AYALmH7KwtcguRfWJF0pht31aAVmWMng93PHO+5Ze1t2+Ah1hfZD6Ba6
kMA0UkTqq2hgujg7vOzfOoElmeVBvEHiWScVvuAOSSxXZrXAv53lr2bp3FUKBW8r
W118V9DBYOAv6MZm7LBqn1O547s4MzhUvqFHs9zrZLvkOcwR8q3HqgIcC2C2xPBn
exVUztF5hZdDMiHyqbyCl038c0vSWXfWGyAmQkN/uXKsxiQreGgDFf/Nmy+z1+9b
mCzL8/FJ04cdHVHeja4ZosPKeGeNP84WesimhFgPGN/PbDROzn+kjFTrqxIFLgOy
sqX8zBXXeQV4JlAsMkY1XudbAxLdR5ABbrXKF81kLybwdEb1N9uuvC2bW+7bJp57
3XNAeUAtjCVpI4tlGAkNHjuCNuC9YjW1sQ9xQULatXlpZrQMunI7FbwpWAZdgsvh
W4gRmZq0a2HHTw30uMKDRp0Z4LTwut/CjYpeuhhlA2RqKhXIa+od7A8PJa10p93h
ZU+IAcwBVuzVHqwyGF5UZ+frfR4GKR+zvvmcsT4dkGMFFH40qtJe2LBTlV/4vaGU
VN60osrQnjfPi6QJCIICD8fbeB/OEY/g0nUELQMsv0N4h89oN7rWg8Mn5ckGP0K6
iGCcivgH7TmdXe2GAM8VeznZaHu4wEjGtZm4M8fnPQIEqckOaRI=
=4u3y
-----END PGP SIGNATURE-----

--cjUPfewy6lj9jaIA--

