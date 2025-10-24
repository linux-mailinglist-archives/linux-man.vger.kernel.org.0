Return-Path: <linux-man+bounces-4188-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 76999C04C59
	for <lists+linux-man@lfdr.de>; Fri, 24 Oct 2025 09:40:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0DE144FB6C6
	for <lists+linux-man@lfdr.de>; Fri, 24 Oct 2025 07:40:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B88FF2E8B95;
	Fri, 24 Oct 2025 07:39:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JOfkPcOe"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 740572E8B86
	for <linux-man@vger.kernel.org>; Fri, 24 Oct 2025 07:39:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761291578; cv=none; b=PDwcDXHV6gWRrqpcqp7YBDvemzGi+9fkDQmyJ9psihbl0paE2vZaEHiPBGR60aPe2FQ9rFNPgL60H0eSu3acStaby/OY9VJU6i/DiaJxipU7vMNjK0nZkh/LJklVv2uh9y/5IhZxMUE/aQ2rEEsOFAU0on8lvtdLo4b11+i49tU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761291578; c=relaxed/simple;
	bh=Td9VNN0uKH2W/7pUyhoNGhRZlJdSfvfSFxKhBWHKFNo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RdsWThcmsaA/ug+nJRgS/pC6KcjZSTZlQ5y94J0aShYCi+tcmSkQesqdRrRge3gFwR2f9rQIGfYDWzvzmFgBW6SWdPmnPl7fsYaJIql/uDo7I2ihAU6BHJwTwy9cztNTkAEtlTJCiym4rJ9OkuPk3jzPQp2/AINWSN5Vn8SPfUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JOfkPcOe; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4102C4CEF1;
	Fri, 24 Oct 2025 07:39:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761291578;
	bh=Td9VNN0uKH2W/7pUyhoNGhRZlJdSfvfSFxKhBWHKFNo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JOfkPcOerv8Hi4tZynRFg9HDiwayaYUECCsqLPGo5YB9qQUOTs+1p8IF4Ir5+yjxW
	 j7GOwQbf/CNbi41mnIoE0rfJ6yUv0AMmTQ3jvr4rAt5+xcdvsh1oGNPLo97GcfY1jE
	 dAeg522nCuYCmDSrAMHaZnb5+J1NQ8t9DlG94yoSUZb1xjfxGkyAdh98qb5qmmfk4s
	 H8GbqrVMevmpn0Rz3QsCqe+nmW/I8g3kU6KYuUZq924VR7ZIeRzsZAAxLrwHcR4SuD
	 T/hEdnV8JFwkDAchh9qz6GpOpxc82+w2Mnv6CyyAKOLvnVs46FSb8Yhzu+n1JLgzte
	 KukeCw5/MPo6Q==
Date: Fri, 24 Oct 2025 09:39:33 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Johannes Natter <office@dsp-crowd.com>
Cc: linux-man@vger.kernel.org
Subject: Re: man page bug - write()
Message-ID: <yxcdsqauolqpo3aqguygzlgaacyp5rayw4fziymgbix3j5zeuf@2ijuokwiwlfa>
References: <780f1a31-08f8-484c-8811-8d22bea320ff@dsp-crowd.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6cmwc2s3vdxzehu7"
Content-Disposition: inline
In-Reply-To: <780f1a31-08f8-484c-8811-8d22bea320ff@dsp-crowd.com>


--6cmwc2s3vdxzehu7
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Johannes Natter <office@dsp-crowd.com>
Cc: linux-man@vger.kernel.org
Subject: Re: man page bug - write()
Message-ID: <yxcdsqauolqpo3aqguygzlgaacyp5rayw4fziymgbix3j5zeuf@2ijuokwiwlfa>
References: <780f1a31-08f8-484c-8811-8d22bea320ff@dsp-crowd.com>
MIME-Version: 1.0
In-Reply-To: <780f1a31-08f8-484c-8811-8d22bea320ff@dsp-crowd.com>

On Fri, Oct 24, 2025 at 09:29:53AM +0200, Johannes Natter wrote:
> Hi,
>=20
> this seems to be a bug a Bug. Should be:
> ssize_t write(int fd, const void ...

Hi Joe,

Please don't send images in unsigned email; I won't open them.
(I probably won't open images in signed email either, but there's at
 least a chance.)

I assume the image contains something like this:

       ssize_t write(size_t count;
                     int fd, const void buf[count], size_t count);

That is correct (if we ignore the fact that arrays of void are
disallowed.

	alx@debian:~/tmp$ cat write.c=20
	#include <sys/types.h>

	ssize_t my_write(size_t count;
	    int fd, const char buf[count], size_t count);

	int
	main(void)
	{
		char a[100] =3D "";

		my_write(1, a, 100);
	}
	alx@debian:~/tmp$ gcc -Wall -Wextra write.c=20
	alx@debian:~/tmp$=20

Documentation for that language feature is here:
<https://gcc.gnu.org/onlinedocs/gcc/Variable-Length.html>


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--6cmwc2s3vdxzehu7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmj7LS4ACgkQ64mZXMKQ
wqndphAAm/wzq23L0ibm8LbUwD64mEz7XwXe+wJCf0TURn5X7v3b7XoWUg+wLjT5
YzdsT5nK0WPtSOgmyK1YfDvrGHCZCGSP7o5OEHEx8mKc9i34p+x1nZgQlRTbDQYn
pPD5kKnVmOslN3ZPrsL3yLOPG478yF+T6FpQR8u03srCV38dAmC8TErybaqDV8gm
5AH7W5VI11a+jjp150RCNvHgy+61uQCn45ZHCiLwqZhqsmH37Ku6PVL9pKzpwS3P
Ohd4U1jS34LcSeu0cYpytslK2blnb2fIYBMKYmCAAvLj6X1R2DJqbuH1ZVJcBkb0
ocWv+89IeyOOfiNaO+b5tvUdMRcSrVphwPL0f1RrGDgQPmQXWgS+s05GZkGDUlnf
pwP8szQUnD3uCU4uMAwYUYm0SQz8YbwplATghQ7t4qKMv+MKdcGZ6CaLQJcJr0m9
q1VuGvZ94ShopIWAGgWkPT91gf+h4ycv+F+Co94Q8f7qwvtXBEaDUoZPjceL4E+h
DrRkfYizF7LmBsJIJMK0v+wJ9CesP61uCVspUI9zNrxAOzokL4FL+5hPoQZppQLO
NGvVTaskmSyI2GBnz0gnx5dSTh8cs+i55RxY1ugc9LAouLwbgT6GBv15H996yiTF
yJrjISP6EnGXXVlio8QQjhaCItoKyiyVXhBfg/d9jqtzESzrjpA=
=uqdp
-----END PGP SIGNATURE-----

--6cmwc2s3vdxzehu7--

