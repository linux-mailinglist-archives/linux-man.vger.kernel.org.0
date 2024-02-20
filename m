Return-Path: <linux-man+bounces-468-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D8C9E85C3BD
	for <lists+linux-man@lfdr.de>; Tue, 20 Feb 2024 19:42:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7AB69B230E2
	for <lists+linux-man@lfdr.de>; Tue, 20 Feb 2024 18:42:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8828812AAC1;
	Tue, 20 Feb 2024 18:42:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l96tbeWV"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4822D128393
	for <linux-man@vger.kernel.org>; Tue, 20 Feb 2024 18:42:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708454526; cv=none; b=px2GnS+V48pMu/3BtOqMDTvQhO9ZiZ2DYKZ9VqljvNrxxp1NrDfm4B7sLpWIuS0SISw9cMj7GDzMGro2QXuMZCmAFe0Kj+ZvYS125Z7SU9FKgpfYOeBjH+JEllKW5Ko3pUU1Fy3dBHAm0u5AHVsH0YoSS56wq1NWzbwQx/jHpN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708454526; c=relaxed/simple;
	bh=khesxyZHKsmRPNi76gRN9vn6phHtrIs7JjeZqrxHjHE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WpEvpV3fbK3w1c9wf7s3hYIejhzJ+dN6VHoTLTGVu+uZSIFoulh46tK5/bmnGlSA101dNF1oLHpSoQDebeT5+/wrtuZcLnaXQeWGOV57YIXdiEIdYmLqYYOi1kV9rGlqy0xV6NG+plnt5vA6OAsz2xhoeE3oMsD4tkVcExQfY2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l96tbeWV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A518DC433C7;
	Tue, 20 Feb 2024 18:42:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708454525;
	bh=khesxyZHKsmRPNi76gRN9vn6phHtrIs7JjeZqrxHjHE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=l96tbeWV9zsHTMeEp8FJ9YIyyQLd4N+zgfIUCXPQCb5vh8b/yvWT1UB+D2pRpn/NE
	 UhI3hE28u4bmALTZLgYPbW/K30DWaY2cadyhh5lpNQ23fvAKXxg4d/DVgDzSw8lHtJ
	 XQwrf2Or5ypKMaB/2DIRg+jWu+E8Xwu5gixjcZ2mOF4HQ7sbzm6Wrm1GMAdTmGNtDB
	 mGY1ZD965ixyXuQ4OaFAYQsi9wCutOmST5PNgj/Ae/xHOXRji4WuAZHYLTuooAt+P2
	 kmgtNg7MiZoYWyU549Gj2tO6n1nAtpAiNxqQTkLLXrcZryJA1AUvqF6r9GHKDcEPNb
	 uWIkpTvPj8l+Q==
Date: Tue, 20 Feb 2024 19:42:02 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "Dmitry V. Levin" <ldv@altlinux.org>
Cc: Alexander Ofitserov <oficerovas@altlinux.org>,
	linux-man@vger.kernel.org, dutyrok@altlinux.org,
	kovalev@altlinux.org
Subject: Re: [PATCH] delete_module.2: Update man to actual syscall behaviour
Message-ID: <ZdTyelsM_Wuid98m@debian>
References: <20240220092144.140251-1-oficerovas@altlinux.org>
 <20240220181830.GA12635@altlinux.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="8SnEl4CkMv8GZVFC"
Content-Disposition: inline
In-Reply-To: <20240220181830.GA12635@altlinux.org>


--8SnEl4CkMv8GZVFC
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 20 Feb 2024 19:42:02 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "Dmitry V. Levin" <ldv@altlinux.org>
Cc: Alexander Ofitserov <oficerovas@altlinux.org>,
	linux-man@vger.kernel.org, dutyrok@altlinux.org,
	kovalev@altlinux.org
Subject: Re: [PATCH] delete_module.2: Update man to actual syscall behaviour

Hi Dmitry, Alexander,

On Tue, Feb 20, 2024 at 08:18:30PM +0200, Dmitry V. Levin wrote:
> On Tue, Feb 20, 2024 at 12:21:44PM +0300, Alexander Ofitserov wrote:
> > Parameter O_NONBLOCK described in man doesn't exist anymore
> > in kernel versions 3.13+, which is quite old,
>=20
> I suggest mentioning the Linux kernel commit id that removed O_NONBLOCK
> support, which seems to be 3f2b9c9cdf389e303b2273679af08aab5f153517
> aka v3.13-rc1~83^2~5.
>=20
> > only O_TRUNC parameter present for actual kernel version,
> > O_NONBLOCK does nothing.
>=20
> While it's vital to document the current kernel behavior,
> I wish a description of the historical behavior is also retained.

Thanks!  You could describe the old behavior in the HISTORY section.

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--8SnEl4CkMv8GZVFC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXU8noACgkQnowa+77/
2zJtaA/9H9oQ0oHz/H2KT2nuQmpGli+TrQod3TnZkcrV6p6OiFcVsDoBns9pt4d8
8o4hQJ74C8BVH/SP/P77curxCPBR21qDjyr6ukAruZZUzKZ6no1juj/fJdKjtDXL
bi51PnTnMVWOqAiEHS84UXa/hGXcpoINqUml6+9yaAPvK1Hp76q8ZnX6LsUrOt1U
6gZmXyx9cSAdN+RtxkPgf+tp8OhepjMJ8c7s9CYqlziLE8bICvCRd2f/xZsyvl8n
DaR4TqfQ8EsFLhv32mpT6CWmo+jb9KxSteJoeY1tTkt4Rc/d5O7CW5NlJjh0p4OO
SVF56YzwbfwWc2X2jigTJE9xa76cwzLJKWephcUy1UsHV3ePLL6qnAf7P/S5Puwk
GOggm3lhzOt2c7nYNNrHm75frSbeWSTzb8fq8Odd7sd25+oQGFwt+pE9jNFdwn+l
PkE96/tg/YNU/LUHHmXYMmkPVpfo4/R5pL7QCUPl7HPZBitzP/YXe4A3BE6hMYm6
/lmSuHYXoOl4F7EKLWcX6qC94B3nldglAl7c3JyeyOJGg5HPlAy7a4m5aSudQMYd
MDbJ7xp+tyUA5YfsjtbqilzdP4BGKjnSCFvYch9JBNwutqHWKSPqrYOVZ1fp9X79
8L5ckGRj6Vo0GVy5hIcWlil5iDTaGif/BQ2tyLesN2pxeoKorr8=
=DSxE
-----END PGP SIGNATURE-----

--8SnEl4CkMv8GZVFC--

