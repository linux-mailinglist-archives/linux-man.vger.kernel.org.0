Return-Path: <linux-man+bounces-2053-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B7149D38A0
	for <lists+linux-man@lfdr.de>; Wed, 20 Nov 2024 11:47:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4C32328365F
	for <lists+linux-man@lfdr.de>; Wed, 20 Nov 2024 10:47:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4697415853B;
	Wed, 20 Nov 2024 10:47:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f5OgcNWY"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 041FE14AD24
	for <linux-man@vger.kernel.org>; Wed, 20 Nov 2024 10:47:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732099641; cv=none; b=u5WK64oBAwWuXm0GCS1IpweDkFbv8pyYtFUwB5szjmORvO9SwTdWjKjRMmH77zo9RYVje6dK3aqLVopRhdEYvxWwJcq8yGAfXh5tw+fuRtUNaDXgRyjA3QMBxT58ycSGyfCzrQ2g+ZmtmP5Jff/1DTl1tvk/6H7V1D0TtylJ/6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732099641; c=relaxed/simple;
	bh=ye2l2ZD2FTnfkwyRuuQlvJzRLqr1o/rvvcVQ6pVlszQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OwU4bQGSCgGAOCIW/8sOVuYAR3zrI4RJUtB9Ko0RgCm9XD4HrgTAoaQxOYSrjiNqVSClXaydDMhAF76PzlWhH8lEUau1H6WU6dt+iKKUEJb57KFFCuNxv0vVInNZ7pokI2EMNbABIylp/BRX5kYuCEbC3FSyCSvtLDaW0VfWbQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f5OgcNWY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 22122C4CECD;
	Wed, 20 Nov 2024 10:47:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732099638;
	bh=ye2l2ZD2FTnfkwyRuuQlvJzRLqr1o/rvvcVQ6pVlszQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=f5OgcNWYioipOy8XuMv6I0wsXTR+oBWkl5YUBrDxO1OCW+4txQNxbslNsZtx9DmCI
	 v27jZ4xoPXOfU2dy6MaeaY4qCIiyTlfhbRaPQxZDU8hO4cTlYt4+pTN5ti6NYbnvns
	 4OPQTv1f9hEqsKkBNvYutJ3ISjDQeKydTXA3Mrt+g0tzTdoyiyu2zA8jl8jfNcdL6f
	 uaLDe0xgFbRq0fdAYctHlvTOqMG/Q6gYrFCFG9Jnel+Qzu4vwbmysWhjonNRvbeQup
	 rEULT86DtHUQGURUf3wiVALfh41bN06/SVzoaQX8Rb5zVcArB3w5h5/brI0pVtOoVy
	 Dcmuyi4USFzPw==
Date: Wed, 20 Nov 2024 11:47:14 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Yuanchu Xie <yuanchu@google.com>
Cc: Alejandro Colomar <alx.manpages@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Yu Zhao <yuzhao@google.com>, linux-man@vger.kernel.org,
	"T.J. Alumbaugh" <talumbau@google.com>
Subject: Re: [PATCH v6] posix_fadvise.2: POSIX_FADV_NOREUSE now supported.
Message-ID: <20241120104714.kobevbrggqo7urun@devuan>
References: <20241120045214.1294799-1-yuanchu@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="a5ausdpkohrofegk"
Content-Disposition: inline
In-Reply-To: <20241120045214.1294799-1-yuanchu@google.com>


--a5ausdpkohrofegk
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v6] posix_fadvise.2: POSIX_FADV_NOREUSE now supported.
MIME-Version: 1.0

Hi Yuanchu,

On Tue, Nov 19, 2024 at 08:52:14PM -0800, Yuanchu Xie wrote:
> POSIX_FADV_NOREUSE is now supported in Linux.
> Update text regarding former no op behavior.  Indicate the readahead poli=
cy
> and treatment of file pages read with this flag.
>=20
> Link: <https://lore.kernel.org/linux-mm/20221230215252.2628425-2-yuzhao@g=
oogle.com/>
> Signed-off-by: T.J. Alumbaugh <talumbau@google.com>
> Signed-off-by: Yuanchu Xie <yuanchu@google.com>

Thanks!  I've applied the patch.  I've also added Yu's Acked-by.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Da0c510a1bcc61fe24b38b1c54a2e28a5ad65c048>

Have a lovely day!
Alex

> ---
> Changelog
> v5 -> v6
> - Fixed wordiness
> - Clarified LRU to mean the kernel page replacement algorithm
>=20
> v4 -> v5
> - Remove unnecessary changes
> - Use two space inter-sentence spacing
> - Fix lines exceeding 80-column
>=20
> v3 -> v4
> - Use semantic newlines
> - Format with macros like .B instead of inline \f
>=20
> v3: https://lore.kernel.org/linux-man/20230320222057.1976956-1-talumbau@g=
oogle.com/
> v4: https://lore.kernel.org/linux-man/20241113031654.3964740-1-yuanchu@go=
ogle.com/
> v5: https://lore.kernel.org/linux-man/20241114012233.4152152-1-yuanchu@go=
ogle.com/
>=20
>  man/man2/posix_fadvise.2 | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man2/posix_fadvise.2 b/man/man2/posix_fadvise.2
> index ed40b0c0d..894a0762c 100644
> --- a/man/man2/posix_fadvise.2
> +++ b/man/man2/posix_fadvise.2
> @@ -64,7 +64,13 @@ The specified data will be accessed only once.
>  .IP
>  Before Linux 2.6.18, \fBPOSIX_FADV_NOREUSE\fP had the
>  same semantics as \fBPOSIX_FADV_WILLNEED\fP.
> -This was probably a bug; since Linux 2.6.18, this flag is a no-op.
> +This was probably a bug;
> +from Linux 2.6.18 until Linux 6.2 this flag was a no-op.
> +Since Linux 6.3,
> +.B POSIX_FADV_NOREUSE
> +signals that the kernel page replacement algorithm
> +can ignore access to mapped page cache marked by this flag.
> +This is useful, for example, while streaming large files.
>  .TP
>  .B POSIX_FADV_WILLNEED
>  The specified data will be accessed in the near future.
> @@ -130,6 +136,8 @@ in this case.)
>  Under Linux, \fBPOSIX_FADV_NORMAL\fP sets the readahead window to the
>  default size for the backing device; \fBPOSIX_FADV_SEQUENTIAL\fP doubles
>  this size, and \fBPOSIX_FADV_RANDOM\fP disables file readahead entirely.
> +.B POSIX_FADV_NOREUSE
> +does not modify the readahead window size.
>  These changes affect the entire file, not just the specified region
>  (but other open file handles to the same file are unaffected).
>  .SS C library/kernel differences
> --=20
> 2.46.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--a5ausdpkohrofegk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc9vjIACgkQnowa+77/
2zLyaxAAqtqp/gPfjMaDLpCkNkCWu4zdhBmjcDYQwmXuy/K52+Aonta2ujGMRLYV
7VSSgDaWtSuWPUsb3nHNgnyXy3e2379BJRGNMsdWb+ExF3FRmz3wamS5e9Axze0U
0S39Vx3qwM6yETOisSSzglGtim+TCODOrx/9QI9XOAeqoRnVAb0fg5fGNFtyIMo2
sKHx0L3ONa1kHwz51vORtGxBE6AD8gOfu/CCbWZv3EkTnWtz/51QlKEMMJ/pYhPN
P+1lwynPZ7AFwmv/pdGBUthBv5fdaxivEjok06MGI10ZYXN86MJEaHmfyLRyJf/W
u9MrrHxpvOxtcVBzHfXreTC/zKBC/KXAcKO7g0hKAl6BbnHNtpNAZWiu0stDdJ9A
tyFrTKjs6Y+ilgjpHaN1d9f1WPRZXrd5tzeyyQ/0m4OBkcDce07bb4LgCr7/qdsQ
Xn9XLd2jvDcyDg0/kSjk3bJAfUVzIit2AqaU54imQQIVL6M3xAEejitMqeKm5GEW
ouVVlYhEGGvSYBc7akEvosfKaCENofsUOyizH9pHxl5IwEGk/H326GPRRfFXfU+t
dZzaSuyIVf5IXLtJYObgwPBC57H5zdGJ4cVaik79s0rPxJ8Io7foQgJUzSMRK88S
ZYykQGm+TNqbfXkJj30OGsi1WzKRucFj6aKKp8u2yEnzV55L+6A=
=Onvr
-----END PGP SIGNATURE-----

--a5ausdpkohrofegk--

