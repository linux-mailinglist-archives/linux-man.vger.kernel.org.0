Return-Path: <linux-man+bounces-1992-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CC7979D0378
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 13:07:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 66179B22173
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 12:07:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73297176ADE;
	Sun, 17 Nov 2024 12:07:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dbIxvDbg"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D2EA937
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 12:07:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731845264; cv=none; b=u4O2Y/KOp+Bf4Q5prjdxj/2EdkzJDPQu67xhj/GYrFgpih5i8cW5goQmAthCSSm6ELb7MXx+wzjeO/VdMcr3kPTWa8EcjfLgiIl1OiXWx0VXVv7q2MUULJ3+V6QvaQ2CxhJedjjbXBmJN7v8xQHSyUMg/T9x5525C0SijhYJVKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731845264; c=relaxed/simple;
	bh=MrXmjj54zIBcOEa0QQCRDS+re5Ott5epDXflhYEw220=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=A8GJFT3BOBYgvWwzTpl+uT08Gp9Y6hIsY2ljmUSrxeG3ocO9M0qF0vVGuhMZcicXeXOa3BsQmLjrAvluCt3zp4adZNFrO7HdcQ1xfkvk6T4ia8L8HU3bMrATm9b2t0ClWm6aLSc+eCOybEryTLz1cKGMr/rV5uo3+WBiUHbIHMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dbIxvDbg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8E5DC4CECD;
	Sun, 17 Nov 2024 12:07:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731845263;
	bh=MrXmjj54zIBcOEa0QQCRDS+re5Ott5epDXflhYEw220=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dbIxvDbgAy1pt+YGiFCMIWMOvUSMQnmoqcG+wNK0LM1o/SBd1YYT7N0OqA9xqskfq
	 D/ctv0qyX5sOYGQBFvXGJQcQUlVGwRKHMcmwenP3BDMA6JS47r08vv73c7Z/V0usmz
	 r0SKm/RwSuStSqydSEOVi4+/kPOgC4zHa8IPpL1zWskX5Xcwcg0c/Beu7EnBez0vAF
	 4alrJB3jFdP4q8siWLawtKOUvWpVQ2gUfr4nzQv6E43z71D6SEc+9YffDp/nFSYVrm
	 KYyChuYd1sPTMx4FtfK7Q8Rdls8RKrw6mYFyFfWZYF/5UcBehFTj0k4TrEIoVQM3hH
	 M7EAgn/tBKvlg==
Date: Sun, 17 Nov 2024 13:07:40 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page attributes.7
Message-ID: <nbc3wmui2wbbtivpugd4dcvfmxxvv7qcfvlfhm4y7s4wkg3c2g@qowbwtwztfqk>
References: <ZznJgI1T6Sq11qnk@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vsagr6ygcudiv3eh"
Content-Disposition: inline
In-Reply-To: <ZznJgI1T6Sq11qnk@meinfjell.helgefjelltest.de>


--vsagr6ygcudiv3eh
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page attributes.7
References: <ZznJgI1T6Sq11qnk@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <ZznJgI1T6Sq11qnk@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Nov 17, 2024 at 10:46:24AM GMT, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue 1:  The function =E2=86=92 Functions marked with
> Issue 2:  reads =E2=86=92 read
>=20
> "The function marked with I<hostid> as an MT-Safety issue reads from the "
> "system-wide data structures that hold the \"host ID\" of the machine.  T=
hese "
> "data structures cannot generally be modified atomically.  Since it is "
> "expected that the \"host ID\" will not normally change, the function tha=
t "
> "reads from it (B<gethostid>(3))  is regarded as safe, whereas the functi=
on "
> "that modifies it (B<sethostid>(3))  is marked with I<const:hostid>, "
> "indicating it may require special care if it is to be called.  In this "
> "specific case, the special care amounts to system-wide (not merely intra=
-"
> "process) coordination."

Fixed.  Thanks!

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--vsagr6ygcudiv3eh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc53IwACgkQnowa+77/
2zJb2Q/+ILmqrrFN8gXoT3ambkDKS2VTelg16WlIl0yDX8/87DTI3ViN/Yk3x2aq
Xu2S0+heJ5h9yJf5qHkkMgOZ/Y76W9bKEhWJu3kjNAS36qPDx94Yf/Cusnm3ZQJJ
F9DFR5mg+8l9Iphv+xd7cmAigSghwSB4pTo40InqcgckEEWUOviziCtxLHkK0hwg
f0K2QMNgXTqZOYjXavrPUZQQltYvPFXFkPD+dIViVlqMjfvTYg3TdUsUPW9AVsOu
CGAKAjqUM4ufN+bI0WZG1HMFPGRZ4qvqw1Y2f9ni1VczjT+G1kY0sbav5+AQc5Hf
jDIhK4UzCppLisap1AkyonccHd5c1iKJTQ952APW5qNCNvIC08e9P0BZ6bgkX3O3
852qeYf0Az1qGnMqyWuXrFF5LeEnCBQx+mYn17BHSaGFHsgX8k6sOV6mcz/N/5kx
fZdNJlhcNUmp6qbK6uh2CA1mtL0Y2X6qik13YScZDOmeWuJBl5j9e2AT4qYbLHAC
TAwTFHKsPFX1tG2+0dzUigpGgS3sci48MFND9zf0WSXd/560Uvys5E9JouuVq4cT
BuyABs2VcOked14dqVGWwzZOWt5rE+F08F3cTDPnxRs7WAbgBB2rtPEMwISAbRN4
vS/uiNU7KLt0PUQ/tyjAL3DvjgWP5OoUKEGRGlYj36qXbaGkYc4=
=LJQE
-----END PGP SIGNATURE-----

--vsagr6ygcudiv3eh--

