Return-Path: <linux-man+bounces-1876-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 54F989BD9D4
	for <lists+linux-man@lfdr.de>; Wed,  6 Nov 2024 00:42:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 93D99B224C7
	for <lists+linux-man@lfdr.de>; Tue,  5 Nov 2024 23:42:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77E28216A34;
	Tue,  5 Nov 2024 23:42:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XCmLm/1d"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312FD216A29;
	Tue,  5 Nov 2024 23:42:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730850162; cv=none; b=fQJswHAd4vTB9VRWr0Tpk4xfmqxzYRcnYelV+AlLPbjokD//2U5Iraig6vXjxucUO6J/rwlRUpoOh+7mY1yrtovWdiGALyPZo8ykVaVWjN4yq2inV0EeTvWQfu325W9OkjWXj4Rw3i8XIimpHZNpsbefGjTY9atAenwK6Qy1KZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730850162; c=relaxed/simple;
	bh=WdtcbumQQQAMpFOiWTkBLhefHPAEhEIpolFaDI36Kvo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ROX6u7RdqRGT8NVWFqhXHfXwusTvBGEzH/Xq5oROWzh4NwgdPxQGATsEMK+anjj0D3ddMbpgxVISPfOeghFxvZ7yGGMwfa8lacsUqv1s2ZkWEX+MsigNyHCvkWVx9sIyZlx3hiMkPVVsnFLhMrJjixqa0EEaptRrRLqj6YPaxBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XCmLm/1d; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB2C0C4CECF;
	Tue,  5 Nov 2024 23:42:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730850161;
	bh=WdtcbumQQQAMpFOiWTkBLhefHPAEhEIpolFaDI36Kvo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XCmLm/1dPOE9L/NhfknJ/BTNakYCygwW8OOKHyP8/15Ouow7n9ydFWDw3apCbBNmQ
	 Q1aePYMePuRF35I+xWEak+3mYz+MJtGqyJ8SUj4Kllg+YZnVtTLvS8xyNE4oGExss3
	 tAEhQyo3Gr6KpbJbxxMRcKPfpBp/NaTtUnsp8q2munGggzt+68CU5Z1PrM8IbMfes+
	 i5dN/2e/YV2oUBnJGiNlxRBGAa/TAhQqlpd1yGc3b2R9gp5SDpgb5DjMnb94+WK2MO
	 +d1cNTuon2G9mm2S0DSN1wDx86oYXn/8RuV7eeWVawlAA29NkssYPENS1HHkD83phO
	 jcIXc/E7zbtXA==
Date: Wed, 6 Nov 2024 00:42:38 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Fotios Valasiadis <fvalasiad@gmail.com>
Cc: linux-man@vger.kernel.org, linux-kernel@vger.kernel.org, 
	libc-alpha@sourceware.org
Subject: Re: Linux man-pages project maintenance
Message-ID: <nimzecx26lzxo2v64qjazmisbwfeljpto522wlnauktqesmdoc@gv3yrp64cvug>
References: <4d7tq6a7febsoru3wjium4ekttuw2ouocv6jstdkthnacmzr6x@f2zfbe5hs7h5>
 <AE38F6CA-0886-4C23-BD16-0B275071699E@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2frvbppgwnom2m27"
Content-Disposition: inline
In-Reply-To: <AE38F6CA-0886-4C23-BD16-0B275071699E@gmail.com>


--2frvbppgwnom2m27
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Fotios Valasiadis <fvalasiad@gmail.com>
Cc: linux-man@vger.kernel.org, linux-kernel@vger.kernel.org, 
	libc-alpha@sourceware.org
Subject: Re: Linux man-pages project maintenance
References: <4d7tq6a7febsoru3wjium4ekttuw2ouocv6jstdkthnacmzr6x@f2zfbe5hs7h5>
 <AE38F6CA-0886-4C23-BD16-0B275071699E@gmail.com>
MIME-Version: 1.0
In-Reply-To: <AE38F6CA-0886-4C23-BD16-0B275071699E@gmail.com>

Hello Fotios!

I guess it's time for some (pre-)anouncement.  :-)

On Tue, Nov 05, 2024 at 02:06:00PM GMT, Fotios Valasiadis wrote:
> Hello Alex,
>=20
> I too am thankful for your work, manpages were the only doc I had as a
> low level dev writing tools utilizing some of linux's niche system
> calls, literally wouldn't have managed without them.

Thank you very much!  I've felt a lot of support and appreciation from
the community after the anuncement from September.  I'd like to thank
everyone who showed their support and spread the news.  I've also
received a lot of support from small companies, which suprised me for
good; they offered what they could to get me back to maintaining the
project.  That's very much appreciated.  It's amazing how quick this
situation has been resolved, and it's thanks to the community (and some
people who have helped a lot with the Linux Foundation).

> I see you are somewhat active again, out of curiosity, did you find
> funding, or are you contributing some patches voluntarily once more?

We've been talking for a couple of months, and we have already agreed to
sign a contract through the LF, where a number of companies provide
the funds for the contract.  The contract will cover the next 12 months
for the agreed amount, and we should sign it in the following days.
Since I've already seen a draft of the contract, and it looks good, I've
already started maintaining the project again, starting on Nov 1st.

I will make another anouncement when the contract is signed, where I'd
like to publicly thank the sponsors, and make it official that I'll
stay as maintainer, but yeah, you can count on that.  :)

> Mind you I ain't assuming you are back as a maintainer just because
> you got some patches handled.
>=20
> Thanks!
> Fotis

Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--2frvbppgwnom2m27
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmcqrWUACgkQnowa+77/
2zLwdg/8DMAc7TM8Dq2SNjtjh0Giyr3Zv4MxwbbtY1LwiAeTptLjQkJweujHaqHa
UDuyPhql9CMhrbAmjZTCwqMXlmVANA5tiKGoZCx8u5ZB3LbB2qzSG4jgbMwDweY2
b7r1O6g0JuvRjqx56u/z1rThveOfU5oFRZqoRt1/0J7pDfI8dBndMYHeOMSpo+1l
L62s/ligxgAfqvFwrRY8hW9x2I4N9XBaEAGw8liGNM0Dc9sQH5vSFPrHCd4JIa9C
p4pYmBSWkOVWG9PwjjKTAP5TuANiwd0LUXUm6j3/XcJ7mI4ZwbVSIC9EPu+QvPUf
lHtuqJHQcAblChjOMfr8QZEzFzQlDNjWW3V1QVjMdz11goDSF3oPmvkvQ5eqCeKk
Ten7/JKqLEGFoL4d9eWE8OLRxL8Z1XGludBzB4xX8Wn5uDX8Ol41TCINR2V/n888
mmQdVGuCh26lR/KjwdWIQRYni8osChMU7wPi2IQb/cdO67b5u6ZrNOrILi1lT0Y+
LcTGXt0/1rhlr6dlg3/+fvg6yGgLNWGnEfnQfbgVtX2JUHNeCRYnWas87BYlS8Bk
At4UyG8ggWRuaJfGgDR5bnk8kHGdzYgpyja8XJ3HEJLOJKnn/g4jKac/AWLoBPaa
Oeaamobxop6T3YPD5+WtktjRr1ui7SPuuZZhPNYCLZv09QqRWyU=
=52zL
-----END PGP SIGNATURE-----

--2frvbppgwnom2m27--

