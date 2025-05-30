Return-Path: <linux-man+bounces-3055-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F12EAC89D6
	for <lists+linux-man@lfdr.de>; Fri, 30 May 2025 10:19:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D13364A0DF8
	for <lists+linux-man@lfdr.de>; Fri, 30 May 2025 08:19:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A688220FAB6;
	Fri, 30 May 2025 08:19:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j/BAQCeX"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64A7E1DE884
	for <linux-man@vger.kernel.org>; Fri, 30 May 2025 08:19:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748593166; cv=none; b=lhw+QkjDRR6cqxQexgRtBaiE6f/EfBAxnDFPtByikAkSFC+MbBKeMPsf/6Ah+Z/ReOtdntBs2pknJLnLyKnnpdqNONMJWScfKFyr15VtZFjXdLV/9yNsAPB9HytzpluO9OWbxDlrK1BM2u5vmZLODTpgu1GhduQt8vkSwz0F42s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748593166; c=relaxed/simple;
	bh=+AXllB9MPhPRwYh9yX0hKMpVFutuZYenbA/NA5PBGeI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LAuWCqOoqKzc3dg5KsEp6vvsiT57NSmSqm1jbFwTqsW0a6edZvPFRMD48qHXl8mKXHMZz7mplszPpMZsX1eiKCh+eqbxL0wyqjUG0I1XcpQFn6+6+eQWYjne5+0sn+q6NBo8SfqmkTsfnvh2Q/46Rh9f4OEyU0SpWGHEwLDgLfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j/BAQCeX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D2E5C4CEE9;
	Fri, 30 May 2025 08:19:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748593165;
	bh=+AXllB9MPhPRwYh9yX0hKMpVFutuZYenbA/NA5PBGeI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=j/BAQCeXb1T1wLjnWnRCDfLAdfX8Ukeg8b8mhmqqCCMQHibarVE3p4Dh/XlvnOzmD
	 OwKi8tQlUc2hPjBPxrRBhgSLPfv8EM1GeE0xyqcExK0lGGXS8Dk3XrSIrQ2hmzTFyD
	 8bLWK1IKWzargaOc2xlKhJaM+UP4wuTdmRCSwkwQkrFRULSUGv/tZQCccLFvopZtb3
	 S9Q3emspZSX/THrX7CrGO+yLoRWdBaaZeiU8tQR5OkmivhVzVF1sWhfz4SnNpPHGft
	 COFLItC5R3Jus9GAYDoiOs1aoktXCBxFYzT7NTdE4J/XhyOtYi/y0Q0+D9a2sVTFb3
	 bsNr5+TeH7Z6A==
Date: Fri, 30 May 2025 10:19:22 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/open.2: Fix doc for O_CREAT | O_DIRECTORY
Message-ID: <ytgx3s5o3vf3r7yuo6ervdx5pqfolcdac2ie3u4ou3ytgtva4d@wpvo6ip27pss>
References: <20250530072029.344532-1-eggert@cs.ucla.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="eatpgchhmhifplru"
Content-Disposition: inline
In-Reply-To: <20250530072029.344532-1-eggert@cs.ucla.edu>


--eatpgchhmhifplru
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Paul Eggert <eggert@cs.ucla.edu>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/open.2: Fix doc for O_CREAT | O_DIRECTORY
References: <20250530072029.344532-1-eggert@cs.ucla.edu>
MIME-Version: 1.0
In-Reply-To: <20250530072029.344532-1-eggert@cs.ucla.edu>

Hi Paul,

On Fri, May 30, 2025 at 12:20:19AM -0700, Paul Eggert wrote:
> Although Linux kernels before 5.7 would create a regular file when
> opening a nonexistent file with O_CREAT | O_DIRECTORY, this behavior
> was changed to something deeply buggy in 5.7, and when the bug was
> fixed in 6.4 this combination of open flags became invalid.
>=20
> Adjust the documentation to match the 6.4+ behavior,
> which makes more sense anyway.
>=20
> Signed-off-by: Paul Eggert <eggert@cs.ucla.edu>

Thanks!  I have verified this with the following program:

	alx@devuan:~/tmp$ cat open.c=20
	#include <fcntl.h>
	#include <stdio.h>

	int
	main(void)
	{
		if (open("/home/alx/tmp/nonexistent",
			 O_WRONLY | O_CREAT | O_DIRECTORY, 0644) =3D=3D -1)
		{
			perror("open");
		}
	}
	alx@devuan:~/tmp$ gcc -Wall -Wextra open.c=20
	alx@devuan:~/tmp$ ./a.out=20
	open: Invalid argument

I've applied the patch.
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D4dc50bb57870012426c7e5a44eb573bec3dc4cac>


Have a lovely day!
Alex

> ---
>  man/man2/open.2 | 24 ++++++++++--------------
>  1 file changed, 10 insertions(+), 14 deletions(-)
>=20
> diff --git a/man/man2/open.2 b/man/man2/open.2
> index 948dcd62e..c47b2ad58 100644
> --- a/man/man2/open.2
> +++ b/man/man2/open.2
> @@ -1068,6 +1068,16 @@ was specified.
>  .TP
>  .B EINVAL
>  .B O_CREAT
> +and
> +.B O_DIRECTORY
> +were both specified in
> +.I flags ,
> +and the Linux kernel version is 6.4 or later.
> +(Earlier kernels were inconsistent in this area,
> +and POSIX does not specify the behavior.)
> +.TP
> +.B EINVAL
> +.B O_CREAT
>  was specified in
>  .I flags
>  and the final component ("basename") of the new file's
> @@ -1882,20 +1892,6 @@ and
>  when trying to determine whether the kernel supports
>  .B O_TMPFILE
>  functionality.
> -.P
> -When both
> -.B O_CREAT
> -and
> -.B O_DIRECTORY
> -are specified in
> -.I flags
> -and the file specified by
> -.I path
> -does not exist,
> -.BR open ()
> -will create a regular file (i.e.,
> -.B O_DIRECTORY
> -is ignored).
>  .SH SEE ALSO
>  .BR chmod (2),
>  .BR chown (2),
> --=20
> 2.49.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--eatpgchhmhifplru
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmg5agoACgkQ64mZXMKQ
wqkm2hAAi9RbtwyVvrileMV4qyknZqLz9W7Q5UM+GxCzQu7yaYNE5T/CV1rLztqr
tVjJDNrjVQig5kME0SAzm7sDKclzgNv6yxDEs4grC+E6ifI5+N1Y9Hh8fWP+uD/G
8Pj8GFBJt9kit795CyhAmj05+YiipcdaJ5HYi674145H48fkEDz7XD3qTyqwz9kD
wQgcM74E8+F2QuL8TO4Losj5TTHTpQts/lffW+xp/DvzCFNiXCc2+6k/TXWq9Bxz
O0sOV4i43D+RN5A5LL9F9S1gX+uOUhp3/lh2v6HK7T0AMpQoH10Rh3rcHiH5CsdK
Qp5q1vGCuxklffwNol56HWbYFsjXtx4A9NFzBE/r/ctHHN49oIzmzhq59+FkRvJe
T68v68x4P9g9cNYixvMbVPcDOC81uDRj2I1HANM5No7/LzKiqEncolu/LVanQCj4
0jMJElepPvBxArs2StPsOMgtbSOl0To/GESmdy+P6KRfKtylj3Ipo7PZ+K7OYuhz
+wWuV5oF2EgKA+mZyILpgnP6JR8IUZr2VxMNRjusLufirzDwDxzvEAqANqhJaCcN
WPvkprkvcKp3indegzPx+eyvshZKYsJuA2/lqbXluAWVCZ02z46gckVULSXAfSWu
PIEqYRTHB0RpKsFlDRvXZ5pHd9tB9VrE0ixF25A3+7BhQy/Sjqc=
=NVuu
-----END PGP SIGNATURE-----

--eatpgchhmhifplru--

