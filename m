Return-Path: <linux-man+bounces-3707-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A786B334EC
	for <lists+linux-man@lfdr.de>; Mon, 25 Aug 2025 06:11:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 976E17A963D
	for <lists+linux-man@lfdr.de>; Mon, 25 Aug 2025 04:10:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5744823CEF9;
	Mon, 25 Aug 2025 04:11:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u1+ZPLWR"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 156B11DF73A
	for <linux-man@vger.kernel.org>; Mon, 25 Aug 2025 04:11:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756095102; cv=none; b=L1yeLk9JuK5kXx4SJDR5AUDYqTWJI17A82bc0d54z9i6BEjP48EsXG+iHaphucJneTStkCZz1WY4DJtWwemvgaJWUrFBYvhFCY1aWi5iLUFoVlmZUFdDsgDEAkHhNqE050bYdD+hG98hk7ByWbcvHE0bGtuJOR8+FCAQRYF6/CU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756095102; c=relaxed/simple;
	bh=td+DL6b6WQlDw6MkD3jFWT9h3l2ipIq0EUsaR2isQZc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VmvN7l47oVZrJt39XIA5YbV0cQO9p6OEca3M7cid5YOGY/rv30yqo1+XwuWAxjj4ylFcIMJurD1LMSDt/gamN32Zmeg9Vdl62llYnCleMGEBCrE8EDRoIS6JfS8dWwvw34JvKPKsevUrQUmqkJEAOTZIX9gsDJQUrybhhSOICHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u1+ZPLWR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C905FC4CEF4;
	Mon, 25 Aug 2025 04:11:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756095101;
	bh=td+DL6b6WQlDw6MkD3jFWT9h3l2ipIq0EUsaR2isQZc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=u1+ZPLWRYvLTZ6gYrNTbrHgnFt7nSx7ERwZ3w/yvD5dz7UlgANkYvB9HOG/6hKt/T
	 Z92ZOFwefjXiRusIewXURKDBN/RzftCdMs0+IYqc+yeIYEkLxPs3rf/w+FL8hHQTNZ
	 DJ5tuhsYgIKuKF6ju6SOHFf/lZQNS8Rqp+WGeLQo2Mp/xh4XGUPJiEH7v8jEt/c1+S
	 wfVDCWaSG2O/OoRXb9iDrdtwp4V65S9JJwGrJzgFZ1VcwOgcu6oHJvCqVanVbxV+NY
	 sCScMXUxIWzgldYh1n8CPkaF4drTmfAC7BA2OdB5yBjhDkYVMaxqPP4nTDvfemvVks
	 A6UCXghQE9WQQ==
Date: Mon, 25 Aug 2025 06:11:36 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: Helge Kreutzmann <debian@helgefjell.de>, mario.blaettermann@gmail.com, 
	linux-man@vger.kernel.org
Subject: Re: Issue in man page ioctl.2
Message-ID: <s3f54t2mshq3mkehrskpz4fsbiiwwdmkvnvgirnrr7kbjuzy3w@cjsvb56wg327>
References: <aKsmStw-BIV8ppku@meinfjell.helgefjelltest.de>
 <hmtszsu3j37hc33jkafbc45s32zgdz2twvd6aerwtuvmenuzrx@vr2nhsfciuvr>
 <871pp0l8ps.fsf@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gy2ih4fmhgshksgv"
Content-Disposition: inline
In-Reply-To: <871pp0l8ps.fsf@gmail.com>


--gy2ih4fmhgshksgv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: Helge Kreutzmann <debian@helgefjell.de>, mario.blaettermann@gmail.com, 
	linux-man@vger.kernel.org
Subject: Re: Issue in man page ioctl.2
References: <aKsmStw-BIV8ppku@meinfjell.helgefjelltest.de>
 <hmtszsu3j37hc33jkafbc45s32zgdz2twvd6aerwtuvmenuzrx@vr2nhsfciuvr>
 <871pp0l8ps.fsf@gmail.com>
MIME-Version: 1.0
In-Reply-To: <871pp0l8ps.fsf@gmail.com>

Hi Collin,

On Sun, Aug 24, 2025 at 02:18:23PM -0700, Collin Funk wrote:
> Alejandro Colomar <alx@kernel.org> writes:
>=20
> > Hi Helge,
> >
> > On Sun, Aug 24, 2025 at 02:48:42PM +0000, Helge Kreutzmann wrote:
> >> Without further ado, the following was found:
> >>=20
> >> Issue:    What is fildes?
> >
> > It seems a weird way of saying file descriptor.  I'll change it to fd.
> >
> > Also present in close(2), where it's a bug, because nothing else calls
> > it 'fildes':
> >
> > 	$ grep -rn \\bfildes\\b
> > 	man2/close.2:219:.I fildes
> > 	man2/ioctl.2:102:.BI "ioctl(int " fildes ", int " op ", struct sgttyb =
*" argp );
> > 	man2/ioctl.2:139:.BI "int ioctl(int " fildes ", int " op ", ... /* " a=
rg " */);"
>=20
> Not really a bug, IMO. It is just a common way that POSIX refers to file
> descriptors in function prototypes. See the old ioctl page, close, or
> many others [1] [2].

Not a bug in ioctl(2).  But it's a bug in close(2), as it is in italics,
meaning that it refers to the function parameter 'fildes', but in the
function prototype it's called 'fd'.

Anyway, I've changed it also in ioctl(2) for consistency with all the
other pages.

But it's interesting to know that POSIX calls it 'fildes'.  I hadn't
noticed.

> Or the aio_fildes field of struct aiocb required by POSIX [3].

Yup, there's that one.

> Collin
>=20
> [1] https://pubs.opengroup.org/onlinepubs/9699919799/functions/ioctl.html
> [2] https://pubs.opengroup.org/onlinepubs/9799919799/functions/close.html
> [3] https://pubs.opengroup.org/onlinepubs/9799919799/basedefs/aio.h.html


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--gy2ih4fmhgshksgv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmir4nEACgkQ64mZXMKQ
wqmNCxAAvvZTCfzpsRSlaWWlA5eVQNHlf8elNEGOVH6Y4/I/nhCmQnXDcfMlddiv
W9qsHyYtib/OXM/bP6ZAeQTAISrdjUN82a+aU/YLXVRXNQYVrrYGgUAJ5yyqnRhl
7qCYGEoxA0VPmzpHftJs4gFY55TfxtlksQcyCvKe2MEymqwxoDy0NMNCc+D4Enai
280qdQbj02s/pCnGIdef/2ez2K+QBAZr8pTlcMSzRp0l8RyGhRiqEAUAn9peCm5N
fccJn2aGHQ1hDu19lrLPWbvxpoSTPYKXcDiNRAcUASdOpe+zc+3f5hOSNc9C+7+b
loQYKpELePdp5Qq5EKgEOotkpkvJjxYWywrSO9m5rBktcxYIZsYbQtTd/xVAy9MS
hI4pSO/bZrHfSWcp0xAv8zZGkjmCbcolaguGe16RRRfwmivpeRFBGJhMuNAfuTg9
B35n7dY2DdM/KLHok7wO96ITUrs1FG6DYHhNA1pEcOg0G+Hlf5zxSgCIbEVeku42
z2wjWaquQts7OG9xSNROVKVK1DTBqllSHUt4nba+WiJbGp2M9CSfQCg9/901HHYS
VCdhyE6yQ0XJ+GUAIhWPbQCFWG1c16GOxZt1vX3PQMXTqgxmaJWYQqxFM5cGmIbq
euC98DZn9pMRxNUApIiV6ayaMSIIo89ySkg6ZRY+4+lVMknKq58=
=LkHH
-----END PGP SIGNATURE-----

--gy2ih4fmhgshksgv--

