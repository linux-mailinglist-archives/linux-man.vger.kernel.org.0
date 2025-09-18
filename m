Return-Path: <linux-man+bounces-3875-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A667B85D44
	for <lists+linux-man@lfdr.de>; Thu, 18 Sep 2025 17:58:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6812A7C7FB1
	for <lists+linux-man@lfdr.de>; Thu, 18 Sep 2025 15:54:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D28118BBAE;
	Thu, 18 Sep 2025 15:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GOLuDxhM"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A3C6314D33
	for <linux-man@vger.kernel.org>; Thu, 18 Sep 2025 15:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758210753; cv=none; b=EjZ/OZO1jn+22JIIQ+y1MDh7t6F87KwAA3EapaMLzO1Al9dCiHyJFuQ0+kEiPQHlVun8QyHLt1LZUIeCs0M0j1yV0A2BqXiFea8/Db1hBLe2k0P1Am4q2aVlU1SVBMLQkclhPvsi7o0PQUdZS6ApVwQZ7ptbxCvRV924MI+sxQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758210753; c=relaxed/simple;
	bh=7qwxw+MUjPMLQO7ZR2Zp3gqfxMYvJBW5iqGRBIcMlAM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rne7FabH7Hy2yWEtKoBN1knXevIRi26mSilrrwSGqWbQCR5MNM8bEU+An3Bl76xEYTPMcOuU7IIGgADZhFxEtQrmz3ASHRn7IrcrkeYIa0sgHdWvWZwA/RIJh9xeMM5CdpsXVXmDhmPUXNISIFrHYZSJDTY00zShBIhWPWiKLMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GOLuDxhM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3C21AC4CEEB;
	Thu, 18 Sep 2025 15:52:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758210752;
	bh=7qwxw+MUjPMLQO7ZR2Zp3gqfxMYvJBW5iqGRBIcMlAM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GOLuDxhMsh9L6tOlWbBOGB+SbRMPbflPhKS35Vzo/fhuMs49F7uYG6lvDk64OLjbU
	 rukqn6xqOaXlW2lZEYZDfDLsvtDOSniOhTdEijeIZQTC3xHy8XnLhPR1bAGr9NRpqi
	 PcukRNiTWZLPVZGif1nhMxKyrJ+aItUOLrO7LKt69CFTbSEt+EGNnCtHD0B0zxU4QR
	 rMYzqp1cempUuXvKw2QOWGr6kqp/m/uktohz1jFC2BEZBUSy8wSR+9RbwYuLoW/tpY
	 kIoXNgC2mYN9C4VRNz6EZlJB4amnER+RC4x8+qDZmzKaXNaF9x+P8yZPlu9rOcoxSl
	 0PdKhS5MpxCgw==
Date: Thu, 18 Sep 2025 17:52:29 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Guillaume Nault <gnault@redhat.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] rtnetlink.7: Fix .br command in RTA_MULTIPATH.
Message-ID: <qxbvg6l3e2v7frrhen3pollqz574axnegtbvkdirdcpfbtkt6q@jaaogiz7dbqk>
References: <901f3e9f201e9dad7af3456ec7e21e738dfbd899.1758208304.git.gnault@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3z3e7ijseaika5mh"
Content-Disposition: inline
In-Reply-To: <901f3e9f201e9dad7af3456ec7e21e738dfbd899.1758208304.git.gnault@redhat.com>


--3z3e7ijseaika5mh
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Guillaume Nault <gnault@redhat.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] rtnetlink.7: Fix .br command in RTA_MULTIPATH.
Message-ID: <qxbvg6l3e2v7frrhen3pollqz574axnegtbvkdirdcpfbtkt6q@jaaogiz7dbqk>
References: <901f3e9f201e9dad7af3456ec7e21e738dfbd899.1758208304.git.gnault@redhat.com>
MIME-Version: 1.0
In-Reply-To: <901f3e9f201e9dad7af3456ec7e21e738dfbd899.1758208304.git.gnault@redhat.com>

Hi Guillaume,

On Thu, Sep 18, 2025 at 05:12:07PM +0200, Guillaume Nault wrote:
> Add the missing dot before "br", so that the command is properly
> executed instead of printing a spurious "br" in the output.
>=20
> Signed-off-by: Guillaume Nault <gnault@redhat.com>

Thanks!  I've added a 'Fixes:' tag, and simplified the subject.  I've
applied the patch.

<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D964ef0730697eadfbb9937a21588d694b5557218>
(Use port 80.)


Have a lovely day!
Alex

> ---
>  man/man7/rtnetlink.7 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man/man7/rtnetlink.7 b/man/man7/rtnetlink.7
> index 46bccef11..cb9f5155f 100644
> --- a/man/man7/rtnetlink.7
> +++ b/man/man7/rtnetlink.7
> @@ -345,7 +345,7 @@ RTA_PREFSRC:protocol address:Preferred source address
>  RTA_METRICS:int:Route metric
>  RTA_MULTIPATH::T{
>  Multipath nexthop data
> -br
> +.br
>  (see below).
>  T}
>  RTA_PROTOINFO::No longer used
> --=20
> 2.47.3
>=20
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--3z3e7ijseaika5mh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjMKr0ACgkQ64mZXMKQ
wqmo7RAApyToyQIfQ55dnx82JSjO3PxJ4kO71RWQytruYsBV09jy3KFFcFzy3oJC
wi444Ucc2jqNx4kMJnbNGZvbpyAVGS3pDWTD8ilXUaZCGagQUZ8HDn1SP5DumJM5
XxIHr4Q3Drgb1vw3sCJuaodnM8sKW7ZIx744k4XIDkGfbAOZVALXKxmNx/gTfXJB
sJibqk19f8WaVUULl39EOtVU4NT4CCCJoBVdepxQ9wEqpYor2cQrKZuXQZHOEaJw
EcOkfUWZsmt5ryl9FpN68M9Q8oCGwSHUu9tnlnEzwY3yre3oTTN3LuWePC/M+lOw
SK2Zko9v7XRNsABom8WFhtXEvTHP81d9BGH8ui/PjDi3M1xqp1KuwHJEXuj1PIge
w+aPuYjKHm9owtfaXozMgfGu5j10Ylucj7INmroj8GfcSv9psL8fmXtA1rzv7PdT
qnt9mh7DgotZjlpHUaP/WQ1PgiLgC3ZSr6G0buthI2KCzelWv/NsLIwyyU44smrQ
7y/p81fcaez0WqAf1XNs1A6nwfBM9sIrdJWxnS+WzJDl+OctTuMUFN6BnDkgylqf
ncepWJBxIKrFHXPfXKXseMTzZaLx/j6pLob8Y6IiGnQOQZQMB+e8SC7GrTfFYGmd
/FK5b6xfhmHblol4avyfnT4T9PMe6/D/XzfwmCUf2XIi9UoKG34=
=NwLj
-----END PGP SIGNATURE-----

--3z3e7ijseaika5mh--

