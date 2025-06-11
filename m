Return-Path: <linux-man+bounces-3129-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 69F29AD4F4B
	for <lists+linux-man@lfdr.de>; Wed, 11 Jun 2025 11:06:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F20FF161CFF
	for <lists+linux-man@lfdr.de>; Wed, 11 Jun 2025 09:05:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F1DE262815;
	Wed, 11 Jun 2025 09:02:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z8t+UznA"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F052253953
	for <linux-man@vger.kernel.org>; Wed, 11 Jun 2025 09:02:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749632556; cv=none; b=MicpOK5R1ricC3tOvXw0jV6rg3YMBAUPeUnfa6WoIWFWuouPndAz2kHagc6vQVglumEiA41Wy84w+evOqbb4OFLhAviq0r+fvnNRSraRssQFeJkBKAyXa+puKdr3CdtAndsDqcn3RNBrbSq3ewnUhbzPeXKnaMT6pJwwkV8sraM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749632556; c=relaxed/simple;
	bh=YMdn5S8N49tcBnrukws4Xcq+i+zUUFXVAZ06PJ7x9k4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=N74b/Mc5swu0yg6USDC+THdFtrfQaDHsxKwY8+3d8v2UF4loVZ0Ugz38aIHpS8ZmFa8/W/XaFox4/TjBR/GnYxUsNjaC7q1QElbv/d9+VKmWZ7aI4z5ND8vbth11voNIN8B/U3wDUZwYkICsWvQP+bOLKZN9AXrrzXphg/FPh08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z8t+UznA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 146CDC4CEF1;
	Wed, 11 Jun 2025 09:02:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749632555;
	bh=YMdn5S8N49tcBnrukws4Xcq+i+zUUFXVAZ06PJ7x9k4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Z8t+UznA/KOrMDVwQIPCcRQQ/TAUU1PNpvofeKX6RocCTl281+YoySa1ZCpbcgtGe
	 Bf4kq02KXfcTWYX+th7Md+Pv31WAwPRDiJF+f169YoFPF4C/F7NCmjoFet8vPj9OE4
	 VwKpXyUxEerFVyArMAPNS0b6g30sl/O9ST4hZNrzPPiKpPBHZzj/7XVe3AyT5ZhXjl
	 TsmVwUmvNxH4buasANJwhtqf9j++v7YV3AgxL6sjhIMooYaFKdhJBFSvnbXWoWXgia
	 3S2YfIXfJxx30KLWOVzJN5mFnA7dwVCBHV09U4rYRkVt5S7/vvbb1N7/iQ9fDXU+/j
	 xQnXqxpAHqk9A==
Date: Wed, 11 Jun 2025 11:02:32 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Benjamin Peterson <benjamin@locrian.net>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1] man/man2/chmod.2: Document AT_SYMLINK_NOFOLLOW support
Message-ID: <3scsdm6aatzielqmvpcfig3gbbjiiie676osamqcpkaj7uuauo@ywyohqmydps2>
References: <20250530165930.46548-1-benjamin@locrian.net>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="grkyfe6blqguimef"
Content-Disposition: inline
In-Reply-To: <20250530165930.46548-1-benjamin@locrian.net>


--grkyfe6blqguimef
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Benjamin Peterson <benjamin@locrian.net>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v1] man/man2/chmod.2: Document AT_SYMLINK_NOFOLLOW support
References: <20250530165930.46548-1-benjamin@locrian.net>
MIME-Version: 1.0
In-Reply-To: <20250530165930.46548-1-benjamin@locrian.net>

Hi Benjamin,

On Fri, May 30, 2025 at 09:59:30AM -0700, Benjamin Peterson wrote:
> Historically, Linux systems did not support the AT_SYMLINK_NOFOLLOW
> flag to fchmodat.  glibc added userspace emulation support in version
> 2.32, and Linux gained native support in 6.5.  See
> glibc.git 6b89c385d8bd0700b25bac2c2d0bebe68d5cc05d ("io: Implement lchmod=
 using fchmodat [BZ #14578]")
> and
> linux.git 09da082b07bbae1c11d9560c8502800039aebcea ("fs: Add fchmodat2()"=
).

Please use 12 characters for the hash.  Also, please include the commit
date:

	glibc.git 6b89c385d8bd (2020-02-12; "io: Implement lchmod using fchmodat [=
BZ #14578]")
	linux.git 09da082b07bb (2023-07-27; "fs: Add fchmodat2()")

To generate those, I use a git alias:

	ref =3D show --no-patch --abbrev=3D12 --date=3Dshort \
		--format=3Dtformat:'%C(auto)%h%C(reset) %C(dim white)(%cd%x3B \"%C(reset)=
%C(auto)%s%C(reset)%C(dim white)\")%C(reset)'

which I use as

	$ git ref 09da082b07bbae1c11d9560c8502800039aebcea
	09da082b07bb (2023-07-27; "fs: Add fchmodat2()")

> Signed-off-by: Benjamin Peterson <benjamin@locrian.net>

Thanks for the patch!

> ---
>  man/man2/chmod.2 | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>=20
> diff --git a/man/man2/chmod.2 b/man/man2/chmod.2
> index 307589481..76dbfc6b2 100644
> --- a/man/man2/chmod.2
> +++ b/man/man2/chmod.2
> @@ -197,7 +197,6 @@ If
>  .I path
>  is a symbolic link, do not dereference it:
>  instead operate on the link itself.
> -This flag is not currently implemented.
>  .P
>  See
>  .BR openat (2)
> @@ -329,6 +328,9 @@ POSIX.1-2008.
>  POSIX.1-2008.
>  Linux 2.6.16,
>  glibc 2.4.

You need to use .TP to format this correctly as a "tagged paragraph".


Have a lovely day!
Alex

> +.BR AT_SYMLINK_NOFOLLOW
> +glibc 2.32,
> +Linux 6.5.
>  .SH SEE ALSO
>  .BR chmod (1),
>  .BR chown (2),
>=20
> Range-diff against v0:
> -:  --------- > 1:  6a1171eb1 man/man2/chmod.2: Document AT_SYMLINK_NOFOL=
LOW support
> --=20
> 2.48.1
>=20

--=20
<https://www.alejandro-colomar.es/>

--grkyfe6blqguimef
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhJRigACgkQ64mZXMKQ
wqnrMg//fIZo3USIFGLy7gGP8wd5gqY/K0GCtdDeoHU0voa3HG2Vt6qlMgQmDVbT
fXLZghGTj7T3B8n0rJ/FNtCxN5KruziDPfWu1/qi6/RjTQXyX8zg2PSzoAR0NqQp
vL1k6NGeIJAZ6oqh0q7NrPfSOGLr2pfhqtyMUvmWP4FEO7v73bwZd/pkIEoKGDg6
7tH1L9w+EhWFF7UeknvD54KSLGSJe0eR96ShMQbjPlMgiyYLq9GZDTtIjTVAjSnI
Iw9rSy6IMoYqp10YWOWyFtmKOwmEHnX+PQlQjHShybec0B1xz/HiCQeC8xSLCOpp
pV0+B1nvDABQn61wKCmlR63C1JmsVkMIb7JDLfzT8UWGpUjT11zQcqPJVSd+TOjk
DdQG9WZ8bZ5+REhlgz1IHjoxotsw6CwjGLUFUXKuYvPU2y8YeETqWIIk/1Iup/7X
CcyrxH4sypOdeMHHpJ4feeVhNe5a09Zk7Oh6h44/TPoY4qjhpautmLfHTHrJ2+j1
atxxOlIsGfX9lStZtOmBhb9Rzt0/We17qBTr2/OSOqgomAJJw6a4TLyTL2C6DzDo
8aTQQhd1eKdIYNnSNauy4Z288QKrxkNHPvQ7Sgxyh0OCl7+vR/aVL0WA+E/AllHO
W1gg/dNS7I1Kr33dTtvfceqfBGaA43IK57TwAdQWEwc4ON142oo=
=eu3h
-----END PGP SIGNATURE-----

--grkyfe6blqguimef--

