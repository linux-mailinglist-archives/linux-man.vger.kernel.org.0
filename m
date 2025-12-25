Return-Path: <linux-man+bounces-4539-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 69723CDDB69
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 12:40:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1CE7A3015863
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 11:40:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85BFC31AF10;
	Thu, 25 Dec 2025 11:39:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SPsFLa32"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40E3831AAB1
	for <linux-man@vger.kernel.org>; Thu, 25 Dec 2025 11:39:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766662749; cv=none; b=NvbFuaybvp8Kg2q3xtpg//i+5RkW3YrpBsOdo3ZMZ9qA2fxZa8d6eGNa/mjn9+hMyU6hh+lVzO9lgulMeGc4t7MBwEhUTtYY7/Jkcslof451/Tums8GIy/s07M1lAJEizmjYG0iWwDoeY0xK3TArF2wCRdXJ8FYoXfzrtZCb2TI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766662749; c=relaxed/simple;
	bh=Zs32lqx3GNTWxbo6ov/DbK341iZ5hLDvBN8EbsEEcJw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PAIJhcUm9XfHyad9MqrO7foPH+S6VSUjhJofJHSXdRz3B/3wk2If+N9OXz0mne5sG5+hHrEtlReVHxYFY44qk8FxtHgHUd6sj+OvOEXc3P4mcX9ZX8uvNDUmeBSi94I+vAwF9vE+yW93Lws9T5d3MbpCT9WejaI1RnU5iuRY+TE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SPsFLa32; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B050C4CEF1;
	Thu, 25 Dec 2025 11:39:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766662748;
	bh=Zs32lqx3GNTWxbo6ov/DbK341iZ5hLDvBN8EbsEEcJw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SPsFLa32EAv6GpEpx3BNGB4DP4SlPSrW78EBU/CEufQ4ou2weKH7wB58bgXS2rXK1
	 iyjS02FBgk52POGFjaxjYs3/VQeBomj1/fHTPbLnGu68CEQ2y+oEVc9M1HsXCoBBQ/
	 PTYzEHeVYyZX0/se0XjMeYJN9WyR5X9OGkEP3pK1uncodvizgV1V48aezN3J/6UAMK
	 fkQHnzwiicvC3DVnDwHHFWqhQoOdyasKyFQ83FDGK5oVEGv6zXAYZP+XezztuLWzt0
	 z9ed5FXLATjw86v5W60Z1BqqcMJ2v0RKEDWEdM4Q76lBw9sElHgtCzMsBkFFKbLffs
	 3wysHG6WwYs+A==
Date: Thu, 25 Dec 2025 12:39:05 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 1/1] man/man2/semop.2: Rebrand VERSIONS as HISTORY
Message-ID: <aU0hq-ApW1SR8zjY@devuan>
References: <cover.1766641592.git.sethmcmail@pm.me>
 <86b4c2ec94334aadcc8abc9f17b34b60716d399b.1766641593.git.sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gp7kw5vqyjkjglbg"
Content-Disposition: inline
In-Reply-To: <86b4c2ec94334aadcc8abc9f17b34b60716d399b.1766641593.git.sethmcmail@pm.me>


--gp7kw5vqyjkjglbg
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1 1/1] man/man2/semop.2: Rebrand VERSIONS as HISTORY
Message-ID: <aU0hq-ApW1SR8zjY@devuan>
References: <cover.1766641592.git.sethmcmail@pm.me>
 <86b4c2ec94334aadcc8abc9f17b34b60716d399b.1766641593.git.sethmcmail@pm.me>
MIME-Version: 1.0
In-Reply-To: <86b4c2ec94334aadcc8abc9f17b34b60716d399b.1766641593.git.sethmcmail@pm.me>

On Thu, Dec 25, 2025 at 07:26:25AM +0000, Seth McDonald wrote:
> Rename the VERSIONS section to HISTORY, split semop(2) and semtimedop(2)
> in this section, and move the previously listed standards/versions to
> the corresponding functions.
>=20
> The VERSIONS section is really a HISTORY section that seems to have
> mixed up semop(2) and semtimedop(2).  The relevant commit (4131356cdab8)
> removed some context specifying which standards/versions apply to
> semtimedop(2) only, causing this mix-up.  The diff for this commit on
> man/man2/semop.2 is given below.
>=20
>     $ git diff -U1 4131356cdab8^! man2/semop.2
>     diff --git a/man2/semop.2 b/man2/semop.2
>     index 7a1416a26..fe2906be4 100644
>     --- a/man2/semop.2
>     +++ b/man2/semop.2
>     @@ -357,11 +357,8 @@ .SH ERRORS
>      .IR semval .
>     -.SH VERSIONS
>     -.BR semtimedop ()
>     -first appeared in Linux 2.5.52,
>     -and was subsequently backported into Linux 2.4.22.
>     -glibc support for
>     -.BR semtimedop ()
>     -first appeared in Linux 2.3.3.
>      .SH STANDARDS
>     -POSIX.1-2001, POSIX.1
> -2008, SVr4.
>     +POSIX.1-2008.
>     +.SH VERSIONS
>     +Linux 2.5.52 (backported into Linux 2.4.22),
>     +glibc 2.3.3.
>     +POSIX.1-2001, SVr4.
>      .\" SVr4 documents additional error conditions EINVAL, EFBIG, ENOSPC.
>=20
> The removed information is restored on account of the semop(2) and
> semtimedop(2) functions being described separately under HISTORY,
> removing the mix-up.
>=20
> Fixes: 4131356cdab8 (2023-03-17; "man*/, man-pages.7: VERSIONS, STANDARDS=
, HISTORY: Reorganize sections")
> Signed-off-by: Seth McDonald <sethmcmail@pm.me>
> ---
>  man/man2/semop.2 | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
>=20
> diff --git a/man/man2/semop.2 b/man/man2/semop.2
> index 1e8213cbc..1b45e8e35 100644
> --- a/man/man2/semop.2
> +++ b/man/man2/semop.2
> @@ -349,10 +349,16 @@ .SH ERRORS
>  .IR semval .
>  .SH STANDARDS
>  POSIX.1-2024.
> -.SH VERSIONS
> +.SH HISTORY
> +.TP
> +.BR semop ()
> +SVr4,
> +POSIX.1-2001.
> +.TP
> +.BR semtimedop ()
> +SVr4,
>  Linux 2.5.52 (backported into Linux 2.4.22)
> ,

The patch is corrupt here.  I wonder why this line is special.  :)

>  glibc 2.3.3.
> -POSIX.1-2001, SVr4.
>  .\" SVr4 documents additional error conditions EINVAL, EFBIG, ENOSPC.
>  .SH NOTES
>  The
> --=20
> 2.47.3
>=20



--=20
<https://www.alejandro-colomar.es>

--gp7kw5vqyjkjglbg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlNIlkACgkQ64mZXMKQ
wqnC/Q//RyloTca24USFrPxWSIKwTWBsYsLC+0nKsJNjCuk7YI7pcPMFOycZyLD6
p5BJjPhWZIrBd2ZUi6hwCb6+993dqsxqLbEpCB2dfzkDcjV32f+l2+YDZewcRqzY
vH6SHUMzdeHgoxwWX31hI5Ps2ypnh7d51kOk8SnK9fva5rTnjTREXWku8txpXuxt
wDb6iX3BxgtXwS2ct3RK+n1bz6PdUq5t+nZiKnKwz8lfcMizgt8JjJM/ESWrdDwL
Ck8cOIiSJ09xA6vb5K9IHYjhv3MIYHBHjdHl0M5VhTRykI6U/ZFpLeIbGbiKccni
2bts5d/L6Q1IG/3oNlilyBnD1XOGbn2H0cN0o/wiH0+PWQvqdCzqhn3GfwZn6Wcz
oUwpifsN+TtuSh5tAqyr26kdkzvQ0hgenc8l1mP94MMlx4acYYAjXhRIgSjQYohJ
SwWAStaN3vTE7PUq/pFoTt6bOoqIAqJNxl1DK/ADFB94VUjOMmD+hx+YccmFY9hN
pcWkfKl1hX688Y5BXMmmqOFBtde6gn83SHaxWzOtJ2OQqFdsDyimLgPgGgS0AJFG
M9A4Z8iGRkASozc5RMYDo8/IZUtFFod67/IMxMX5A8PQeGRQRlQKRJmmKVa6g+bQ
4wt+QQkdSYGrY+EH2XF6aokmLB/G2TxWIwoGiIstwb1EtmThysI=
=vmbs
-----END PGP SIGNATURE-----

--gp7kw5vqyjkjglbg--

