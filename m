Return-Path: <linux-man+bounces-2076-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BECAD9DB68E
	for <lists+linux-man@lfdr.de>; Thu, 28 Nov 2024 12:35:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3417FB21937
	for <lists+linux-man@lfdr.de>; Thu, 28 Nov 2024 11:35:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BD38197A92;
	Thu, 28 Nov 2024 11:35:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fl0ZjVfl"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47D8A192B83
	for <linux-man@vger.kernel.org>; Thu, 28 Nov 2024 11:35:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732793752; cv=none; b=TLmthoynbiD2z/yarxxxJLwuEAp2l1m9qPNJCupG+GsQXQPGLrBUzad/H3ZW5Se6DEB85zruK4eWTv7kPlk0WmXNuZt/6CMO/6xSS9HUSD098G1BVP7zqmHgurmMTw05oxwmsvUz7tDouA/uTR+UowavKIvfOsn92laHc9FsS4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732793752; c=relaxed/simple;
	bh=z4NPKAk/VDL4WjOv0KfBeMBFuYIFEcc9M5gIn4mYFSI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=k4ycqrg3XZwCj4RNC3O94fqhOgIvsD0SZIWW5jf0bDpe/Y7Bl9Kunki6/36rz6Z/0IBYNVRfwHVkXobctIIm0cmy60h3LJfuePQMOz8gaUB3ItIuuANhmX4A5HZp+LH/769ajBWIAIcSuBEibJrZy6P39gKHWwnPrQIO98x/0CY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fl0ZjVfl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01BAAC4CED2;
	Thu, 28 Nov 2024 11:35:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732793751;
	bh=z4NPKAk/VDL4WjOv0KfBeMBFuYIFEcc9M5gIn4mYFSI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Fl0ZjVfl9Badv62Xj7wGoYwQUlJ3fmZjQuRILEkVbB03zjpkMiaYZl1PCH+tT8lLa
	 Gjv4dNROFHd7D1xqAKPCTQKCpt77oHOrfDBbe752uPhubAh2dGlWL3H8o8dvzPow1I
	 4ZGN5Qsh+N2ll7MBwNS6HW1KgKpNw2P7oSdNbIN8JkizTEn1ywxeeKhz9CAvPWgNsf
	 AbHQubxIhr9uFFMMhZdJeF3GA0nAShzAQImyRgxp3wQgBa+iOd1Hmbbtg1elk785Om
	 aJSmpndZvLfh9ezfp438pWSqO7Tm5jVa9SdBT75QHoD16wRaJ5xsGm8I9IdM4Q6Glx
	 8H1JgFn/Cwhng==
Date: Thu, 28 Nov 2024 12:35:48 +0100
From: Alejandro Colomar <alx@kernel.org>
To: tyberry@redhat.com
Cc: linux-man@vger.kernel.org, lgoncalv@redhat.com
Subject: Re: [PATCH v2] madvise: MADV_SOFT_OFFLINE requests can return -EBUSY
Message-ID: <20241128113548.zgq6qizi6ieid6fy@devuan>
References: <Z0XzU9R9Kx0RoeUG@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rxsw7qp47iqua2hw"
Content-Disposition: inline
In-Reply-To: <Z0XzU9R9Kx0RoeUG@redhat.com>


--rxsw7qp47iqua2hw
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2] madvise: MADV_SOFT_OFFLINE requests can return -EBUSY
MIME-Version: 1.0

Hi Tyonnchie,

On Tue, Nov 26, 2024 at 11:12:03AM -0500, tyberry@redhat.com wrote:
> If the page could not be offlined madvise will return -EBUSY. This might =
occur if the page is currently in use or locked.

Could you show this in a small example program (if possible)?
Like 30 lines or so.  If not, it's okay.

Have a lovely day!
Alex

>=20
> Signed-off-by: Tyonnchie Berry <tyberry@redhat.com>
>=20
> ---
>=20
> diff --git a/man/man2/madvise.2 b/man/man2/madvise.2
> index 4f2210ee2..c10dcd599 100644
> --- a/man/man2/madvise.2
> +++ b/man/man2/madvise.2
> @@ -702,6 +702,13 @@ The map exists, but the area maps something that isn=
't a file.
>  .BR MADV_COLLAPSE )
>  Could not charge hugepage to cgroup: cgroup limit exceeded.
>  .TP
> +.B EBUSY
> +(for
> +.B MADV_SOFT_OFFLINE )
> +If any pages within the add+length range could not be offlined,
> +madvise will return -EBUSY.
> +This might occur if the page is currently in use or locked.
> +.TP
>  .B EFAULT
>  .I advice
>  is
>=20

--=20
<https://www.alejandro-colomar.es/>

--rxsw7qp47iqua2hw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmdIVZQACgkQnowa+77/
2zJEQA/9EM1lvdoPB6+Grn3uLgvpZ5LCkudBZ3mGhT8Hom4FzEhVcRlpsxZKHP59
t2UnJGFlJt/LUQN5+HudkKj0DpLcuyBFRTmEw/VSCXi7PmQ/4p4V6h/qHMTPU3NX
3geaquTFOI2O8mal6x2lEWtlwrdMkzm5MXqMqOevFh7dCL7uEXjTr/Rv4XDsZfyU
yED5rXYHcaeDZRVjeD1ceCI4jbt36HRd9a2uDI/98phooV4COd4fSRX/d69qA9dL
rLLSoIK052vfsff7/5yyYcq9icgyaelzZPCU3/fmoMn07ns+Rod4e/gqhf3xjUKs
58rsIKoxycM07db6NhXDE6bNs+Up+NT3A/cW1Oc7+LgbelGPIMHWn0H0COft0WIp
2+Ph6uP5vaElfqFCg8HD6Fe29QZC1RMPTJ7io+DKjL+z8MlbiDDBppuEZ+3SE16u
g2AM4jfwi/PG5OL8xxGJEiHEfcLDqhwMYGcRavgI/SnRKuS3M/BNNf/gK/ILZ2YM
5st8oYk9ux9LHWNRh7CraCEmjy7WkLJgdRKPi9yEQ6RTToX+j/IkTS/YMBF8UKZs
MSrBg2pbE7+AWVcfisBhESQcm9atGtcz6r3BRMm96UYgC4WTbPP9vgS0z9HXYa7n
CwssPNlGu8JTCDFtLSTtfPoUx9V+SXp1oUExnpIqGlGOSpXpqD4=
=Gk2V
-----END PGP SIGNATURE-----

--rxsw7qp47iqua2hw--

