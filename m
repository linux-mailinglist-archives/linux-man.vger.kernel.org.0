Return-Path: <linux-man+bounces-1507-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E90E09394DE
	for <lists+linux-man@lfdr.de>; Mon, 22 Jul 2024 22:41:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AA7AA28217D
	for <lists+linux-man@lfdr.de>; Mon, 22 Jul 2024 20:41:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8145381AD;
	Mon, 22 Jul 2024 20:41:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="knGOPMp0"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78C5D3770C
	for <linux-man@vger.kernel.org>; Mon, 22 Jul 2024 20:41:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721680901; cv=none; b=EYYa+j3AglB1mgYFgC5ECVSt20EkHXdBKMLr8BZ9/9Db77crl9pLnpCz1HYbhKtsB1tAvSjMEXakK59PK4s++VLcGOe8A1zMgA1kkGP6X7Z6W5Ni5FUtC7WkRFw4xMzkE2xKb4MVePtfyQZ41lyL6dole2/kqrEbx8JTsiE5Qkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721680901; c=relaxed/simple;
	bh=6Kgz7BdPJVUMnbBGGn2vQo+Dkoy/b/DHw5HqHe9jLuM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jFYGzqyWFSAKTBhRVYltVM1VKOFwWynKjRB5VlehPBg+levdnpMjRuW5DVcZsK8wOSUVsvXCrRE6OFv9bPha5Rlik/CbPYjMKjfCgC1t7nZoj6LyoceINp6+8kxSiqMLKlfcZ2D4Bchtc6vx1vwPLkHTbchVkX8eCKMGQoB36H8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=knGOPMp0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7D85DC116B1;
	Mon, 22 Jul 2024 20:41:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721680901;
	bh=6Kgz7BdPJVUMnbBGGn2vQo+Dkoy/b/DHw5HqHe9jLuM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=knGOPMp0CEaohQZ9YLkBTQqeL4Q5qlxZa6046TRnLefmMmV4xM7T0vuow91NdTKeo
	 jWEH4/K4QvFpwItf38uJ6t07ZHJI/s6PJU2YextzmSxe90gB1oI4onuNTNKXfqPKcJ
	 jRGYeP0Cua44c/DrOnew84zYdGuVZ1kuiuoxMDHfKMvjhl9+HLDMrfQspNrzniLfaY
	 zcc5XtqKzHRvTk8rqM3G/M/yCFnrx/nU75rWV+R94eSJ6yp2SeQAZQWWshJn+5z3/6
	 mMdO1xBBlb7LFMw4EYOBYIlfgDWd1TMLfPRPxH36b308BLgghQdJbm3y/bjeSmKf1Q
	 6AOxfChsxg5Fw==
Date: Mon, 22 Jul 2024 22:41:38 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Keith Thompson <Keith.S.Thompson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Ambiguity in memccpy() description, with patch
Message-ID: <su4wxayisuczroojtymkrd5utzgqyqjxgfumrgnnd7ycal6yfz@52anqkvo2ngs>
References: <CAAHpriMy1NTcTTas9saESMZbsrzdUhrxTEKG=R-HXX4Vo2Dq7w@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nnxix7pndoir77wt"
Content-Disposition: inline
In-Reply-To: <CAAHpriMy1NTcTTas9saESMZbsrzdUhrxTEKG=R-HXX4Vo2Dq7w@mail.gmail.com>


--nnxix7pndoir77wt
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Keith Thompson <Keith.S.Thompson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Ambiguity in memccpy() description, with patch
References: <CAAHpriMy1NTcTTas9saESMZbsrzdUhrxTEKG=R-HXX4Vo2Dq7w@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAAHpriMy1NTcTTas9saESMZbsrzdUhrxTEKG=R-HXX4Vo2Dq7w@mail.gmail.com>

Hi Keith,

On Mon, Jul 15, 2024 at 02:14:23PM GMT, Keith Thompson wrote:
> The current description in the memccpy.3 man page:
>=20
>        The memccpy() function copies no more than n bytes from memory
> area src to memory area dest, stopping when the character c is found.
>=20
>        If the memory areas overlap, the results are undefined.
>=20
> doesn't clearly say whether the final character c is copied or not. (It i=
s.)
>=20
> This patch copies the description from POSIX
> https://pubs.opengroup.org/onlinepubs/9699919799/functions/memccpy.html
> with the parameter names and added paragraph break retained from the
> current version. The updated description is:
>=20
>        The memccpy() function copies bytes from memory area src into
> dest, stopping after the first occurrence of byte c (converted to an
> unsigned char) is copied, or after n bytes are copied, whichever comes
> first.
>=20
>        If copying takes place between objects that overlap, the
> behavior is undefined.
>=20
> I have not (yet) checked whether there are similar ambiguities in
> other man pages.
>=20
> Patch follows:

I suggest some smaller change; see below.

>=20
> diff --git man/man3/memccpy.3 man/man3/memccpy.3
> index 0ba805176..057890f7e 100644
> --- man/man3/memccpy.3
> +++ man/man3/memccpy.3
> @@ -23,20 +23,22 @@ Standard C library
>  .fi
>  .SH DESCRIPTION
>  The
> -.BR memccpy ()
> -function copies no more than
> -.I n
> -bytes from
> -memory area
> +.BR memccpy()
> +function copies bytes from memory area
>  .I src
> -to memory area
> +into
>  .IR dest ,
> -stopping when the
> -character
> +stopping after the first occurrence of byte
>  .I c
> -is found.

How about the following diff instead?:

diff --git i/man/man3/memccpy.3 w/man/man3/memccpy.3
index 0ba805176..e4701809a 100644
--- i/man/man3/memccpy.3
+++ w/man/man3/memccpy.3
@@ -34,7 +34,9 @@ .SH DESCRIPTION
 stopping when the
 character
 .I c
-is found.
+is found
+.RI ( c
+is copied).
 .P
 If the memory areas overlap, the results are undefined.
 .SH RETURN VALUE

That should be explicit enough, and keeps the changes minimal.

> +(converted to an
> +.BR "unsigned char" )
> +is copied, or after
> +.I n
> +bytes are copied, whichever
> +comes first.
>  .P
> -If the memory areas overlap, the results are undefined.
> +If copying takes place between objects that overlap,
> +the behavior is undefined.

I'd keep this out of this patch, since it's unrelated to c being copied
or not.

>  .SH RETURN VALUE
>  The
>  .BR memccpy ()

Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--nnxix7pndoir77wt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaexAIACgkQnowa+77/
2zLyRg/+NP423S2zmHvtpYVQw1+JsAM1Ssfxdb80oL6ElGx1fcXKfwBLhTrnVP9f
IpqNUpKz1G9hQY7IceMBl933iBoJMKp8G8cZ6QRPs72o0WPjbujnknIdZODGWa71
KGl+l1zpYjm/tgiaSoCvkxb2IssMhLbIYHwR/slYXLi6y8RM3zdBVCwqLED7QjvH
JXHHMALSU1CbK77LkxixUfeQPj9+TGC0iiQ0uAiYUPcUAT9Zt738Il6cMEXCk0c5
HCYy85s/iYPD1fwh74J/naE2jDaZZfTsCYg0Ty4Z7E7Y0h1OsGOD2+d0f+0XAW3+
300ZI++eiFCHh88ruIbQOnrK99E23ym6Iw/yIgP0BjVZ92gebr1JzEfqzfzqmNPW
AWJvm6Usa0AJUwcgc0OZ9OkH8NZlUzolPHm0Z0wVCUEuxS4ghQijkSPH3RmxrN7C
evVEiPPtSgSO3NOt6luIWJjWATu94gPkFQYp4jaWLwBijzIKfxPvcZc3y27M4WJr
M7qP06RoIxqtV8fHV5YBrkb8UYbLbmeVLCnuchpR9Tq40EjTepyq8R0Grxh4FUGD
SiArWXkBe1QLjtpM6qbhMKZJuGhtCoKVJmgQyf6IbU93fdb/jYvjBt4KavrB51IU
WwwS8Xq5f6JPjxBC53a43++604zSZbev8ofyylUHaxM5U35Rgv8=
=7+an
-----END PGP SIGNATURE-----

--nnxix7pndoir77wt--

