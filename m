Return-Path: <linux-man+bounces-4560-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AFFDCDE170
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 21:42:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 953263000FAA
	for <lists+linux-man@lfdr.de>; Thu, 25 Dec 2025 20:42:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24A8C2874E3;
	Thu, 25 Dec 2025 20:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N8wytMRe"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D51FD2868A9
	for <linux-man@vger.kernel.org>; Thu, 25 Dec 2025 20:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766695373; cv=none; b=g5li7IZ9kt2CnF+l0pIWGAWiuRHrLyoMu7JBYMtJnY0+G5M4ErUy2mFWCyaf1RwASM+fSLwxAa5HMBRdKQoLiANL27JM+hDvneEXx5wnO3BDkLf36uXu9I0wpBi03fatZHvXaJRXBHE1otsm5clD+WiYeNbRiK3MyabJpX5EJgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766695373; c=relaxed/simple;
	bh=dbxavZ3yOk6gg/GkkJGlu99eOnz2OAxzv8YSoHROiaw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ry/EHo7t1R8wZO5/DiqPZ76bmB0ef9809HJTb8stPp6X2wKUD+RhvnKx87RH0qnRBIxTbLkCD+bP9fp4kk/rGygYxIrz6JyGoIcOaz+xjmoN6lSewbmGmJxegqnqXz3r2e23xerfAIoSJMo3l3M9t76vcurCtgN0rKIv6jdOz94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N8wytMRe; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7703EC4CEF1;
	Thu, 25 Dec 2025 20:42:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766695373;
	bh=dbxavZ3yOk6gg/GkkJGlu99eOnz2OAxzv8YSoHROiaw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=N8wytMReRPiCFcp+TJI15l2wcO3+vMlt+OmShvFGQX7UsiqY5ykrc4xtAqocy/qq5
	 7GsEDyKxYf3kKSU3ts+mV23hxxVkUgxduAB7sCGWcw742ZjOJyBlyheiskkEeroksW
	 tOlkliDlHIYDfoXJuKtN5dvD+7BFGmfQ5+OHaqvsRi1aJL6Q47/s1IbGEcc8oTXYTZ
	 WJcVUs2ige7+KRXyxU90g2CUi/ZJwl8C05kHIej6WHb9TnwvoCG0uPC9b3IMNuJ7Y1
	 ga/dEgNbG3XRzJZpIjPKhyg29JT1GmCs9V14KmTTvGgklAfQdVxPhTcHuRMO/mZ3WL
	 tGyAcURk4nNDQ==
Date: Thu, 25 Dec 2025 21:42:50 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  random_r.3
Message-ID: <aU2hgOai2eRKQ9_F@devuan>
References: <aUv64Cad8HHPpIyt@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wdjdfadbchoakvkw"
Content-Disposition: inline
In-Reply-To: <aUv64Cad8HHPpIyt@meinfjell.helgefjelltest.de>


--wdjdfadbchoakvkw
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  random_r.3
Message-ID: <aU2hgOai2eRKQ9_F@devuan>
References: <aUv64Cad8HHPpIyt@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aUv64Cad8HHPpIyt@meinfjell.helgefjelltest.de>

Hi Helge,

On Wed, Dec 24, 2025 at 02:38:24PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:     The function prototype above do not mention I<state>?
>=20
> "The B<setstate_r>()  function is like B<setstate>(3), except that it "
> "modifies the state in the object pointed to by I<buf>, rather than modif=
ying "
> "the global state variable.  I<state> must first have been initialized us=
ing "
> "B<initstate_r>()  or be the result of a previous call of B<setstate_r>()=
=2E"

I still have no clue of what that means.  We'll have to continue living
in ignorance until someone who knows this set of APIs comes and fixes
the documentation.  I've never used random_r(3) myself, so I can't help.


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es>

--wdjdfadbchoakvkw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlNockACgkQ64mZXMKQ
wql3KBAAgh5xLQGW5edMmUBxWfq7oFhj2x5ar5ThTuGao16D/1VxMi62tPZ0UALi
TSoEDo4XJNsbUfkkQKKCOZnwj6ZFGJAHem6uP9pzUgRCZjfkCVVPiPLlCorM3EGp
I6cD6gL5u2mIemgJIgdxgWanNEjegTuwPdPupLhz6RGlpCN0r8fpY/MK+qN4bVee
hfnSEDM9wN8zrILrEyyIx31uPJF8T2EY3AW5PPbJHfVpgsXRGKJoj4mI97JNQ0SA
/x288cVOfdha8nLbOnBYEwJVBM3EmmTx0562je7kQcEoHu/v4Q0Hl9/r4+Ee2WNL
ScYbqp0GBW8U1+a20Zppd2A9VvZ0HfxYdmBbwaSDndKaK82GMfYC9h8ihlgFOidV
uya1QQfYpo1aNfETlM6fjrW2F/MDJM9leCL9mnzBXkuAlZXTf35aiQFD4rIK3byZ
65v2ae7yQz6Utj4Tr9L9dv+0CQ7dLhA6DPUGb2FKUesTXulPuD+hDyRT2NgmJiDO
Cue3Vc2zTb+fOHz4RjG5ossQK69bvOrthwRK6wqQshINT9lz0PnQBFcerceZR6oR
KXtzbcsEXLQKkWZyU9ly12uZ9Ci+NOfcVrnHsrAhCDU+r29vEvqUScuy/9IlEXun
4G2hFj4KAHD7QWGgaDHNJFQJVJZPFW2rhI9nxqKvDfu4+//WFj8=
=MU/m
-----END PGP SIGNATURE-----

--wdjdfadbchoakvkw--

