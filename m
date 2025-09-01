Return-Path: <linux-man+bounces-3808-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B1CCFB3E6B3
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 16:09:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DD0DD3B3678
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 14:09:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CE2B33A02E;
	Mon,  1 Sep 2025 14:08:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="neRifzah"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C184E2D6E53
	for <linux-man@vger.kernel.org>; Mon,  1 Sep 2025 14:08:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756735724; cv=none; b=LqAPeMiR4uB6PHyrnf/rmiu8fliteCL7otBtx8pnpjUrKo+Bz3630eScWVq9yObTGnTsL04RGgxzgVBS52u+tfrVodjMwHJjp9sFvnS8awzDgo+feZ3mzgBih0utD27IPNRk54i1unhG4lIAmr12L1qocl8qsOnQrd+Cd6r+aIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756735724; c=relaxed/simple;
	bh=zK3FLWIfdjtdq7ctc/jxgE6IGK06P7+Rm3p+SlDl/go=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Bx7kCQ1tXl8iVxbt8/nOBAJlonhgMNnWm8osZAx1qKv0MPzsA1cQd3Iv6kbwyyEHrKS6R4xT1geCFVtV1WhzyaoAAG3GfXHAf/XIRBQWxFoQ7OdSGjBxewZDLbpslO15Qdq8dTNROSyWavDqOFYyf2Tq24WYuSFJOhLtfSGxGmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=neRifzah; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D4ABDC4CEF1;
	Mon,  1 Sep 2025 14:08:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756735724;
	bh=zK3FLWIfdjtdq7ctc/jxgE6IGK06P7+Rm3p+SlDl/go=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=neRifzaheaA5d8OeCQBCZ52PfsMhMTRQKVZUTZe6i8WfBmJjTutxl6aNwai52OV7M
	 TduQjVlXUO5GNyVve7hNhLFL62pkCgb/WNZYFPa9FIovNq6jwnKWmR4OWraUBw1RBd
	 JinDoUXIFC8kGdZ7gsDVI0ZUycQXpq5mVx8/pQ3WCWWycjO12f6Qta7R6kwUIVx1YZ
	 IVf+f7H0RLKHbBuLn6LjGRUoRxcVGjdCs1iDFbY14nxFOuTT6+mRNHd+TdU/dEy04L
	 6I8tBJ2oqdMdACBoL2SHUzhcBcbNE5/cfNE4ewHrGB6YlSiqLOkCzva0KVcspBdwCK
	 GYpb6hy4NMJHg==
Date: Mon, 1 Sep 2025 16:08:39 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page login.3
Message-ID: <woo4th7wglmixtjyepnmqezvawzt6xe74ptld4vye6bstitovp@jq2eclr5gyqe>
References: <aKsmS333O7ZZJsST@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lkmaeskacxvr2zh5"
Content-Disposition: inline
In-Reply-To: <aKsmS333O7ZZJsST@meinfjell.helgefjelltest.de>


--lkmaeskacxvr2zh5
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page login.3
References: <aKsmS333O7ZZJsST@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKsmS333O7ZZJsST@meinfjell.helgefjelltest.de>

On Sun, Aug 24, 2025 at 02:48:43PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue 1:  utmp =E2=86=92 I<utmp>
> Issue 2:  wtmp =E2=86=92 I<wtmp>

Fixed; thanks!

>=20
> "The utmp file records who is currently using the system.  The wtmp file "
> "records all logins and logouts.  See B<utmp>(5)."
>=20
> "The function B<login>()  takes the supplied I<struct utmp>, I<ut>, and "
> "writes it to both the utmp and the wtmp file."

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--lkmaeskacxvr2zh5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmi1qOcACgkQ64mZXMKQ
wqm6BRAAm1ByHH5HmLIO0Zf8Oez02NV6mty/osD0oEufCuqoDxXTE5nhHls6vZpx
TXGokkx9GbFzUtlMmRdT3Ay5ataAXj2Bj4nEIB49KStNtyPkRxRATErCylZLaGBu
Qr/RtTydFlqAb/ynMr7KVr4oh75TiMZhUK0nj4sWXvaGnuKun9ANx5+sK9a+IlEy
TnCSHMXddt9XGlg+WMVxT/Khq0q31gDDVkqlZ89afgih0e38GAVO3EzEyptJz+qx
Bi+veTcPneafMS8wxHtVckZxybpyKy+zzsXzX9EqF5pNzkkj1mSWGfbSqhi1raGI
s9WIeePubuxDk4K9S94jSX10fYbeWD10Gs8MAdNX124vG2h6GSXyX7t7sDr1jwOt
JkXZV07sIdhk4PpRcwX0QHMG8puj3ZXbx4S95IPCfx6GBT/ic0gY61iuvJ3CkcBC
uGBK64b/ox8ywgq8b/r5imzfe9FuaJdbsDdPp35blaKkwmvi1GX+Bk+BfdhXwfWX
8kDsjSfuLd/oj6xrELZsy3mxqUjrbL7d2EOatcjGa4watLInCo56LLmeZzu9VJco
TRBJiEaRzK2hSxemucz65ffkdJ/LpRj6uTjDYkNjsvv0gVYP9ip0eZJ6gqnWqNyI
j8U/7EvPxWZdMc9dPx0k8AqmpWDPIuxAZw7Ep70rYPkt1YWGsAQ=
=cgI9
-----END PGP SIGNATURE-----

--lkmaeskacxvr2zh5--

