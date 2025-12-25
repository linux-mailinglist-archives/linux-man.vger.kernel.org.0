Return-Path: <linux-man+bounces-4556-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 65FBCCDDD70
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 14:59:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 347B330109B3
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 13:59:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B4872F25EB;
	Thu, 25 Dec 2025 13:59:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fP0JsQHJ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37BA9156237
	for <linux-man@vger.kernel.org>; Thu, 25 Dec 2025 13:59:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766671151; cv=none; b=i5yVUhFJglgWMgJXvjSXJy0gnJ88S9g20jWVMmNVRLQAat5D5op+cH0PTzY1fjyCOqWQ/LjLKU81ovfjxrnpkr+qBexGliF8lO7KP/1yELhl2D2YzKEQWUNBTap+nZBqc/duzp/XDdzzUclT3ZTilQWvYsXxGcESGTb26YIG2ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766671151; c=relaxed/simple;
	bh=ZUylHaEG+iid8xlOa6C4WCpTn8fIrY9XYjHmpmMHIY0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TdrlGTSDNEkDftzdqTrKJSVA4c//MRqcydAxTt3sYavVmz0Q43071R9YCm0BRmvZMHfexiStgDfnY14tgm0dX/8sR86WUVYeR1jWtzbMr8/taAaKetQp4i3qv2aC7IEE2BJG2ab3ihgTCLQwgETEkZLw2HYSBcUbdi84n4SGiCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fP0JsQHJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE6D2C4CEF1;
	Thu, 25 Dec 2025 13:59:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766671150;
	bh=ZUylHaEG+iid8xlOa6C4WCpTn8fIrY9XYjHmpmMHIY0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fP0JsQHJqzyLKLjAwzgnELE1VKAcUF7of8Eo5tsnkNXbucFxaE/6/ss3VsqPY10sr
	 qGok3gTdQOEqvYPjfFsUYcZXdUEVM7D4MdmrRkJ+7omt3lYFkjmdCf4MWMniJpNcKc
	 55Zty3XuiLtRLkq0hOUlYd4tpuEjRloxN9hJOy/QlvKAASqjLsihcaquYBJIOTvcIt
	 l2tWzOYNZ81c8+GGTvr/XbPNeILgPhMelnHRJCSFH78dym6ZgICNOAFlO41clwZUgV
	 AHN2PmcUSG2JT3I6jt5q10g/LIQ/fenmbowYVRrns6Al2gPvN4SEHxLC7c3GFfTkYZ
	 gBFVMxRx8P7ww==
Date: Thu, 25 Dec 2025 14:59:07 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  PR_RISCV_SET_ICACHE_FLUSH_CTX.2const
Message-ID: <aU1DEl7UvZaAcISX@devuan>
References: <aUv63hoo4aRlLwV1@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2derql72k6cfwkwu"
Content-Disposition: inline
In-Reply-To: <aUv63hoo4aRlLwV1@meinfjell.helgefjelltest.de>


--2derql72k6cfwkwu
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  PR_RISCV_SET_ICACHE_FLUSH_CTX.2const
Message-ID: <aU1DEl7UvZaAcISX@devuan>
References: <aUv63hoo4aRlLwV1@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aUv63hoo4aRlLwV1@meinfjell.helgefjelltest.de>

On Wed, Dec 24, 2025 at 02:38:22PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:     eg. =E2=86=92 e.g., but I think i.e. is correct?

Thanks!  Fixed.  Indeed, 'i.e.' is the right thing to use here.


Cheers,
Alex

>=20
> "In per-thread context (eg., scope is set to B<PR_RISCV_SCOPE_PER_THREAD>=
)  "
> "only the thread calling this function is permitted to emit icache flushi=
ng "
> "instructions.  When the thread is migrated, the corresponding hart's ica=
che "
> "will be guaranteed to be consistent with instruction storage."

--=20
<https://www.alejandro-colomar.es>

--2derql72k6cfwkwu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlNQysACgkQ64mZXMKQ
wqmBgg//W8RMEVz/s3k/hr55A9iWnK3Q3Wa/y84XZC0wm1OB+ZKNrlU/lyDKw2u8
Ip1vgtNN3hZ7t/Kp9yvi6mqZLJbFl2HXhr7LdxFS5EpthYrt71+VeuG0dcFkTdci
i1WsH4smKAIRKC4SnE4u7XKPt4Ekqwh3dALVcsPpk8g5Jh6L2CN/hh4slsw0i3BT
vuxdsYckT40g44Vl+zglKiSEX1I9VQk8cqFrCws31F5aZjQKsDg/RCQvDo+OajKd
t4fPorrIb4NeiPdQGaA/kwAyafqpBfxDixha9Eng2Jcle9JVXiWQwT6XSnP2VN0h
o7Pbvzk+YMKjQ4ZBoKIHtw9sc8NMDrSx5/Xh0eICN60bBwFsCrMSSraiXqaAyo2o
if3YQsFT0yx7esA5zo/BUTSW48UH0on0jLgh0tk4ObTzj8ns8gAi1pnqTLFBUhyQ
81TFM74GxgaLAzHbQtUHQVu6IWtWzxR0pkI7vetNjUWL8kKSYLlJPOsTMI/KAooB
hKPK5njY/XlpZSga908mR9OkSSEjyCUx5aipLWi6g61Wr3igKo+Iq3aUL9H3eZLx
/OJtKAAbz4LE45RWslZc2OJzxGO3wgEGjnAUmcBU7xa/71GgR5+AZkNA5I8bw4vp
TDGZQT2aSRzNvnupOVqgZnbmb8bLOMls/hd4N8kAiVDhPn0uwUE=
=4lIz
-----END PGP SIGNATURE-----

--2derql72k6cfwkwu--

