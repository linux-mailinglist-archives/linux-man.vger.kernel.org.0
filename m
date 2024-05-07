Return-Path: <linux-man+bounces-889-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 809F28BE486
	for <lists+linux-man@lfdr.de>; Tue,  7 May 2024 15:44:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B246D1C239C8
	for <lists+linux-man@lfdr.de>; Tue,  7 May 2024 13:44:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B9E6156F20;
	Tue,  7 May 2024 13:44:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UEM/GEg7"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2927913C3FA
	for <linux-man@vger.kernel.org>; Tue,  7 May 2024 13:44:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715089448; cv=none; b=Dx/fP3XxLEaifmSWUE+9sRIPylTK9PaZ4XnYNWqTmQmXjIDTj4r7zy9SZlBspFaaJcze0kO5s6/d9RnvrFHs8Pj5Fo46GHnvEn/hEZmPThVXe3oyxnZ12o1wT67sxR9W3ClTJQRbp842TsvI9Z69xIeYecoQM6HfXWj+r0c/GMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715089448; c=relaxed/simple;
	bh=ue95Xhm8YBtmGzs3Ee72Y7ZncmTVWhOQY6uayHdT9Dw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Of0fZ4JPfykxklJqP5Zm71nbM3OyxqB4sp9mD1yTKqWiytKm0rkH8k7xSx807Bf58tPKs5+5A8FQXpOuzAp5PajCW4iV1g4pXwvx2+3m1rI/e+LTNhMLl6xfMbp9k+FtWSbyL4BLDmTZq/iWt+Q7D7f8afp6eGoHqf0FN/r79PA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UEM/GEg7; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2355CC2BBFC;
	Tue,  7 May 2024 13:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715089447;
	bh=ue95Xhm8YBtmGzs3Ee72Y7ZncmTVWhOQY6uayHdT9Dw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UEM/GEg7LMuEusmwyMLZzyrZWAMZoq1lXz1dYva4pwweqoYqcrNoJFae1UuELHxDv
	 ZmRxYcTTVnbWMV2J4knPWuuDx7Ftt3GAs5cYWHNrjoCgpJcG0/L38SxA6m98giF9ai
	 iLAEuySzuuRT/XpEIZcTUpN9Dwu1Px+bK0IfxMDE0o7WPsUi1V01Xa6LLU4Yc+bbeX
	 M8Y+QimC+79zgSW/WUlMIsNi4Nq2nzbTe9PR19imS/5WTa47yOmyD7RIX7MB5M5Q+t
	 DVn15FSc5Wl8HZqHnaDcpvP3b3eb9Fe44nYI/PPuamkGjdOl0chbTKQ8hnJE0JfWWz
	 QH4zF4Ycx/NEw==
Date: Tue, 7 May 2024 15:44:03 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Jiri Olsa <olsajiri@gmail.com>
Cc: "Dmitry V. Levin" <ldv@strace.io>, linux-man@vger.kernel.org
Subject: Re: [PATCHv5 8/8] man2: Add uretprobe syscall page
Message-ID: <ZjowIwrTzyUAL4sw@debian>
References: <20240507105321.71524-1-jolsa@kernel.org>
 <20240507105321.71524-9-jolsa@kernel.org>
 <20240507111306.GA21812@altlinux.org>
 <ZjoVLGAcD7WxAC6T@krava>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ak9HF8NWmD6gcxHu"
Content-Disposition: inline
In-Reply-To: <ZjoVLGAcD7WxAC6T@krava>


--ak9HF8NWmD6gcxHu
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Tue, 7 May 2024 15:44:03 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Jiri Olsa <olsajiri@gmail.com>
Cc: "Dmitry V. Levin" <ldv@strace.io>, linux-man@vger.kernel.org
Subject: Re: [PATCHv5 8/8] man2: Add uretprobe syscall page

On Tue, May 07, 2024 at 01:49:00PM +0200, Jiri Olsa wrote:
> On Tue, May 07, 2024 at 02:13:06PM +0300, Dmitry V. Levin wrote:
> > On Tue, May 07, 2024 at 12:53:21PM +0200, Jiri Olsa wrote:
> > > Adding man page for new uretprobe syscall.
> > [...]
> > > +.P
> > > +Calls to
> > > +.BR uretprobe ()
> > > +suscall are only made from the user-space trampoline provided by the=
 kernel.
> >=20
> > typo: suscall

Thanks!

> ugh, thanks, there'll be at least one other version to fill
> in the kernel version in HISTORY section, I'll fix that

Oh, and we spell it as system call, not syscall.  :)

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--ak9HF8NWmD6gcxHu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmY6MCMACgkQnowa+77/
2zL3zQ/+NpBZ5PsHaEQEFx897UYR8Z6V0YTPQq1xnhdBVcpIgMUZDS0nomwnxD1Q
IkEae1ZsYzXhFnKLWoWJIaxafMS/IpOIwRDi+lhEqJk9cUUeUIaHtrPRROXesOE5
mQwB1K0KsC7FCPTXwaTx5roZa35VMsClab1Rp76QvVxF9FWWTIFu6AgcLJl2fp0b
pAzbBgsIIAPMXX4630NQQFc8KH1C0vaz1A7koyswTpGXxcCzP5EWly9I6MPU7bP7
mKqGVKyazH6BA3xyL83RdZkCTTKYkc8v+LfgCNvcYfgqakvwfuKe4kmn8VbGOGBy
tVvYMgJ54fEFPhdWhQmo4JLhWYsW3ObtUINQcEB8dfb11k/WR2Qu8Ke6Mgu+WKBL
cxVUqQMUfov0dQa8o6RkXTrq7C+hLu9Fx7MGSrFW1+V2HTva1xGV2mEpM4bznVMy
tCIjX6mi3AAIHf+N5np4u3dHyyzx60ygH0VJQ34aay329oOEtwHpqhnHIEd3WC2o
rHLJCwl5aSfgY6sBblFSqIyZhEu39JN+WroylycFPnuzoUGfcPbNUwTzJfsc2ff3
l1+yGsvcPEBfqiuoUODCyzC0X/coSRCH1W/ACbwt14/yRRK3OkfD1xFThP0OdBIB
/iwDhldSodSJCyLJidalXnTP1uXPrHm8x/NV9F5YG9/kTabYiG8=
=+rus
-----END PGP SIGNATURE-----

--ak9HF8NWmD6gcxHu--

