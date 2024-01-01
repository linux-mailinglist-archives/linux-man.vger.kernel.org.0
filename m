Return-Path: <linux-man+bounces-334-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F85A8213B1
	for <lists+linux-man@lfdr.de>; Mon,  1 Jan 2024 13:11:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D5005281FAE
	for <lists+linux-man@lfdr.de>; Mon,  1 Jan 2024 12:11:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58CCC2112;
	Mon,  1 Jan 2024 12:11:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GSDX5e+7"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D5620E8
	for <linux-man@vger.kernel.org>; Mon,  1 Jan 2024 12:11:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EA24FC433C7;
	Mon,  1 Jan 2024 12:11:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704111074;
	bh=rCRvG3wQCtB9IaGfKQi8KyVTTddXdM3FPKWCOBvJJRA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GSDX5e+75FRQIZnuCeau1tXNPAUvr1wrly5GEVkljFDo1vm6RuRPfMKzEyUneonxx
	 ONnhEzucppUaNbzIqYOBAfH/IoZYbK7GyJRCpKKHfCuuHdiMYBtALJGIT9KVYN1b9g
	 0tZ65wmC2QUTCCPnbSxRDLmq4uUpevQYnwzAuIUmtLiGo7f0l/ROsx+RNHSZArqZ8t
	 X++tO3n5NTSzb72GvRIo6J3BpEt73PXcoJg+yatEKGCNYF0FsE/PiQhCt0JDZ4OvBc
	 ZUJ5uy4CBq+OcElZHHAsgMjCDTpR6KSt1w0uZTGBbHcAqESTt+qh73X/aYJBGiJ3mA
	 ZnFMnpA6fjHOQ==
Date: Mon, 1 Jan 2024 13:11:11 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Shahab Ouraie <shahabouraie@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Man-page example code correction: sched_getcpu(3)
Message-ID: <ZZKr37Qu6U2340x8@debian>
References: <CAKcKaNR1yGZrkHbdxr=iATzXftPe=eVm4W2cz2ROmEj3=izTiA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="+zrDjMV5l/rcpeJZ"
Content-Disposition: inline
In-Reply-To: <CAKcKaNR1yGZrkHbdxr=iATzXftPe=eVm4W2cz2ROmEj3=izTiA@mail.gmail.com>


--+zrDjMV5l/rcpeJZ
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 1 Jan 2024 13:11:11 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Shahab Ouraie <shahabouraie@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Man-page example code correction: sched_getcpu(3)

Hi Shahab,

On Sun, Dec 31, 2023 at 06:41:43PM +0330, Shahab Ouraie wrote:
> This example code here
> <https://man7.org/linux/man-pages/man3/sched_getcpu.3.html#NOTES> (under
> *sched_getcpu(3)* man-page) used *getcpu(2)* with extra param:
> >
> > getcpu(&c, NULL, NULL);
> >
> > man-page for getcpu(2)
> <https://man7.org/linux/man-pages/man2/getcpu.2.html#SYNOPSIS> defines on=
ly
> 2 args and gcc throws error on gcc (Ubuntu 13.2.0-4ubuntu3) 13.2.0 build.
> Thanks for your time and effort <3

Thanks for your report!

Fixed:
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Df9816831010228c5306584df6880533f33547ecd>

Have a lovely year,
Alex

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--+zrDjMV5l/rcpeJZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmWSq98ACgkQnowa+77/
2zLcEw//aJhxJOGvDEbo7LfHE8HJPi2UG0ZeWSC6sc8GFVcm9/XR2ls5AY5Qjsh2
M9TwgXAHvR0gbM5CXzADGKJ2RLZ6izRxnMmNLmokPw0p352I2Q5Ziya6ubgW2AMP
Fyo6p6HK/IbLHxD/c4ov4SwlRLGs9FA41OxuW9pxMRRL7FoMXU39YOuJ9hHftOlu
ARAPlaFSXWMJeTlp+kes2P7DiFf5N1pSBUUdwhTBpzbH8QNW0EgOYO3SeeXDkAfl
NpwhwYnDnd93tceA7IHDA+0xaCFZSGUlV3TOIH8MC4LOktcLCVNXNY5xAHoOxSP4
RUq3J9007ZHX+nzjs9Ie2GkCcfsIwvPVzxYykmovTJM45TCq8yQOx4RVwB0zUYz8
Mbm7HPcpi3oH2YKsupiNPyr5zgeP9qdsDhkmaVWouCDZSm7k2DTHaHJ8KUljjjWd
fYn4ROo3Exmbr4Bx1ibTX4X2npaHgR23SLnlmebGR0fVsBxTnI/dojRGPaYI+s+r
G3JkmUYXH3TU/bBmbY85cuBKXBw3YvHLtQG/5s8mUTHw0HVtONzy5qfYCjlWXnFD
2Fe+/l1JVxlx5+Z1kXzSSJ8h1OZpGlga+DsITwj6RU9yxVL9Vjwkk117IiM/lMkv
p1zmwBLxuoB/vcAb/STy7CG2anArpjiJaGczaxq/rrO01GvLQew=
=QkTp
-----END PGP SIGNATURE-----

--+zrDjMV5l/rcpeJZ--

