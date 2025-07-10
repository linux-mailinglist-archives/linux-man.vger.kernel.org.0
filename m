Return-Path: <linux-man+bounces-3253-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 786EAB00B77
	for <lists+linux-man@lfdr.de>; Thu, 10 Jul 2025 20:34:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8C47216C9E8
	for <lists+linux-man@lfdr.de>; Thu, 10 Jul 2025 18:34:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 062C12FCFE4;
	Thu, 10 Jul 2025 18:34:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o9DcLrXy"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B52C92FCFD6;
	Thu, 10 Jul 2025 18:34:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752172441; cv=none; b=Du4qU5ZAXorxu4gyHWNJbgz59KieoE0wCtF8ViTYWb6actcoeYOIdnU4hKX8GeTF1IKW0oLr1YL3uzoD1foyKLySyRCm6dHuXaUBkunxRgnWAQWrBDzaZ1/AfTfY1QlqgfwLvZuvo1+YKeFW2E24HjTpddEC+66Yc4TWnSAE+y4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752172441; c=relaxed/simple;
	bh=hApaLe0URwixjO0PNgZUeYN+POlXa8WoyAVmhkLUchk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GXMWhfM95fzJeqHrq6sl5CZZa14MbDZrvBOV5UGDDNSHhuBuDDmaxYA92fx0FePcWZobYQ/p6BQreZpHgkivn/jeoPKdeIUnW7A1WfXNIwqL8AvkqYDRjF+2k/vrxqDg4nWZu1J/pjIsUMz4JniUAjxgpKKd3cvpJWOS2JFyImk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o9DcLrXy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B785C4CEE3;
	Thu, 10 Jul 2025 18:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752172441;
	bh=hApaLe0URwixjO0PNgZUeYN+POlXa8WoyAVmhkLUchk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=o9DcLrXymxm9+mwbwXQ0ULoaKLv/W18QZ73bADfz3qSYuL6JIoFIr95oFX3LqlUyf
	 /TJcS8/uhIo9kg5yMsxVSdqyXjXWjpbo8IG8Rh7a+XzY3EFeKWOBF7A1dTsuuRTCX5
	 ZMhVdDHiEm4oAnNcbmFz8dEByaILXNVcCg5eIflrHBKVEyYJ3KWXYaUw8DoLHH+Kdd
	 BFzOC0874Up70wA+wGO5zcX0gapj+o/LzPAAuwS2Ub71sju1YMA847sMnPVkZF2kl/
	 rT9sDbfFxubMy4qCpVp8fGfa0bIWXL6ZNVm45aQvO6Ivab4Z8s76vQrRHDTgAXM23H
	 wEnY68gf9AZPg==
Date: Thu, 10 Jul 2025 20:33:57 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Steve French <smfrench@gmail.com>
Cc: CIFS <linux-cifs@vger.kernel.org>, 
	linux-man <linux-man@vger.kernel.org>, Bharath SM <bharathsm.hsk@gmail.com>
Subject: Re: Missing man pages
Message-ID: <pc25uvlyhotfhkriafqzr5jmemuyz3brobznxja46cq264usob@rmn76t5warxf>
References: <CAH2r5mtwv16LtkbXywgA=LMe71=jY64j6qUr38nqV=mKgOUTgg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vh46mslw2r4uj2wv"
Content-Disposition: inline
In-Reply-To: <CAH2r5mtwv16LtkbXywgA=LMe71=jY64j6qUr38nqV=mKgOUTgg@mail.gmail.com>


--vh46mslw2r4uj2wv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Steve French <smfrench@gmail.com>
Cc: CIFS <linux-cifs@vger.kernel.org>, 
	linux-man <linux-man@vger.kernel.org>, Bharath SM <bharathsm.hsk@gmail.com>
Subject: Re: Missing man pages
References: <CAH2r5mtwv16LtkbXywgA=LMe71=jY64j6qUr38nqV=mKgOUTgg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAH2r5mtwv16LtkbXywgA=LMe71=jY64j6qUr38nqV=mKgOUTgg@mail.gmail.com>

Hi Steve,

On Thu, Jul 10, 2025 at 10:07:05AM -0500, Steve French wrote:
> How can we get missing man page (mount.cifs) added to man7.org?
>=20
> https://git.samba.org/?p=3Dcifs-utils.git;a=3Dblob;f=3Dmount.cifs.rst;h=
=3Dd4890706a0fed73f05b3a228971756b57efcb9ba;hb=3Drefs/heads/master

<man7.org> is not my/our site.  It is property of Michael Kerrisk.  You
should find contact information within <man7.org>.

<https://man7.org/linux/man-pages/index.html>

> I noticed today that mount.cifs man page is missing from your site
> (and presumably the user space tools man pages are also missing
> cifscreds.rst   cifs.upcall.rst  idmapwb.rst     pam_cifscreds.rst
> smb2-quota.rst cifs.idmap.rst  getcifsacl.rst  setcifsacl.rst
> smbinfo.rst)


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--vh46mslw2r4uj2wv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhwB5UACgkQ64mZXMKQ
wqlMJA//bRMI3tHXNoTFGihr8SJKWnKMSfvax6Pfbi5a7aSlV+I/RGG/zQsdJ+yw
2zRMfAYRafthRiHy1+O+xwft5NQBvIx8hh4wo1SgBjxrH9vQvG8Du5lbY5T2Qnt0
Hg1Z7ku/2v8vbtYBteSZyq/tkKB/tFCYJb60x1XyHD3UA5SZX1SDT+aSGmjMYjEC
hYsMLJSSw/l4rB6r2fPbCtRzTNW2ZeZASYQ5DbJjcmy6vbVs+ZCAlhmOs7Of6yhu
VmXOk2BXeKe8VCgdNyvvMF9eZAqsu+/CTtIAKliuFXFkJEmFz6r+60A/eASZLJSM
msBP9nBb7slaHmdhQLpFWJ5Fyv/a3YFgMdsbDiEPz5/GPrhi03CfPxEGGpP8EhXx
6v6ym7T8Ut1B1uT74o6qCuN1XbLYro0XikoESRpsGfDwoUlAxYN05pbVWeU/6+5h
MC1n2tu879Qf6FQ+Kd+7zbcXUu2J+H+t0ZdHi+rMTPxcLKJEhdDoe9uPaU17+bWr
XP0dSZqJkvxBLVwKJ79SRkFaNk3XgWU2yrdRRwz+obUGX77rLNZjs/S9+MfSHvSu
wZhcOyEr1ZEEB9SvZXmpo/Jd5RVOqeqhZzzMnhWjCzjlw4N78rwQ/L+w8enufsda
qr/sBYYcSg1NyQejG7WFnzb3dScyui328b16Zd+kdanDVnxJyvc=
=7FIz
-----END PGP SIGNATURE-----

--vh46mslw2r4uj2wv--

