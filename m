Return-Path: <linux-man+bounces-4451-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D4A4CCDB9E
	for <lists+linux-man@lfdr.de>; Thu, 18 Dec 2025 22:43:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8DA893005FD6
	for <lists+linux-man@lfdr.de>; Thu, 18 Dec 2025 21:43:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33AB1339844;
	Thu, 18 Dec 2025 21:43:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K7eNDPVP"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12427332ECB;
	Thu, 18 Dec 2025 21:43:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766094206; cv=none; b=T6Y3n3Xw+dMXhcwINqF8IWJd8JQnZDqdURCnnxJuJNOeHS64HOyharvZYL1x6DfnLSMDt+afAKjC+T1y+sjLIAKABD13kFHCOS5uqh0ntPXyyr/Ul7DMKxgUTQv5ZwtTfoqZr4ANQsWAAjFuSVqNJdZKypRB/ZnArDyCAKK6LqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766094206; c=relaxed/simple;
	bh=BRaSFUALDAenYjZvPbVGgRX4WEahlNYz80Rfl+B6ISc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RrxBrvPJ36d6U2YZD205BVxlmqUR4MF5C0AzqPcqq7UAisYHU9bbbxO8UcX5OfjrLSQLeqoZEHnQG8H1NihY5TIhlCiSHAXZnUWJwGStOLY9jL4U2c93ZVuXZN+ZvWxwOL2IADceu3KpVbch9JZW2v3r1giJUKkw8x0MWbyRMGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K7eNDPVP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 38E02C116D0;
	Thu, 18 Dec 2025 21:43:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766094205;
	bh=BRaSFUALDAenYjZvPbVGgRX4WEahlNYz80Rfl+B6ISc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=K7eNDPVPaqNxeefb6xOXgXi9Yy/aRTOhC2ntsaCci5BB7i5sM/pwxs2lxPTpUZXcq
	 MXFhUD0Yit1Yzj8f4P7yDpOtRDq22j987ViSEQjGQSeLVamvBBrKHpAo5kUZQ1VNnJ
	 fnRj1TcxvBh5TPJ2j2BpA5UxJfRaa0q8Fm5GN80sXcIgq7wPWATSY8D7m/tFP0ontb
	 zo8on1RSiRmTwG9lNS7RmZmS244/KvbUBUxTh8/4xjfulQB/vRycoDPq3tGPZ+hKae
	 FvRxZct9zOs1h9Y6WH7sxaXMNrr2xs9TQXkwlOI0kHcy1Dc5npFC5EVIhMzM+H9Nq0
	 nBMkmPvz74Cvw==
Date: Thu, 18 Dec 2025 22:43:20 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Alyssa Ross <hi@alyssa.is>
Cc: linux-man@vger.kernel.org, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
	Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, netdev@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] man/man7/rtnetlink.7: document ifi_change
Message-ID: <pni77nbzp4wi5p6yhe6j25bnyynebp66gujb2h5hknox3rlcwp@wz3smeklju22>
References: <20251218185452.88205-1-hi@alyssa.is>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="25amakqgzrurdo4e"
Content-Disposition: inline
In-Reply-To: <20251218185452.88205-1-hi@alyssa.is>


--25amakqgzrurdo4e
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Alyssa Ross <hi@alyssa.is>
Cc: linux-man@vger.kernel.org, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
	Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, netdev@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] man/man7/rtnetlink.7: document ifi_change
Message-ID: <pni77nbzp4wi5p6yhe6j25bnyynebp66gujb2h5hknox3rlcwp@wz3smeklju22>
References: <20251218185452.88205-1-hi@alyssa.is>
MIME-Version: 1.0
In-Reply-To: <20251218185452.88205-1-hi@alyssa.is>

Hi Alyssa,

On Thu, Dec 18, 2025 at 07:54:52PM +0100, Alyssa Ross wrote:
> This hasn't been "reserved for future use" since Linux 2.6.22 (commit

lol!

> 83b496e928db ("[RTNETLINK]: Allow changing of subsets of netdevice
> flags in rtnl_setlink")), and it's used by iproute2.
>=20
> Signed-off-by: Alyssa Ross <hi@alyssa.is>

Thanks!  I've applied the patch.


Have a lovely night!
Alex

> ---
>  man/man7/rtnetlink.7 | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man7/rtnetlink.7 b/man/man7/rtnetlink.7
> index 56cb79bca..6e873dc71 100644
> --- a/man/man7/rtnetlink.7
> +++ b/man/man7/rtnetlink.7
> @@ -83,7 +83,9 @@ is the unique interface index
>  message, thus creating a link with the given
>  .IR ifindex );
>  .I ifi_change
> -is reserved for future use and should be always set to 0xFFFFFFFF.
> +is a mask specifying which bits of
> +.I ifi_flags
> +should be applied to the device.
>  .TS
>  tab(:);
>  c s s
>=20
> base-commit: 46950a0845de91c422efe6c639091ace42cb92f8
> --=20
> 2.51.0
>=20

--=20
<https://www.alejandro-colomar.es>

--25amakqgzrurdo4e
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlEdXgACgkQ64mZXMKQ
wqkgHRAAn/b9/PPmVRYjMmhTyLKTP2d+oTgDGYH0RPTYf7aZH0NcMPd7ui+KssFa
Z1oXx/GUu/IqF8kjQNgHjtwHW6YrADOHoUMqbTrq4STRrNuXkfpBUcbKY77+Frl5
OHOwLhZ2wXTitR0TSlmJEtfiUob0RFSTkWjvK/BovdVguwMaVx6L0KfKQtYc25MP
QUR7n8kcITbOSJ6QGQCCJu2Z1mb7FouZmQIyWq2S5zXOBFGfS0NupKAwIGl3v3jR
PDdtM4UjmEHdBbkMqrp/+L1HglRIYALAn5+gT7N6cRE2qg2c/wF5yhGfeutHkzBG
U+4EwwcEyG+9B1dyQHXfVEXVZjiJaeH5dq3C0p0Feb7PxFCWED5MzxCJNFrdd57e
9SegmnSTj2aku91dyeZFm3FeBwZXo+CL4iXiTkdtrsCuvzKON0nugKGsZW1V20Ll
m4BIyd2aiadNEZjAXIlNqwAsNJHWxpK0yn/9lFqEX4CPIL6nR3HL9ShlIiLuGLvM
EeGgnWGfUMm7pGNIPD0gJKu9T+gbjlCXIls5lRYPOxrcQBwo58bE823ui8faAsaZ
JHRUwZTIeinjQYHkESzwrdOJchVNVK6GqwRYp4zNgfEPBDd07h29dHP4M2AcyTC7
AqPYzVoAY8Gh1dXku41lnrP+Bog+Pw+mzRi7yB/0ZCokZstDxaA=
=eLOH
-----END PGP SIGNATURE-----

--25amakqgzrurdo4e--

