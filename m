Return-Path: <linux-man+bounces-1619-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 69F5E9548DD
	for <lists+linux-man@lfdr.de>; Fri, 16 Aug 2024 14:37:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 486091C21A63
	for <lists+linux-man@lfdr.de>; Fri, 16 Aug 2024 12:37:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D80F19A281;
	Fri, 16 Aug 2024 12:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vC3933Sj"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE1616F839
	for <linux-man@vger.kernel.org>; Fri, 16 Aug 2024 12:37:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723811853; cv=none; b=bdijb+1iHymRRK5xZxwj6hRUqMDkd1rLD5tge6uAGx7msR//OQh5oCxjD8EbXG2e5+GGaLrP8DOptRPzbKFJQs4LkQNQqYwCKFbqYYCFAahh+xnzPcH7d70OB+bBemvIqQlZbrY2vFMS7J2hEYJk5q9s3ONEIA5x+14NKCjyCQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723811853; c=relaxed/simple;
	bh=LElHyY4U+9qw38VWBM19sGaAH4q0Qo+ACgFhO83SjNk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=W4ZSKXNhSE6t3zdJLKgKVtKUj+1dMXsTZlJwQpO03d7HPiRKPi1SiLX52ZZvkb0rygW8j7Sj7EEAlu+LPqwX4wmdrdgWv2sNahVvuCBMmWv5O5HPIoH4WCMmy7IdZKQB3geAGkstwyzDGld/8BdR0fBw7N4PsJUMwCMdatuXr5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vC3933Sj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 79ED4C32782;
	Fri, 16 Aug 2024 12:37:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723811852;
	bh=LElHyY4U+9qw38VWBM19sGaAH4q0Qo+ACgFhO83SjNk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vC3933SjEbCH0kkQzlup2tLetD2eP0Agusa2fid5tx4leWL0kom0eUenozxvhRFSh
	 2pvZk7zOr8cFUJE74RCji7jG6iUT35s5qdopWT/67R3hvDoLQmtEAN7k2RvH9eDAQj
	 XyejiTaEsV4Uxaxo7iVXeA+zSAa7LspPgqFGPd8t8kASsYzUp6HzAVGN797CwPxAmm
	 TukEaBHhqLplvMtuEIqmVn8LnwqgUOUUZADYkDPtIBVfdSAlvnyaIchirO9d+FNuPb
	 EITLk+yuKtAUBTjMr4b7ImEcFGopuQKoyCqy750gkmP9W7L1I6Ky9NpR88UEX+ksg4
	 HayHbFitDrkfg==
Date: Fri, 16 Aug 2024 14:37:29 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: "Konstantin Meskhidze (A)" <konstantin.meskhidze@huawei.com>, 
	=?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, linux-man@vger.kernel.org, Artem Kuzin <artem.kuzin@huawei.com>
Subject: Re: [PATCH v3 2/2] landlock.7: Document Landlock ABI version 5
 (IOCTL)
Message-ID: <n53k7mnidikj4tj6mgxrxe4lvccdea7wfuezrjwc44kvyjbzyz@g6aoyti7mhtw>
References: <20240723101917.90918-1-gnoack@google.com>
 <20240723101917.90918-3-gnoack@google.com>
 <lejbnx6uijbneira3l7wxvheurflymuzbxzpeoz7q6hxt6b7bj@7yrhpwxyccqy>
 <ZqoixhC_jvuiK0m4@google.com>
 <d06be80a-44ca-3eac-6b04-b5d2336309f0@huawei.com>
 <ZrSZRi5BPelnaq6X@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="l4lawmz3syfxmpoc"
Content-Disposition: inline
In-Reply-To: <ZrSZRi5BPelnaq6X@google.com>


--l4lawmz3syfxmpoc
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: "Konstantin Meskhidze (A)" <konstantin.meskhidze@huawei.com>, 
	=?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, linux-man@vger.kernel.org, Artem Kuzin <artem.kuzin@huawei.com>
Subject: Re: [PATCH v3 2/2] landlock.7: Document Landlock ABI version 5
 (IOCTL)
References: <20240723101917.90918-1-gnoack@google.com>
 <20240723101917.90918-3-gnoack@google.com>
 <lejbnx6uijbneira3l7wxvheurflymuzbxzpeoz7q6hxt6b7bj@7yrhpwxyccqy>
 <ZqoixhC_jvuiK0m4@google.com>
 <d06be80a-44ca-3eac-6b04-b5d2336309f0@huawei.com>
 <ZrSZRi5BPelnaq6X@google.com>
MIME-Version: 1.0
In-Reply-To: <ZrSZRi5BPelnaq6X@google.com>

Hi G=C3=BCnther, Konstantin,

On Thu, Aug 08, 2024 at 12:09:10PM GMT, G=C3=BCnther Noack wrote:
> On Wed, Aug 07, 2024 at 03:09:02PM +0300, Konstantin Meskhidze (A) wrote:
> > 7/31/2024 2:40 PM, G=C3=BCnther Noack =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> > > Konstantin: I would still appreciate if you could have a look and sig=
n-off on
> > > the networking documentation patch as well, since you are the origina=
l author of
> > > much of that documentation on the kernel side.
> >=20
> > Hi G=C3=BCnther. I have checked the patch. It looks good, I left one qu=
estion
> > there. Please check it. Do I really need to sign-off it?
>=20
> Thank you, Konstantin!
>=20
> I would like to put both your "Co-developed-by" and "Signed-off-by" into =
the
> patch, because:
>=20
>   (a) We should give you credit for the documentation that you've written=
 :-),
>       and this man page change is based on your documentation in the kern=
el
>       Documentation/ directory and headers.
>=20
>   (b) Committing this man-page change would put it under the
>       "Linux-man-pages-copyleft" license, which is different than the lic=
enses
>       used for the kernel, where the documentation was originally written=
=2E  I
>       would like to add your "Co-developed-by" and "Signed-off-by", so th=
at it's
>       clear that we all agree on this.
>=20
> For reference, the rules for "Co-developed-by" are also discussed in [1].
>=20
> Would that work for you, if we put your "Co-developed-by" and "Signed-off=
-by"
> lines on the "ABI version 4" man page commit?

I'll extend the wait until September.  I guess Konstantin's on vacation.

Cheers,
Alex

>=20
> Thanks,
> =E2=80=94G=C3=BCnther
>=20
> [1] https://www.kernel.org/doc/html/latest/process/submitting-patches.htm=
l#when-to-use-acked-by-cc-and-co-developed-by
>=20

--=20
<https://www.alejandro-colomar.es/>

--l4lawmz3syfxmpoc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAma/SAkACgkQnowa+77/
2zIZlhAAqz9ALn77CxGYiTmWfKg4caZWdSCSBR8Tf8xE3r1RMIX/mqWdAGiSuocU
bG/UFf+fruVglEjdIG2XbSrX2ZYrfP49MUmwlpajR/wRYhFnDC9NTdS6MTlisxhx
jZ5i+ui+b6I1VyXhFujxXTugoIOMXSGJxETr3J2RRh0OQrz0JBoVgf/xhjS8jGAm
K0atbNDljXCFtIyr12fuXLpVsOjdlZmcENOFel5Gfh3VY95ZsC22hDpnZyShczjU
PEK2iIOx2EU/YM1xPuRhhimSygRe99ZHrGFAYvmXz9m5T8jCd4F6IG0CYIeyTcVE
UQ5mbtkE52709G2Glv2GCEXNLE9FyaqSNRxrmSGQRKU6OWfKRG22CpWMedifgsoT
7HWgRVPL653Z+Q2nb4JXdC1doKhEAWY9qaHuaBERBJbHQbYVGyBHf6DATHBYfaoX
gwM/bsTMBHeQX+AnjLtZisxmVlJIvMfiaU+MTJMECcAME5BwbvY19DnURG8JmnjN
TRrwroYwmmUs1Jy49ZTO5sshEH5i32xOLjLj4Lb2fx31ydZdGw57CJ8hVH80H0q/
uXWzvYtJIaz4JyAbD9+/rZTETBJebFIUN7VcNgQrrtarnVOa/g3uvJ0Bw9Z9Xfgo
R6Yskop3zc2bTpYaMXUZeKhITUa1ZlWT7jxCcCWGR4hehMKNXMU=
=NYqZ
-----END PGP SIGNATURE-----

--l4lawmz3syfxmpoc--

