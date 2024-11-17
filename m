Return-Path: <linux-man+bounces-1986-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F39C9D035A
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 12:52:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7CC91B24F08
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:52:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5F7A145FE8;
	Sun, 17 Nov 2024 11:52:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fWvCq3xn"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66CDE58222
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 11:52:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731844361; cv=none; b=Mb9VTZPTF6Nbcuv4TGFGm9hs8iAzlVF2aBLKyzTyKQPX4OSFbXKd9CubNQm0HKyLReftFDSheRqK+SXkP4sIq1vpG9KIInmlbD9QOHIXaQr6rZuBalfa/Jou9XJZn16KOAnzlT7KWHR9agH7O9YpS8Vu/KhbzXW3KdtdbgxugEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731844361; c=relaxed/simple;
	bh=GNji4Z6AifkyCqXtKRan9ndYba8DUnBeQ9QZyeGF+oo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MKn4/VoqMdQVL60G015Gn4piXMt3lRd1XESkkkDeu3rO5PhShJkNeC4R9NLKtFWLkIFDp+5RsCpm8+VHrKnrwa3lgOF4S+uhti9PNMyd0nv/HaqY5Q3+59+76QYE6vefVIVLUrD0zZRV6ZNIq04UQGRmYRlna6d0Duh5+m7xiWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fWvCq3xn; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3642EC4CECD;
	Sun, 17 Nov 2024 11:52:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731844361;
	bh=GNji4Z6AifkyCqXtKRan9ndYba8DUnBeQ9QZyeGF+oo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fWvCq3xn/mtLvHGeCIMfeSpTu0X15C0FZYcBCK+QJTXZp3vbQdzye96/Co8uaB7IL
	 EUNT9WZYROY19YZ/p5Iu8HAlNmZwNQQzcLGbpedV0kzHjjAoIzZTMqVuD9M1flyYnF
	 o5sGmg07h8BiVHMEfgSJ18X/hcEJdvatEz/DuKSL8qvWLM1M5JXxphDQ1NtBgd4Tn0
	 wd+5b6LmaKnsA1oX5DSc6KkgloH9tRcwFR1XuQ7Ev9Zxh7iShexifQiuZazDGuFlyi
	 hzv3srSvrnZBCVP4DkWJ4veNod0udaHDkj1nHzUhiHxGeQkbGqeq160bjwSXQ0MpZ1
	 pensZ45sTj2Wg==
Date: Sun, 17 Nov 2024 12:52:38 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page sscanf.3
Message-ID: <u6a6rwaitzlx2fvvj5gjhkhjqywqzlt6ptyspk4qcrbhagvokj@as6i3gffh7mb>
References: <ZznJf49XmOt6aDTS@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ij7ygngueufiluvd"
Content-Disposition: inline
In-Reply-To: <ZznJf49XmOt6aDTS@meinfjell.helgefjelltest.de>


--ij7ygngueufiluvd
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page sscanf.3
References: <ZznJf49XmOt6aDTS@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <ZznJf49XmOt6aDTS@meinfjell.helgefjelltest.de>

On Sun, Nov 17, 2024 at 10:46:23AM GMT, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    B<scanf>() =E2=86=92 B<sscanf>()
>=20
> "An optional \\[aq]*\\[aq] assignment-suppression character: B<sscanf>() =
 "
> "reads input as directed by the conversion specification, but discards th=
e "
> "input.  No corresponding I<pointer> argument is required, and this "
> "specification is not included in the count of successful assignments "
> "returned by B<scanf>()."

Fixed.  Thanks!

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--ij7ygngueufiluvd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc52QUACgkQnowa+77/
2zIlqxAAjocXMzhtmZ4n4tzw5ZIDjQ7NG0Cer+H2/ooLzyN2dl64rmVuxeDm4zAW
Fwv4PAlkTkDo1OsovSRZq9qf4jRuaQETX3Jx5phsdBTWhy3GfCPQR0K9b+8D3XD6
W8AvSmkSJjxaXT0huxbxwd8cq5yHL8rP/K29m4xjL8m59/rSV7th45Qqdx4QQN8u
xviRIPJz8oeFL1CzO3epIIKuPN1uDqe5/kZWCIDPDk2Tvt2k99i2hEmL9wfXWEvz
sX/hLFWBJQxAJZwCWtOhUpO0XktsG0ihVbJGzkA6+e6Z87McJpVqm1T/iddQCSH0
GJcKJUDeJdMLRVBlsniWgwa2lUBR4uV/xOmRXqMVOqjER4UaDKngKguS33M7SXMc
vgig1dz8LIi4Eyh9ECxRstZ+UYFC6VHZtGPZ3NACriKsYg6vhjTOQ6IaA1M4FquK
SMRGh24GWtr6a7pmnqX0hrnwhUfwGI4JYFOhxhgWDcqUC+vgRVCf2WAu2LnQ490B
VdXrqDqCB62dUPfQOhMn716HaYJoKQcvYF/i3GsuAFgqz5zXHT1nYw7zyPx+obdm
49Nkpi6P43L8FiH9CyA8A1+R3RJSew441LJAN2CwQi5zPVLxXQZzjiODzeGDPu0u
RdsUTCBcFs1b+LR3fNy888E3CyKvCDzoLKXg/r+yYZzhnWVoC7M=
=ScEg
-----END PGP SIGNATURE-----

--ij7ygngueufiluvd--

