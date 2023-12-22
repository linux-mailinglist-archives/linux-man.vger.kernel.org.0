Return-Path: <linux-man+bounces-280-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FBE281C798
	for <lists+linux-man@lfdr.de>; Fri, 22 Dec 2023 10:50:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 51B321C246E4
	for <lists+linux-man@lfdr.de>; Fri, 22 Dec 2023 09:50:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0752BFBE2;
	Fri, 22 Dec 2023 09:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YMRuSsFd"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C713514F73
	for <linux-man@vger.kernel.org>; Fri, 22 Dec 2023 09:50:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF521C433C8;
	Fri, 22 Dec 2023 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703238634;
	bh=xwBAMqHwhNAkEH+SeqQaRzOh2lGuWiLUeWegFgw2QSE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YMRuSsFdQigrwW2NIKbmqyZ4fVbI1On3JrJp8yvLIkYPMbslXVlQ/ahfbGhPAHLgz
	 8VLlfJJxLE6Dp/BR++irivkUZxnyYUxE0wgvxHi6DOLo02oRakhNQwWQnzMODKZqHo
	 uDoppAJBPr4LcTPgmRqPCGAM8rScp5Ar2ak5Uo4jbPQPYuJ/qvjG5mgg6zV/CC3LwC
	 cJcoxOH7BX6sC/5fjX5Mz+D/5pmFQC8+fk8VePvmBabFN3+2azvfzBHvhyAhVCjGcI
	 r5zAZkffIAhwaHCNI2M0MjPbt2xFFoyUym1M/6RWdBxvqmlB3w9Uy5DluncE3yFHi9
	 MLdE8XaaY+pHQ==
Date: Fri, 22 Dec 2023 10:50:31 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Yang Xu <xuyang2018.jy@fujitsu.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 2/2] swapon.2: Adjust decreased value under
 CONFIG_DEVICE_PRIVATE
Message-ID: <ZYVb54l_2AicJCLo@debian>
References: <20231222030709.139005-1-xuyang2018.jy@fujitsu.com>
 <20231222030709.139005-2-xuyang2018.jy@fujitsu.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sMjVqV5ggjtbc28F"
Content-Disposition: inline
In-Reply-To: <20231222030709.139005-2-xuyang2018.jy@fujitsu.com>


--sMjVqV5ggjtbc28F
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 22 Dec 2023 10:50:31 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Yang Xu <xuyang2018.jy@fujitsu.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 2/2] swapon.2: Adjust decreased value under
 CONFIG_DEVICE_PRIVATE

Hi Yang,

On Thu, Dec 21, 2023 at 10:07:09PM -0500, Yang Xu wrote:
> After 4.14 kernel patch [1], it addes SWP_DEVICE_NUM macro and value is 2.
> After 5.14 kernel patch[2], it incrase this SWP_DEVICE_NUM macro to 4.
> So we should add this info in here to calculate MAX_SWAPFILES.
>=20
> [1]https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/com=
mit/include/linux/swap.h?id=3D5042db43cc
> [2]https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/com=
mit/include/linux/swap.h?id=3Db756a3b5e
> Signed-off-by: Yang Xu <xuyang2018.jy@fujitsu.com>
> ---
>  man2/swapon.2 | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/man2/swapon.2 b/man2/swapon.2
> index b2651fc39..21d6416eb 100644
> --- a/man2/swapon.2
> +++ b/man2/swapon.2
> @@ -177,7 +177,8 @@ Since Linux 2.6.32, the limit is further decreased by=
 1
>  if the kernel is built with the
>  .B CONFIG_MEMORY_FAILURE
>  option.
> -Since Linux 5.14, the limit is further decreased by 4
> +Since Linux 4.14, the limit is decreased by 2,
> +since Linux 5.14, the limit is decreased by 4

Why remove "further"?  Please add in parentheses the total value after
the decrease (thus: 123) to clarify what is the limit after so many
decreases.

Have a lovely day,
Alex

>  if the kernel is built with the
>  .B CONFIG_DEVICE_PRIVATE
>  option.
> --=20
> 2.27.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--sMjVqV5ggjtbc28F
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmWFW+cACgkQnowa+77/
2zKz1w//YIiPs4RdnTKz1B0MZDCCJa9UVEyeU/H19HR0Z3ARRQfR6rT4DUttJ++J
FIOwYayR1pjuUr7pdQjrKWgZVt7XYOOS0RzcLtvL0x5FRGq5HmQhLjzpV1cfKYX/
Y8URfsjasEH25hTFQviBo4mXpcEJ9DraPa7l8Gd6oHp6u1WjsPY54ZE1bxmhQvHA
hNXOilni6v2M9pwogJdFxWkX6LAEsN2gckGEkX3hx3FCpR5m+nNV6LRm7lyfk5km
RVV0nTv39ycCV4a5BGva4ajKcoB1EXVpKCtrURVCZ3wjhxVTTHR3OHNQfTHAZ6r5
92pxIY4pB6m4MiS8blULY7lGO79ku6AQj7ZTJcRdD9uL/8x4teLnL26EMmpLREdp
OBi3XANvzYfU4j4VR+lhBcnDI0RvZfucGSym2ZAZR1Yhv/iTOrLCzRwBzymC0f6L
tnMcZ+MIE87QzjHaE34M2gM/8csv8ZkCE7/vsdAs3PDfn4oqhAC2d5ZDeDkJ8C44
CRwjgFosJ7BrJYi2JQuWrdT4RE9GEMhNqbFhnyQb47Hn+/vvj8GXpO4wAjp1cBBx
kHNX3I0UWGnyBUq708kN2/Kim+MDREiV1oMC2n0s0WpY82KF8ZuttbeW175I943i
VA2urGft5WBnQnQb3KGunLAmh54pHqbtToh/Bi1tCYr573xuPQQ=
=XdJ8
-----END PGP SIGNATURE-----

--sMjVqV5ggjtbc28F--

