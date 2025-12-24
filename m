Return-Path: <linux-man+bounces-4529-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D485CDCC4A
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 16:52:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3333730084E9
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 15:52:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 967723002CF;
	Wed, 24 Dec 2025 15:52:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AJHszwdV"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C3492D94B0
	for <linux-man@vger.kernel.org>; Wed, 24 Dec 2025 15:52:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766591541; cv=none; b=OV2WVebaWmg+ZKXZh9EcNjjDYBVwXHbYkYhVC22qsItpVpiJOB42/IArXmQMQaIPapm+G7NHDCpnv4EljVmW0VIFYr9oRkhVHXv4vsJcOpDxsk2Ph78GGDOkwDgvb+6OILg7Nh0h6MnhaSzKfi47N+La/hfWJzKtIhCTTcZbzyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766591541; c=relaxed/simple;
	bh=NzTgjh65HKvJ6qcix+bpLezHLpHkMysBGuvvV7oxWUk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iaBlfnd0tMKcw75FUntNmBFX1X34qJLdUGPKSOzqiIs+QKuSmjLXEH2Wu54eE2sXHEP+RlwecDinv60o3sWGo8EYSqhaqMOreNYADo5hNL3xLNODf27BMlYCPfXdXZA63YizcQfxcYiuyqeUvolTMMBoi7XqxwLn838zK/V2Cl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AJHszwdV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 015F9C4CEF7;
	Wed, 24 Dec 2025 15:52:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766591540;
	bh=NzTgjh65HKvJ6qcix+bpLezHLpHkMysBGuvvV7oxWUk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AJHszwdVavsANhco9T6LZ3TIaHswJ0uQAAfMjw61kkll7eKRL4micdOrxXkBRR8Sk
	 fYFB3ZSOOdWhskRL9feRA+HqlZVHaFEYvYVTETl4qJdfoRgDOuJM9XBXgtWbl1Uruf
	 8o9oG9r4tSs9UfL8Vn0uLHMXjVvelHfcdJP7tT1Q+tzl0/iBk3W1dClGlOuMmxutEM
	 WlgE0xdgAy6evtpnaJacpgpentMVhzaTlI1iwON6fDI6dZLA5ZCa7B/5HbOC5qqe+P
	 ENrgucwm7DusvNKxfBA+QaFIuVoM57AKJqguV8tzIW/BilZ9AsUsqbZyl1NOuKqz5R
	 Em5ToC/lUcaQg==
Date: Wed, 24 Dec 2025 16:52:17 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  PR_RISCV_SET_ICACHE_FLUSH_CTX.2const
Message-ID: <aUwMIURkDgE94pvZ@devuan>
References: <aUv63otKGVcNZ5As@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ax64xhikxttcsxr6"
Content-Disposition: inline
In-Reply-To: <aUv63otKGVcNZ5As@meinfjell.helgefjelltest.de>


--ax64xhikxttcsxr6
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page  PR_RISCV_SET_ICACHE_FLUSH_CTX.2const
Message-ID: <aUwMIURkDgE94pvZ@devuan>
References: <aUv63otKGVcNZ5As@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aUv63otKGVcNZ5As@meinfjell.helgefjelltest.de>

On Wed, Dec 24, 2025 at 02:38:22PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:     No full stop
>=20
> "PR_RISCV_SET_ICACHE_FLUSH_CTX - Enable/disable icache flushing instructi=
ons "
> "in userspace."

Thanks!  I've applied a fix.


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es>

--ax64xhikxttcsxr6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlMDDEACgkQ64mZXMKQ
wql+5xAAo6cjWVOdBSHUXCSJ3vMkHmYYWEJs9iytmz4TPhlFfr+ihQ3OoXfU+S17
ylyDxsaZV6QX6oZjSfXVNREkXGp2lpZWeWYDWwDhGylyC7nW9DxQfzoAbsGA2DxE
0jcJR/P7cJKptmlNDyUr6ybG7LYw9uOo6qCtrck6ygRrWDU1ukCKAfCcTioWEaa6
+s96C+v4ntJI/GOb3mOEVI43oSK5OyZXNepFHtz6B8gHuyxS1BFPOMlMzlIvnYRV
r/KUU0r1ebRO3drdfkKUSKRFtCaxYdWoGBFqExVTJw/vbIwN8puyPTG6GM5PPnvg
ividWtRrbG0sIGHSvGwdp+ledSzM5tmdGNO/L9fkEvz11NhYmow2PJHTuCjfgWRV
5pU8LQGhNoxaHKKFQkeBCadIbZY4Q87IS4M5ObABUhhEmHbP1wgb6gaXy6Eyzp+U
mek0SY0NnOJjMIJSFkeJc4eXeNM3TCG9ZhwssdnSGJrE70olSfdZu/XSkyI2Ns1Z
iTRKhYetWXuQgC8wpckSCpKPQAvl+XQR6J10LE6VPKzm2rUHenKsNv5v1wgRkdxD
6WwSNk3PQG0soQQfwT1usIeAVqlrNh6cwSMC7GHfb7SsxY1hyMoUP6cH7pkbj6W3
T9TgaG7BD0zuIRZ4QsTzGNXHMqhuhuYi6NUlU8/SFeo7Za0zX+c=
=IDCD
-----END PGP SIGNATURE-----

--ax64xhikxttcsxr6--

