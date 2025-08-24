Return-Path: <linux-man+bounces-3688-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AC751B33168
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 18:18:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 89FCE444023
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:18:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 583C11AAE28;
	Sun, 24 Aug 2025 16:18:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UcHGiy0D"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A14126F0A
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 16:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756052297; cv=none; b=GAfpTmGz/6p7VkOoQ4OOKfUeVrGVaDigxrrMs0V1aVb/wMOqiJjERAuWCGBbVJCmG+M7kwrBjVnXsmfCNaw9ltOZSapzKhN1x/yUxoElV0B74yYvREgISy6HvInqd0dXaVFt/A3fhUFW5k7VKWzkCp0rAF6rcqtSZckaXqAmdKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756052297; c=relaxed/simple;
	bh=8fVp78VUkPujt2j4JRBT3izpyHJpCoGbb+KicLW/ofQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=V51mH8tu7ZwuGxItALa+zebvskG1mMwJCfJlLN8YKHNZzHoDIrZl+Xu2XzMBaUqxyKokGj7V/WNhxc5pwH/xiFAQ286wNx4BdzkmN1D0cbYl3MzLT1Kzpez5hAFczvAzQKqJMiBeEAYdURxKFu8/fwYM8td+6xnwcOSWuui5nnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UcHGiy0D; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 08296C4CEEB;
	Sun, 24 Aug 2025 16:18:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756052296;
	bh=8fVp78VUkPujt2j4JRBT3izpyHJpCoGbb+KicLW/ofQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UcHGiy0DMf3N+cUx9pidjkB2sH7YszlK6siCWoxPlk7O1CQsavfSI2Rtnh9CTkXrW
	 lLWZKuFoKKJ/vYmpZJv2qkUjNLVwWYTak3eznwlT6eqZ6hoEAVqvs8vXY0wVAZRDW+
	 Vh1h1TYME16n2P483qM8C7Sbe/p71eIdOU7ymNI7tICKUG/G9AFqIVyf/6PiL15sBC
	 wN65Mf7fOc8cK1n8szPLE36obEm+j1lThdi5tJtARjeC8qiQT8GkdpP4Aptb48CyeE
	 Jcsf11hk44Kb38mPty9nGgqP2AGdOem++koif9K3UgmjDv6Feg0zPwgieeMIhicC/Y
	 4LKUw/C4wQTSg==
Date: Sun, 24 Aug 2025 18:18:11 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page PR_SET_TSC.2const
Message-ID: <fjdkserkwbqm3fx7k4jgq73yd4epy77htzws6uahuyuacjppng@ropwyt6ysn6j>
References: <aKsmUE6-gzMjISis@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="avbx6rmlprp5z4e5"
Content-Disposition: inline
In-Reply-To: <aKsmUE6-gzMjISis@meinfjell.helgefjelltest.de>


--avbx6rmlprp5z4e5
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page PR_SET_TSC.2const
References: <aKsmUE6-gzMjISis@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKsmUE6-gzMjISis@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Aug 24, 2025 at 02:48:48PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    The SYNOPSIS does not mention an arg2
>=20
> "I<arg2> is not a valid value."

Thanks!  Fixed.


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--avbx6rmlprp5z4e5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmirO0MACgkQ64mZXMKQ
wqkrnBAApnefhSSa9Dy2JniMGupbiU3TKxaoFNG1ez/zTJWAC3iZ9P59MFZO4nW2
CWK5TF8PrMYds8bqcv8kr4PqCKIUR3wBzzHIlZEj+YEbTGN/1Oq+56Xjojto2nvt
oS2FhCjOu2uXlVT7uzMUJeQTzoeLSFXYbMUyLtRJLWdnNvkjLuN/e0cOxn/TFdxE
YO0cYgw/Bn1wRlpeUozhA3QEr+8Z9oPFKMVDQZclrKIGCtD6TJafhBIx7X6xXmlA
rXjpg2SqcLKUAqFeoB0OGR+/rWZeujXOL06z5JS4UhRxLnTYO1yiBMkDjn8Tjm8x
Jr2LKg4feTZKAyrMInIojv8PlzcnyB77fR1+7E9iAcsJn55fu4eNf8EUhK60pjGr
LAvU2UGHoibEXJaMWOvoEXZJQyvIPjA15NoGge0FCjDaOxD2ElOn+IhR87TrOr8f
lntMGW/u05mxm/WaDRO4tWvGeBTMQPMZNEV04WPff7m1h2Nro9WNjnV7sxUGAgkU
JAFXc/l6VAuInO1oeKuA9Kh7X2LzuBPt2BIguL0LZNoqZT1dRjRe9nZlLG7hl+bs
Uew4/CF0U3InJNXgVp/aLH1XclYiEwP0QpjnxsoCSxo4ygq0cyRAMUpSZI1g3K4Q
snSgYPDaOj8I4h85biEuMPSQxOtC6tMHiuLpEoI8wTA17PoFfQQ=
=tbuN
-----END PGP SIGNATURE-----

--avbx6rmlprp5z4e5--

