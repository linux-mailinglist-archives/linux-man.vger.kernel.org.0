Return-Path: <linux-man+bounces-1020-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 76DD78D6934
	for <lists+linux-man@lfdr.de>; Fri, 31 May 2024 20:50:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 29A8E1F2606E
	for <lists+linux-man@lfdr.de>; Fri, 31 May 2024 18:50:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 310457E0FB;
	Fri, 31 May 2024 18:49:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="bZk5X7RP"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AFF67E774
	for <linux-man@vger.kernel.org>; Fri, 31 May 2024 18:49:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717181395; cv=none; b=FJI/lCYt0mOtdte8PZGLhgc1t/v4qvQOq4TGp8xoPb7SGZHInFbt5Ocq9JXuVRODmNrlYveNwu381Z7u2ydLnNzqpjTawJlLZFSSWwpvijI9Gr3LloZyOkLdrOE3xWwtPpan2cLLeqIkcKQPwWBkZdbogw+FX/2WkC9z4axt9jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717181395; c=relaxed/simple;
	bh=fFKaLHRK1TgDNreusYD2dYCQUVPDWniSia8USeGwYJI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PqKBrhfEZUGFENQZDD00PDwc/WAGmqxR3eJ8is7ykZmjhSujhM42ucOcruq8KUC6/6DozzIYKjlEPoGGxNHVewbLU1wR/rOa9LNM1yFiocjWHmM3G8lVp/SLHZUmpwcPGkN0ztWvl+0UEYvyD0Bu8Sl/W+d2eM9N5EbjSKwR4hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=bZk5X7RP; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202405; t=1717181390;
	bh=fFKaLHRK1TgDNreusYD2dYCQUVPDWniSia8USeGwYJI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bZk5X7RP7GEPaMBK6Be68MYVks1EJdtcr/ABderik0k5XibJvDMwuVIM+v4rfFki1
	 9DIdKiKgb9TwYAPIA47nPO/ku9QgCjB1mIAe4K6gwiObloaxM0FrTnolhAQPROZ2s1
	 /X1Xz+65MXq6+Xia6lQKVpF6fQOiDsrhTvFovu0vn2m+ixhE0qqd0poIbEF2uqLPMP
	 vRqtgG+md9pQSMssEQ0SAMQfs0Y9K2ohuwPqOCs5llp1a0BPFrWNDNJun6N8VRle2E
	 kqpTCuF/dMpgjJp9EIK6ZJttsmILDxtgidtiySvKhJhTGl32Jjo8a1Ft4oUhAMq96H
	 RrmDjrSDpIgQg==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 4AC43628C;
	Fri, 31 May 2024 20:49:50 +0200 (CEST)
Date: Fri, 31 May 2024 20:49:50 +0200
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] ioctl_iflags.2: document FS_APPEND_FL ('a') on
 directories
Message-ID: <mhtwgjppwoqpwcfbebwbt47yzcv62dstqbf2mwncbkutbfjvta@tarta.nabijaczleweli.xyz>
References: <vzoykfmkokepn2gq3nqb2vvlbim32vky3vnac2x2avmkyzcdez@tarta.nabijaczleweli.xyz>
 <6vlgyxzh5taukldnkp7ubdb2zfla3m7ebx67qayyyoyyx5wi52@gownac2gauj2>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ma2itxpejk2cbxr2"
Content-Disposition: inline
In-Reply-To: <6vlgyxzh5taukldnkp7ubdb2zfla3m7ebx67qayyyoyyx5wi52@gownac2gauj2>
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--ma2itxpejk2cbxr2
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

On Fri, May 31, 2024 at 08:44:21PM +0200, Alejandro Colomar wrote:
> On Fri, May 31, 2024 at 08:11:17PM GMT, =D0=BD=D0=B0=D0=B1 wrote:
> > For some reason, neither chattr(1) nor this page document it;
> > ext4 supports this (tmpfs and ZFS don't, didn't test more).
> By "supports this" do you mean FS_APPEND_FL at all, or its behavior with
> dirs?
I meant behaviour with directories specifically,
but it looks like I tested wrong:

all of ext4, tmpfs, and ZFS actually /do/ support FS_APPEND_FL
on both files /and/ directories.

Maybe reword as
-- >8 --
For some reason, neither chattr(1) nor this page document it;
this is supported by all tested filesystems (ext4, tmpfs, ZFS).
-- >8 --

Best,

--ma2itxpejk2cbxr2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmZaG80ACgkQvP0LAY0m
WPF+qA/9Gx9tpPyGY9+JA2u4ecaW7SLwTCqv73RlTcHi3VX+vTiY3rslKmQYNI8X
wHVrZnqf6UKbhDLArzSQ5E2vBoWtF+KZsUNeu+VHqQz7qGp0TpRoDD1/WvgP3Dt/
qwchGUbl54VoONVxvq9qckMG3x9+flnKViOIShevdJoLjxA+wTChda2O1LTvh5oN
Ws6J11pXxGTmNsCLnX0NOsUEsiVyYmmx6L/wYuZtjEnFmwrhrwFYZAaFL8K8pVf0
hbIAeS5vk1ZfbJHz2Q6YmciqsBDS5Vk/mLCtBNkNipWRImw4H6YUBr0L4pArDn0d
yfCGEsvWJ82+nX+4yMztUCi6i12MbrnZ/G9K9EMXxE0WbzfKqtXpyiknAeNqOsJ0
dzMHL/KiloXQJyYXLuP5+S6+8wTbcOUHTZgPVDrm8FnKeis9ZdyITOBG/XfhvC1t
FkWDNhTi+E1P9FR58tIPja9DLLDV40gBWld+lpJy4fGjR1qHqjmA8LA+dXLw1G2N
OWdW+qhoG4gIfbYZWNxoGSrQX2G76rDryCoGko+7OWmAmaX1D3+cksgQ+Hjw5SoW
ZYajotRfaXyBcaCsRnIzLYr6BqsnGLEnK4wQGFoTizzSxUem2Ik2duEXOUt0Z38H
6Ws34BoMvwvFIyDOt2mYnM5PzlVMa86kGAUyRyji9jo0joVMiKQ=
=Vgga
-----END PGP SIGNATURE-----

--ma2itxpejk2cbxr2--

