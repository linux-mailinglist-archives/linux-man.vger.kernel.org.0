Return-Path: <linux-man+bounces-872-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AE7F48BC12B
	for <lists+linux-man@lfdr.de>; Sun,  5 May 2024 16:31:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D51D2B20EEA
	for <lists+linux-man@lfdr.de>; Sun,  5 May 2024 14:30:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E319B383A3;
	Sun,  5 May 2024 14:28:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VCYGoVYH"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A40872C1A3
	for <linux-man@vger.kernel.org>; Sun,  5 May 2024 14:28:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714919307; cv=none; b=FUIDtuqnoAWv5z1TjLqy6jD+Fz1Skc1FqJZDJcQVbXz6yIfdf/DwpVY0rFIPApji5QZC2ueYXJ3kG5duSHnzg3LCkmWMOzFi/GJFc+1qxSnhf4Cj3QnfPnLI64cH55wZtq4+owumm8olyh+G7U7gCEHuCoWFYKfrEm5trpz6W9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714919307; c=relaxed/simple;
	bh=OvxFHq5nJZBG2PaVQuw+TY2bWR4JXqnPNvxCzyN7p6s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BocZZHxNQw0fTfBnkLqUj3Nh1W7bOeXZ1yA67UHKhuIxfjp41upjx9rJZOcjRQ5dAcQ4QY21g+Eoba0MutZDY3oiFomguPqGCqe/gwuzIMBT1iK9XJd63s3YH2qKRbEPa+iZfHCz/uPgg48mF6sITgACyiPzmc/aj59EQNx6rew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VCYGoVYH; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 29038C113CC;
	Sun,  5 May 2024 14:28:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714919307;
	bh=OvxFHq5nJZBG2PaVQuw+TY2bWR4JXqnPNvxCzyN7p6s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VCYGoVYHeh3pqfMBFxifPgzz6JnMxR2jolHbJv+CvyOosr07RXl7IglxPDIZ0AIyN
	 e8yBGnPKgHDyQxQ24CjpogXv6R9Miiw/OaAvwCRmqBu1z0qUJzRMswMhOJNdVIjp3y
	 R2RoDP+V3N68luXhqBtIIdx2C9U+bBgKBALr0OhAys2o89Yy0XHiJa1msZgsV2lqHJ
	 KSrPQP5GvKDeM9LGsEqMZUs7HhLclf4us/2a8MTDj3/wkTYzjjfvtD2asaSetU2ci8
	 Ms7/R28XaUEkM4LtoEvbcmrb6PZPoYgxIgKhXPbe0hArZn8YCsdNTQPA1cTY65or6W
	 AufetI6nizyVA==
Date: Sun, 5 May 2024 16:28:23 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: groff@gnu.org, linux-man@vger.kernel.org, bug-ncurses@gnu.org
Subject: Re: Proposed v2: revised man(7) synopsis macros
Message-ID: <ZjeXh4IjG0ct_Z3a@debian>
References: <Zjd-jgQ_VFTidbnT@debian>
 <Zjd_IEmita152Zdj@debian>
 <20240505135453.4rxsqe3so7347mli@illithid>
 <ZjeTilIR86sBYrtI@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="OawVsBoe1Qr7P+Bx"
Content-Disposition: inline
In-Reply-To: <ZjeTilIR86sBYrtI@debian>


--OawVsBoe1Qr7P+Bx
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 5 May 2024 16:28:23 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: groff@gnu.org, linux-man@vger.kernel.org, bug-ncurses@gnu.org
Subject: Re: Proposed v2: revised man(7) synopsis macros

You did s/vger/lore/ and now the mail is bouncing.  :-)

--=20
<https://www.alejandro-colomar.es/>

--OawVsBoe1Qr7P+Bx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmY3l4cACgkQnowa+77/
2zIfOBAAm3Mo3V5RZZqcLcGigOxbBq/U5l08co7BINKI09TOdY8fxDLFGmYUdugt
SQ8usDwVhC7MPD8nDITthahaLLOyeCGtQh+DDqCsvNTy/8TuSpxu1QzWVaHg0od+
CZ11ZNlLrzptz1z6FB2pDvXH10ak1pjiqq5hVVT435t2GOJtffwaVwecaKi50dlo
4ELPUWxaVLVCq6VzetEVqVDubJF7q4c1f8HMoYya7OhKO7LroxEafAKDXlIy1ed/
i3fhpx8SATVNYIgRhxiU3G9sBWu2qx6UVKe6f1pLavbEwYwXjkeizbS/TEGN0ImX
hgcj3c3qB+IWNWO8qs1inh7/j4w842CGgUlYHH/bTthDKLDdjVVLYT7UzNJPUFrz
pZD8e2VI7HPqVwl1H17SYzLjEqf+wiXvuG5rF1cPVnJ/PmUIv/W9n382JLx9z6+d
Z5DNk/3cpRInUeJtih28n+kD0sAWEGSSs71dq0FBeya/eow+zjRxzZpvJLIeNKR1
XyY95pwLP7hEA+AOHXT4nwss1P2ZZFtbTMY0rg+sS0ZVXO1l8yPwNLJzMs+okHL+
ITEVcVAxval+jzWyc5fyJuxfuYyBk+DI2vm/EIuekgRiFsURgl7glUOyayUwbone
lxlT1kMLdHLHullvQdmejBGmbKQMF7sMNWfoOq1AWKVX/Lj0Yy0=
=GOC4
-----END PGP SIGNATURE-----

--OawVsBoe1Qr7P+Bx--

