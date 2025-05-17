Return-Path: <linux-man+bounces-2950-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 006C4ABAC97
	for <lists+linux-man@lfdr.de>; Sat, 17 May 2025 23:34:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F336E189B275
	for <lists+linux-man@lfdr.de>; Sat, 17 May 2025 21:34:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 617BF2066F7;
	Sat, 17 May 2025 21:34:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u6aFOFgI"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E94E747F
	for <linux-man@vger.kernel.org>; Sat, 17 May 2025 21:34:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747517671; cv=none; b=I6YxaBYHJb3Zfrar+YF+4MOI/dFX/mC9MtJILGEInE+fsfNbnmH+HBytIdVoDLYSqJPG0RuIcaDYKnb73ZmlOC/8HPsy4bmaWO3n71fWdAblVZzi4uNks0BYL7VvKoupgN0o1EZWUCveRrHy5RbqmLUxdgXlFcDOwnJK9KSGXso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747517671; c=relaxed/simple;
	bh=kZsgK7/YJuQW/rpYwOqG3awwbfg+HyoybYoCuDQjH5g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BivNaf/chcAnzQFTsbHyEfikoY2al3dEr8z7Pf4E1qb/soU98wTaTzfJsy7Je1AWw0l6ZlWl6wTF2VNCnHuVqGXo24uy9/bGjG8w/b3TAyc9cgNBMtimBeGr4bLn2Qtd/91XBr8Qx5CxSVq5cQYhVjjBIMJp7LrheWlmp/pqpaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u6aFOFgI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2B0F4C4CEE3;
	Sat, 17 May 2025 21:34:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747517670;
	bh=kZsgK7/YJuQW/rpYwOqG3awwbfg+HyoybYoCuDQjH5g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=u6aFOFgIHrPL12MPiy5ViRx1tX3fN7tpBR+lwkCH6mXpC8mp2MPihJZDTD07e+1nk
	 dCsapCucu1JhRxw9vqhcs8vlu+H1uG30yR8BAy8IkI0N50aJC7b1c+Gqp/wF2CANme
	 mWFFBiyYxQcyGTQ1jqhowmEAUpfukyzaQ5/Lnmw3aMbdTH0YbYkuU1vuQUykAp5Zv5
	 S5gn3xKMLpKpFJnKg4nz/SusyfqLs9Bfg72zquzV8C1GDaNNOYMGn9SXHRhr6Afi6j
	 BoJ8bCIbrGysdWoQjQMZQLdEcmOBwyVFubH+xmZ/qCdSO8Ti4hqdlkovXXp4iHRCsr
	 7SYaAMr6FGN2A==
Date: Sat, 17 May 2025 23:34:25 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 2/3] man/man3/getenv.3: Mention secure_getenv was
 standardized in POSIX-1.2024
Message-ID: <aqq7gag27u7kwnltq4zumzjk2wvlsevbevm5lkgr3m2x5rhowf@hdufz4pmli3q>
References: <6abbe99f5e8710202650bfee5d41e6fceaff4d1c.1747515178.git.collin.funk1@gmail.com>
 <f1cc4b34bb42b09ae9c0820df8fdece6fcebfcd8.1747515178.git.collin.funk1@gmail.com>
 <ationx4kn5f2d5b76ayyufnjakuy5q3pkgmgq7fagwgakfitar@5l6ty5ftdsrg>
 <87v7pznd4a.fsf@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="msttzavp4vlo6qwf"
Content-Disposition: inline
In-Reply-To: <87v7pznd4a.fsf@gmail.com>


--msttzavp4vlo6qwf
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 2/3] man/man3/getenv.3: Mention secure_getenv was
 standardized in POSIX-1.2024
References: <6abbe99f5e8710202650bfee5d41e6fceaff4d1c.1747515178.git.collin.funk1@gmail.com>
 <f1cc4b34bb42b09ae9c0820df8fdece6fcebfcd8.1747515178.git.collin.funk1@gmail.com>
 <ationx4kn5f2d5b76ayyufnjakuy5q3pkgmgq7fagwgakfitar@5l6ty5ftdsrg>
 <87v7pznd4a.fsf@gmail.com>
MIME-Version: 1.0
In-Reply-To: <87v7pznd4a.fsf@gmail.com>

Hi Collin,

On Sat, May 17, 2025 at 02:25:41PM -0700, Collin Funk wrote:
> Alejandro Colomar <alx@kernel.org> writes:
>=20
> > In HISTORY, I tend to not remove any details about versions.  The glibc
> > version where it was introduced might be useful for someone, so let's
> > keep it.  Other than that, LGTM.  Thanks!
>=20
> I thought the same, but I based my patch on getline which was GNU before
> POSIX. It has:

Thanks for checking!

>     GNU, POSIX.1-2008.
>=20
> What would it be better to do:
>=20
>    glibc 2.17, POSIX.1-2024

This is the better.  Actually, I tend to put POSIX before glibc:

	POSIX.1-2024, glibc 2.17.

I'll check the existing pages to try to put a consistent order.  For new
ones, let's do POSIX first (and ISO C before POSIX).

> or should it be:
>=20
>    GNU (glibc 2.17), POSIX.1-2024

I use glibc and version if I know the version, or just GNU if I don't
know it.

> I would check other examples, but my memory for other functions POSIX
> adopted from GNU isn't working well...


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--msttzavp4vlo6qwf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgpAOEACgkQ64mZXMKQ
wqn0Xw//S06IvEKXu16hoKLD0rpX4P6qzVu3go8fotH/nRWnnbvF/xCZxT9x2Fw9
H9BrA2rNV5SfIAWockcnZU85KUvDr4GHPqu+6RzHgXA4kmY6sm0nOM+P3UJFlsYa
aI8Xr8aBMYaET2mElTf46VG8ddo/U0Tn78uhd1CM5QbhxZZfNZWe39Cbr+r097cK
w7KqiHLmHsF3gt/FWSEG+YCGNuKZuk8YRlTC9Wu6df1YNmnpuSF4Js7jL7/WvELE
equRpmxBIAwPvEp41cBw8bN1Zy1ZsLWJWkmtqEnLkx7vZgfI7hBXEskjehjI0FBt
hW2CdzQlsGoHy3mBdlCjNB6Ew79sWR+x9uQXmtYtRuVSfI2c5lfwI4y7ge9QGJED
Z18MtnrfV8A/Qg+mI1dBfDLyqpOhsyEFG61prxt9JVIP6gMLpNNBhAQdKZARfKYl
VcUwwcrImeGMpDT86ec+jK7ALdnZSVYTdFJ9gFGS+aqQa/qk4uX30P5T6aDUint4
7DrbU3bF2DH9rdGZxOzzc5jHBMrTTjXqVEIYS+QR03N/X/fCxy8V9rVX4LeObpwC
xpj7QxpBDBfLgtvfC3q2XEeWWZ89CjnkL1iRai9F9iRLwhBWr2ILLI8vuc1gwv+8
OAnEw0MvM3W8/kolzQqal1VC2KaTS4sUBbbxymiY1KbpTFfN+jQ=
=uHeA
-----END PGP SIGNATURE-----

--msttzavp4vlo6qwf--

