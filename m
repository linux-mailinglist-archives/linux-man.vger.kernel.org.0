Return-Path: <linux-man+bounces-3950-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 70C48B95E6E
	for <lists+linux-man@lfdr.de>; Tue, 23 Sep 2025 14:57:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3314E2A5467
	for <lists+linux-man@lfdr.de>; Tue, 23 Sep 2025 12:57:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F1FE322DBB;
	Tue, 23 Sep 2025 12:57:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r2nNvYJk"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DEFB30DEAC
	for <linux-man@vger.kernel.org>; Tue, 23 Sep 2025 12:57:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758632237; cv=none; b=EBMdkEbkIxhexiWoqB8TMfyUK51xZ09Fg/xBaTV51aa3nebwlluhSp36UYFXScvk7iT9WyL5GRczhG2FPA0X+PxI2DYjC2sFQcgM52fK6YutWNrhEDN6gEIp5MA8NfgWJYYhUAkgDT5BeG6eKdX9E0g4syGvvw0PCfXFv9szBbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758632237; c=relaxed/simple;
	bh=am/DIuccizVgm8rC8I8T1d1tKZSa5YWDSBCQ6tYkc/c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Bo5YPbdwYQ12yJ9jlNZS9Qb0sP8HVW9YJ7/o7yt1bdBjOGFxuuYYRB+5m1xTmiGnpzKWNNDyeZNvqWP6lh5pgCpejf5QJCauUbDcIslzUJPyQyLrC74cMGADQkMZXe6cs3npp1pZ8H4thICrYhVCTE2lqJ4NXb1KjOel7o7MidM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r2nNvYJk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A11F7C4CEF5;
	Tue, 23 Sep 2025 12:57:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758632236;
	bh=am/DIuccizVgm8rC8I8T1d1tKZSa5YWDSBCQ6tYkc/c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=r2nNvYJk2UjCh7R/LoeUVsBMPxjT3kZWQ0B0xg82hB2jASR9LCRkka8azqhuXVW3o
	 ONTYdhymgi/FKqasbqCODW0iNByBJHrOou64FXBPenFgIpnFNhRVbkYoH2eEYFofob
	 VQfSOApD+kkO/vwIUuyUm3J9FRuvZ7AAXrs8AaawPX+8a8GJf0DZmM9ByTKvdYe9lA
	 q68tmPiCLsNKDBLtER+emwUWcHwGvdptlm5nCqc6wzsvATdA0Eb6HqjQArrHllt89H
	 ocqdssnS9xCPfi7BudB6kkqjzHgD9+VnJILq55XGt5eeOXb2FKx+s5gwQHCs0vPI5H
	 rraoQ76XK+e8Q==
Date: Tue, 23 Sep 2025 14:57:11 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Eugene Syromyatnikov <evgsyr@gmail.com>
Cc: linux-man@vger.kernel.org, 
	Doug McIlroy <douglas.mcilroy@dartmouth.edu>, Michael Kerrisk <mtk.manpages@gmail.com>, groff@gnu.org
Subject: Re: mini-book manual pages through multi-.so pages (i.e., the old
 proc(5) page)
Message-ID: <vp6bq3yjezuk2btxklrcastfbt4szcyqcwsxjqzgvk7owpf4fg@yhgolzja72oj>
References: <3cdmp5o65fcnrd7fdaziino6thqpnevsxfln5hku2fvbc2bk42@4ck2l5oyearq>
 <CACGkJdtuDYoOsnxMhGxk5MP3WSxvBMvvhfbDck2C_nLRYdYYGg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6la4kulmh7kjtju6"
Content-Disposition: inline
In-Reply-To: <CACGkJdtuDYoOsnxMhGxk5MP3WSxvBMvvhfbDck2C_nLRYdYYGg@mail.gmail.com>


--6la4kulmh7kjtju6
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Eugene Syromyatnikov <evgsyr@gmail.com>
Cc: linux-man@vger.kernel.org, 
	Doug McIlroy <douglas.mcilroy@dartmouth.edu>, Michael Kerrisk <mtk.manpages@gmail.com>, groff@gnu.org
Subject: Re: mini-book manual pages through multi-.so pages (i.e., the old
 proc(5) page)
Message-ID: <vp6bq3yjezuk2btxklrcastfbt4szcyqcwsxjqzgvk7owpf4fg@yhgolzja72oj>
References: <3cdmp5o65fcnrd7fdaziino6thqpnevsxfln5hku2fvbc2bk42@4ck2l5oyearq>
 <CACGkJdtuDYoOsnxMhGxk5MP3WSxvBMvvhfbDck2C_nLRYdYYGg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CACGkJdtuDYoOsnxMhGxk5MP3WSxvBMvvhfbDck2C_nLRYdYYGg@mail.gmail.com>

Hi Eugene,

On Tue, Sep 23, 2025 at 02:21:29PM +0200, Eugene Syromyatnikov wrote:
> On Tue, Sep 23, 2025 at 12:51=E2=80=AFPM Alejandro Colomar <alx@kernel.or=
g> wrote:
> > Right now, the only way for searching something across several pages is
> > going to /usr/share/man/, and doing a manual search there.
>=20
> I thought man -K existed specifically for that purpose.

Oh, and now I leark global apropos(1) exists!  :-)

Or maybe I just forgot...  Anyway, yes, I agree.  That's better than
putting together huge artificial pages just for searching.


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--6la4kulmh7kjtju6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjSmR8ACgkQ64mZXMKQ
wqk3OQ/+IjubABHvulJtycCm3JOYBEbInO11Sfmy/mpr8EZZj0cw72iQ3IYJVWaL
vRguGLlA6alAcs9nBH5Rj4ffm74t+nebrN5Vl+KrizwZ3WLf711yFz+s5Buwh45U
9wKA+RE4ceRxMiyQTC7Iw3Jf5HwvUm+88kKRmaADCGG+44MWhgU07nPqua2tuFjR
ffn4+BDFHHW/DelykV0hG3friKWPP/qQDEYWnBincZ7WX7vTMwuSLk/vzZeYGcX0
3M7EtZfNpgtXDwOffSrhE6Aq68J8vsLBsIm3tDR75zj/7WLQ5QoUNkmkwuubRymr
ovc/KgggrTM0+xXm0UJN1dVoTj+sLN4b75l/Jq+Y02BWwPovJVzRk5LLtdm3KoLO
xH/1wPGqvi4kehSnVH2TQRwqFe5BLAc6J+355ptGoA5bzFoMLmWwM1vULP9QERML
ky1F/WcFYeCAZ9Mela6mZniQbU1FYB7soLx5JqqDQ77VnuiQuOsvz0qg1WrpNkMJ
eXlvBi099WK/7/hgCuiUTMIPLB0rfoms948uHV4wsCwksjbtUy1Bsum/MwCLV19V
cUHPBAwFIgfw7raU9bJKch30m03xp5poxk9DxubCO48b8N4w3p833t3bn00V3fP4
Vs8dyHgxiGeLaa7aMk/uQQvL77mOGbDS+QfJejWA+rrT4t0kUAc=
=Ak+7
-----END PGP SIGNATURE-----

--6la4kulmh7kjtju6--

