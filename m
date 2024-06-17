Return-Path: <linux-man+bounces-1220-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C90090AC82
	for <lists+linux-man@lfdr.de>; Mon, 17 Jun 2024 13:00:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A948A1F2643C
	for <lists+linux-man@lfdr.de>; Mon, 17 Jun 2024 11:00:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54CAD194A61;
	Mon, 17 Jun 2024 10:59:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uiAkF+oS"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11824194A53;
	Mon, 17 Jun 2024 10:59:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718621997; cv=none; b=p73DG+lNWLQ9izgbVkaMi43Mb7lGpdhlNXI9/+yS53uL3ro05S2ZmmyPjItfJo/UCkDWz8k4KmNinM9mhfGfEIavJF7lsEzAtqCCQ+drLvdo/Fy4rvEUScEOfiktEmSJSVRmDi10ii7sNzJQJOAsjq6fwd3nM/FFnr50r6fHxBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718621997; c=relaxed/simple;
	bh=IFaIJd8SbmZdoZU6IAF6zOy7FMHxFQgJEE4alDxsEYU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KoMYf0qHImw00py3EGyLp1mCmRF/ucSxU7odFmMU0jPfQvH4xxcNCri1cm3KDgAFPtj80puobiSxNNtIC5G0jsAeoh9aZan/Z5FRfOTiefccvrNpuSUB9IZdVyO2nYwbXPWkFOC9nmNsdDggC+plyX3nnoHWpw+S2Uzpoa1nDsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uiAkF+oS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 63167C2BD10;
	Mon, 17 Jun 2024 10:59:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718621996;
	bh=IFaIJd8SbmZdoZU6IAF6zOy7FMHxFQgJEE4alDxsEYU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uiAkF+oSD26HcSVafMv/J+QNgkahxDDMiOl51kEUo0TRb7XshM8eGjSgR1AKIO/aq
	 DHrec+DfXSWl3z0cI2v8OpW8uRFDArIfNz69u6T7xHLuTc15vJ2eJKbHymt+xtnlPC
	 NA6wU6tj+ikeYWKpiEk4kc86WLv+4esE+ZFRT7KLlkWP5naHVLkV7l38Ewgo0g/UUV
	 zRHmmMPNVsjzgReEB1tHDpiKUAZFa9DRw3kRQtSo27XjX+VanhHwQbMSyO1oVJXh1W
	 IcouB5EdBS5vM+5HCQaVhXYSfdpa5IyU8bbQsBDkaC2APa/Q/fsrLDc3F8PJxPnuQu
	 eseex6Z2zSfGg==
Date: Mon, 17 Jun 2024 12:59:52 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Mark Brown <broonie@kernel.org>
Cc: Dev Jain <dev.jain@arm.com>, linux-man@vger.kernel.org, 
	mingo@kernel.org, tglx@linutronix.de, mark.rutland@arm.com, ryan.roberts@arm.com, 
	suzuki.poulose@arm.com, Anshuman.Khandual@arm.com, DeepakKumar.Mishra@arm.com, 
	aneesh.kumar@kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] signal.7: Fix wrong mention of sigprocmask
Message-ID: <ap6zlyayczxurkituv4r4hpyqrmne6rsu5hnll3vgrvh2dw6x3@mqt5dzkdrccn>
References: <20240611090823.820724-1-dev.jain@arm.com>
 <20240611090823.820724-3-dev.jain@arm.com>
 <ZmhL18D4rGeV_vnJ@finisterre.sirena.org.uk>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="eqwh37wv6cfzfaak"
Content-Disposition: inline
In-Reply-To: <ZmhL18D4rGeV_vnJ@finisterre.sirena.org.uk>


--eqwh37wv6cfzfaak
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Mark Brown <broonie@kernel.org>
Cc: Dev Jain <dev.jain@arm.com>, linux-man@vger.kernel.org, 
	mingo@kernel.org, tglx@linutronix.de, mark.rutland@arm.com, ryan.roberts@arm.com, 
	suzuki.poulose@arm.com, Anshuman.Khandual@arm.com, DeepakKumar.Mishra@arm.com, 
	aneesh.kumar@kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] signal.7: Fix wrong mention of sigprocmask
References: <20240611090823.820724-1-dev.jain@arm.com>
 <20240611090823.820724-3-dev.jain@arm.com>
 <ZmhL18D4rGeV_vnJ@finisterre.sirena.org.uk>
MIME-Version: 1.0
In-Reply-To: <ZmhL18D4rGeV_vnJ@finisterre.sirena.org.uk>

Hi Dev, Mark,

On Tue, Jun 11, 2024 at 02:06:31PM GMT, Mark Brown wrote:
> On Tue, Jun 11, 2024 at 02:38:23PM +0530, Dev Jain wrote:
> > The handler is registered with sigaction(), not sigprocmask(). Even if =
the
> > purpose of writing sigprocmask() here was to mention blocked signals, t=
he
> > statement currently concerns the "addition" of blocked signals; signals
> > blocked through sigprocmask() would already be present in the thread
> > context of blocked signals.
>=20
> Reviewed-by: Mark Brown <broonie@kernel.org>

Thanks for the patch and the review!  I've applied the patch.  It will
be included in the man-pages-6.9.1 release later today.

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--eqwh37wv6cfzfaak
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZwFygACgkQnowa+77/
2zJS+Q/8C45MtZU8DXy0dicCrqEwky6HyWmDTJhnSlwy/6oP2Vr+f+KTBJMdu6kv
F3OH1sU8mhK9KpIFudIEPZiQ+5DzvYdlYhwiI7Yy7j+3xybxUAojPVMLI4M+xhtL
9FmFTnYm44hi5/2e4KCvkCx8ZOf2G1dXw82RVE6n+tqk3XpUduo0uC/2BekMWSoq
tlwyngquAGIRPg4tg9xFRhHIJfTRTSqEVZPdEjx19qXpOZBZRWCRSeekCWt4w7vb
8hVvhnNNLLUTnc84MhZ0xlaqICLUwpQAd4w1UiYazEnbIsanpDoqiLH6gSP5EUcI
oNHtCKRZqZ/j3h4knTGnEjxS0ATCrGTMTLZ5HP4pdZF4shvbVv6qyB+W8Xrc3g4j
DsoOqnJEC3Cezz9mPHqCqbghQEKzLEMA8daEErVUqwjiZsTPSwY3BYMB6FG/r3QP
v51msgFnJWkXHybAYVYmMvDytYOF/GZxifHP/TJDLjxW8v7G+w+Z7HQU2RcuTYHT
1XolLcuvmzlTlhIT5hCTzPe/MjtRX1zuy+1jzmQ76JeSOpcOM+NlnsyzhWc/lGhe
742VS6ObYC9qN6LYGmIyM4SUVn23I7W8dxnRGByk0Nd1Px4k72pxKw7vk+/WMqNk
fHj50M6CMG3fE4XHm8tzy4cnMvwbIbDN7PXSv4gcKvC+PmvHQkQ=
=4jYk
-----END PGP SIGNATURE-----

--eqwh37wv6cfzfaak--

