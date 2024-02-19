Return-Path: <linux-man+bounces-459-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A34C785A296
	for <lists+linux-man@lfdr.de>; Mon, 19 Feb 2024 12:57:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D4AA71C217DE
	for <lists+linux-man@lfdr.de>; Mon, 19 Feb 2024 11:57:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6E272C69E;
	Mon, 19 Feb 2024 11:57:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MJVX2qAP"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87EA12561A
	for <linux-man@vger.kernel.org>; Mon, 19 Feb 2024 11:57:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708343823; cv=none; b=JoPOJ0kMmHOTRfkxzip1a3IeBrnQrdMeMFYH+I0qyhW45Hb2kfpslXKPDoswOBYUI/TDsDRHbvb3uFfGOthU64q0BeXuRDN3+Ufpu6C4bcKOe7JrtvMOkr7zaEMBcAus0vU+/xD/EXXLX3XNKfdAB6AIieZrgYFNvg5q1SUOivE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708343823; c=relaxed/simple;
	bh=+18uLejS6J27bCW74fQVeLKltIJXy1WnJAPFlaN0v4Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oiG5ax56zwdxGhnzr/tztAS79wEglxyypjci5dWNpdQElL7JAKQJGiixVhRwATJqg0n/8xycEbncpXO1SeR1v2Pu5yKDwD7nHhgXI8Flv4SRHGzztIT0t/cCpPL4NvtRvdhcyuc8FSbmNfvkWmDHa6AMON33npCcey52JMvY7r8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MJVX2qAP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F257C433C7;
	Mon, 19 Feb 2024 11:57:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708343823;
	bh=+18uLejS6J27bCW74fQVeLKltIJXy1WnJAPFlaN0v4Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MJVX2qAPgNqvWszi+szJAflvMVeAhuhRNaxWOytk65AO5l1k5eql9R4jPp2ap+NFL
	 SqmHOWULIVn772OaSjN1w2wRuZcdwPkjppVkLwDa4nniFN03zLl63ZEr10Dm7tKaSA
	 Hz8yLvDZHgXOCuG7i38HiOdic6Slk8SObw9ioaVK7HkP1tkwGg50yB6em/G9hukVFr
	 /xiH5YBRxiRUX8xbLSiikYnltKIu2oq69rLbiP8kEVXfcIngVXGFfjrr3+Q4A61m3s
	 oe6+PCKVUYgLQfPoDVOSzAOpOrErP+uSZXdgRHBILI6l5psK+btsJaHAizYIj+LsPL
	 z30WzdbdOhpbA==
Date: Mon, 19 Feb 2024 12:56:59 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0JDQu9C10LrRgdCw0L3QtNGAINCe0YTQuNGG0LXRgNC+0LI=?= <oficerovas@altlinux.org>
Cc: dutyrok@altlinux.org, kovalev@altlinux.org, linux-man@vger.kernel.org
Subject: Re: man page for syscall delete_module is outdated
Message-ID: <ZdNCCy_Yx4Ekx4Mj@debian>
References: <08125e65-52ed-a846-2b38-c7f63071c898@basealt.ru>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="skcSey1IsDXh4I0S"
Content-Disposition: inline
In-Reply-To: <08125e65-52ed-a846-2b38-c7f63071c898@basealt.ru>


--skcSey1IsDXh4I0S
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 19 Feb 2024 12:56:59 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0JDQu9C10LrRgdCw0L3QtNGAINCe0YTQuNGG0LXRgNC+0LI=?= <oficerovas@altlinux.org>
Cc: dutyrok@altlinux.org, kovalev@altlinux.org, linux-man@vger.kernel.org
Subject: Re: man page for syscall delete_module is outdated

Hi,

On Mon, Feb 19, 2024 at 11:17:29AM +0300, =D0=90=D0=BB=D0=B5=D0=BA=D1=81=D0=
=B0=D0=BD=D0=B4=D1=80 =D0=9E=D1=84=D0=B8=D1=86=D0=B5=D1=80=D0=BE=D0=B2 wrot=
e:
> Found out that man page for delete_module syscall is outdated.
> The behaviour described there doesn't match to code, specifically for
> unloading module if its have no refcnt. Parameter O_NONBLOCK described in
> man doesn't exist anymore in kernel versions 3.13+, which is quite old, o=
nly
> O_TRUNC parameter present for actual kernel version, O_NONBLOCK does
> nothing.
> I've also opened an issue on bugzilla:
> https://bugzilla.kernel.org/show_bug.cgi?id=3D218489

Would you mind suggesting a patch?  Also, would you mind showing your
findings in the kernel code?

See also:
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBUT=
ING>
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBUT=
ING.d/bugs>
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBUT=
ING.d/patches>
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBUT=
ING.d/mail>

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--skcSey1IsDXh4I0S
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXTQgsACgkQnowa+77/
2zKC8w//Qff/vr0dCDL92fC1KIhqHeXY+PJL2OlQG9aWr0ZLLOu4ZGDkO56YuXFU
zwoIeukH8lReSkRkNoRg/VmczxYXXdUF1lliM+FQxLL/su1JU/9UGNShECX5gRcN
2kkXbyJJ8lB5eazKFpGBkAwvqV0/fdQm5+eNlh/tmJiyqlqPwb/CPne3OrNrSZbE
3kI+B+fmlvbiB1oFkaQbBeXv4OYijjxhGfAjNAGCY9fCELVX4+BXHG6o0UMrFsEj
hqGSrUs1SjbbAPPad/FUk9TmZnOTP2rsHZt//m0+KL3mr58NwY/f+vwmXeqanUa4
mME/OOYP8ih/grazqLeECnZbYy3W7f3Vt08siZpKV8dnIs9SwO5JJxtZs6GjB3uf
IKCGMnp9ZIhe6YlzkEwzO6aWy3ims13zCsgKZFmTZSGmv0FTDL86e5B23Zh0S5Gg
2kVbG6IftkGAe15qdsCDRPpFHZPGnp27z/NJW/NbnyLpwqtRg292lUnBqKSPLHJ9
WaOO6Pg3GXl7QzHZAVntq4MX7GcPxbALI/ahMLNS7xNx5njew3hTNBQZKY+FOdq/
dB/5REBu0B5ts76I2DkVqcbfwjNPQerSWBqc7Sqrug2rGipUXavJt1VjBs98Q7ob
ZYZV6ai5iXtzd4MLmSuS7hlZly8f8Rktqqhh4HByYsLqBsChGSg=
=RkHz
-----END PGP SIGNATURE-----

--skcSey1IsDXh4I0S--

