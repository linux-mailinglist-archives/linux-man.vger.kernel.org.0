Return-Path: <linux-man+bounces-1762-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF49967591
	for <lists+linux-man@lfdr.de>; Sun,  1 Sep 2024 10:33:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9743B1C20EB0
	for <lists+linux-man@lfdr.de>; Sun,  1 Sep 2024 08:33:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2DAC3BBC2;
	Sun,  1 Sep 2024 08:33:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y6qpHM3u"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2D8129413
	for <linux-man@vger.kernel.org>; Sun,  1 Sep 2024 08:33:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725179605; cv=none; b=hqv8tlUd+Sm8nxOdhAk4h1JLzl+ZjDSeXN7txTT0DbWq/ZctHZ2W8686kfyh8JUuZEfxtC0xBaHiNI38QieCTx4JQFcIg80UkcSGwYucCl26iP0Kn3kp2NPQPwp/CGT9Uf3TDd5Y6a2hakMlDbwJ6EDtAK5ahaD0tk/rh8ZTDIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725179605; c=relaxed/simple;
	bh=y9S2mlXXPgg+zEBkwts6amok3QDNhx/s9bbA8emUxHM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=e+gPJ2dyIc1+59AyV/PIT5UjYR9caB3gyDSKo9InqBrE0KQXXjdOWvrI3PLFHwTckqH4eicZwDi+vp2lUA3c/tXOLmxM4T+GRYxMI2aq+EUZt5lWwQQrzxu7hnDjFENblUoI0dmrSzh0t8jPltX+c/sXxHB7pruEWyErWf1namg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y6qpHM3u; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9489DC4CEC3;
	Sun,  1 Sep 2024 08:33:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725179605;
	bh=y9S2mlXXPgg+zEBkwts6amok3QDNhx/s9bbA8emUxHM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Y6qpHM3u88Mbt6o2SK7D3Y05Y53qLMNJ8uG6a+wRu6QoVixMXwrX/RuzkVsTbVqhS
	 JAztOQ1UkMTH/D4j7VnNTdNEDzht++K5kWdk+xiOncgq8SBYQz/rJSTcOwlKZoyDX+
	 dKf9vRF3X0Ix42TMnchkKxtDRWyDrVA4o/6V4iC1EBKIupO6X+rWP0VWS6zlM/wfBM
	 WaK3ahKe60XYlUeT2DiGkWt8lhpnA3Dr2D+Yi5H1c60F6eX4K0dTXuIBl7h3QVzmib
	 vjQ5mHIXEmd3svV11RkBKSF17w9C6iIlDACUgY/468EP0lkFPRicyVCIU5N06Ha3eS
	 GVeRB7FPF5B+Q==
Date: Sun, 1 Sep 2024 10:33:22 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 08/10] console_codes.4, inode.7: srcfix
Message-ID: <vlopicl4vgm4z6r7dllpvdma2gjkufg6iwxi2jadgefts6alcd@cc6o3sc2jg62>
References: <5bec58a0a261f834a2fc29d471b0b984822905b7.1725161054.git.g.branden.robinson@gmail.com>
 <20240901032603.khxdcqiqc2pxooky@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2bfliv3tb527fhan"
Content-Disposition: inline
In-Reply-To: <20240901032603.khxdcqiqc2pxooky@illithid>


--2bfliv3tb527fhan
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 08/10] console_codes.4, inode.7: srcfix
References: <5bec58a0a261f834a2fc29d471b0b984822905b7.1725161054.git.g.branden.robinson@gmail.com>
 <20240901032603.khxdcqiqc2pxooky@illithid>
MIME-Version: 1.0
In-Reply-To: <20240901032603.khxdcqiqc2pxooky@illithid>

Hi Branden,

On Sat, Aug 31, 2024 at 10:26:03PM GMT, G. Branden Robinson wrote:
> Prepare for `MR` macro migration.
>=20
> Rewrite man page cross references inside tbl(1) text blocks to use
> man(7) macros instead of troff(1) font selection escape sequences.
>=20
> $ cat fix-man-page-refs-in-tbl-tables-1.sed
> 	# Rewrite man page cross references inside tbl(1) text blocks to use
> 	# man(7) macros instead of troff(1) font selection escape sequences.
> 	/^\.\\"/b
> 	# Case: (handled in commit 9d21f97766, 2024-07-27)
> 	# T{
> 	# See \fBchown\fP(2) for
> 	# T}
> 	/T{$/,/^T}/s/ \\fB\([^\\]*\)\\fP\(([0-9][a-z]*)\) /\
> 	.BR \1 \2\
> 	/
> 	# Case:
> 	# T{
> 	# the map that is loaded by the utility \fBmapscrn\fP(8).
> 	# T}
> 	/T{$/,/^T}/s/ \\fB\([^\\]*\)\\fP\(([0-9][a-z]*)\)\([^0-9a-z]\+\)$/\
> 	.BR \1 \2\3/
> 	# Case:
> 	# T{
> 	# by \fBxterm\fP(1)'s \fBhpLowerleftBugCompat\fP resource).
> 	# T}
> 	/T{$/,/^T}/s/ \\fB\([^\\]*\)\\fP\(([0-9][a-z]*)\)\([^ ]\+\) \(.*\)/\
> 	.BR \1 \2\3\
> 	\4/
>=20
> Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>

I've applied all the patches in this set until here, including this one.
While this one has several cases handled in the script, each only
handles one case, so it seems reasonable to me.  Thanks!

Cheers,
Alex

P.S.:  While patch 1/10 oddly is separate from the thread, this is much
nicer than having all separate.  I'm not sure why that happened.  Maybe
you prepared patch 1 separately?  :)

> ---
>  man/man4/console_codes.4 | 7 +++++--
>  man/man7/inode.7         | 3 ++-
>  2 files changed, 7 insertions(+), 3 deletions(-)
>=20
> diff --git a/man/man4/console_codes.4 b/man/man4/console_codes.4
> index dfbb672ec..a12d21660 100644
> --- a/man/man4/console_codes.4
> +++ b/man/man4/console_codes.4
> @@ -173,7 +173,8 @@ .SS Linux console controls
>  Select null mapping \- straight to character ROM.
>  T}
>  ESC ( K		T{
> -Select user mapping \- the map that is loaded by the utility \fBmapscrn\=
fP(8).
> +Select user mapping \- the map that is loaded by the utility
> +.BR mapscrn (8).
>  T}
>  ESC )		T{
>  Start sequence defining G1 (followed by one of B, 0, U, K, as above).
> @@ -709,7 +710,9 @@ .SS Comparisons with other terminals
>  l l lx.
>  ESC F		T{
>  Cursor to lower left corner of screen (if enabled
> -by \fBxterm\fP(1)'s \fBhpLowerleftBugCompat\fP resource).
> +by
> +.BR xterm (1)'s
> +\fBhpLowerleftBugCompat\fP resource).
>  T}
>  ESC l		Memory lock (per HP terminals).
>  		Locks memory above the cursor.
> diff --git a/man/man7/inode.7 b/man/man7/inode.7
> index 497e30e8a..1fd3de85d 100644
> --- a/man/man7/inode.7
> +++ b/man/man7/inode.7
> @@ -347,7 +347,8 @@ .SS The file type and mode
>  .TS
>  lB l lx.
>  S_ISUID	  04000	T{
> -set-user-ID bit (see \fBexecve\fP(2))
> +set-user-ID bit (see
> +.BR execve (2))
>  T}
>  S_ISGID	  02000	T{
>  set-group-ID bit (see below)
> --=20
> 2.30.2
>=20



--=20
<https://www.alejandro-colomar.es/>

--2bfliv3tb527fhan
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbUJtIACgkQnowa+77/
2zIAYw/9GR4WbDiAi3US6mQKL9Fmj2pQ8+BWx/+F8nbXj9ONknMwSguW+eiLrwn6
I9eNnuIswv1FBYajXB/CNqqCEPTqw+Km6sU+pimWoBSd8RUn4mjEmNhtQhpd8Bdj
dE11HtiUaJB6PMaBhier56uxCrHe1V8AQWJhQaX8auOt//cVW+IQYb2hGDj9bGds
yq5sRPWC5jcE1PPuUq/tw8hMge64v9Nw71hS1CrWsmhOuASb/EV+Sn/LFHevEzQY
pK0964gS37GQUHoCzqZfY7DidEfNuSu/T2KriTjSb0cHP+jRyqzPW1m8CPCMUAmH
7JCzwaNjtqxZDz7BEf4O7qmHtzUGo0Wrph6wYMFk5WQkhkc3oyJt8ZU7h5IRJ0JD
KYcYfYjoppteFS3/5P01droe/s636stzQI9Z800mEMLye+OcC1c3Asw87WOf+3rN
OEkV5rT6Hu+OTIVssqiGDMX33WNgJocYAzzjgFXG7HwwwlwbbzQr+sYEMZRjul5y
xI5HCXwkPHPe/dMkR7JG+m7sDwRbd0x8NtNsUCceqIVN+8kvBYRSkksN5bL3VFWw
L3GedYyKxUv+jljXCWn+vFW9UbpcJTLt4dm4y1xZ9AjxVbBrUhPY0+AZ/Y6z1RA3
T0/Gh8UQCa1bkp+mhHE8h5aZV6YsLsB3I0Zqy7kWDl643DcF/Xs=
=T+Vz
-----END PGP SIGNATURE-----

--2bfliv3tb527fhan--

