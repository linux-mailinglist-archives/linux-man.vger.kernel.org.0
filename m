Return-Path: <linux-man+bounces-3807-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BDDFB3E688
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 16:02:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6F7E616E39D
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 14:02:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 944931DE881;
	Mon,  1 Sep 2025 14:02:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uz/Nm8qo"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 540A11D61B7
	for <linux-man@vger.kernel.org>; Mon,  1 Sep 2025 14:02:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756735333; cv=none; b=L5PQ0SQg5Y3VXNRDcTToAaM+PjmiFXZXsOMnxKEgSIs2xqjYscJCLBxKnoT93cvggDr2RG+cfnAhkHPYKskvHTKBkGakC4BgJ36GeDzr00zjCpki9ISDxP4WqrRrACknH+ijxuHr01r/f5q0p+EGb4PEcgzuf7jdHZ16N52TsYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756735333; c=relaxed/simple;
	bh=0njetA9EShlmucMlhv99FvLPH4rdMlPp8saqooyNXUQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lGQ8S/mZ81fhEa8hA2OHEktHTir7Ax1rBdIXq9g2rbxJrJSkENUV5X6dzdb9RuMnVhJRvZmB5+OVczQEThMupLSs2F9aaLIVYC5VKwtoy1+I3Aa/JBZEeiEZarlz7IYdvwrmccIz/oSpdGBDAgpj86QmFmUzMgAkrgJK19IuVBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uz/Nm8qo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 56FA3C4CEF0;
	Mon,  1 Sep 2025 14:02:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756735331;
	bh=0njetA9EShlmucMlhv99FvLPH4rdMlPp8saqooyNXUQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Uz/Nm8qo04N9gBHqRT4+fZCv1eQKEJu6aqJOa9dBG583ehtsbtLbgtjgx3D50iGim
	 Arn6nLZ+XZHOoIXsXPWLQQ+gfJijzsWvVcRfK8QFB8js3sj1vQmmyQjEN/vQnfBkFy
	 RGuNCkX/cZEnrBEDNlsZVYAwqwalWyk8IX9/v7BX95rWVmAYPMflxWZU8NPabysjQN
	 1pz0SV2zNpvg1KUIg4Wc/DN/XwB3uKXguv2g8nDKfTNSmJDwu5PdWvOwPejXCxR1TP
	 d8hL74vrQPtE6/CbySD/TYDxVt6ZEm8YmFGMMF/v/10m9EtWQuYnQxItIYsalXQ7ng
	 1ddlR/1eYy0ew==
Date: Mon, 1 Sep 2025 16:02:07 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page proc_timer_stats.5
Message-ID: <pypu5jyr6yu7peevw2qtu6eztmmx4fu4osbkmarow2tvitenwa@jfhpz5gkq6bg>
References: <aKsmT7pqUFnobYvV@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xw3dxogryb26qgld"
Content-Disposition: inline
In-Reply-To: <aKsmT7pqUFnobYvV@meinfjell.helgefjelltest.de>


--xw3dxogryb26qgld
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page proc_timer_stats.5
References: <aKsmT7pqUFnobYvV@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKsmT7pqUFnobYvV@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Aug 24, 2025 at 02:48:47PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    Other pages don't use FROM and until =E2=86=92 to - maybe align?

I did some global alignment recently.  It was a lot of work.  I want to
fix this, but it'll take time...

Anyway, thanks for the report!


Have a lovely day!
Alex

>=20
> "I</proc/timer_stats> (from  Linux 2.6.21 until Linux 4.10)"

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--xw3dxogryb26qgld
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmi1p14ACgkQ64mZXMKQ
wqkR8w//aySLvwgDPxOEIKMXCmd4BewXXxTCZtjEFk6Q09u08vymwsB+7UTYCEqB
G1dzKnfC6rcpwnTvSnSvU5zkm38dJRWhhEpqC3yJXTH8HKbclQz1NWRML0Y/wQWV
PLtYgWXGcVOuQc441FEdvQoqxXSXLMDO7hG07GrFSgoaKK6cgEvENwb7YeZA3O10
Z/I32uNSom5aBW3NRjjj8N0yrhacSCzsWlBAQiYnI+8xjwOjGsLynelLahX560cy
Oy8LSFI3zAM9KZqvJbvSiODCOWNKKkl68UYBW7iT3/QQNK23kAngrL4LvNAQ7tzq
/x1eJD6t+vxERBZyZUnO8VRgLi50+BqqalIEodHxMwtGLnSLyMOiYIcxnyHBAr3w
icANeNjm7hVuz1nx6hPYRqszifZ0PF2Ie9CBJXtUtPih/7oH5ovYPRJj3yKUAKkc
z0o5eF0zL8zpCTaeYOo04XaI9lBGyyJwG8lA38O5jGqcMgvSK30a/x0dKHboZIfc
eAunPchP4eZmFnoc1FA9q5QAT0ueHXfmVoqPt76G+Brurha+AOtNiMuTCYswC7Oh
f7NMKhe7Y1E4zaGXAHSSRIpX9CDDk0QLS/KF7pxEyLRfrMqODI5Irs6KamIhKdyk
q75WmGkeNCuIKlJ5NYGG8eQ1pTZla7/38kRcIT8/oeSCIRSGAbQ=
=xzX0
-----END PGP SIGNATURE-----

--xw3dxogryb26qgld--

