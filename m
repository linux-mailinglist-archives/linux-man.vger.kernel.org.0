Return-Path: <linux-man+bounces-3791-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 467DBB3D495
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 19:25:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A9D591898CA9
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 17:26:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1F9826F285;
	Sun, 31 Aug 2025 17:25:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kVnrtL1N"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FD9D26E179
	for <linux-man@vger.kernel.org>; Sun, 31 Aug 2025 17:25:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756661135; cv=none; b=u83dIQ+/c0KaI2PFjvjt/HfpzHAfT1NQKuBBjbSeLS2dmIJIwtrzO8lQA6qlfyEGNIr7P5FsJvs30XypX8LPEQuOfy9egutoFc9MXG4A80cU7RIG4GZmVUdo1jsmbC6lA1y+7V3ApK8u0JJEmPdGNg0ys09gsWw8cYvvoOX7sgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756661135; c=relaxed/simple;
	bh=4khwVmIxzcdCKzd+aWWuE40yM22TRlWFpiUgtvBH18Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AuFcOZ7vlduL7xEYAyKqxQ3vQmyN28Mr8C6caIqLONSjSvaQvnvHDaHi0bU/YHLhb+jAXauB/nlNHb1Jn8iQW87Vt1ESMXJY60vXKs/zNWagoPQkpOIEeYXFtPHUoIC0bnZicyCWHYSaRS+LFHJNdFjeadnRwIDqH/79xUgnBi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kVnrtL1N; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC011C4CEED;
	Sun, 31 Aug 2025 17:25:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756661134;
	bh=4khwVmIxzcdCKzd+aWWuE40yM22TRlWFpiUgtvBH18Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kVnrtL1NQ1xjKt8HcWpcRtxyI8FVsfase25CfIMN631vOAYxL3Z1t5lzlyv1A2k/Q
	 7U/QYFqWmWXBsp5ptbsginp84eJQxK1Y13XB8gzHmMoDTk6m7R2PU+yqszPu49hXNq
	 3kXp2ZF0IJUVQAU9+cxDRYdmabefa7XajOgPvj/mLCDstbwxlbnssO7bB9KNrmRM8A
	 EXi+NijawtPLXkmIIpwZfcQnYCpXolbFVTLnlSrYIbuV1KO2+598H3sBmlhsAAX827
	 YHHxLh7cYBe7y9CbBWZHUUp+UekItShYIoaYpeCS0Qm2mDryKwF8dxQYjVZTjDSXPK
	 sLTJ40vvanKIg==
Date: Sun, 31 Aug 2025 19:25:28 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page fmod.3
Message-ID: <6iqxyxnx3i4xb4pys2tibwqpxjdjbyn5s62lzvaaipehfpkk2o@66o2f64uhp57>
References: <aKsmR-cMc4kwtLQW@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="obj5d4vyedufyb3k"
Content-Disposition: inline
In-Reply-To: <aKsmR-cMc4kwtLQW@meinfjell.helgefjelltest.de>


--obj5d4vyedufyb3k
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page fmod.3
References: <aKsmR-cMc4kwtLQW@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKsmR-cMc4kwtLQW@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Aug 24, 2025 at 02:48:39PM +0000, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue 1:  Either B<fmod>() =E2=86=92 B<fmod>    or =E2=86=92 I<fmod>()

The formatting is correct (as said in other mails).

> Issue 2:  What does "cost a branch" really mean? Branch of execution?

Yes, a branch of execution.


Cheers,
Alex

>=20
> "An alternate way to express this is with I<fmod(fmod(x, y) + y, y)>, but=
 the "
> "second B<fmod>()  usually costs way more than the one branch."

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--obj5d4vyedufyb3k
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmi0hYgACgkQ64mZXMKQ
wqlIwBAAmqcQ7kJ25fY9MKKcwtS/9UvdpjhE4pF/vsSiNMQI0R5eEBSsSGsSUU67
i9KQFITvyH9ZqrAH/gQTa3WJ3cv6hpgL0uQF4FVlvK83q+yhmT/XBuEjdio4jHB/
D9lzC26beIDt7pveiCRoQgTHej1XTKEYNMQ48IAc/tuDHa7l26wXTOz47p3kP5BK
4FMQmQ6V3OhA4sTs5G3n+QtCKnHG6BOazYYOd6Pu/hb3daB14s+8QLn+qed+3vAU
VF3L6y5Asux3OgFNRQKVdjsR2j02VaCFiAE9Ddq1XDKNNvN+iNM4ktr5lURYT6m3
AFb/ja1QN0NekFtxCLs8j1LBLeantwu2CGAcmW3sSsQ9+9eGRunSTnM9sMRhGdIH
Va35+hJOhxSUZEEo+06NDxhBTzTKvcJfV4wbgAbeAs8TG8EuX6sJ2wKWKJcqZaWe
ToAuPnhIVNw4lRMIY8jnEPMkd2KJGHzjMB+gPOTT3bZjtrzfCtTWMkrzwbuFERWp
7an1ZTGk+NH5AtnCfOCdMgOPCHWtApespx9aIMwhe7hQ2Dh4Tg0MDgv2mA6MsNq2
6aJYJfBKRNsGuOPosngUKcFcOjIPbca5vzrw56Fid1ufIP/a60Bol/8mM8scNrIf
7B/+jZQ63PEIapNB3+hWXaPfNs+bHoPRIeAx7ApP3oUcrS5SdVg=
=y6lj
-----END PGP SIGNATURE-----

--obj5d4vyedufyb3k--

