Return-Path: <linux-man+bounces-4611-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E3BB9CF165B
	for <lists+linux-man@lfdr.de>; Sun, 04 Jan 2026 23:07:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 44C9C3003794
	for <lists+linux-man@lfdr.de>; Sun,  4 Jan 2026 22:07:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46FD02D7398;
	Sun,  4 Jan 2026 22:07:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UqiuxTIH"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 043DD2309AA
	for <linux-man@vger.kernel.org>; Sun,  4 Jan 2026 22:07:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767564436; cv=none; b=sRQCCFmfsPXU7omDObKSOU9GEXkYquevgyKV6SM2OFr5v9YThIIufTQ7WXJebvG2LxYlf4C2p9H/tGiROGZgUaozzuGcnmd8dOLksoczGxq+xu6rWmzCMC2uwFDImV1wrplc/A+6y3qcbrihIt4t2pGjT4T6Tie3O5Y0eMjx/ew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767564436; c=relaxed/simple;
	bh=pYw2q27ZbQEHrIBbyiwfu5D4sLyEQ8I0uh3j6yt7eZQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Qf05wdQZt+d8RKUqwjlbAWsEyjBd58IduNOV0ibs0CTXq4iajnys8wVQ4OZ4ltWsY5ijzOGMj/NUJ2kqY+JTyGgnDheBmL3UyuBBhp5oPokqRP1ZrTUvxGnS0ciRHeusHfIYMlzOQjpaqSTS+Au6oHO9VykE02KNmLYAnxeDosg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UqiuxTIH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4FAAC4CEF7;
	Sun,  4 Jan 2026 22:07:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767564434;
	bh=pYw2q27ZbQEHrIBbyiwfu5D4sLyEQ8I0uh3j6yt7eZQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UqiuxTIHpNhHljVbDqh2Gx36cQmYXD+fp9UxViq8JUGR8VQlulIAEvbiBOjBHwOeJ
	 AaSurz8YHTVR05BH9X7Swgci4ubmzn58Kar4oT5gIlAJC5VguSPN/z+4PNAA8Y4rx2
	 6hE7X14F/uHbr2Ww/vtkpRMZX91/qJvbx9p+Jc/YxYdxJ+DcIgPzEJS4nV0BneXJpc
	 VV8QLAKWozX8FHMYQYUT9R5JCcczF6g9Gxko+zuNw4qYvtYr/XqaQ916djrrBFOW6k
	 jh0O5Vm49LDCBIUGl4v0njVbhklPYk1ZxG2BtVYoDS+zj+5ylsZgR8PUzmtccv5jFs
	 XtpAIC9lZz4zw==
Date: Sun, 4 Jan 2026 23:07:10 +0100
From: Alejandro Colomar <alx@kernel.org>
To: dg@treblig.org
Cc: linux-man@vger.kernel.org, "Dr. David Alan Gilbert" <dave@treblig.org>
Subject: Re: [PATCH] man/man5/gai.conf: Fix RFC reference
Message-ID: <aVrkdFXRaSJvzDx4@devuan>
References: <20260104214956.258199-1-dg@treblig.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="swmjiecmib57ftbb"
Content-Disposition: inline
In-Reply-To: <20260104214956.258199-1-dg@treblig.org>


--swmjiecmib57ftbb
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: dg@treblig.org
Cc: linux-man@vger.kernel.org, "Dr. David Alan Gilbert" <dave@treblig.org>
Subject: Re: [PATCH] man/man5/gai.conf: Fix RFC reference
Message-ID: <aVrkdFXRaSJvzDx4@devuan>
References: <20260104214956.258199-1-dg@treblig.org>
MIME-Version: 1.0
In-Reply-To: <20260104214956.258199-1-dg@treblig.org>

Hi David,

On Sun, Jan 04, 2026 at 09:49:56PM +0000, dg@treblig.org wrote:
> From: "Dr. David Alan Gilbert" <dave@treblig.org>
>=20
> Most of the RFC references correctly reference 3484, but the entry
> in scopev4 points to 3438 instead.  It references section 3.2,
> which 3438 doesn't have, but 3484 does have and talks about IPv4
> addresses so looks right.
>=20
> Signed-off-by: Dr. David Alan Gilbert <dave@treblig.org>

Thanks!  I've applied the patch.


Have a lovely night!
Alex

> ---
>  man/man5/gai.conf.5 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man/man5/gai.conf.5 b/man/man5/gai.conf.5
> index d80c23311..4aff0b0b9 100644
> --- a/man/man5/gai.conf.5
> +++ b/man/man5/gai.conf.5
> @@ -61,7 +61,7 @@ .SH DESCRIPTION
>  .TP
>  .BI scopev4\~ mask\~value
>  Add another rule to the RFC\ 3484 scope table for IPv4 address.
> -By default, the scope IDs described in section 3.2 in RFC\ 3438 are used.
> +By default, the scope IDs described in section 3.2 in RFC\ 3484 are used.
>  Changing these defaults should hardly ever be necessary.
>  .SH FILES
>  .I /etc/gai.conf
> --=20
> 2.52.0
>=20

--=20
<https://www.alejandro-colomar.es>

--swmjiecmib57ftbb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmla5I4ACgkQ64mZXMKQ
wqlY3A/+L7uyt3B5VMNHi2kW/6BlQPWpYMlOunxl9Wih9EE9u95RZKLGpMus/sSn
nyuSxwBFq1BKhGDc8DnZfK90txIB+7nuK/caCtaXJCND1UG5UARObjGmmwI16Dzp
icex0qk/H3STtJF7XmpklUasNKONBUyxHwBl2ypSXmi1MdCn7a23Xfm+KpJDtE7B
bLyyiKmlM8vzFC+HvOA8H8CEoK2O91P6HrMqRLwJeLZfMc/KJDqo9qY26DrqC7Be
PGUxSCOAcpVIXj/1egcDHG4XBYOBwjEKaC9C4Jg4wq/GV2oYKSkzhIPoggHSmPHX
gNKFEivuhAnRN1VjW8hf+gGqiHZKed+Jict5s8o8QAd8Ocqd+A0ExXB7nLLcRyyC
WncUoVpeLumASsSV5D5gZtx/1Rj2sU6Mh9BB7jccefs1htitWPC9FHbiyUXBVNQr
yjriGpb6Oe/6G+cpGICCUP2gHDesc7VBy47TQlTc43hBCSF4YtrH0KF0lND/snof
/zNPjhvqw5N/ORlFkkJH3Qo4cYHoMv5YoHWrtS6RBVnw4Kph9xKvDB5d/eih+YAE
HLxUVO18WitjVxSmFANQRIuxkKOyR9XPB/KBtJw/SVPeQwRCJSye06kNwOOEAofV
TjHsUp2QdTNi0MaKuGPUB2GIi2wscBwoqhIbbwj7vZJie+gBz2c=
=DPJX
-----END PGP SIGNATURE-----

--swmjiecmib57ftbb--

