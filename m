Return-Path: <linux-man+bounces-3474-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E549BB29E14
	for <lists+linux-man@lfdr.de>; Mon, 18 Aug 2025 11:36:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 17D7B3A937B
	for <lists+linux-man@lfdr.de>; Mon, 18 Aug 2025 09:36:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3006B30E0F4;
	Mon, 18 Aug 2025 09:36:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="roAAUBAO"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0BED30E843
	for <linux-man@vger.kernel.org>; Mon, 18 Aug 2025 09:36:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755509775; cv=none; b=FtLIxzhD3GGbe/9gXlnwFVEK/e+sHYZOp2I5WXgKEWeh7CleNupDMC86QljL1GRtgpops6RWEdhSBxBcG5sxgvgEodm45USzSvqIWjDQNmD+h6ClP/CTEncsJHIUBPAj+GoVEiyBhCcXrRpS3/3z7hOsjULRfTx0wxEUvBBxz3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755509775; c=relaxed/simple;
	bh=cb+mBMHI8deHAzCdrq7tnTaMdgF73ZmvQVsigMH6T9Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=O/jgYSTCw1Ehilo+SwHkKEhLHbyIPN5uBibZilASeGo8n5D6+eCKdfKD3vr2X/un+6BMly4xkAaXaDFR4zX7aMRYBUxtb/HEWH9hlC/5BKOcKZdxVr2xN/gEhOaSkJtZiRg8FMZQBHqcd1EqRYyqSVtJRULdDCo4JDJ1zVPwBac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=roAAUBAO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D2B53C4CEEB;
	Mon, 18 Aug 2025 09:36:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755509774;
	bh=cb+mBMHI8deHAzCdrq7tnTaMdgF73ZmvQVsigMH6T9Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=roAAUBAO4jb7W+mCiMMFHbB+Ma79IaR12WXMivkx/kipp3z6iB756sjGRd6WdN6Ap
	 X2Qq/tLfqZI/7JKipNZsP1Bt8MpfHj2WK/D4k6/wuumr79AB4IajHX4NTKuzamcM+t
	 buKXhTntxTwOpy7kATKCApuSDWHS/dfBzWtmtuk2kwpIj66U/HkIDzJtSSr4Y0WZpV
	 VKvJrv6lJEz3k9o/d5QMIapWW2TblkEmsjgClSJcQqm5WkSKrHz0OZsD/aY2dSQVCR
	 ulZN9UW+KoQRAC7rS41/Q/Z9cGTCZsDc0ezZvsF/Yl3U7CmhplJbuEq3PdBAksEiAa
	 qrWH0f1dRUF4Q==
Date: Mon, 18 Aug 2025 11:36:09 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Alex Yang <himself65@outlook.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/getrusage.2: clarify ru_maxrss unit as KiB
Message-ID: <lu7bod4jnnjmtndreufy7ptbg5qysysxvdeqnqtr7s5g2bozk3@agvzaj2svg6a>
References: <jclco3uxvj7drormblgik6fsa36aemanyxqaf44mhaqgbwszye@nuhauaulbrlg>
 <20250818075905.40146-1-himself65@outlook.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hyzzwuwasljxkz2l"
Content-Disposition: inline
In-Reply-To: <20250818075905.40146-1-himself65@outlook.com>


--hyzzwuwasljxkz2l
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Alex Yang <himself65@outlook.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/getrusage.2: clarify ru_maxrss unit as KiB
References: <jclco3uxvj7drormblgik6fsa36aemanyxqaf44mhaqgbwszye@nuhauaulbrlg>
 <20250818075905.40146-1-himself65@outlook.com>
MIME-Version: 1.0
In-Reply-To: <20250818075905.40146-1-himself65@outlook.com>

Hi Alex,

On Mon, Aug 18, 2025 at 12:59:05AM -0700, Alex Yang wrote:
> The ru_maxrss field was previously documented as using "kilobytes" as its=
 unit. However, the value is actually in multiples of 1024 bytes, which is =
correctly referred to as "kibibytes" (KiB) according to the IEC standard. T=
his change updates the documentation to use the precise term.

Thanks!  I have applied the patch.


Have a lovely day!
Alex

> ---
>  man/man2/getrusage.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man/man2/getrusage.2 b/man/man2/getrusage.2
> index 34e81f540..a1b30e5b5 100644
> --- a/man/man2/getrusage.2
> +++ b/man/man2/getrusage.2
> @@ -88,7 +88,7 @@ expressed in a
>  structure (seconds plus microseconds).
>  .TP
>  .IR ru_maxrss " (since Linux 2.6.32)"
> -This is the maximum resident set size used (in kilobytes).
> +This is the maximum resident set size used (in KiB).
>  For
>  .BR RUSAGE_CHILDREN ,
>  this is the resident set size of the largest child, not the maximum
> --=20
> 2.50.1
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--hyzzwuwasljxkz2l
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmii9AkACgkQ64mZXMKQ
wqktzw//ZdGRD8rORik3ekH7NQOxz9mjM2Znv+CE6wPR/S5N062hmCRlA7rhj31v
06aYb/ggxCv/WCSainpbnUnORfq7+PCrFS4jkGWDvUB2ewq26wotMO+8Gu0kN3md
YBGVu7ghF5mlVGaggj/uNfJbyvJte1nOskXN2SZRKBkx78O5NAmU1YbcsviHMdm0
0EAj0alMv27bwpZEySBa2mwBS4rUPBlWQ3e5HGoY9LCJI9A2xmgW7A6+/sLb7Xgc
imfrKMMy4/Mek8wXr6IrlWkHjij2AGbM7CPWLoHCDi7FMmdXI46/jEhgn1VALNd0
0BMff4AFXVr1wIrFFdiWfnoM9gDp7zdOpHn+uiO4H1hGa5NqqYjDyeEK6yONO6zf
gve+CAgp/C9DAQk5mw+TwraEWg8OJbKhk7cNaQ8ehXvu0y20PkAaSuJxj5Ig5HpR
Qyi2F0o07Ql7WpR4OfabbWHUznLcpAcHJHRzcXcgs5HU3hcZP25hDk2glIL/bf87
pEOhpRySUO6bEKNNCpszWlRlyLahNhIpcmHSyvC7q0FERh0bFE677CVnJSQyXQau
B8mI2b66lJrtykiay68sp3qJvKEI+oZPcTlNOqx7z0AcJYWRaOZ7YWHl4+Gs8uwH
0sn7TQZWwMrXOTCmzBOKZ2C++Q1sy2L8iyX1OGCi3oaX5M01nFs=
=balx
-----END PGP SIGNATURE-----

--hyzzwuwasljxkz2l--

