Return-Path: <linux-man+bounces-3146-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C18AD854B
	for <lists+linux-man@lfdr.de>; Fri, 13 Jun 2025 10:12:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 714241E03D8
	for <lists+linux-man@lfdr.de>; Fri, 13 Jun 2025 08:12:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5797B19DF62;
	Fri, 13 Jun 2025 08:12:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="knq9HxYk"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 164962DA777
	for <linux-man@vger.kernel.org>; Fri, 13 Jun 2025 08:12:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749802328; cv=none; b=Tr7M6AiOrF6lMJ8lUflulnGDGIHlxgOOBSaDSWO/nHLsBRjAucWmKZEymLu5LOh3+ebFnATaDG/elj56BxOCVNmWbmMuu78Xp2mWW5Z8Blb5OG/dkHybh9Rc1xnMIxbdXpSbav8cUwi6zAxwoPE3LLcoe2EtVH9DjdJnab2e0uI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749802328; c=relaxed/simple;
	bh=4UwVqM4k16aJ5b7wFT9ZqzkkjQBfmp9467nMioQfFVs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rNIg8WXmkbdjohkBi2d2EbSuugd+xRiKzHiTItGGbBTzrZjgfCK4SE1GjKXN/aDOuehOjxCjGpNXv9euJct+TcfvIjD3aXE56jSHS3lq++Owou87UsTRtEpvMgtgudTuOm+4cuCJorwyKe9ty/6PdsqywkxRTGqQWPHChBQEFuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=knq9HxYk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F0881C4CEE3;
	Fri, 13 Jun 2025 08:12:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749802327;
	bh=4UwVqM4k16aJ5b7wFT9ZqzkkjQBfmp9467nMioQfFVs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=knq9HxYkw80LW4hmJx0sPMRC9XLWJQ68Q8FMLLehRrAgPy9eKk6GxuH3ww7rNfp2w
	 oNxHzStL0q+zorW+aLr2dKP3MaM0btQEdd8xQMn+iemBrMW+rg2WtA4NMTvRf4sZcU
	 +Gt2+hd9u1IJQTX712yHJkRkfBI9ZZ10S8n89satfqVpgh2NjV/NFYFwdMHd31DdhZ
	 raxJgjwBvxtJVrIBh0UtTurewo4QXOcAkJpdsRQ3Q4zm9Zc+/mqNxRb2sjuu8+gcI1
	 l/cKSP/V2Z6CNZLjtfiMzfN0iTaMeZU8E2QhyeciELKlKZUQPT7roTL7yGjnNj62HV
	 IOiJpgvKJ5D7g==
Date: Fri, 13 Jun 2025 10:12:04 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man3/ptsname.3: Document ptsname_r incompatibility
 on FreeBSD.
Message-ID: <ash5acxppxv7h6kn5y5arphn7hl7nb7bdt4go6vjoexx33khgi@rdonwnad46uq>
References: <37f138bc5c5e6604f0a0afcc531694387d2cc424.1749792527.git.collin.funk1@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dudnu5ep7gbredpv"
Content-Disposition: inline
In-Reply-To: <37f138bc5c5e6604f0a0afcc531694387d2cc424.1749792527.git.collin.funk1@gmail.com>


--dudnu5ep7gbredpv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man3/ptsname.3: Document ptsname_r incompatibility
 on FreeBSD.
References: <37f138bc5c5e6604f0a0afcc531694387d2cc424.1749792527.git.collin.funk1@gmail.com>
MIME-Version: 1.0
In-Reply-To: <37f138bc5c5e6604f0a0afcc531694387d2cc424.1749792527.git.collin.funk1@gmail.com>

Hi Collin,

On Thu, Jun 12, 2025 at 10:28:50PM -0700, Collin Funk wrote:
> The FreeBSD implementation of ptsname_r returns -1 on error and sets
> errno, instead of just returning the errno. Document this issue for
> programs written with portability in mind.
>=20
> Signed-off-by: Collin Funk <collin.funk1@gmail.com>

Thanks!  I've applied the patch to the posix24 branch.


Have a lovely day!
Alex

> ---
>  man/man3/ptsname.3 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/man/man3/ptsname.3 b/man/man3/ptsname.3
> index 748f1e19a..3254e7809 100644
> --- a/man/man3/ptsname.3
> +++ b/man/man3/ptsname.3
> @@ -110,7 +110,7 @@ .SH ATTRIBUTES
>  .SH VERSIONS
>  A version of
>  .BR ptsname_r ()
> -is documented on Tru64 and HP-UX,
> +is documented on Tru64, HP-UX, and FreeBSD,
>  but on those implementations,
>  \-1 is returned on error, with
>  .I errno
> --=20
> 2.49.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--dudnu5ep7gbredpv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhL3VQACgkQ64mZXMKQ
wqlLWhAAs3QaNGdPOKn9b9Ko6Bne2cBon3BvB/ZBXqRkyfjOt8s1UQJZrzuwC2K4
Bff9ROpR+hkwm9Tu+LGYq9dZ8UfJYnMhfOPXSUHisI+ZK1V5khO2ifmLtG4osEix
zPwhvW8Vmf566xEVsJgNd1ijl6TWw7azgw7Mm4emSEM+cmGnOhBkToLeX2Wm/OYq
6f8HoigJP/SFm4i5XO3Qi5FBcyyeQ9ezAaIYWs1JHKYyFcTwwocGV0dXJ56uvBmN
8BeJ85hbpoKA0Q2ey27m4DdxifFnS6LFb6cVzSdlRUZW82EJO02LmvJkjOQd1ZhG
ijeaD4vqeud3xqh1dGjmsoNX2x2oOgVrjCreGDH1oJclLpxXq6S/A1zHyLPmfNaZ
bzmYdnbEPeLcs/zGkfUKpN23x6T+52pSPVgxUFdoLlEUl7JNtzyIjnWpo++ECQ2D
bm88Myri0MY8OZbMuCiV4IchNWRY0jhkkwrUmq/yePpsARJ0lh4yM45CSNN7bt/Z
FJk8tg7Y14/SZsHKMJlV+zHGNNOAylXNCznyG4Sw+qKRUGP/jHWQfs5EXM3sturB
KPUDNS6S6up7cKNzncnenN47UKlpi2TsGoD317T6GMqjoIHMSyTKedjan8xcjLZV
c+nRXw0xpV1O0QX9KbXumU2neyty9HqAto6QhymrlxRu8+ktuRY=
=34tk
-----END PGP SIGNATURE-----

--dudnu5ep7gbredpv--

