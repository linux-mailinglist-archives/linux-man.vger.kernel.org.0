Return-Path: <linux-man+bounces-3798-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D78FB3DBEB
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 10:08:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F282916591E
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 08:08:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6440E2EE5E1;
	Mon,  1 Sep 2025 08:08:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H5RdIH7s"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222AF2E0902
	for <linux-man@vger.kernel.org>; Mon,  1 Sep 2025 08:08:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756714093; cv=none; b=jVXs6KlRMJgvu0wunrplZfMqNyKijB9RI8CNKx+TBPry6aORglhZea8XTZYghCPeYgKrdd69eTRVwjFM6bCa4YLYLv/eCWa7ZH+W6hiKQwFVu++pQ8tn1D/GiFS27CS5sjU7cY6U/K00RsblBT1YPLP+0uB/nDqGiUuUB3zPCfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756714093; c=relaxed/simple;
	bh=xKRNex7OV3SwMMx2o6kbt3ZokTvmAb4EmLPPz+PZJjQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LwA9eKRV87r7Xq+rV0ytFW8rIIvS6rUJiP9K3XScK+GtLacAnq2sEAKZj3NZn34Hy523yPmM35I1/EYAKso8+jcQIfavlEcuUUxGDLc0iZ6nfBAH21PyZGYE4dyNIlSk+HXYGfmYbmTlgx+q5UL29vb3F70aOiPlLnXxk/esu6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H5RdIH7s; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E5D8C4CEF0;
	Mon,  1 Sep 2025 08:08:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756714091;
	bh=xKRNex7OV3SwMMx2o6kbt3ZokTvmAb4EmLPPz+PZJjQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=H5RdIH7siP3+FI/dMxgx96LpeGYZW7p6S1InSCDrvyappZjwtTCqln96LG9znL3wx
	 Nf8sCAeIUKDKOmlyfMJxfHyWMXj2LVGxwxmXEoctBNVXEJLd8kRG8Q7kk4BavVepFb
	 fCwL7engzqk1brDNENRNrro7L8fWXAj+0xWNtkHNYuVhqFh/V16NorynuayK4jNCib
	 N3cdbKRvoLT0Mfp8Z4i4OTu4ev656ZeVU5WvYaUPypzrVAKj+ad51+arxQXVkKGpOW
	 H74mBnT7umFfEXJnKbmTsI3CjISqR6T+hrzfx9a4hK9j8OmVlT01FGihnVasLn1zoZ
	 eMsKOATTiLdfw==
Date: Mon, 1 Sep 2025 10:08:06 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page syscalls.2
Message-ID: <cxmhuwvsak6e34zoiyebyttejyyewk2dzewhke6rx5ybx5nhhi@gypb6b4u65to>
References: <aKsmQxHHcdMZfePH@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ezsuzgvci3uactlm"
Content-Disposition: inline
In-Reply-To: <aKsmQxHHcdMZfePH@meinfjell.helgefjelltest.de>


--ezsuzgvci3uactlm
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page syscalls.2
References: <aKsmQxHHcdMZfePH@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKsmQxHHcdMZfePH@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Aug 24, 2025 at 02:48:35PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    Why these strange line breaks?
>=20
> "See\n"
> "B<chown>(2)\n"
> "for\n"
> "version details"

This seems like the same po4a bug.  Please report to po4a, and CC me if
possible.  Thanks!


Have a lovely day!
Alex

>=20
> "Alternative name for\n"
> "B<setpgid>(2)\n"
> "on Alpha"
>=20

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--ezsuzgvci3uactlm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmi1VGYACgkQ64mZXMKQ
wqnlLQ//WVjDFr8+ooXHbq8ACs9mnfiOb6bcSaDt5vgCX5BVXqWXgxge5OPSBJcn
toq2FnzI2GB9x3WR5jYIg7X37BliT4fiXQAT97G02MmV+i95s3IBABrZmja1KGYI
dGdEwmpzjQeNODwVEtRoNXTcPAojSmbh4iArj5cs+W+i5hYiSYLcIsTmHFJxo2bY
CZ8gKLelcS99ibNXSpxh/A1xDR+Lss5QJx5V8Xy3P9Qo4P88NWKGPGX3o7e3wB1z
uz1LdT3OMBHQHvR2x22RuBguS2Nbwq9bhGmEv8XwiUw0y8/cyni573ZBthskMrs4
xcTFuAYsQBgrCpFgNyo4tqzq/0lQt6Q8MGBdUk5mnvjRg+KnUsB+Upozrk1SmhCH
g0uRe5A84aV5QbXZ0F1MZ1JaGIEwsp9YsCKWLwgkTWH/KbdBJurb2TWrfTH9cheN
U+YIpQ7b1VSOknBaaaHVLl3hFwKCUFsqjhnUFt0vUY2OBKLEVG9eIGlGW8eBVXtg
t9dk1Lj+Oy4cw/2LwvTM3qPi3XnqaKh/zeQK28N2ORBdIUomHmDWrLJWSwQt+HLr
xpQ0fah1PB3RtpUD9oa1piHzj00BfN666K0uY1k3zl7281COj8SOeS0AOGH7KMCU
XseEXc6xbqAvoHrVWgox8YTI0skZmlCebnIhcMtocOJWiOxR6/k=
=Nn8n
-----END PGP SIGNATURE-----

--ezsuzgvci3uactlm--

