Return-Path: <linux-man+bounces-2442-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C60A3609D
	for <lists+linux-man@lfdr.de>; Fri, 14 Feb 2025 15:38:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AD46416B048
	for <lists+linux-man@lfdr.de>; Fri, 14 Feb 2025 14:38:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BEC4266573;
	Fri, 14 Feb 2025 14:38:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eKlyydpz"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DEE2266563
	for <linux-man@vger.kernel.org>; Fri, 14 Feb 2025 14:38:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739543928; cv=none; b=MFilQsy+62Le/VNMCrx2doe0YmEXIxBnrNARjzsTHNiildTES0+eMhYyqMBiDGcYmRP1hO4sB+nx7oc4/HW7YUcC1Wxw8rD18NA01olopBEVGcV9odIj17Y6wt0k09KLl15rBD4PmCYDcAvvldSuTAl48MqL8ODor5V9FRqcppI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739543928; c=relaxed/simple;
	bh=6uQWnT0/wF9VFnIXUact5R+3GH47/a0et7Mnz52nuvI=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=LjMf7VI+Gb2zCtJdX5b2tEYH+/ppo4fow1w1ZLlj3t7//ew68Fvjrdytcu7H3la7snddNBlLVqpphkgv9vTNaMD7OAsYbjo0j5h7M8Q/OIqd/T/nFFxC96NGyslJnKqvMPQE9/wTcKpFij9kbKD+3Gj22pQcydmhkkqCJl2Hp0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eKlyydpz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D190C4CEDD;
	Fri, 14 Feb 2025 14:38:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739543927;
	bh=6uQWnT0/wF9VFnIXUact5R+3GH47/a0et7Mnz52nuvI=;
	h=Date:From:To:Cc:Subject:From;
	b=eKlyydpz4zH+L4wkw/wEDT3cn1aTH6n59rYtCdwE3Yyeb0LZbu2I/y7KXkTRQWiuC
	 POWXTpF2PWZqhkxOc0wmKE8rcahzYnTfaMriGFrt0OqlGVSFgcjdPSS2QObHg3TI2o
	 DMLpGNdvTVLNbtBVzDJddLfpWwBK4tb9T0FsBJBrBqHZoSx/a6iwvpazXuRN92eIzh
	 qZhzBOxwrkmNOv5lXp+QIzMGDoyDb0fRsIKMi7HKXf0O/bql9ne4NA3/an/WjrS4bt
	 +dcGon+9iU2aO1c58ecCmyM2D1YrD6zipjzFvnWmJTPxIZllRTv4krJUuMw1duRz70
	 Qqah+cGRPYSGA==
Date: Fri, 14 Feb 2025 15:39:26 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Konstantin Ryabitsev <mricon@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: kup(1) signature verification
Message-ID: <tl6xmfafcnklhjp5xxjzrfigfptjx6gmlmgffg647urbdvsmpu@r6x2tdpxefl4>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="k6d5xynfdz6bnj2r"
Content-Disposition: inline


--k6d5xynfdz6bnj2r
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Konstantin Ryabitsev <mricon@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: kup(1) signature verification
MIME-Version: 1.0

Hi Konstantin,

I've generated a new signing subkey today, and used it for a new release
of the Linux man-pages project.

The kup server is rejecting the tarball due to the signature:

	$ kup put man-pages-$new.tar.{xz,asc} \
		/pub/linux/docs/man-pages/;
	Enter passphrase for key '/home/alx/.ssh/korg-alx':=20
	FATAL: Signature invalid

I have uploaded the key to the ubuntu keyserver a few minutes ago, so I
guess it still hasn't arrived yet at the database used by the kup
server, whichever it is.

Is there any specific keyserver that the kup server uses, so that I can
push my key directly to it?


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--k6d5xynfdz6bnj2r
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmevVZ4ACgkQ64mZXMKQ
wqngfw/+PqsDiLkbBYq/M7RIJvSde5MV/qFFInMWgVJaQQ3jMnWyeBDI458ORWvl
VykySX9YF/MFkSIKDgtiKfnrDNrU4XIcp47w4WQNVKSIV0MLunbWYBpI+iC4B+2P
4t/lsgeByaNIigQtLhH0C3/0ogmunkuWrdYnIF2m2neaaqDZImc1JGWcJu6Lf0P2
tctGAt7+jkU9IhdtuFGcUMRaoO7Nr9tY16Ksexilss08UUvgs/Im2gfKW0l0rZ8Y
xp5yBXvDHbYEQfR7dXjG4Lur3ecIZMNg3uIzxKqGxGjP36zLK8WKI1PJBJrh4VTL
3GI+L+A1XFrSxCBNTFtPSXmWADK1cunPP2p7slW9L+nIcuyp+uYYDojDUrTWo9oo
pW/NoPwFKHFVYtmKIgp+LSF1u5dfiYWHN34ogJ3wRACPRfxp/PEp1PXhaPO1LOZz
ssc/cB2HtZeSzuHvjUZkYEczFf4nSvTYBMHfYMa4ehHGxUTYCsrVYc1jF1HLtQCC
9yB6loJctkisFT9GBBGkRrxHLk1X8f1F9RfB4JDw0MCzHep+r+ZejN2p3vZw2p4Q
9NMx8j3bEkC8Nkm6O99nsc6hJMTr0FmzR/t6VhVh8Am/mcLj2c8gak2pTyr39pKf
HpWwVOrSdGmscKBorM2JpgovZKSzzbMLPvuuDwPqmnxOVMwA1BE=
=uVrc
-----END PGP SIGNATURE-----

--k6d5xynfdz6bnj2r--

