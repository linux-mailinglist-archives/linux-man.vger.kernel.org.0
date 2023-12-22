Return-Path: <linux-man+bounces-287-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B63F81CB3F
	for <lists+linux-man@lfdr.de>; Fri, 22 Dec 2023 15:20:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0BBBA1F27318
	for <lists+linux-man@lfdr.de>; Fri, 22 Dec 2023 14:20:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93ED51CFB7;
	Fri, 22 Dec 2023 14:20:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OK9/KmRk"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 550651CA9C
	for <linux-man@vger.kernel.org>; Fri, 22 Dec 2023 14:20:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2C2BBC433C9;
	Fri, 22 Dec 2023 14:20:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703254824;
	bh=HWPIQIkz/N8p6J85l5xzYjsCJp0QdWCU17jA5S2S79I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OK9/KmRkj5WTzPayic2z5oND+SwOFXHxzY55hxgQBnSgxFcIUdQLWJ1jveBwa0orY
	 FBDX0PjcOa2EefbOkpVpSBqxDBskrFJ8GGTllit8X0MmKTYPO35P71oRoaPar0F20k
	 2XDqLkCYYRj/mwkC/D+5uRPvN7Lumkwmq/CiaMPTIh/ahiSxYUehgklRK6lal8FiUO
	 JojYdqUEFkjgR2vgkYf9ZFrkI+LDDHWLcQJJKF7CUEikr+YZCr1DE+5+Fex2FqjF6A
	 23mMJs0HGgQMbuVgcJMPE4ocViG+nX/8smZAnSwLMUnAAR9lpZrFvzRa/Rpiyn3Qme
	 xfNFlI2/cQozA==
Date: Fri, 22 Dec 2023 15:20:21 +0100
From: Alejandro Colomar <alx@kernel.org>
To: rajesh <r.pandian@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Contributing to documentation
Message-ID: <ZYWbJXjbQDm-2V8H@debian>
References: <CAKkEDkWv_wksbcAkUEaFdAQhkhZH1xr+pLidXAvKvV-ka7gE1Q@mail.gmail.com>
 <CAKkEDkU28SRY-dZOVdnGORV2f8ovOak1b=Pr8+bEFDb-B2vx+A@mail.gmail.com>
 <ZYVpRMcZk2MSg9Yc@debian>
 <CAKkEDkX_kw=5rwn5qcbt45RjWMtSuVNAzYDc2MEkaTr0FwQe3w@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="GUIEjxky+njO52gh"
Content-Disposition: inline
In-Reply-To: <CAKkEDkX_kw=5rwn5qcbt45RjWMtSuVNAzYDc2MEkaTr0FwQe3w@mail.gmail.com>


--GUIEjxky+njO52gh
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Fri, 22 Dec 2023 15:20:21 +0100
From: Alejandro Colomar <alx@kernel.org>
To: rajesh <r.pandian@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Contributing to documentation

Hi rajesh,

On Fri, Dec 22, 2023 at 07:40:19PM +0530, rajesh wrote:
> Thanks, I'll check them out Alejandro. Yes I m ok with git (but
> looking forward to learn more)

Ok.

> I also made a comment on https://bugzilla.kernel.org/show_bug.cgi?id=3D21=
8266
>=20
> Does my comment looks ok? The language,

Yes, the language looks good.

> code etc,.? If it's ok then
> putting this code in shutdown makes sense?

That code is useful for debugging with something short, but normally you
shouldn't call printf(3) from a signal handler.
<https://stackoverflow.com/questions/16891019/how-to-avoid-using-printf-in-=
a-signal-handler>

I can't give any other response without actually investigating myself,
since I don't use signal handlers often.

Have a lovely day,
Alex

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--GUIEjxky+njO52gh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmWFmyUACgkQnowa+77/
2zJlJw/9FMIrvieN4uBxqltqN8qrmk/t8vdFR6KAJfTsbcjUS6O6311AjBmWrVwN
Svx8XZD1PLgfaFWg4ErSIHbehlWNAYBlZqzlcn8eJw53UXWnixySmkOPcDZofX4L
OnYpbdilMv/UNzAIsvXVLLc76+NRhHtjbeSPrs80Pzx+4jPEj+++l0tQV0CJqSnt
cLucJnQ9IEFZOIW4ZV7pk4iXnmkON8fwYKbpz03ojKcoZco8kKhydaqN9lsYZqHu
Jx0+LdLdHf2uGexYv1jSu0eL8L0ppZxBRQBvckGNv58bQPBrUhy0vAyCzAlogqm8
f1+Z/eaMZyc/JwJcQuoDtP54PKDfZtXC4T/bwTIIpjcRWmePJJBaPwQoBxCiXgl9
x9VN6b4+RvxC9CegNLOILTR15rWkreU969mkaE3U2Fgwa7lEAoo8M/tVfg9rX3k7
4U54+0wZ8gnqoiriKpF64nLacfv2ZlCNO8E0h8WBsP6lFT7SpBk+F2epuYcBJHz0
rkv9UytHxMIe+OOgCf+hSwZFxCyA8yfWNyExTcXASN+eDPtmnpS/jO4UFKCNrYov
8+yjenC4euosDD+TsztUOC9MS2W/+nyilNVc+ZoRurYQR2pcfQJQ8iZxRg+KV/d2
ZkLPcYBXTgtf51L4Wd8AjCTJsE89Wc5G0xT/BE8qS27JgiAyjXY=
=tkS5
-----END PGP SIGNATURE-----

--GUIEjxky+njO52gh--

