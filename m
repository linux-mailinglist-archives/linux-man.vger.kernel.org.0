Return-Path: <linux-man+bounces-1863-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 07DA79BA42C
	for <lists+linux-man@lfdr.de>; Sun,  3 Nov 2024 06:33:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 99B591F2116F
	for <lists+linux-man@lfdr.de>; Sun,  3 Nov 2024 05:33:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA64170833;
	Sun,  3 Nov 2024 05:33:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I7NHmejy"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9863C7080C
	for <linux-man@vger.kernel.org>; Sun,  3 Nov 2024 05:33:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730611988; cv=none; b=YaAEZ68Y/YfCikN/kedWBbmjrpstuxUIpBFYgHqzjdXkv+3U25mRhd/w0Rxls9uJR9rHDwDs4MOGPghxHYB1EdlQvfs/clYdD0abR6IKAaq16BJO6tlnu0bPnvR+tVX0I8TvWv5v/QSrrj/VwrTDJiqmgGuE2HuZHRVZQlRV2/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730611988; c=relaxed/simple;
	bh=SYTNq1q6EdlrZKMefRrKZQU9yJzfoLgV0e39/9zaidI=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=Cnx+XCld+VFrbpyHL2QvP5epf8l2cAmmDqjO8LCU/xBiCjNOGyY0As3MYNLmpX+LJulSm1pOAsjnse9RvteDXdQR+1s6CACo0p+Mv3W9mgjA42kEvPVa6u3G7IwXDpWoLzewZsh/ceGFJGRPxHxYbD8ZwXp2z6soilDfZ/PQHK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I7NHmejy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A8DACC4CECD;
	Sun,  3 Nov 2024 05:33:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730611988;
	bh=SYTNq1q6EdlrZKMefRrKZQU9yJzfoLgV0e39/9zaidI=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=I7NHmejyB+vH3jbwvxhuS6KVV1SwDhAvPvZB0MlKbhKd19Hn1Oa1ZtlitwF1oiV+a
	 +Cl1CQ5t/yU/TKxnWowRdvi5r44V0A9LwSmzSyCB3YUm/Sm+RVsCttr48/jhq5QLWm
	 EzPN/aPAFkjmVGd5owe2lVUs1JTacBLm2K2UnY77WCvwWUYoJkzwGZD1XGWHJcYZa4
	 xjmBqSXdH9PesVtqgr2zQmToOwiUglreGIfbfFpZXUixkcl7NuLGWV7onGySs7+/3a
	 zHMrNOZGYcmB+k9pVRCj5uDcx1+RL3h2vK2xbPU3i8Qkd2nnhxvYm9y0kxUjStdffZ
	 fQ8/ClSngVmHg==
Date: Sun, 3 Nov 2024 06:31:32 +0100
From: Alejandro Colomar <alx@kernel.org>
To: mtk.manpages@gmail.com
Cc: linux-man@vger.kernel.org, branden@debian.org
Subject: Re: pdfman
Message-ID: <ZycKuuxXSbZI2-Wo@devuan>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ePsCZpY0G3P3bxWg"
Content-Disposition: inline
In-Reply-To: <6d09983e-7c7e-c04d-dc02-33d3828594a7@gmail.com>


--ePsCZpY0G3P3bxWg
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 3 Nov 2024 06:31:32 +0100
From: Alejandro Colomar <alx@kernel.org>
To: mtk.manpages@gmail.com
Cc: linux-man@vger.kernel.org, branden@debian.org
Subject: Re: pdfman

[CC +=3D Branden]

Hi Michael,

[Speleology session below]
<https://lore.kernel.org/linux-man/ae31daa2-a44b-2e79-1a70-a95428b7e231@gma=
il.com/>

On 2021-01-06, Michael wrote:
> Hi Alex,
>=20
> On 1/5/21 3:05 PM, Alejandro Colomar (man-pages) wrote:
> > Hey Michael,
> >=20
> > On 1/5/21 1:00 PM, Michael Kerrisk (man-pages) wrote:
> >> function pdfman {
> >>     man -Tps -l $1 > /tmp/$(basename $1).$$.ps
> >>     ps2pdf /tmp/$(basename $1).$$.ps $1.pdf
> >>     evince $1.pdf
> >> }

I was wondering why -Tps and then ps2pdf(1) instead of directly -Tpdf.
Do you remember a reason?  We still have the function around (with my
rewrite, but we kept that ps thing), and was wondering if I could
simplify.

Cheers,
Alex

> >=20
> > Would you mind adding that to a script in scripts/?
>=20
> I'm not convinced it really belongs in there.
>=20
> Thanks,
>=20
> Michael

--=20
<https://www.alejandro-colomar.es/>

--ePsCZpY0G3P3bxWg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmcnCrQACgkQnowa+77/
2zJ0dw/+MxB+DqtBCQckh/1Ra2j0JiCpGSHjxGHnib9gDlxWqB8zttRQ2ODCeDn7
PlAgvPWZ+jqI/4tSaPGYIkboUg1L7mYagCOOC1Y4Qw6kaM3d/ZcXjFC+XcIdwE/x
14AbVjWfDZ5lwmLYAQN893mufKmbJCsk6EytwOlsR2cEOVnK98TSiXy7Qm1oXNQa
MgQtcQZFPYAdOKVLhGETmV6yj88oDT83YAY73+gpttnPAVw8Jbz/yjIU35nORZ31
mHqWKDiOZV2G7rtQCvvPo92AY/dI/8m7c8pGkGu4u51C0unve6IlMZ0DZZJaDlea
lm1D+q+6MyFH6tDkXLfuZK1ej1Xa1MYGtGaxLYI2LcXAaC7ZLQxVgP7wf4llaEQN
tKfJPmBXmrDpwMMk/lX11GTIuOQR9JpEM1dqzUVd1KLHETBxUttYakDJ/RvNYWBP
wDJ8t3iWnQqtbzz54UBxSF4I4nTdmtCx67OrWJi0aAj7FWXPj+WmkQJ94Nqumsuc
lQKdPy8xbe/ZXoas+9YdObQzYyW00q6dvXpaWiOQTWqJQQLffpP3fwPKV+LQkz/+
L0AyyqYgSCsE3GrsxgRMyvOmoxGjbTLdwRpfYHDGl7KjdMNtdei63ln7O181kbwk
OKoVCCwSe2yY6GM+9kVbOA3/wwL/jW3lm9LqHjkKF5mSQ1ZjhHs=
=8gC0
-----END PGP SIGNATURE-----

--ePsCZpY0G3P3bxWg--

