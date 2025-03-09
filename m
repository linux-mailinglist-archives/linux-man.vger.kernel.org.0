Return-Path: <linux-man+bounces-2587-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B46A9A58512
	for <lists+linux-man@lfdr.de>; Sun,  9 Mar 2025 15:50:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6A0C83AE837
	for <lists+linux-man@lfdr.de>; Sun,  9 Mar 2025 14:49:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9C2F1DE89C;
	Sun,  9 Mar 2025 14:47:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CAGHC4e+"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9AB61DE899
	for <linux-man@vger.kernel.org>; Sun,  9 Mar 2025 14:47:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741531678; cv=none; b=srjhw4KSdnypls5/3P4Rji3NroHUIPk+FDvooMVEQm/28JJ2A32/DgTkpSV6a1F1zjxClyb+0dr9LoPK/z/Tx9Xe46Wrpe6HaM48XpNelcnkZd8WNHxu3L1oLmlyZMLOyJn5lw7/DX+/E8hh0p6Fmsl/8JEm16XdTzMdEKn7bAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741531678; c=relaxed/simple;
	bh=S/QmUQBoVSKswKPirAXCfRSetGWpd8prQZXkuWHLIwI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kCAyPbmeLKP5mrjxVo5tIA4FAuDpij7ntp1cAzC4WmZWr9d9DvuGXmK3DplY6Nq0z4jCporlATSPIJjUnylghikOL1kCO8V4qIDnjVScXNT1u9o95sLttnaM7gNtxo9ZTqGoxTNEGb4frWPZLwBB6YGl7bYcaT+a8jP3rUBUUa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CAGHC4e+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67D37C4CEE5;
	Sun,  9 Mar 2025 14:47:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741531678;
	bh=S/QmUQBoVSKswKPirAXCfRSetGWpd8prQZXkuWHLIwI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CAGHC4e+txf1fIfMCJGtFt5h2rZaivLJpcuDwrnQIuu+UyoKLXrRROlidMBwQbony
	 e8To2+hCv+r9SVP/oyuqaLBiEZkHGhmWUt/RBsRzeFj8ic6SNCk3SpCFusPiSNYBD4
	 eDnBLA++ur+nhaRqPmEaPc48YCQd8Iu9wRe1rkjxh9bRzRGNViA5QSaD3126mSW7NQ
	 vOdg8ujxUEAZgR7vvG4VDDonLYps0nyoalY0UVY/73IUlD7eNZc5ntTi36MJfxkE3h
	 mTcd9Aa54Sb5d79mthrzwSEB6nFno/Bk6WE1xKtc49v8FTx3iPcPs1LqqtQ9YUbAci
	 LYo4C//GURYAg==
Date: Sun, 9 Mar 2025 15:49:10 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: linux-man@vger.kernel.org
Subject: Re: man-pages-6.13 released
Message-ID: <ccadtuzssuamek537trppkkustbxn6vxhwcvd6tlzsqkkhfcvt@irm3bx5k5z53>
References: <ft2zbwghk6hbnhlawjigckegrk3yekyeiudp43gafoububm5ma@mbkqcvh4idyf>
 <7911697.yEr3mM9iWp@pip>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6aa4rdjszsgmztsy"
Content-Disposition: inline
In-Reply-To: <7911697.yEr3mM9iWp@pip>


--6aa4rdjszsgmztsy
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Deri <deri@chuzzlewit.myzen.co.uk>
Cc: linux-man@vger.kernel.org
Subject: Re: man-pages-6.13 released
References: <ft2zbwghk6hbnhlawjigckegrk3yekyeiudp43gafoububm5ma@mbkqcvh4idyf>
 <7911697.yEr3mM9iWp@pip>
MIME-Version: 1.0
In-Reply-To: <7911697.yEr3mM9iWp@pip>

Hi Deri,

On Sun, Mar 09, 2025 at 01:12:40PM +0000, Deri wrote:
> I'm wondering why you switched from using a more "up to date" groff back =
to=20
> the 1.23.0 version.

I bought a new drive for my computer, and reinstalled the OS.  That was
when.  :)

I haven't built groff from source since then yet.

> You may remember when I developed the software to generate=20
> the input to groff for the LinuxManBook.pdf, it used a custom an.tmac whi=
ch=20
> included fixes to make it work properly with the current groff at the tim=
e.=20
> Gradually, these were incorporated into the groff git, and as you started=
=20
> using git compiled groff, you could drop my custom an.tmac.
>=20
> The biggest visible issue is that all the overview panel bookmarks are "o=
pen"=20
> because the 1.23.0 version of an.tmac does not honour the setting of=20
> an*bookmark-base-level. Also the pdfs produced by the 1.23.0 gropdf are 6=
6%=20
> larger than those produced by the current gropdf.
>=20
> Just wondering if you found a problem with the current git version which =
meant=20
> you had to revert?

Nah, just fresh OS install.  I will eventually build it again from
source.  I was hoping that groff might release soonish and I wouldn't
have to do it, but I think it will not happen any soon.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--6aa4rdjszsgmztsy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfNql8ACgkQ64mZXMKQ
wqkwhxAAm9QLXz3L9zhfy/XCLfWwqmzFvlnn1OaNtTOI2zap10kZV8Dd4ArW49zM
frFldrdQONgx7vRowGRRvpj/7jvH/l2puFKLJtp6WiTzkFS1Gz4CGMRV+rxSEB6L
CdbT4ULUQ0hJ/zeCrCAZuDv8Om21j6x6HkDo/SoF6PGNzApTBOIE9ViZQk2X/rsH
fSISW8Rehx86y/9Lxvztx8RGaPA1c7FlGpDEb6kiivSzJeIgpxxQvEpRmr++Z7AE
hCDZ0VjFyEfIgF8HqhdCCKGkgaIZ6Pic/dQhcj+GNgPm8YDd4taXtwO2CUz+LyiR
VCmrvLntV0jFy3+KY6Aqyv5lxVCw51tKRyOweiVC1fRoHwwwyV8LIR+dfLpUb/r/
nIoTQSpt9W/V+684boK/Kl4taUfLg9T7Pw21uJNIESmxry9F9qp6nvyzKjFbrbSk
lR+Kf+mv9y46ruaMUkV9wK4h01R3lb5YHo98pCaNIUUrJkXavuNQnV5cnu6mD24Z
Uuit4amCvd+oyDC8z/4gFrpQtAsWLrZvkGkVXMW/VO4+Hvq9HUJg6f5hg9uyU7PP
Mu+AWM7+lH17S/dwMnDzVZrhYAWvYXxrmajbSeOcsgTTAYye0W6Zw+Tg1XB23SVC
OoQGWry3G9Gl3pOoDLTd6Vgo//Q1Z26bppQiQWRDwHtR8IUwEFs=
=q3l4
-----END PGP SIGNATURE-----

--6aa4rdjszsgmztsy--

