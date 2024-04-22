Return-Path: <linux-man+bounces-798-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E25F8AC329
	for <lists+linux-man@lfdr.de>; Mon, 22 Apr 2024 05:44:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E72731F210B0
	for <lists+linux-man@lfdr.de>; Mon, 22 Apr 2024 03:44:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABE6FEAEB;
	Mon, 22 Apr 2024 03:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R1HJUavz"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67B3FE542
	for <linux-man@vger.kernel.org>; Mon, 22 Apr 2024 03:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713757474; cv=none; b=i/1A2aM0VAOD2JENLxRWZQvexsuG+vR8e48lfZUwfPxOIYLfPTxh2C7jRUV+wQfR6K2SY7WRNnynh0OYWjym9iKMjyCzGQzrr96a5/qUalf4WFOblZZwEm+DrKICiSo73CGpMeJuowuqQmGpqdvgZojgWV3RJ1X/oLSeIqDQ+3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713757474; c=relaxed/simple;
	bh=Hi/RE7NU6hBVLiYkz+MH6oOITRZdSQTD7agnHI6nysk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oQEhGMrLDyfZ3RZnmKla//hxKiNk8PuRKgP5sMh5Gb/xgkpIRnGVQ6Grb955vwFP1KIaICx8S24sCY2HS4uvrZby3iEKFGyRhJymvlVurAadFXRY1w3HeKC4K0I0L+Ln2Ft5SMTSUhWruh1D51oS4quarpywDba9r32gy01i/Uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R1HJUavz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 559B3C113CE;
	Mon, 22 Apr 2024 03:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713757474;
	bh=Hi/RE7NU6hBVLiYkz+MH6oOITRZdSQTD7agnHI6nysk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=R1HJUavzJS7F6DDk6eQ6rL+DRZ2qLeX1gaurKJ0y+aResqO8wk7zFO3npRi29iXwB
	 F0rkWFKiMCtNubIgnjWl/JfAMzrrUV/8ZkzHGSHzsLfkisndh68oH0Q/VWW54nt9HV
	 kH48UaOBYBHg4FyDyF5VfLdI0x2Oa+zJYXyMOQnpYr8Ju9s2wNrFLXMq8tqOTicqAr
	 N1fCv3uDGcMq0yT0ULcFq1NY4c8USuPZuZmI9RM3GpzPo3lr7Aed1Tf2HZj7ei7Ms5
	 /u0nHDtdUhLc2swokuBA4FzapVOGYG2FEg3os9q9WKaleCJ+Dy0+zKwQcMWFk6J4YQ
	 4FDNdy8eaIN1w==
Date: Mon, 22 Apr 2024 05:44:30 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Emanuele Torre <torreemanuele6@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] open.2: protected_* sysctls are defined in
 proc_sys_fs(5), not proc(5)
Message-ID: <ZiXdHyxcOCcuRAq2@debian>
References: <20240421214901.2539179-1-torreemanuele6@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="SsdtnuhRUge69SNi"
Content-Disposition: inline
In-Reply-To: <20240421214901.2539179-1-torreemanuele6@gmail.com>


--SsdtnuhRUge69SNi
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 22 Apr 2024 05:44:30 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Emanuele Torre <torreemanuele6@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] open.2: protected_* sysctls are defined in
 proc_sys_fs(5), not proc(5)

On Sun, Apr 21, 2024 at 11:48:53PM +0200, Emanuele Torre wrote:
> ---

Hi Emanuele,

Patch applied.  Thanks.

Have a lovely night!
Alex

>  man2/open.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man2/open.2 b/man2/open.2
> index 8c791fa47..1e98a1df4 100644
> --- a/man2/open.2
> +++ b/man2/open.2
> @@ -1021,7 +1021,7 @@ For details, see the descriptions of
>  and
>  .I /proc/sys/fs/protected_regular
>  in
> -.BR proc (5).
> +.BR proc_sys_fs (5).
>  .TP
>  .B EBADF
>  .RB ( openat ())
> --=20
> 2.44.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--SsdtnuhRUge69SNi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmYl3R4ACgkQnowa+77/
2zJUQRAAluPzk8eWmCyF3jAg3SfAnAHe02Yo5tTLLOaCJUjxuFN9jMIwVhn8Wr3w
FqbD8RpEpOuwHeYqczL8r3mz6Bfe5vBxKG0gRp4dDaGDgHuct/xht+u41beApczM
ctawTv7I1++GEP6R8ozlN/0cpFiI9h9P4ITXqR6/04AKamIh+zKnCHnsumKv5b0L
aeCf39t0+Dkm/BX3VpCod9XZ6dENqtVWF8qFmnmJT4M4XhIDYMp5lbwo5gWD+xkR
RumGVwVkAz19FO5Ssg2Z4e+YgJ0ybgwCG6lxfcTASy1uTLheShL6+UdzS78sbTjW
LFOQzTYyMG7szurTwzXc1N3hsp2GcKoXrbI/jUW/j4a3fma7uIV+WnayJUXDsFWn
CpIuD4aZkH47u8r8OiUDHTIEa8YmUi0LyN35g5iyahc0Lcnfl/uL1P1zNSTqJGa/
dxpfyen2tRrMZDElm/SN9YT4gKQHygCHgFzacObpkP7vBDOs5cbiBqbs5CWb168W
vvlybAyYvD4mgRV4mfCeWvbn4qkhg7KGkFyNmHbESuJsvQQvWWmSCyvKq/eeiLWk
805g3FNzzmUvWyomjHqozUs6+7D+02aO5A/t0IjLjXB/hql61XsY3iPhUjI5kPEd
RRgOyiL5456gIeTH+vdo4Luiqy5Tm2WGwQSmlQ2JuYOjMWoVhs8=
=BAoP
-----END PGP SIGNATURE-----

--SsdtnuhRUge69SNi--

