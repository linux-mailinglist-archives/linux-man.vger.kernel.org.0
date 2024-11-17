Return-Path: <linux-man+bounces-1977-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 24A459D0347
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 12:30:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CE4B11F21A47
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:30:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBB6833E1;
	Sun, 17 Nov 2024 11:30:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jPT8vKC3"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C5307DA81
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 11:30:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731843031; cv=none; b=Lkm3UtkCFQEW5wGM52pWw2bVay9q6b7ciV2pvmtudxpp6I0lRjZXbjULL4hA73gJS1YsCGpm95cZCz8PGIjkRzKNpexpNnMd55tHE9u33V8esJKrqJV881MTaDKX5mWzhwqGjhJvKbXaUxBsaFEk6ncz1U7H6WeoM1+OpFqRxdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731843031; c=relaxed/simple;
	bh=NGVpCesuSQhtOI2ejdmRkbRczIb2cDMGBvAHq5uR3yA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=deVPPsgDgDGlGOTVh+kPWUhBDpf+2tAp7BAKkU9c+UnxxCmQCe4eJ64SaI2SG37rDtOtI2in/XeF3gTSFAocp2vD35swz63UH4ju6OfEEi3guJQKpQoGzExxUNlm7ogknFqxaFpbpKtn34q3rkaXz03v79b/aImmPGW4Hl9Da2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jPT8vKC3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A23DC4CECD;
	Sun, 17 Nov 2024 11:30:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731843031;
	bh=NGVpCesuSQhtOI2ejdmRkbRczIb2cDMGBvAHq5uR3yA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jPT8vKC3j5lCepvs1hedPd6tN1pPOJwv8qyUdwJS5bylZxuNIpKAAotQS2Qo5dmIB
	 F1D6U1aVo2O/g92gm4Dl0RfRbZaWwgEB7pgUcNHY8+tWVUTX5NxBj7F9tA1S3BrCLu
	 k95RKZEmzUK9M1qwcxwAZSI9O7lYm2anaznVDNrfwWwSBHgSsy35vWH2aCKXbS82sl
	 YWBP3bdPgXRWXruankR4trRiJ9CO6oXFUtYzom+JOLlM5WIGPPMhki5a4TDeQra9Pd
	 5NicXFLBOXNNGMCdbiFHHHTs9FZJGV4C3slgieGiyoppMQmtnA0nkHFgdYXCeFATdT
	 qxWMNZoD3/FVw==
Date: Sun, 17 Nov 2024 12:30:28 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page proc_pid_fd.5
Message-ID: <bkueim7gfjvp2w6tpqnjust3wwnibeuxmrt5pupeb3ycclujwm@6apz5kypcr5z>
References: <ZznJfkqbDXJWpVXm@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lgnro456nhcnwarm"
Content-Disposition: inline
In-Reply-To: <ZznJfkqbDXJWpVXm@meinfjell.helgefjelltest.de>


--lgnro456nhcnwarm
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page proc_pid_fd.5
References: <ZznJfkqbDXJWpVXm@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <ZznJfkqbDXJWpVXm@meinfjell.helgefjelltest.de>

On Sun, Nov 17, 2024 at 10:46:22AM GMT, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    When executing this commands, sudo prompts me for my password

And what's the problem?

Cheers,
Alex

>=20
> "$B< echo test | sudo -u nobody cat>\n"
> "test\n"
> "$B< echo test | sudo -u nobody cat /proc/self/fd/0>\n"
> "cat: /proc/self/fd/0: Permission denied\n"

alx@debian:~$ sudo echo
[sudo] password for alx:

alx@debian:~$ echo test | sudo -u nobody cat
test
alx@debian:~$ echo test | sudo -u nobody cat /proc/self/fd/0
cat: /proc/self/fd/0: Permission denied


--=20
<https://www.alejandro-colomar.es/>

--lgnro456nhcnwarm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc509MACgkQnowa+77/
2zJ0Bg//WpzaemGUP/ZAip257k1BhqrLaF4+UqRZWxyevVvQJfun/2orfcxXrZZW
RYthdNhwp0UKgCgArJ1Gxzv/bC/vgDYlvNwchmY7IyNN2ki34evozMrGHXfrbeFi
+fa85qFRcj4vDfOIlPHkQnOZsqnQo2Zx+sPM8SbKQGQ0fW4EBn98y6izF9u0u8bc
LjGwFN+XlcE1UIOqMSeyF4XUxLLAZE8B95VXRh/0cPp6dtERVfvUDi2IQp9OMJ3U
BZq7H2xfmOk1I7k9sJcBifipzRvnOcHRIwByjiNBX6P18EiNEgri+aNhpuS6wyIa
kzAx2AYLfvzt/AozkpeAm46FZUwtNRJcn8voLr+lkO6sNzl6KZcW6ZuLCD+hKkva
39QRStcyZWEnnJv5ZlQgAK6MB+4CzhYrFAomG4Muw/RFIrviV2hyPTCFVot4v636
tl0GFKGyBHXyRgjpwj40hUrtxygzr9UosPqiwCaljzMxT3aGc8/oZJWamMp3PWvw
9VLNxSUjAEqYQ3bfzXbAKtU0zBrGWkG5Iy0jfyo78wnno6IRAwvOc2U7jNuix8r2
8MJRxpGeSdJ66qxeYlnKVgCBJcz1gf95SDJXli5ZvnTFK0zVq6Keb1QO51bdDYkV
6/yA9lOcSDynIlJDVUtFneao/nD1lXGh4flI6LcYU8X0CIaQmHk=
=KWDP
-----END PGP SIGNATURE-----

--lgnro456nhcnwarm--

