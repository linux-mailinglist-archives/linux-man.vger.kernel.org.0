Return-Path: <linux-man+bounces-69-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 25B057EA6F2
	for <lists+linux-man@lfdr.de>; Tue, 14 Nov 2023 00:25:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4C2DF1C209A3
	for <lists+linux-man@lfdr.de>; Mon, 13 Nov 2023 23:25:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 548B23B282;
	Mon, 13 Nov 2023 23:25:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oTu+BV7b"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142C53D975
	for <linux-man@vger.kernel.org>; Mon, 13 Nov 2023 23:25:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EBE46C433C7;
	Mon, 13 Nov 2023 23:25:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699917908;
	bh=8A3GUTMojryVlAE55RKqTg2n9MQZvdGhJ9OS6P0+tK8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oTu+BV7b+En2zuJE/Bhi9zj7q/nx6Y3mZ4Qy47EUlmHi3n1LLB/ywsqyVd9C4qyhw
	 4Wg5jWOZim6nxDgtJEp3rj/OFTZ7NkPcWv33CCdKcNbWltA2APRgjzr4+0s8BclLah
	 XYmSUDokRSlu3yS6sVmCekzJXpjFt2FMsES0Fsuo9YKa2pIYIKaN+ZgV22axow2wJ2
	 61PW1Qc3XbVVyWI19wFJxKSNmJctS+H6n5aQ0v7wNQeI442QZudR6fMNxuXXX4OgGq
	 Diiu/5uhs6XLLeUF2JaRVrvYW1yEzI6SjH2/2y+SdFHTnoFtJQR+uCLWuZi5QIJ6b6
	 bpF1KZWOCZrvQ==
Date: Tue, 14 Nov 2023 00:25:05 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 2/4] string.3 fixes
Message-ID: <ZVKwUU1li8zOSqE8@debian>
References: <20231112235218.80195-1-eggert@cs.ucla.edu>
 <20231112235218.80195-3-eggert@cs.ucla.edu>
 <ZVFzcACjZYkjDOAZ@debian>
 <9292717d-1a77-40af-bef8-49a05e93c9b9@cs.ucla.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nl+2QaaHJtzzAcg0"
Content-Disposition: inline
In-Reply-To: <9292717d-1a77-40af-bef8-49a05e93c9b9@cs.ucla.edu>


--nl+2QaaHJtzzAcg0
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Nov 2023 00:25:05 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 2/4] string.3 fixes

Hi Paul,

On Mon, Nov 13, 2023 at 02:27:51PM -0800, Paul Eggert wrote:
> On 11/12/23 16:53, Alejandro Colomar wrote:
> > I'm not convinced by the array wording, as it could be understood as
> > doing this:
> >=20
> > 	char d[3], s[3] =3D {'a', '\0', 'b'};
> >=20
> > 	strncpy(d, s, 3);  // "a\0b"?  Or maybe "ab\0"?
> >=20
> > Did it copy the non-null byte 'b'?
>=20
> OK, let's fix that confusion by saying it copies "leading non-null bytes",
> not merely "non-null bytes". Please see attached.

LGTM.  Patch applied.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D0726f57d8362553b697fa19c405f7fc77f2e42dd>

Cheers,
Alex

> From ac104738b8b13159271c40a86341f871fa260e33 Mon Sep 17 00:00:00 2001
> From: Paul Eggert <eggert@cs.ucla.edu>
> Date: Mon, 13 Nov 2023 14:26:42 -0800
> Subject: [PATCH] string.3 fixes
> MIME-Version: 1.0
> Content-Type: text/plain; charset=3DUTF-8
> Content-Transfer-Encoding: 8bit
>=20
> Say "size" not "width" for byte counts; "width" is for the number
> of bits in a word.  Say "leading" to make it clear we don=E2=80=99t care
> about what the source contains, after its first null byte.
> ---
>  man3/string.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man3/string.3 b/man3/string.3
> index 4c374a7df..08b050b17 100644
> --- a/man3/string.3
> +++ b/man3/string.3
> @@ -185,7 +185,7 @@ bytes to
>  const char " src "[restrict ." n ],
>  .BI "       size_t " n );
>  .fi
> -Fill a fixed-width buffer with non-null bytes from a source string,
> +Fill a fixed-size buffer with leading non-null bytes from a source array,
>  padding with null bytes as needed.
>  .SH DESCRIPTION
>  The string functions perform operations on null-terminated
> --=20
> 2.41.0
>=20


--=20
<https://www.alejandro-colomar.es/>

--nl+2QaaHJtzzAcg0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVSsFEACgkQnowa+77/
2zIBag/8CJ2dF900aMl6JY/NiX7tVbVTjUvUOXA1D0NI4BhAAo5Caw318sv4t7Rz
RhpxUERo5jUxRDPIRF+BR1uXl/UI3JFpqIBN0GpDk7RDhTiL7tli0+pfChOzBCXZ
HNfBti7BZwWniH9NE3yW8CsKzYfWGzij0obUy6cY21w+l0MfrJl+Bv7l+guRQOzn
rcbaMCs7GhY/1nwaBr7mDT6l7QI+WB8Eea3sCJ/mb4RljewLv+iuCOe52T/d9FG+
q80JOuiQPLK8psXw2h81Z7xw3TpGfSwreVsYGVXWopWOw9rb/w09jNr3q22C01iL
3MvYZA3Ey2mIAvVl5eaqQsqqfmFBYAc7IFMdvnKEScNK8NZqU64KA0Eib+RjakTA
+vF9QPdUFUxjHDR/LhPophAY0kv+qcCjzOI/O74C6QVu4gEVYpEqCLuaVFYXb77s
mFGJr6vi7hPuKYEn14KOtYv1FHqtyRGhyQBED/Bo4+SC0burTJ0hFfKA+TOSpZ9R
Q96oP+KRvNxBn2wQoaijJHqI5ZfdDKKTRaz1euYDOBPaj4ur9ZSY5rafY79tOS5x
TdaYmJZ/e0TUaRBgVl23Fbm41GQW0xA5MNro+E5SvY0l7cNgxhYL1TiddSirfpSV
/+ueTqaAILLF0riikLBgMnBRf1AWf8/M9Hs2z376YoXpxDu41ww=
=4GhU
-----END PGP SIGNATURE-----

--nl+2QaaHJtzzAcg0--

