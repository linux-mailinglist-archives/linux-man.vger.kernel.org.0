Return-Path: <linux-man+bounces-3504-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E88BDB2CA3F
	for <lists+linux-man@lfdr.de>; Tue, 19 Aug 2025 19:06:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 921C21C22BFF
	for <lists+linux-man@lfdr.de>; Tue, 19 Aug 2025 17:07:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AB012BDC19;
	Tue, 19 Aug 2025 17:06:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ET0f79UX"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E2B28504F
	for <linux-man@vger.kernel.org>; Tue, 19 Aug 2025 17:06:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755623213; cv=none; b=r98awh9IRdy4REF/+A9pFeAXaNSswR/HTzmG63pntX700GgmDxcKMVAHsa+jwfYINdkAIh67bKhlQ/zACLelJTXAwD3HO2YUEy1+XiP/ejK1t0/Kfb9pgspiuZL6iS4+NB1ZTdUodfKbEF4f8cjubySb5O1OujZyrzX/4RwtxpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755623213; c=relaxed/simple;
	bh=eug7sRM/uQso2nGNbk8y//cm5rH4X011N6KCnQ6140I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZW1fym2c39U7eQwytCQkfhpBFmkpcDtdV4M9qpNUTC9fvP+sPzPv8fZMQ8XJZ7q9oJ8pkw/G5f6KyLNeDy0HC6EEVB8x5d4OnoHi7dqev4yquT4dd+99NcCRfUtJ3A9YM/UwJh8iH8hk+Q/iZRhMfNUSKWyJGnJGCAJ/G5zYo4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ET0f79UX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5BC10C4CEF4;
	Tue, 19 Aug 2025 17:06:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755623212;
	bh=eug7sRM/uQso2nGNbk8y//cm5rH4X011N6KCnQ6140I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ET0f79UXydj9RUjVvKv4p4acjig0AGbrNqnQrp8cDFFTcTT/3rZbw34irSVPO79r+
	 Ujgbg2kbGQVtUZwb0Nz4rrd6WLrT6kGX5RLh5XvAGK8a8NujTphN/L3EP3rEKHGw2X
	 z+Lfy7P5xfcbHBmdhiGJy+HGXy/NP28jQ5ntvBznl1Yuhaty8qVz3LGfunW5sa8M1z
	 QVmrp6yScSGCnr8LKjj9HQdfeO8OLqE4ZXDevO0x2yVT2KN3pz53I6DuPQCrcS+rcO
	 HESyoT6mHy0RDhB99qpjbbBi+bKOwrastpYVPG3WQ4WFpqTHklcBA1dEvdCHbqXUCF
	 nuXAz92fyMTfQ==
Date: Tue, 19 Aug 2025 19:06:46 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Askar Safin <safinaskar@zohomail.com>
Cc: linux-man <linux-man@vger.kernel.org>, Elliott Hughes <enh@google.com>, 
	Carlos O'Donell <carlos@redhat.com>, Eugene Syromyatnikov <evgsyr@gmail.com>, 
	Walter Harms <wharms@bfs.de>
Subject: Re: [PATCH 1/2] Remove all mentions of blackfin architecture
Message-ID: <gg5piu7jl4uozo7h7yasl6kezo34mddatk4w2g2pmplakj2ctl@bb5sko4gsenj>
References: <20250819155400.763253-1-safinaskar@zohomail.com>
 <20250819155400.763253-2-safinaskar@zohomail.com>
 <jqw7baa3nx7vkbramdnlpdybfesgc34gwfdeo2l6otue2bglmr@m54n6nmbtush>
 <198c3264442.125c4d18f66475.7936052978788713808@zohomail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vaoem4o7k6hjivks"
Content-Disposition: inline
In-Reply-To: <198c3264442.125c4d18f66475.7936052978788713808@zohomail.com>


--vaoem4o7k6hjivks
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Askar Safin <safinaskar@zohomail.com>
Cc: linux-man <linux-man@vger.kernel.org>, Elliott Hughes <enh@google.com>, 
	Carlos O'Donell <carlos@redhat.com>, Eugene Syromyatnikov <evgsyr@gmail.com>, 
	Walter Harms <wharms@bfs.de>
Subject: Re: [PATCH 1/2] Remove all mentions of blackfin architecture
References: <20250819155400.763253-1-safinaskar@zohomail.com>
 <20250819155400.763253-2-safinaskar@zohomail.com>
 <jqw7baa3nx7vkbramdnlpdybfesgc34gwfdeo2l6otue2bglmr@m54n6nmbtush>
 <198c3264442.125c4d18f66475.7936052978788713808@zohomail.com>
MIME-Version: 1.0
In-Reply-To: <198c3264442.125c4d18f66475.7936052978788713808@zohomail.com>

Hi Askar,

On Tue, Aug 19, 2025 at 08:25:21PM +0400, Askar Safin wrote:
> Oops, I merely read your first mail and missed second. And proceed to sen=
d v2 patches.
> I'm sorry about that.
>=20
>=20
>  ---- On Tue, 19 Aug 2025 20:08:37 +0400  Alejandro Colomar <alx@kernel.o=
rg> wrote ---=20
>  > > -.SS blackfin, m68k, and sparc
>  > > +.SS m68k and sparc
>  >=20
>  > I think I'd keep this.
>=20
> My intention was to remove ALL mentions (with possible exception for sysc=
alls(2)).
> Otherwise I don't see any sense to do this.
>=20
> How much time should pass to be able to safely remove truly all mentions?
> (Previous question is not trolling or rhetorical question, I'm genuinely =
asking.)

I think 20 years would most likely be a safe bet.  I don't think we'd
care about anything older than that.  FWIW, back in 2020 we already
ignored any Linux before 2.6 (which was released in 2003), so 15 or 20
years is a good bet.  I think 15 could be enough for niche architectures
that have never been mainstream.

> Just say some exact timeline (i. e. 10 years, 20 years, or something),
> and I will wait this exact time and send patchset for removing
> truly all mentions.
> (Again, previous sentence in not a joke and not an insult. I really want
> to do this.)

Yup, no problem.  I'll be waiting for them.  :)

Maybe at around 2033-04-01?  It might arrive sooner than it seems.

> I'm perfectionist. And I for all-or-nothing approach.

Okay, that's good.

BTW, I guess I should still take the second patch, right?


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--vaoem4o7k6hjivks
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmikryAACgkQ64mZXMKQ
wql6cA//d0i0r9yI6jqZ9jrp3C8YdPq13gNFd7/FR/Yj2PokV0+R6vK2z8ilO/oL
J/mSavm9mCw+DcsLJtCacaP3WbHMHjcuPWNDeK3pZdkNqxQjlNtJ7+i7qBnU375N
yKxkuaaz0LIT8gkuJyL1VING2QBaEJULtSwGFz38+nvkp5pT6i1h1mcLkh+Y/oUu
ZXVJ/yWFfd5qGz29JORg8Yz3yit1NX8us5ukJeFteEwcVh27XA18+oM3lkWPPkcd
nYZigmegbmRD6Nx42Un5kh4q86XDPaqK6t/G81sIHmZx5ewFLgk++i2lVkqz30Xo
abh0Qo/YtOsUdoimQtAJTvJsUAH6r2XYkJGxtj4bOzJwnVv1aJEOwJNllMuHh2ao
X9y0JYJrouivgm5we4LS69V4po+oz6UhB9LiT4GBc1mIkWjhgoq+mqaq/fFW7QKf
QMVKIqXgB1S46grQg8zqzTdLsnLdECf9Sqg9JxHNuHIE0faP58RW6gB6nJpyfVMF
bJ6AaTRs8M27vh4BAXtQN69XieKaj4LN+facjpQbewfSrBuTHRnmcQyaCOi1XZ96
hDpJoJr/dMEpfPG20Nolc6Y5Q2EpByIzqGJh7aRsHH8M7HwapPyPlW+Vd7VXLKTm
ak6hEFmGUNooRHDLcIgT+3/h4viX03Ui9LsTZKX66WTFuqze9Ek=
=NjOI
-----END PGP SIGNATURE-----

--vaoem4o7k6hjivks--

