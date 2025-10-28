Return-Path: <linux-man+bounces-4208-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F8E4C17638
	for <lists+linux-man@lfdr.de>; Wed, 29 Oct 2025 00:42:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C1A7B4E3BF9
	for <lists+linux-man@lfdr.de>; Tue, 28 Oct 2025 23:42:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 320253563CC;
	Tue, 28 Oct 2025 23:42:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bTJDcmty"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5DA53195E6
	for <linux-man@vger.kernel.org>; Tue, 28 Oct 2025 23:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761694955; cv=none; b=ISczjO2eCizZMl/hO9mOoG88lESw3zOtaxESnNgScN4QwlBO28JSrd+qOsRGlIHb7yBXBoDO/vZKN/tFja0PI66hCgj0/tDpGyJOUmjJLgfyrn6QqsKwFQLLpDZwUZZHMObKVL2ySkUuG9maTCp0TZlOmU5DbCGwCdqvr3AVDas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761694955; c=relaxed/simple;
	bh=Nk3GVTBMdOU4QYej8Upy61W5x+T41yDduWyj+XP5gt0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aTS3v4/zbOYYNKkuZsyQBSDCGWi2bViTmqG8aWSqUPilCza6NeyWbZYBe6twU5eylndDtJJCWMeL1TnACcf7+Er83sl8cHoOz0fEHWtxKU51XLypRIjRwPO57B49ifpbHWpL9Q2MkH/GAqu7Q+BwqJnP1+WWYVVKMayyTpmmwJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bTJDcmty; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74935C4CEE7;
	Tue, 28 Oct 2025 23:42:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761694954;
	bh=Nk3GVTBMdOU4QYej8Upy61W5x+T41yDduWyj+XP5gt0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bTJDcmtyyr3/CYiB6Z6HrPntjVYvnvMtEkeQZgRkfVhwCs+LX16OLKllI7DSgFQDX
	 bgljkubfZP3OJ11mXPWSNZ7kAsGxrWl6EHTvuUVFQkAfhxpzPXHt5AFy977tBZCg38
	 /Eh4TyeFPIwEqrff/+V61YXmJ+/vYT02MjnzLGaweY/mDkfEuiOcPBfXpLtyXx9K2X
	 2JaONDJzH7yJ+j6vEAFqcT4chZsvbBjoPW+NlIRnjPy87jBIRsD7cIKQSP87ZRBZoi
	 6rgZ3aGTugiaadQln/ZYeKDHPfXkHUXK8YFFgCrY6dWyeRuVSjBZW0rwrJodF2k8TB
	 8Nk/VN6JRhpeg==
Date: Wed, 29 Oct 2025 00:42:30 +0100
From: Alejandro Colomar <alx@kernel.org>
To: ValdikSS <iam@valdikss.org.ru>
Cc: linux-man@vger.kernel.org, Eric Dumazet <edumazet@google.com>
Subject: Re: [PATCH v2] man/man7/tcp.7: Add TCP_SAVE_SYN and TCP_SAVED_SYN
Message-ID: <7j4ycmqkg25shix45k2n7ntnmdtfcnnji45qtm4ng6ns5lywhy@2ghcfspffpmm>
References: <bryfjq5xnxrlxg3bo5ixfcwkqmxkgkx5ejm23jzxd3xshitgm6@7uvif553iqiv>
 <20251015214826.70750-1-iam@valdikss.org.ru>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kz54l675tck6lbvq"
Content-Disposition: inline
In-Reply-To: <20251015214826.70750-1-iam@valdikss.org.ru>


--kz54l675tck6lbvq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: ValdikSS <iam@valdikss.org.ru>
Cc: linux-man@vger.kernel.org, Eric Dumazet <edumazet@google.com>
Subject: Re: [PATCH v2] man/man7/tcp.7: Add TCP_SAVE_SYN and TCP_SAVED_SYN
Message-ID: <7j4ycmqkg25shix45k2n7ntnmdtfcnnji45qtm4ng6ns5lywhy@2ghcfspffpmm>
References: <bryfjq5xnxrlxg3bo5ixfcwkqmxkgkx5ejm23jzxd3xshitgm6@7uvif553iqiv>
 <20251015214826.70750-1-iam@valdikss.org.ru>
MIME-Version: 1.0
In-Reply-To: <20251015214826.70750-1-iam@valdikss.org.ru>

Hi ValdikSS,

On Thu, Oct 16, 2025 at 12:48:25AM +0300, ValdikSS wrote:
> Document TCP_SAVE_SYN and TCP_SAVED_SYN options based on git commit
> linux.git cd8ae85299d5 (2015-05-05; "tcp: provide SYN headers for
> passive connections") which introduced it.
>=20
> Link: <https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/c=
ommit/?id=3Dcd8ae85299d54155702a56811b2e035e63064d3d>
> Cc: Eric Dumazet <edumazet@google.com>
> Signed-off-by: ValdikSS <iam@valdikss.org.ru>
> ---
> Hi Alex, hope I didn't miss anything!

Thanks!  I've applied the patch (will push to master tomorrow).


Have a lovely night!
Alex

> ---
>  man/man7/tcp.7 | 20 ++++++++++++++++----
>  1 file changed, 16 insertions(+), 4 deletions(-)
>=20
> diff --git a/man/man7/tcp.7 b/man/man7/tcp.7
> index a5fa4baa6..cb640f340 100644
> --- a/man/man7/tcp.7
> +++ b/man/man7/tcp.7
> @@ -72,10 +72,6 @@
>  .\"	   commit 6e9250f59ef9efb932c84850cd221f22c2a03c4a
>  .\"	   Author: Eric Dumazet <edumazet@google.com>
>  .\"
> -.\"	TCP_SAVE_SYN, TCP_SAVED_SYN (4.2)
> -.\"	    commit cd8ae85299d54155702a56811b2e035e63064d3d
> -.\"	    Author: Eric Dumazet <edumazet@google.com>
> -.\"
>  .TH tcp 7 (date) "Linux man-pages (unreleased)"
>  .SH NAME
>  tcp \- TCP protocol
> @@ -1202,6 +1198,22 @@ aborting the attempt to connect.
>  It cannot exceed 255.
>  This option should not be used in code intended to be portable.
>  .TP
> +.BR TCP_SAVE_SYN " (since Linux 4.3)"
> +Saves incoming SYN packet contents of the listening socket until
> +it is read with
> +.B TCP_SAVED_SYN
> +once. Could be set before or after the
> +.BR listen (2)
> +call.
> +.TP
> +.BR TCP_SAVED_SYN " (since Linux 4.3)"
> +Reads SYN packet contents saved by
> +.BR TCP_SAVE_SYN .
> +The saved SYN headers are freed after the first call.
> +The data returned in
> +.BR TCP_SAVED_SYN
> +are network (IPv4/IPv6) and TCP headers.
> +.TP
>  .BR TCP_USER_TIMEOUT " (since Linux 2.6.37)"
>  .\"	    commit dca43c75e7e545694a9dd6288553f55c53e2a3a3
>  .\"	    Author: Jerry Chu <hkchu@google.com>
> --=20
> 2.51.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--kz54l675tck6lbvq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmkBVOUACgkQ64mZXMKQ
wqkCGQ/9Gv8xTBRrVkT9NnvVWh4eBd5sHcciIh0VymxClSqniccUK2WCnTKJ+URk
xfdGiYvURPxAoG1pFYNPB4P0yhKoJGhILOhzmYep7TyVyLz/BxTspsK+LJ7yPNa8
7UGxgaRAk0XgDltkFosH2eihADsnEUtzFeCsaG28xHJxZhgifQ8xxtdXBaiKe6Px
BPGQJGXAXH2SOZ9dV4o8h1Epb0T0N2BKEeau3t46NFIGjn+SGmDXwy6rQ8Wjad3K
4eadw16SJ+yFbFFZjVUuHT+HvzS0VHfOHw+ns7HJGDcBWH4IW0J1c0YnqdKJUQUn
kk62STkJyBtEOXqZx4i5YEtBdmOfMuBIPcyltv9bWj4rHC0dwgVasK14truR3vO4
Uf9Q4oISDOHEw/FlBnl3Go9gDyqPym7EY03hOhzbSjJOcY4X2/z4jxJqGiAGXgcO
AGnot+XkQxx63Ukq3fknnc6A17zhrGHOXJ07PsX85sn4YOm9Jxu/pYcaDXUvGKdF
np1SbEh+lCtfTu59hKSMsM/PlgvleZ64hsQiUDhCcftnE+kg8fXOs0ZiK8Si9jGi
ZLlVezGQLZy4WXtR/zyOlb1fGW1AFBiN5pGG/3gzab7IzKSNv7exZN/bzVomanqN
QBNiVY9cx+APHaWYQSMFsjTRAUjrRWnqNqLfPRoTsXbtR7B+gnE=
=gmFq
-----END PGP SIGNATURE-----

--kz54l675tck6lbvq--

