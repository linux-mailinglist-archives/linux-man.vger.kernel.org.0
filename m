Return-Path: <linux-man+bounces-2697-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DA52CA76291
	for <lists+linux-man@lfdr.de>; Mon, 31 Mar 2025 10:38:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2CB4C188A6E9
	for <lists+linux-man@lfdr.de>; Mon, 31 Mar 2025 08:38:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E1331D90C8;
	Mon, 31 Mar 2025 08:38:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cg6poftB"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D1F527726
	for <linux-man@vger.kernel.org>; Mon, 31 Mar 2025 08:38:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743410308; cv=none; b=avCqJqohULQMxxH2R+LBnkk34Yb/QuOr8pulEZPnMjc2Uk01d1WrWdn23Kw9llGdV8K4G3hNQP/EvRthnLDw00sCKWbWIOc3iKyAlcLf35/Som3aV06D0ehu695PbyiaZtspOItttj9CtM8jUBwq1i3tLIv6P8LuHTYMinV+b/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743410308; c=relaxed/simple;
	bh=YTv2wvkawqwRg9YXiveP93RLsNErkOr7d4QB60o2efY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=U3v1oFPpLD1mh4tHCTi0AbcK8wPY7uhGGVS8ZgrEYNiA8A7pbwWsma9R9ZDw1qm++FmviVOUvf7zHWj5QBOI9G52YU/Sr1EVzLlVN8Q6B9uxZ/svQ+eQJwJHwRtuqVxdSWE2nCeo/Z7z8wp0dkDKilWvy36o/WF7OUQL1ND746s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cg6poftB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB32CC4CEE5;
	Mon, 31 Mar 2025 08:38:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743410307;
	bh=YTv2wvkawqwRg9YXiveP93RLsNErkOr7d4QB60o2efY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cg6poftBiyOIoPOhpn3VkXsznojne6L9LTWW/fBwS01gpZk55Ee1OWycJqW3rbfq9
	 3ByOUqXiJSleo0MU8jym6Jl3Z9mggxd/DxwEWR8U2tvxs8bfWiWxTqpX7NHtnWxu2M
	 d7EidVt3UAuDW9dAHuI0KAmt/gwOG1JE2I/ZOkwbpd0vzY1uyyN58yh337qKYgnKQE
	 uIIwIFNGbFxHVsCDy+P0ey0faIFnh292a+b1EjYJ/K8c6eBsovdFtcma8lbiDSH62k
	 FrSQVDClEyH0Q0rOgF5mP2ueZqi4P6BQdZGtaXIvoKdedukkyG8hQo/71Pqv5gIqis
	 XW0vDtDthWPDQ==
Date: Mon, 31 Mar 2025 10:38:24 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Amir Goldstein <amir73il@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v3 1/2] name_to_handle_at.2: Document the
 AT_HANDLE_MNT_ID_UNIQUE flag
Message-ID: <as3iyfw75ptjp6facwtrr2hou2r2l3oxsbl7ylxzi3ipolcs2j@l4j5dnclusxu>
References: <20250331081642.1423812-1-amir73il@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="e7k7wtoygxzb3kt2"
Content-Disposition: inline
In-Reply-To: <20250331081642.1423812-1-amir73il@gmail.com>


--e7k7wtoygxzb3kt2
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Amir Goldstein <amir73il@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v3 1/2] name_to_handle_at.2: Document the
 AT_HANDLE_MNT_ID_UNIQUE flag
References: <20250331081642.1423812-1-amir73il@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20250331081642.1423812-1-amir73il@gmail.com>

Hi Amir,

On Mon, Mar 31, 2025 at 10:16:41AM +0200, Amir Goldstein wrote:
> A flag since v6.12 to indicate that the requested mount_id is
> a 64bit unique id.
>=20
> Cc: Chuck Lever <chuck.lever@oracle.com>
> Cc: Jeff Layton <jlayton@poochiereds.net>
> Cc: Christian Brauner <brauner@kernel.org>
> Cc: Jan Kara <jack@suse.cz>
> Cc: Aleksa Sarai <cyphar@cyphar.com>
> Signed-off-by: Amir Goldstein <amir73il@gmail.com>

Thanks!  I've applied the patch, with some minor amendments:

	diff --git i/man/man2/open_by_handle_at.2 w/man/man2/open_by_handle_at.2
	index da0129dee..47405b118 100644
	--- i/man/man2/open_by_handle_at.2
	+++ w/man/man2/open_by_handle_at.2
	@@ -127,7 +127,7 @@ .SS name_to_handle_at()
	 .I flags
	 argument is a bit mask constructed by ORing together zero or more of
	 .BR AT_HANDLE_FID ,
	-.BR AT_HANDLE_MNT_ID_UNIQUE,
	+.BR AT_HANDLE_MNT_ID_UNIQUE ,
	 .BR AT_EMPTY_PATH ,
	 and
	 .BR AT_SYMLINK_FOLLOW ,
	@@ -153,11 +153,11 @@ .SS name_to_handle_at()
	 contain the
	 .BR AT_HANDLE_MNT_ID_UNIQUE " (since Linux 6.12)"
	 .\" commit 4356d575ef0f39a3e8e0ce0c40d84ce900ac3b61
	-flag, the caller indicates that the size of the
	+flag, the caller indicates that the width of the
	 .I mount_id
	-buffer is at least 64bit
	+buffer is at least 64 bits,
	 and then the mount id returned in that buffer
	-is the unique mount id as the one returned by
	+is the unique mount id as returned by
	 .BR statx (2)
	 with the
	 .BR STATX_MNT_ID_UNIQUE

The most notable one is s/size/width/.  In C23 there are the concepts of
the width of a type and the size of a type.  The width is measured in
bits, and the size is measured in bytes.  Let's be consistent with that.

I have also proposed a new set of operators for ISO C2y, which are
_Minof, _Maxof, and _Widthof, which yield the minimum and maximum values
of a type, and its width in bits.
<https://www.open-std.org/jtc1/sc22/wg14/www/docs/n3518.txt>
The C Committee seems in favour of that proposal, and I expect it will
be accepted in August.


Have a lovely day!
Alex

P.S.:  I'm not using my @gmail account anymore.  Please use
       <alx@kernel.org>.

> ---
>  man/man2/open_by_handle_at.2 | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
>=20
> diff --git a/man/man2/open_by_handle_at.2 b/man/man2/open_by_handle_at.2
> index 6b9758d42..e3ec70dd5 100644
> --- a/man/man2/open_by_handle_at.2
> +++ b/man/man2/open_by_handle_at.2
> @@ -127,6 +127,7 @@ The
>  .I flags
>  argument is a bit mask constructed by ORing together zero or more of
>  .BR AT_HANDLE_FID ,
> +.BR AT_HANDLE_MNT_ID_UNIQUE,
>  .BR AT_EMPTY_PATH ,
>  and
>  .BR AT_SYMLINK_FOLLOW ,
> @@ -147,6 +148,21 @@ with the returned
>  .I file_handle
>  may fail.
>  .P
> +When
> +.I flags
> +contain the
> +.BR AT_HANDLE_MNT_ID_UNIQUE " (since Linux 6.12)"
> +.\" commit 4356d575ef0f39a3e8e0ce0c40d84ce900ac3b61
> +flag, the caller indicates that the size of the
> +.I mount_id
> +buffer is at least 64bit
> +and then the mount id returned in that buffer
> +is the unique mount id as the one returned by
> +.BR statx (2)
> +with the
> +.BR STATX_MNT_ID_UNIQUE
> +flag.
> +.P
>  Together, the
>  .I pathname
>  and
> --=20
> 2.34.1
>=20

--=20
<https://www.alejandro-colomar.es/>

--e7k7wtoygxzb3kt2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfqVIAACgkQ64mZXMKQ
wqk59xAAh9xvFhfyxeuCXzHjFtG97R+oC0mfJptatwiRUM9Qo2Ud5iqXkM9CAqgy
8ppCxH2j83V2ilx5wN3degbi5y+uj2PCAzHzw8IzhmZbJyTSvtsTfraU4rG+YElk
lfWCk02yUZEHWWMVRZXNhVcwJQb3ohZDIgk1yKIRj9DQH8HU3kQXsyBTgfQzx+7X
ZE4WVQ1oTOF3tobRuhMkuk7v8ohxCwp7ITwkDMDrcKzndn6ytlqUjGgzlxlJopdH
H1YQTCYAPKoNqSC7rYj9oaTPvEgwU/AUHwWaWwlXYW2Irrz54fECzEgiSE1QiqvK
b3GMnK76m1Ls8UhoFs+VcOE61LvzhsPmxW/7tvWEN05l2iSOwl+y9i6N6l8HWplT
Q8ou8D1i9BrzHJsfOgKQgj0wxyC4uSsftx2sCA9LV6/CXca9GkOTJIMzqGO9wz6B
vE+KKzmcGOy8+4E1EfPp0S9k/Vddp2SdVqJ015ZQFpRp5+07HBS/pvbN80n1XhBs
pQLhdP5T9fveI/z/sWfte9jW0pt1JIpkeLLLWOyeiW31jbEmOhEYTNwU+x7HVTBG
cnMQfycYKciNE4WIZMwyWnpARaJRMRLawEbeQUtAXdWrdESb5v6my5tjXkYd9D3d
aZrXVMAgcWlFVlky66vXVAsdx5uXVXQGFXEvuETpt1ewQdOUlpw=
=un9R
-----END PGP SIGNATURE-----

--e7k7wtoygxzb3kt2--

