Return-Path: <linux-man+bounces-2020-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D6949D0474
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 16:14:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AE66FB210A0
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 15:14:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E50A71D8E18;
	Sun, 17 Nov 2024 15:14:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kYSTVL00"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A717F7DA68
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 15:14:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731856452; cv=none; b=lkYe3bYLg0ew4suvzay9VTKm8JQFmE8Es/M0jIdue8ACD66lBLOr70+kxH2p4XZUxE36Z2Yxk4ytcQnDP59W/QxeiiXP2nIeRlb94tmsvg7BHrnLy+8iwJK+DGQ0BB13A1flCD9eFDc1lWTtpXdGACkMmH8N/Dc94JBPO9xL5bU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731856452; c=relaxed/simple;
	bh=n0BiatIOxlFxQvDR21loVPRbMaJ4PttjFYmT1GiLsEY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mraEOHl/p1WI8N1MuPYV+luHKchLsk7vXi5pB3/WLtyrmRhCwZHZnxAWxxkAyFbCsclAKnORfKBypDa8voAuKcAqncNGFTH76ga+GFEC9l2cxavjMxQPQdzuYl3+1G7XB9lIRxEeZOqxzbh+UBxd0/OEOF4+EQASDMDfrfvDeA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kYSTVL00; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72474C4CECD;
	Sun, 17 Nov 2024 15:14:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731856452;
	bh=n0BiatIOxlFxQvDR21loVPRbMaJ4PttjFYmT1GiLsEY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kYSTVL00196iGLfrzCQFbCDSx70NGqXbOQ6gcQL9NpAXWAFlS2vC8GaoRLYM2GPIx
	 f0ppfhBqo7+rDPlLYvE+CocTcU4PH3RdhgGo15dPA8odpc2qMDOBA6VB6/ef0agteo
	 Pkoud0cXDqFBzczQeOMy+AIGX1eQH5OjOCUrBwZmOkzhSTsLktrNXaYZZZPyuOr/Cl
	 e1J5ohBMLnou2aVFbwt3sBLriTWR30HSv5wJgt37EiWDUeTSIZWopHf+MXNv962niR
	 8Tr4UrDYcZ3bx17kxPeZxOQS/W7vnzh0R0GtC0CyDNrdVtUAkMrDxyyAO4eC8xEE22
	 37MuV2LDD8aRw==
Date: Sun, 17 Nov 2024 16:14:09 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page time.1
Message-ID: <3nljyrx547bylj4rlcpo3slo6dvy5cerzfcg524kmrh4ou2gzm@cxtv26jahqfk>
References: <ZznJgUunApKZIFH-@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="p3b6gy44nub6f4pr"
Content-Disposition: inline
In-Reply-To: <ZznJgUunApKZIFH-@meinfjell.helgefjelltest.de>


--p3b6gy44nub6f4pr
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page time.1
References: <ZznJgUunApKZIFH-@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <ZznJgUunApKZIFH-@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Nov 17, 2024 at 10:46:25AM GMT, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    B<bash> =E2=86=92 B<bash>(1)

Can't find it.  Probably same EBKAC as the other reports from time(1).
:-)

Cheers,
Alex

>=20
> "Users of the\n"
> "B<bash>\n"
> "shell need to use an explicit path in order to run the external\n"
> "B<time>\n"
> "command and not the shell builtin variant.  On system where\n"
> "B<time>\n"
> "is installed in\n"
> "I</usr/bin>,\n"
> "the first example would become\n"
> "     /usr/bin/time wc /etc/hosts\n"

--=20
<https://www.alejandro-colomar.es/>

--p3b6gy44nub6f4pr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc6CEEACgkQnowa+77/
2zJlqg//eBxBR6buyMm/xQLiij0aFb+bcwSDYjDd/rYmIG8d+WnL6Ru64IOAtBto
LwQQqFm6u6RNXSqup3yNdQSFSrReDvv7D/WsTQkGtmUFNU8iS0neTKFlYtdLk63n
coj4F3+37bsHq4RewEdCO3miqRrAkYwz4F1gjmYSsbrInX1+zJBh3ornJPk0bR4J
ho+CzrcZn/1Qv7be7M8yhZRHrsSPQUlRBQpyuFntch6H6QO25/S+vASDG+LHIJPn
hNh/pAAIscyv21e+VqCQNxAim+m/veHqGiEvXKBgP9rUj0KQ3Kv2P2KeX28xoWPw
itpuOyfAYiqzlcCJJ3jnykxNCAGH9XK2r40JUn1Kyij6BM58exzb+nuyLTLWFVPy
D7RLPi0FPCo+IVujr5ns8+oSvTfa9rLl3VQRWNlADKJgFUWH0lWlV7vfbED6Kpuq
OFVh28o2laJ8U+AIyXV8SCef8FRPJODoXPLd8OYM5GU+RvnpnM2HDXKrgOWrkjIV
+yZKu1nDxXubj0zur0cFxD+wKLOKWy7gv9HDhYPxpBLYahjwthKD0wxMZjt+yc33
kRxn+ImDSw93qC7teCqwIuu4xSKqoNQRyIa+R/Ymup/0fYzXIX0sE/s6g/Oye4/+
cOp6+uQt4OaJ+NJTMarv4P6e+bu8VdSUvEoT7uxp85SE/8toc9c=
=mjQP
-----END PGP SIGNATURE-----

--p3b6gy44nub6f4pr--

