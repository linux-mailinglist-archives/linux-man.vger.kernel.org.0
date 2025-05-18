Return-Path: <linux-man+bounces-2963-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 10A0AABAE9A
	for <lists+linux-man@lfdr.de>; Sun, 18 May 2025 10:02:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 16ABB189A0A1
	for <lists+linux-man@lfdr.de>; Sun, 18 May 2025 08:02:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52C741AF0C1;
	Sun, 18 May 2025 08:02:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eQqGtu0z"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FCB533C9
	for <linux-man@vger.kernel.org>; Sun, 18 May 2025 08:02:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747555338; cv=none; b=PnTHN9w5VRW+UW1IpcQQMfm616sIDqFr7MrWXDtUOmLPzPAD/wR1O3a8+9aA7+SGrGZCvLrOGVB225xBKx4SuEQc0wDj2scl8t9w+1Vm4S1PmtNBEgEMnT8K2XnkT6Ff685NiR08nOSfeHTnC3GiuSBKjpDfAAx8uIdUZ2r0nvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747555338; c=relaxed/simple;
	bh=ZVkrUhhBVrU02UD3cSNg7gjWNhlYsTyhkD6Hjjf7UUY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RPujwSo4bUy0TpEwm5uj77awOzSEQ3EIKx9F7uzJqwylCbYbpa4ABUm4K17dc7p7fJLE70NMGRnhxYu0m59Hceaihn8sDv3jTHhXP4UEeieLEPEvx+FLwRltliAzea5bFNKwrACLpndE+4Y5uF9wMxXOERVWYA3p58+fZ23RmdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eQqGtu0z; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 355CCC4CEE7;
	Sun, 18 May 2025 08:02:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747555334;
	bh=ZVkrUhhBVrU02UD3cSNg7gjWNhlYsTyhkD6Hjjf7UUY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eQqGtu0z3C8gwP6wRePTvSYhSOdCSvA3HnpPcR2222qRKQpr7H82krBUGDEnmIcdf
	 MuiMlfLmJT0DiBQLy2ngRyr+FZFJ30D8mLYdKtRXPFxxpUbH1SAFwnrUWF/O5HU6d8
	 LnFvb2LJ47d7xfHJmPAgJlJe/7o1kdDVEyDT4wyYke8KasHoBUQQiM+lnHhYMfqU81
	 Bcu8EXQV953NnafHlUdt2fEle6P8/QrTzwfxPkZDcBs+1ZqVd514OuEtYbo17D/u80
	 YIKLY5voCYaI/Jc3tzPM48h3FtaSvuV7/1c3egADqxB3jI1zbKf3UXjb1q0GaeACZW
	 badt/26V6QENw==
Date: Sun, 18 May 2025 10:02:10 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 2/2] man/man3/getenv.3: Mention secure_getenv was
 standardized in POSIX-1.2024
Message-ID: <akijbw3zzqdv3n2coqn5olxey3gzb54hbt7idn66qigvzvux3e@jlv5kwc32pzt>
References: <bae6bc16f9ab6bd3e5c30dc8e11bd83566b06a6f.1747519811.git.collin.funk1@gmail.com>
 <2d55b75480ae862a622ac46e7e6c7628f6efc45d.1747519811.git.collin.funk1@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="eq3aeklykvx562qu"
Content-Disposition: inline
In-Reply-To: <2d55b75480ae862a622ac46e7e6c7628f6efc45d.1747519811.git.collin.funk1@gmail.com>


--eq3aeklykvx562qu
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 2/2] man/man3/getenv.3: Mention secure_getenv was
 standardized in POSIX-1.2024
References: <bae6bc16f9ab6bd3e5c30dc8e11bd83566b06a6f.1747519811.git.collin.funk1@gmail.com>
 <2d55b75480ae862a622ac46e7e6c7628f6efc45d.1747519811.git.collin.funk1@gmail.com>
MIME-Version: 1.0
In-Reply-To: <2d55b75480ae862a622ac46e7e6c7628f6efc45d.1747519811.git.collin.funk1@gmail.com>

Hi Collin,

On Sat, May 17, 2025 at 03:10:41PM -0700, Collin Funk wrote:
> Signed-off-by: Collin Funk <collin.funk1@gmail.com>

Thanks!  I've applied the patch.


Cheers,
Alex

> ---
>  man/man3/getenv.3 | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/man/man3/getenv.3 b/man/man3/getenv.3
> index f05e3eda5..7da86cc30 100644
> --- a/man/man3/getenv.3
> +++ b/man/man3/getenv.3
> @@ -36,7 +36,7 @@ .SH DESCRIPTION
>  .I value
>  string.
>  .P
> -The GNU-specific
> +The
>  .BR secure_getenv ()
>  function is just like
>  .BR getenv ()
> @@ -88,14 +88,14 @@ .SH STANDARDS
>  C11, POSIX.1-2008.
>  .TP
>  .BR secure_getenv ()
> -GNU.
> +POSIX.1-2024.
>  .SH HISTORY
>  .TP
>  .BR getenv ()
>  POSIX.1-2001, C89, C99, SVr4, 4.3BSD.
>  .TP
>  .BR secure_getenv ()
> -glibc 2.17.
> +POSIX.1-2024, glibc 2.17.
>  .SH NOTES
>  The strings in the environment list are of the form
>  .IR name=3Dvalue .
> --=20
> 2.49.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--eq3aeklykvx562qu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgplAEACgkQ64mZXMKQ
wqkYAA/+L6soqXaTKAQ0zmMMwCNa5ep3XBF6XijWk20ZGeLWJnC1EsnJW3ZVvvDa
lfoHvK4LWGYO1O06fOQg0Yn27qQQgTibx93q8kis/HR/3n33lonv2uEptlzb5hv4
DpzA4P/14EoNWwzSOIw4MPeL2VizsNiYL73r4A2qqO0dTHVKWV1Jj0/vrY7NfOLn
A2WrCtE2wnWYekss7VYcD6gfIWdjsmpB+eSeSVggO8+hP8N1js/aCE16BLjlCX94
YiKssKasig3FqfxpYDXJWgkwrLPEsI+fy7B8vpm2iX6L6tsAPytMxQlnad0aUw7/
zrhupJBbSo/iKYuNLD5ZcnBWxeEmZO3RQQUErojsZNVIC4lqfDoTIXVmaQGLqAob
vCUce30AUrRsyL6Gkm6WVSE4beH08ppCBxayiWKq/q9KQqqV/SARfZNSPer/t4xB
1gPSxzvvhyhE6fSS6fWcVCjWahia0LkAnCSFBC3CTeO870nkIHFIemhagYlEqbo2
hgH1chKWLWyRVg1xkkPKcXnyxzg5/1Nu8bN0VsG+KcekBpqhbiOfaaUpxPDzLxe2
K7lOlPLlNmasj/jL7NW465H80bKBaOcisInkcXfyLrDKNmD+MtM0wObFf1v4U1tG
ejnqQZJdy31WKHjHzXcRFwMlQ+EK68U6uK9qYt123SqUJk51Y5c=
=4Tsc
-----END PGP SIGNATURE-----

--eq3aeklykvx562qu--

