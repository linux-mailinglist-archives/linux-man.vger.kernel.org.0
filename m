Return-Path: <linux-man+bounces-2172-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D03A9F6D92
	for <lists+linux-man@lfdr.de>; Wed, 18 Dec 2024 19:45:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6D75118916DF
	for <lists+linux-man@lfdr.de>; Wed, 18 Dec 2024 18:45:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFEE51FBCB5;
	Wed, 18 Dec 2024 18:45:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oMBjJokO"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 913071FBCBE
	for <linux-man@vger.kernel.org>; Wed, 18 Dec 2024 18:45:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734547542; cv=none; b=X/cwpMv4MHclpGu7sG725agHY+c+XBD2CH+U/WyuS5nl0RoWh3FZUGYfRLErMEzzCJmbZ/UY7Iv69f12QnXBs/9nl/veMhhiIqacEfoYzQzGkLPR3Fptt2Lc2R5mrMFZrDvDXzYDS2ogSczHZJCOyD/ZwHtd+uP+uPH4GFXCkKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734547542; c=relaxed/simple;
	bh=rExeoY2AnMNLUKmvcBoxlRr0xLhLeOuwA84cB0dW4vM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=B3VfLK7iDcSYG+H+XEm1RbJdWZPQ0JK12xDTwPnFJLo7o+kfhbOFqzKTR6FqujnEzMnENa42w+qYUGAyGNF+HJPqYeDLNLBSPuO4F5l1tDHiYK/AKIjz/kYHDP1SsbT1K+qDw3WuJCb2xJXeyQxPTYEfD1VJ+QnhlYkzI5S4jng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oMBjJokO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 32095C4CECD;
	Wed, 18 Dec 2024 18:45:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734547542;
	bh=rExeoY2AnMNLUKmvcBoxlRr0xLhLeOuwA84cB0dW4vM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oMBjJokOBx22qJjbBQajBdXfV7XVroQzjHcHArta4eeCDeWXGjpd1MbD1DdZxzZNT
	 +8rjkw571jZGMUgP4PLZGdRE4QGUSMEV5x94nFmGCghEWMVj/kDBIVJTMJTtD7gX2w
	 bb9w38tpGE0YaF90uBdiC0tejw5YuckvfsbXO+nKLe7GjC8s2pw8GUcgPveKB5FhFo
	 7B6ogRepQia0HpDVoNjdEjONoFi9aOG0TUSIknZ9zLlbFSoFfy5Np1DGNSL6yAacux
	 aEMy54zMf2zaIK9S0seNrpYUhUkzgeSB7N6qF+Oj88m+sMkv0EVlX/I1uj9A8DjgZd
	 /R0Gjk1nXLINA==
Date: Wed, 18 Dec 2024 19:45:38 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Ahelenia =?utf-8?Q?Ziemia=C5=84ska?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org, Eugene Syromyatnikov <evgsyr@gmail.com>
Subject: Re: [PATCH v2] getopt.3: remove _<PID>_GNU_nonoption_argv_flags_
 description
Message-ID: <20241218184538.fuf3334vyg53qqx4@devuan>
References: <3oaxdb2364nqty4fxts6i2fx66dksiw2vq3s5nlzfukztakg3j@iyl3vwrgrfe2>
 <dwfybzlb5ydbsc4puo6igj7nm7iregquv6hxhhqb53bwrvqswb@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5rt67m2vppi3t2zt"
Content-Disposition: inline
In-Reply-To: <dwfybzlb5ydbsc4puo6igj7nm7iregquv6hxhhqb53bwrvqswb@tarta.nabijaczleweli.xyz>


--5rt67m2vppi3t2zt
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2] getopt.3: remove _<PID>_GNU_nonoption_argv_flags_
 description
MIME-Version: 1.0

Hi,

> Subject: Re: [PATCH v2] getopt.3: remove _<PID>_GNU_nonoption_argv_flags_

I've recently started specifying the full path of man-page files being
modified.  That makes it more consistent, and allows me to just use
auto-completion for getting the file name.  I haven't documented that
yet, though.

> Cc: Eugene Syromyatnikov <evgsyr@gmail.com>

Please add those CCs to the commit trailer.  Otherwise I have to paste
them later.  :)

On Wed, Dec 18, 2024 at 03:35:28PM +0100, Ahelenia Ziemia=C5=84ska wrote:
> Per <https://sourceware.org/git/?p=3Dglibc.git;a=3Dcommitdiff;h=3Dbf079e1=
9f50d64aa5e05b5e17ec29afab9aabb20>:
> * this was set by bash 2.0 (1996-12)
>   (implemented in glibc b07c5668f672125074dd5b0b658145e1544120be)
> * it's no longer set by bash 2.01 (1997-06) because it was bad
> * glibc disabled this with no way to enable it in 2001-08
>   (518a0dd201c48a5c15d73c1919c304a9f8f5e3c1)
> * glibc removed it in 2017 bf079e19f50d64aa5e05b5e17ec29afab9aabb20

For bullet lists (and any lists in general), I recommend using two
spaces between the bullet and the text.  See man-pages(7), and grep for
/Lists$/.  That helps differentiate between the bullet and the text more
easily, especially in single-line entries.  That was acked by Doug
McIlroy when we talked about it.

* *p is a pointee
*  *p is a pointee

Makes sense?

>=20
> So this was experienced by people for 5 months at best,
> and could remotely be experienced for 3 years
> (if you somehow wanted this bad behaviour and added it into your shell),
> over 20 years ago. No modern reader (or, frankly, non-modern reader)

The right amount of inter-sentence space is two.  I recently documented
it here:
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBUT=
ING.d/patches/description#n44>

You'll find there a link to some interesting history about it:
<https://web.archive.org/web/20171217060354/http://www.heracliteanriver.com=
/?p=3D324>

> has ever used this, or could use it, really.
>=20
> Link to the removal note for completeness only.
>=20
> Signed-off-by: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xy=
z>

Thanks!  I've applied the patch, plus minor tweaks for the issues above.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Dfed899f4cd6149daa8c9a0f4c352728eadfd9d77>

Have a lovely day!
Alex

> ---
>  man/man3/getopt.3 | 15 ++++++---------
>  1 file changed, 6 insertions(+), 9 deletions(-)
>=20
> diff --git a/man/man3/getopt.3 b/man/man3/getopt.3
> index 67c3ec9b3..9a84e2f44 100644
> --- a/man/man3/getopt.3
> +++ b/man/man3/getopt.3
> @@ -318,15 +318,6 @@ .SH ENVIRONMENT
>  .B POSIXLY_CORRECT
>  If this is set, then option processing stops as soon as a nonoption
>  argument is encountered.
> -.TP
> -.B _<PID>_GNU_nonoption_argv_flags_
> -This variable was used by
> -.BR bash (1)
> -2.0 to communicate to glibc which arguments are the results of
> -wildcard expansion and so should not be considered as options.
> -This behavior was removed in
> -.BR bash (1)
> -2.01, but the support remains in glibc.
>  .SH ATTRIBUTES
>  For an explanation of the terms used in this section, see
>  .BR attributes (7).
> @@ -391,6 +382,12 @@ .SH HISTORY
>  for this purpose as LEGACY.
>  POSIX.1-2001 does not require the declaration to appear in
>  .IR <stdio.h> .
> +.P
> +Very old versions of glibc were affected by a
> +.UR https://sourceware.org/git/?p=3Dglibc.git;a=3Dcommitdiff;h=3Dbf079e1=
9f50d64aa5e05b5e17ec29afab9aabb20
> +.BI _ PID _GNU_nonoption_argv_flags_
> +environment variable
> +.UE .
>  .SH NOTES
>  A program that scans multiple argument vectors,
>  or rescans the same vector more than once,
> --=20
> 2.39.5



--=20
<https://www.alejandro-colomar.es/>

--5rt67m2vppi3t2zt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmdjGFIACgkQnowa+77/
2zLdEg//czraalFUODjYTVSM8BB4bocmhkRoOuSBaZ1mN5d8fXUBzObukqgna6vq
B4sUkMGjAksIQjBaS/K3PyUeXoRJDxxHK2Jvq0onUuomFGUuOtzoi7V/rgv5d7+g
i6pU4ZYqwk+HjoXioN4cMtE1grvc7dFEXxEKtGqzO+zwcY/8SCr93EJJd8zqnE2v
2vXExTFfHTpX1egpuEWWeUC95eT0CMK+xJBNfL2Cz42rZwNfuevkV31z+U4OMbSh
hod39c6iqxM5P8VkzQm8TeVcBU3qGlasyEni9tQ9TK3RAMtgEf88J+nA9H+736u4
zCZYCB2qFpDXYWXutP3xSVtSzZMLg6RqgLsdpr7sCy+4UqK2iV7VlgwHjLZUdV6l
kYH5WHV0o8ydrJEG3ZN5bxdDai4AENUMz5OYeggZWmlVyTtgGdOocX4jghgLaeaB
09+eT+ZIKOm7LE1QU6p0tO0LBBFZDpsl2ffyIkkEmvjAThF2VUM3owFizux86wWA
FkHLkqrhSluHuv+J0teCXCGdSGdWOVPGt4uIKB+7hAw3x8qKaGNIBZssH6l3wN/j
VC0zYKjSWUIioILsmAY77HMtOUWgwd89BV7+zTLarr0hll4JSWu4bJug3dECHVjW
151OeQnSxFK1Gf+pUVKoRiWIpUHZIknwjT3wRo3izkPn8UsyYEE=
=XCaM
-----END PGP SIGNATURE-----

--5rt67m2vppi3t2zt--

