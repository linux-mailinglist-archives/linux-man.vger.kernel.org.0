Return-Path: <linux-man+bounces-1991-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F4EF9D0377
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 13:06:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D3877B224F2
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 12:06:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7D52A937;
	Sun, 17 Nov 2024 12:06:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mq4Ywvlp"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9763139D07
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 12:06:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731845180; cv=none; b=ZmmVIMHSvjqDz+1Ae51KpBweymox7Lbjd68jTba6R1VyPRHKAtJ6y1t9ooE1btoY2/BD965DhQckFbikiQkcqpaY/z7BLZENDNoYX+AXFu5dZyPuvxfZDihG/zKmhVG5rY86QXomtq/xyi4yIJeKvkBSkNBAQ8DHCkxSmSPgma4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731845180; c=relaxed/simple;
	bh=Y9Oa+cN0eDoLTIvgBrPylPSEi/ZF7qMiaM5HkROrVhw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ef7aE1wgBgF7Pf8il2SDn+2QY44GMy5dpvkGfSB4VqxRiKJKTi9fPcpoIUHsMWCBLWbKhphOodR1xXi1mlLEKo+dNod6/iT9uLol3T6tBvB8FCQsyJiVeIhFQTJlxf6BjV/0Dw915VLntc+X2BViT6j0Q9IOlbiX09FfMAGXxzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mq4Ywvlp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55CF7C4CECD;
	Sun, 17 Nov 2024 12:06:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731845178;
	bh=Y9Oa+cN0eDoLTIvgBrPylPSEi/ZF7qMiaM5HkROrVhw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Mq4YwvlphBCALTgmtIoTNnzcO/FiWZ4cTrQbo/2KDAsMr3qfJV7GJTVDZK3XpKMKH
	 WViWm7prREK8HMLp3KyMLJCrL1Mt/J5Qc/W+k1efQEwah9zGM74WVisfrB9Uguwbs6
	 eXmOuJkmZzAheyp1pNpyOgdGHJi5+H4HT5sk4K9r/cCBIqUgxEJX9A4qppwQQIeLsR
	 aCMPiwtDI7eC75AsK1F77R6Yrx3UR+L7eG1X9Glc6EM3aY6YKJMKU4W7/+wxfDj7MQ
	 QDqBRXod1iRoqgVWn0ikM2CPevHqeqOWm6awr2ju/EQL163xqM+jC3XarP6BpsZTcm
	 jGxrz+bze2m0A==
Date: Sun, 17 Nov 2024 13:06:15 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page syscalls.2
Message-ID: <2gwtywiyzbawbi5cpxpgdqd3fdxqrof6u73nibg555sdrkxjaf@tb6dx72jp4hc>
References: <ZznJgOK4ZGunfj-f@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vwgivp4achuhympv"
Content-Disposition: inline
In-Reply-To: <ZznJgOK4ZGunfj-f@meinfjell.helgefjelltest.de>


--vwgivp4achuhympv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page syscalls.2
References: <ZznJgOK4ZGunfj-f@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <ZznJgOK4ZGunfj-f@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Nov 17, 2024 at 10:46:24AM GMT, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    Is the first one correct? In Debian, ausyscall(8) exists
>=20
> "B<ausyscall>(1), B<intro>(2), B<syscall>(2), B<unimplemented>(2), "
> "B<errno>(3), B<libc>(7), B<vdso>(7)"

Let's assume it was a typo.  I've fixed it.

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--vwgivp4achuhympv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc53DcACgkQnowa+77/
2zKthg/+Ia2eZDaPRCIkJGxoVgsBJmq5NZadS1ztlwtQQ3IesSVBySDC1TKb/ens
geX3pdMGRL2HEiEMZa6su4N2o5j0Bt4I2OoHlOLuR5m62rT4tLofagRiUZDLbZ3k
oYXVdjtponr9sgI42/iWuBdKPQeO8n7ItD1yLxBMTZaFRjjv1PxVkm+UG/SFp5eX
KOAox3d0c1BBip1ftiXHmlvKT/uAWRhiQUj2gdRJRVV0U60+3bBOXQoN0FbaTjxd
/y8Hr3AxxbSY8qzFuhZPsDYaJH04hrZkaxGKWcPGpFWNzU4QWyqHTv9MtCkfmLC0
RwnW080Js3zWjwnBDznjbO4nXhsxUs8Ab6ifDIJ4QK/hBlxL1iRe8rj8I8a94LjC
wCwtpyrA0wGD4JgTCWYSykNCuypNpKKN4U678W/Oi8stqSkSXGZcRP+X6nBk8glI
uvlZFcgcSwRvfRkW5epZnQOu4+SBqxvH00+wGcxc41rajsK17NcwK5STlSNqML30
j/zf5GjBCfj/6Dtc5LcvTU9CN2jYkl8EveCeL+JkTi6XE+zm9SjTsrSryFaZsufq
ZBCkFUJDlsT5eALq06jmLZEebN9IoiRG9nPFVMzcx8OexsrjtZKJ0wy6wDgxUTMF
oF0z7msB2P4FnfoVyQy631/EdOe/S6Fo2E8kcCIExwvGyJ5hL30=
=O58M
-----END PGP SIGNATURE-----

--vwgivp4achuhympv--

