Return-Path: <linux-man+bounces-309-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B72881FA90
	for <lists+linux-man@lfdr.de>; Thu, 28 Dec 2023 20:06:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 04EA91F21D9E
	for <lists+linux-man@lfdr.de>; Thu, 28 Dec 2023 19:06:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3564F9E9;
	Thu, 28 Dec 2023 19:06:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OkyGnvHa"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3C89101C1
	for <linux-man@vger.kernel.org>; Thu, 28 Dec 2023 19:06:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 94FEFC433C8;
	Thu, 28 Dec 2023 19:06:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703790378;
	bh=SVeGm/37FOcX8GCzaGsmxNOgcqLSssc75bGjEps6Vj4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OkyGnvHaVpMGTaW+aw0HoYPCMTKkw6EJLEeSJzbOLpKYH4Kr6UUySIk31MP2qXA1P
	 UW3XeQqZkIZBZZ/2g1m2wBMx3xuoa+XHQ9qTiXcMadBxtD8dI+/NL+WAyB9eKD/jPx
	 kQBTPR3FoqcCPiRQAFDUwF+BUjk6J3IGBBgKX+sueg+C++pR2JHlEwUfcVoA71c1Xy
	 dxnx9JXs6xzb6vXP27HzJMUgAfF47WcXJ/41h4QIKtNmzkHECqtJIG6bVcOF4Kf0Dh
	 +MK/HD/q5UGfYzuRdQnU1jPjZtDMG3vcts7pov8VZTTd12wMIdqekpul/dtEuAv7eO
	 dETBXRxIGzasA==
Date: Thu, 28 Dec 2023 20:06:14 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v3] stdio.3: note down fmemopen(3), fopencookie(3), and
 open_[w]memstream(3)
Message-ID: <ZY3HJ6w-rfG4MpgJ@debian>
References: <owwpm3vgvq3sme3ev4poriwqcokscunppxu4rj2t5lmxzrc7vn@tarta.nabijaczleweli.xyz>
 <nn6xod4zdcimrh2pbhng4n7ff4x6g3pfjyb6u24swkno7thzx4@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="XjDVMtClwDszxBje"
Content-Disposition: inline
In-Reply-To: <nn6xod4zdcimrh2pbhng4n7ff4x6g3pfjyb6u24swkno7thzx4@tarta.nabijaczleweli.xyz>


--XjDVMtClwDszxBje
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Thu, 28 Dec 2023 20:06:14 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v3] stdio.3: note down fmemopen(3), fopencookie(3), and
 open_[w]memstream(3)

Hey,

On Tue, Dec 26, 2023 at 05:03:37PM +0100, =D0=BD=D0=B0=D0=B1 wrote:
> I was looking for fmemopen to remember I was actually looking for
> open_memstream, and it was much more difficult than it ought to've been.
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>
> ---
> Sorry for the v3 for some reason I didn't amend the commit
> (blame it on the holiday cheer).
>=20
>  man3/stdio.3 | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>=20
> diff --git a/man3/stdio.3 b/man3/stdio.3
> index 833230402..0809b4536 100644
> --- a/man3/stdio.3
> +++ b/man3/stdio.3
> @@ -192,9 +192,15 @@ .SS List of functions
>  \fBfileno\fP(3)	T{
>  return the integer descriptor of the argument stream
>  T}
> +\fBfmemopen\fP(3)	T{
> +open memory as stream
> +T}
>  \fBfopen\fP(3)	T{
>  stream open functions
>  T}
> +\fBfopencookie\fP(3)	T{
> +opening a custom stream

Why use opening here, but open everywhere else?

Have a lovely Christmas!
Alex

> +T}
>  \fBfprintf\fP(3)	T{
>  formatted output conversion
>  T}
> @@ -243,6 +249,12 @@ .SS List of functions
>  \fBmktemp\fP(3)	T{
>  make temporary filename (unique)
>  T}
> +\fBopen_memstream\fP(3)	T{
> +open a dynamic memory buffer stream
> +T}
> +\fBopen_wmemstream\fP(3)	T{
> +open a dynamic memory buffer stream
> +T}
>  \fBperror\fP(3)	T{
>  system error messages
>  T}
> --=20
> 2.39.2



--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--XjDVMtClwDszxBje
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmWNxycACgkQnowa+77/
2zKGyA//XLArAejPfENVM1JParbExjC3sVTvKEvFEQ5Z1fCw5Luto4h66MC4JcCD
PSHP0560Fpa5YTJOeMKZu5ABDbzgZF4QqPTZRRxcR/7kJn5p8V6MxEY/Uvp9XNFv
P0aTz03qaDFj8Pv2nffWro59ha4GRAvwL6CDw1ShFL9zeGzwkTIPjM5HG/qC7s7v
cB94m892cIMyfODKHeQF2NmWVUHGfGxEF8iru/eviBt2gFvxeOJs9J7fQdUQJ2qA
WUAlm5p45saL+0wnX1NScILdY3gK4zrDrNb8Y7COmCrwIB52Hqiht6eTf8Jz854d
W6lkgjsG+jA1Hy7FTKw6ytnr6AFZL9jHn1LmnvGEc7UvU1a1OsNcwV4owKxXKIDJ
fpIgkxx7Nv+wi+9NcsWYxg8qgU97/xWZXzlKiYxlDr/wMbYR5ELUSy305c8ZHc46
uWwNh6xxoTDTeZah2ziSZXFF+NT+U9SXdD7zAaqk2NKHa+7hlYh9TFkZs67BOuBG
8cFWn0tnch2BNCXe5y5wVm29StZfUCHuCKLeqsmFX7C5ew4C9hvBnZ5Vn9XAXet1
Mxmdthr30bRgb/FDSPBdOf4KkeLr/Gn2It9tEa7DJs7NWGFqb+LkSDo+yjMm8urp
LfdHzkOwxtZz9T9m6H7LqRk+aKnkmfTC34959fqFMJSML1A3Lag=
=Fkn7
-----END PGP SIGNATURE-----

--XjDVMtClwDszxBje--

