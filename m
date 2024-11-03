Return-Path: <linux-man+bounces-1859-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B1F199BA372
	for <lists+linux-man@lfdr.de>; Sun,  3 Nov 2024 02:27:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D436D1C20CA2
	for <lists+linux-man@lfdr.de>; Sun,  3 Nov 2024 01:27:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4780A2628D;
	Sun,  3 Nov 2024 01:27:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t4Jw7Mqg"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 059542F3B
	for <linux-man@vger.kernel.org>; Sun,  3 Nov 2024 01:27:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730597222; cv=none; b=Iq1yBEQVIJrA2fnJV8F2O3T8olNuqHGHdlJSKZ2nooTH+xgBqhuCJQgt7IpPfW2e8dNMl0gxkBPx01xprUuzOvUhdGdyS8Y6czApx2Cbci8hFvObr5ko2DHn7T2Ra5YaWDiQHei2ERMN/nyAD8b8NvL8jLOkWz8lvrv5XWSbs00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730597222; c=relaxed/simple;
	bh=o20y5yuYFNe5kCAjv8thllynNDcfp3GwDuNWYTehtN8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ANbKqL7ajBQOf4+thgiThEMHTM10ijj13rjTO5wH+aOPxzWt8mZvGM8Smrt3v0ykdhI8PCSL5+2jLkQuSyYx//Ye6EygoFZj1xldkamrp9uUMTzZDvQgA3nccx3zQvMeDW3PhVEstdBFy1gNWexm7KgdLkCedi7/J5tAYTsfP88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t4Jw7Mqg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0844BC4CEC3;
	Sun,  3 Nov 2024 01:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730597221;
	bh=o20y5yuYFNe5kCAjv8thllynNDcfp3GwDuNWYTehtN8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=t4Jw7MqgHCuedFylklVoQ1IizagQzIJiVA6G+fo4H5u6J8q9ysiPDO/AUVf2fGuWF
	 B6eaHbgT8/+XnUY+c/8S3Tq48g4UaRTKHCjAZCuAQuugmrISfjV88Sw8ZnCTX387BL
	 jtqjVLxCRkbX5tG/TtDI6C1uG23u/2FOWmt5KQRNB2bZ8gEmfir/Tw7RIvqb05vlZH
	 UxKpGHweQeUq6eDEI1ZyM9gRhme9dg8YSqWP/+WTvIlomh2Ekdavr/OZxtUZD4sYB7
	 7x2SRy8hjN7RK5f1CT7EBoGgFUatD+goGjrCXR2u/R/pM3wGsL1T4z/mWZkwYVQ10W
	 aGKxwf5TI3tbA==
Date: Sun, 3 Nov 2024 02:26:57 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: groff@gnu.org, cjwatson@debian.org, branden@debian.org
Subject: Re: [PATCH v2 1/3] scripts/bash_aliases: man_lsfunc(), man_lsvar():
 Use mansect(1)
Message-ID: <20241103012657.x2hjtkhuuuv6se57@devuan>
References: <cover.1730596445.git.alx@kernel.org>
 <ef793bf0af1f006971c6a3aa78227719ae30222a.1730596445.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sem4ds4qdzt6irzp"
Content-Disposition: inline
In-Reply-To: <ef793bf0af1f006971c6a3aa78227719ae30222a.1730596445.git.alx@kernel.org>


--sem4ds4qdzt6irzp
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 1/3] scripts/bash_aliases: man_lsfunc(), man_lsvar():
 Use mansect(1)
MIME-Version: 1.0

D'oh.  Ignore this thread, please.  I'm a bit rusty with
git-send-email(1), it seems.

On Sun, Nov 03, 2024 at 02:16:47AM +0100, Alejandro Colomar wrote:
> Remove the man_section() function, and call the mansect(1) program
> instead.
>=20
> Signed-off-by: Alejandro Colomar <alx@kernel.org>
> ---
>  scripts/bash_aliases | 45 ++++++--------------------------------------
>  1 file changed, 6 insertions(+), 39 deletions(-)
>=20
> diff --git a/scripts/bash_aliases b/scripts/bash_aliases
> index e461707c8..25425c389 100644
> --- a/scripts/bash_aliases
> +++ b/scripts/bash_aliases
> @@ -38,39 +38,6 @@ sed_rm_ccomments()
>  ########################################################################
>  #	Linux man-pages
> =20
> -#  man_section()  prints specific manual page sections (DESCRIPTION, SYN=
OPSIS,
> -# ...) of all manual pages in a directory (or in a single manual page fi=
le).
> -# Usage example:  .../man-pages$ man_section man2 SYNOPSIS 'SEE ALSO';
> -
> -man_section()
> -{
> -	if [ $# -lt 2 ]; then
> -		>&2 echo "Usage: ${FUNCNAME[0]} <dir> <section>...";
> -		return $EX_USAGE;
> -	fi
> -
> -	local page=3D"$1";
> -	shift;
> -	local sect=3D"$*";
> -
> -	find "$page" -type f \
> -	|xargs wc -l \
> -	|grep -v -e '\b1 ' -e '\btotal\b' \
> -	|awk '{ print $2 }' \
> -	|sort \
> -	|while read -r manpage; do
> -		(sed -n '/^\.TH/,/^\.SH/{/^\.SH/!p}' <"$manpage";
> -		 for s in $sect; do
> -			<"$manpage" \
> -			sed -n \
> -				-e "/^\.SH $s/p" \
> -				-e "/^\.SH $s/,/^\.SH/{/^\.SH/!p}";
> -		 done;) \
> -		|mandoc -Tutf8 2>/dev/null \
> -		|col -pbx;
> -	done;
> -}
> -
>  #  man_lsfunc()  prints the name of all C functions declared in the SYNO=
PSIS
>  # of all manual pages in a directory (or in a single manual page file).
>  # Each name is printed in a separate line
> @@ -83,9 +50,9 @@ man_lsfunc()
>  		return $EX_USAGE;
>  	fi
> =20
> -	for arg in "$@"; do
> -		man_section "$arg" 'SYNOPSIS';
> -	done \
> +	mansect 'SYNOPSIS' "$@" \
> +	|mandoc -Tutf8 2>/dev/null \
> +	|col -pbx \
>  	|sed_rm_ccomments \
>  	|pcregrep -Mn '(?s)^ [\w ]+ \**\w+\([\w\s(,)[\]*]*?(...)?\s*\); *$' \
>  	|grep '^[0-9]' \
> @@ -106,9 +73,9 @@ man_lsvar()
>  		return $EX_USAGE;
>  	fi
> =20
> -	for arg in "$@"; do
> -		man_section "$arg" 'SYNOPSIS';
> -	done \
> +	mansect 'SYNOPSIS' "$@" \
> +	|mandoc -Tutf8 2>/dev/null \
> +	|col -pbx \
>  	|sed_rm_ccomments \
>  	|pcregrep -Mv '(?s)^ [\w ]+ \**\w+\([\w\s(,)[\]*]+?(...)?\s*\); *$' \
>  	|pcregrep -Mn \
> --=20
> 2.39.5
>=20



--=20
<https://www.alejandro-colomar.es/>

--sem4ds4qdzt6irzp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmcm0WAACgkQnowa+77/
2zIGXQ/+IreUx9C6KWQjUw0/EFHCab43l3xWnKN3/EVf9xjDWFsSThqyNkAjyAKS
DHL8uibhiPFoteLyyujoaFt5EArWPAdQm9WVpS6VOxea2hfg+cV0q7RpnG5e01i4
qwESc7Ro16PuMI80cN5ch4YAOz9Z5UDjY94yU0kSSXwiv0qQxpC2DL2H/PNjZCnn
v1qqE4v+SUwhhkNQ46JWS6Prn2vNVaptfCQKL9Ul/GqgCuuXXcGQSdDiEGKftHDG
PJ0s9nwe2AQKm++SA/42FnEm5RW1wOk079Z0jkWJlOyaXHv84I2DDSnFLshi1QIx
yp03nXG0nMWRNs2IWhm0V5T/ua6uj7rxKkotVrczWSmeimtAx/29pBukxdsM0hZp
RqkkZm+D6Y0tBZbUNR9W3UXOvWDZ7plssAVnz9AAUbaKrXJYT2f13vq9+u2H9sPR
akyVHgzbn0cm2IsmcrwpOT1UEy8NH4foS4D009BcZ9OQ9VmLdvCsHF00Yf78sw7I
xQKTmIKHIWZwXd/KWWRcibFWUnPAEANh8ujsLsk5atji8tv+Mr8rs9lnavjwp7jH
FhobbaSr821H+aEtczoSBup08B3S0ffyC7V0uWwGipmSXeInzBncCbPumS+zt78N
ko3p229iUGTCfOhyEtF+pYJHAlbZFTquuBi9s9q+qHGxOejgEnk=
=c58Y
-----END PGP SIGNATURE-----

--sem4ds4qdzt6irzp--

