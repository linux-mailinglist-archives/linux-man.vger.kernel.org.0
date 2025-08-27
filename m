Return-Path: <linux-man+bounces-3743-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 15EB9B37D3D
	for <lists+linux-man@lfdr.de>; Wed, 27 Aug 2025 10:12:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3C4527ACC94
	for <lists+linux-man@lfdr.de>; Wed, 27 Aug 2025 08:10:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF6C732C30C;
	Wed, 27 Aug 2025 08:12:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MHFRdDhu"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A28C32C30F
	for <linux-man@vger.kernel.org>; Wed, 27 Aug 2025 08:12:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756282324; cv=none; b=ttLg3IEzwhv3Ob88Vw/Mkk5OZpD3YMiKPrD/0i9WUpSIesPKCuNiiPjxdqB5aUj5bBnElypG3nzH+OcKz7EXvtb211pAPgybXepe/ujdiC6rc3V5TvEzTk58a/dO/IvL5ihRwQu6HVknk0CMds8xK5rdbm+rCByjdaFI+ZHre9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756282324; c=relaxed/simple;
	bh=IZKlooxqC3dwgf7AUVgI2XR2NACFI9i42pnrxzhUfGA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ub/VOuQd+JTkaccjRzuDBQlhS5TA4gB1gHXOoZ3ikqUPgpl0a7VCWc5gDZgnCxPNKP1JIBpy5+0rRTuED4IJ+7NZWPGyFKz0Ly8zuBZ1PSzuzXdJjRpv6H8NfDCbW94cqFK+a+Ky1r8TOfFKyONHGZNU7h+jtWs2rFGd3BJAug8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MHFRdDhu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1B72C113CF;
	Wed, 27 Aug 2025 08:12:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756282324;
	bh=IZKlooxqC3dwgf7AUVgI2XR2NACFI9i42pnrxzhUfGA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MHFRdDhu5nwb3rfCQpZ19bNtBV2KXzz754e+sh0Wd4V7NXk/NXRO7pcwwIxCArLLT
	 VFMUheBBl4Yre7gkXqcaV1ltnT1+6dal+AX+2IUnc53O9Nq4w+ElZ9hkWdFUTCDXkC
	 60fDG2B1GyrD1lv8cDBD+KKevczAprFKsuTEBBSvLIu0N/4+0wTS44fN6I+bBkMxSg
	 IC4obS8KVq8e8dxeftTAg/W19YFgmzrubz9jKGFR9/AHLOjpeEGS249Kyh1+nWSWwd
	 TYvpmlMJE1RgTmIVAf6IAvEU3RwMypyTAYW2r6Uf49SgkMYsVp/VRotaLbJze7hXeS
	 8seEWK3qcgEsw==
Date: Wed, 27 Aug 2025 10:11:59 +0200
From: Alejandro Colomar <alx@kernel.org>
To: trillian <trillian@r9.pm>
Cc: linux-man@vger.kernel.org
Subject: Re: man-pages bug report: missing documentation of quotactl_fd
 syscall
Message-ID: <7lqjed72kj25osci2h2tl6cqjw2hzrl3ksyrggi6bvkpiypdux@k7eu3rzqwrgc>
References: <00100b13-bdc4-4a58-a1cd-ef0775644f6e@r9.pm>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7dhc655ei5ocg32h"
Content-Disposition: inline
In-Reply-To: <00100b13-bdc4-4a58-a1cd-ef0775644f6e@r9.pm>


--7dhc655ei5ocg32h
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: trillian <trillian@r9.pm>
Cc: linux-man@vger.kernel.org
Subject: Re: man-pages bug report: missing documentation of quotactl_fd
 syscall
References: <00100b13-bdc4-4a58-a1cd-ef0775644f6e@r9.pm>
MIME-Version: 1.0
In-Reply-To: <00100b13-bdc4-4a58-a1cd-ef0775644f6e@r9.pm>

Hi Trillian,

On Wed, Aug 27, 2025 at 08:00:31AM +0300, trillian wrote:
> Hello,
>=20
> The kernel has supported the quotactl_fd() syscall as an alternative
> to quotactl() since version 5.14. This syscall differs from
> quotactl() in that it selects the file system to operate on from a
> file descriptor pointing to a file on said file system, instead of
> requiring the string path to the block device which stores the file
> system.

Thanks!

>  This should probably be documented on the existing quotactl
> man page, as the other semantics are identical.  (And of course, an
> alias page from quotactl_fd to quotactl should be added too.)

Okay.

> For reference, the syscall definition:
> <https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/=
fs/quota/quota.c?id=3Dfab1beda7597fac1cecc01707d55eadb6bbe773c#n973>
>=20
> Note that the argument order differs, and 'special' is replaced with
> 'fd'.  I would propose something like the following as a description
> of the fd argument:=C2=A0
>=20
> "For quotactl_fd(), the filesystem to manipulate is the filesystem
> which contains the file pointed to by the file descriptor 'fd'."

I think we should mention why this function is useful instead of
quotactl(2).  Why would one prefer to use one or the other?

> Also note that there is no glibc wrapper for quotactl_fd, so it needs
> to be called as syscall(SYS_quotactl_fd).

Okay.

> I'm not formatting this as a patch because I don't know any groff
> syntax :), and the wording can probably be improved as well.

Okay, no problem.  (But you're welcome to try if you want.  Just look at
surrounding code, and imitate it.)


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--7dhc655ei5ocg32h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmiuvcgACgkQ64mZXMKQ
wqle6xAAidTzJBE4lwgv7Sug45aGswJV5I4/jVs+PfoVu+FoJ5/XaKZyggks8uLj
FwZW1Bz6ufnHbjwYNy0jOi0hX2XrqcBZmvxyByE5AwdoJtqYtts72LgGJ8sW7pQZ
PiWFUJ5UZ9iIuoenoXO1vsDD6HSKDLr7y3V8+VH+jm0Itzfy3DHPS6hUh+Idrh6s
KInM5kYIzFPTJlU4mNiZKbe90P1gQPBk8btUrXGH+0pYOxM/olQigjvrI8aW8YdI
aNbNa9lAvRQYECfdOHj/P5DPour8pD1ohs7kMNKSuDxuWDvl13pIVb6/tgNYoO7I
LBVR9j8Fx6KClGz7pu0XEs2TwMli0zVQIGvvg1Cuoen5Xj6MxU+vLWYX8+e8pGTS
brum0hMO+zb2CqQm7baotahS6c9A74MGj4+ntUW74ZuuuoxILtQqjBHQSNQOWntY
iz3P/snXMAu+IKrSiiT+JWD57T3G5gMs+4NAAJAJt0EG94OHGzyfON8PzEisTfw6
OFMDxPjZWeAPO2rpTaw0cBqi1UYN0Gi4+jBdYYd0nMf3jXyZOnMklrKHUmwxqO3n
PrBQ4MBwHilvmWheG6dqNcxlDogmY+3LH/qJpPA0dXwF7VHWF9K8wuYYHig9zQR4
ZLK2qGgrCKmdhkMx3vYtPSWE16UcejZYfuFnnWfnnWMe+4Mr5TE=
=2aP+
-----END PGP SIGNATURE-----

--7dhc655ei5ocg32h--

