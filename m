Return-Path: <linux-man+bounces-488-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 65C8586B7FD
	for <lists+linux-man@lfdr.de>; Wed, 28 Feb 2024 20:18:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 063DC1F26CAB
	for <lists+linux-man@lfdr.de>; Wed, 28 Feb 2024 19:18:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A805874415;
	Wed, 28 Feb 2024 19:18:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bFrwLL44"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 657F971ECE
	for <linux-man@vger.kernel.org>; Wed, 28 Feb 2024 19:18:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709147899; cv=none; b=L/NtaP1velAudioP+GqXJ9tA2Xqmpf6k3Sfvl2S3b0RQLg23AdpICcbEh2/lJmdMnmJ4DORvjEm09mSwzFbekc+UPi20P4/a78HOTm+UDPGfyiDCS6EWGDa2CQWnZ4bPuXZr9TN2ltjX15iWgLGNJEsSQ+RjnnEnZhDFCThFQA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709147899; c=relaxed/simple;
	bh=8aipT3jATnxo2ho5VGXI15CQ/cti9PlHwo7SpF45jNg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VTkhnl6ouVC/qXZ7cG7y6I4l3M7SQgodyIb8+j5ny9TwDLO7zstFXqTEys8ldWiWThcKWccHLKhmWguEF7L4/Vuj/oCddbGQkuLTZSOoWOiqlTsjamZ0ChflmLdIv8afA69gYAXr8F+sXrWlh1xGXqeZAQQeoveBLiLOKNjYuKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bFrwLL44; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D052C433C7;
	Wed, 28 Feb 2024 19:18:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709147899;
	bh=8aipT3jATnxo2ho5VGXI15CQ/cti9PlHwo7SpF45jNg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bFrwLL44epFsoyu51B2ilzmjWWsFlriWJZ0Woy0MI9Z7x4VhK+JLHGmKfiMTajiGY
	 jWMWUD7RwAUPfb1GWDBn+jy231hGkcgiUZEHcuiFs0tW98HTkpuLNeIPaF6+ktH0Aq
	 kku8RWcHmOfebYjgAVnVoC3jL5OMmk+lo7YxJmhKxaJaninr20yFLFOeiKpXrwcgue
	 rxIm1CFaP1JMrSVcyTJ1MT6+7GZ+ZXQCfOzQl0h5mwqw63402vNKcdUH8VAv21Y5PP
	 /+cbPDBLhf0ctY5q1JhR8DoWdapiZBeAJuZcZGZSNSt1PT045oywd5sXFy4LG5OjS8
	 4NmEMfCTdT9eQ==
Date: Wed, 28 Feb 2024 20:18:15 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jakub Wilk <jwilk@jwilk.net>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] Changes.old: tfix
Message-ID: <Zd-G-Hj9COWzYIm9@debian>
References: <20240228190828.2645-1-jwilk@jwilk.net>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ZHXg+dbplflU9sRC"
Content-Disposition: inline
In-Reply-To: <20240228190828.2645-1-jwilk@jwilk.net>


--ZHXg+dbplflU9sRC
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Wed, 28 Feb 2024 20:18:15 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Jakub Wilk <jwilk@jwilk.net>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] Changes.old: tfix

Hi Jakub!

On Wed, Feb 28, 2024 at 08:08:28PM +0100, Jakub Wilk wrote:
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
> ---

Patch applied.  Thanks.

Have a lovely night!
Alex

>  Changes.old | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/Changes.old b/Changes.old
> index c3c63d5dc..fa134e56e 100644
> --- a/Changes.old
> +++ b/Changes.old
> @@ -56494,7 +56494,7 @@ Global changes
>     -  Rewrite a large part of the documentation for string-copying
>        functions.
>     -  Say ISO/IEC instead of ISO where appropriate, and be consistent in
> -      the fomatting of names of ISO or ISO/IEC standards.
> +      the formatting of names of ISO or ISO/IEC standards.
> =20
> =20
>  Changes to individual pages
> --=20
> 2.39.2
>=20

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--ZHXg+dbplflU9sRC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXfhvcACgkQnowa+77/
2zIpQhAAq3cZF9dPmz+5hBz6LR/J80CIECJkJ0fR/Rgc8Qg2mZ0QXADUjXmtb0IM
RLYJ2YWIX7PSncKNeCy3Q+SQescWC1xP4CAKJDPjp2PM7ziy5EsXnKFBMlMrQ7CT
QZHBOk9BnvZnn1yLzhAazcbouLfn4akLP2G7avqXjhdPEXSq1VzSToI9qsJDlt5k
F20Wua1Pz2FPHzWdMaTZf+5NqfV/Y33SOViIPzxPB7dysqQtFVByb3RX66RL2B4a
eJeV6TZ3FuPtjhHKAea4F29w51qJxV6/p7UWe3UHyqYn7SqlWwrNQEWfSaTEupvB
tBuX+BJVQ12n2XbOCMuBIytBXIiAD5bSNwRWRSRWvphydevPKXzVIQI1frBTlyez
JRAqYWFf+ewDT+6Wu434VhWGfrbGuF3axvMfehTH6jKjkJnxJTwEdjmjmn7pAvjG
mHpmSSydRCmqax9aw5agvk5Rih0D/ZvvZ8vRbN15vK6pGdfdio33+cX7o4nwoUEx
/WdYCvnPXpHX1lGGzR5vwTc7q9FZN2GaUvJPxsjEbJQtemgmAlOclA5p616dkp1N
pW1nqp+w0Q95fOCXw0tXTNY6k+0Bkl8ttWLXDHTAbEtGBwY8t/18DZbcOkTX6ybY
Q8KLg8NlI6Or/WdTDxMnPz6qs2LM6hLO8AGMKnM14KS2C+Nkrzo=
=6HTR
-----END PGP SIGNATURE-----

--ZHXg+dbplflU9sRC--

