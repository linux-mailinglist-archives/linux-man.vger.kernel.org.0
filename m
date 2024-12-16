Return-Path: <linux-man+bounces-2156-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F159F2E59
	for <lists+linux-man@lfdr.de>; Mon, 16 Dec 2024 11:42:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 544E6161CE3
	for <lists+linux-man@lfdr.de>; Mon, 16 Dec 2024 10:42:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D72D20371E;
	Mon, 16 Dec 2024 10:41:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jAX90nR9"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E926203711
	for <linux-man@vger.kernel.org>; Mon, 16 Dec 2024 10:41:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734345708; cv=none; b=Cr5SmOvUCiHc+gozzDQOMKUJ9rg22Dt7KZLgMAsLMDhZAoxp+CIgYO4uTTXBqY63ZCaXj6WOUnU15enjMMz+FeJX8mSvirZStJlxzHReKj5AcxyXvP1g7xlIKBZ7CFTi1SBqgb/FCgY0kHVkKcI6wnwty6iy+g+mrm+w+ps8/I0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734345708; c=relaxed/simple;
	bh=YuKqQisTI0JMYRVrUqpiBxLhXX9kg8rNKdGeULfwHtk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=V6qDaoPONWj1CVfQtSgHG6EPYfgEnWTKOvSYwPFP2adOHEKrw8mF7bslGIFgl7n8Q2epZ6VVykomPSAlJ3A7p5Qq/F4UxyuS3XpTll8w3c1P8BPpN30xdoTAaUcBPBD235wMdrp4UUTHiN+le7aoaRNIDn/7oEkiVA04xulLUKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jAX90nR9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 182D1C4CED0;
	Mon, 16 Dec 2024 10:41:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734345707;
	bh=YuKqQisTI0JMYRVrUqpiBxLhXX9kg8rNKdGeULfwHtk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jAX90nR9CtwzvYjm499AoiR9h3Jg0dWMSPM+wwPbSn1k3qJ9+rhP2hFVerI6lbAzw
	 hoZTSjEq55+b5ANbRZ3nJq4jNeqeCds/c/sFNftkvuukBnmj+ZvYWWQReAZirWkTZI
	 KDbDdoeSSJvaSlXAW0GnIs13OuiEdnhmsp3xUG6oB+4O3rb0dLuO9rmPeCxXf3bkdd
	 he0HzYSXMjzEycKJEtOsL4cni2Jz0r7kkmEMt0Df7On1fnSU79KFe6A7SEvoaWvIYN
	 IF5VUpTj7EFv2yUhfbd+3dyanCJXsFrTe0MVr3JjkWxax6Yqlidp1ctMGwvqt1TMPk
	 KJQW1cIlxk5/Q==
Date: Mon, 16 Dec 2024 11:41:44 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Dashuai Wu <3380520452@qq.com>
Cc: linux-man@vger.kernel.org
Subject: Re: Inconsistencies between Linux Kernel Documentation and Man Pages
Message-ID: <20241216104144.g23fqalrrnqpshmt@devuan>
References: <tencent_C8D6922C0F618F0B4470A55DEAE00B236105@qq.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4oqjdbiip3ghfwxo"
Content-Disposition: inline
In-Reply-To: <tencent_C8D6922C0F618F0B4470A55DEAE00B236105@qq.com>


--4oqjdbiip3ghfwxo
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: Inconsistencies between Linux Kernel Documentation and Man Pages
MIME-Version: 1.0

Hi Dashuai,

On Mon, Dec 16, 2024 at 05:56:51PM +0800, Dashuai Wu wrote:
> Hi=EF=BC=8C
> I noticed an inconsistency between the ARP manual page and the Linux kern=
el
> documentation regarding kernel parameters.
>=20
> The ARP manual page
> https://www.man7.org/linux/man-pages/man7/arp.7.html
> does not contain information about the deprecation of the 'unres_qlen'
> parameter and its replacement 'unres_qlen_bytes', while this information =
is
> present in the kernel documentation
> https://www.kernel.org/doc/html/latest/networking/ip-sysctl.html.
>=20
> Would it be possible to update the ARP manual page to reflect these chang=
es
> and maintain consistency with the kernel documentation?

Sure; would you mind sending a patch, and CCing the relevant kernel
developers?

You can find some guidelines for contributing patches here:
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTRIBUT=
ING.d>

Thanks!

Have a lovely day!
Alex

>=20
> Thank you for your attention to this matter.
>=20
> Best regards.
>=20
> Dashuai Wu
>=20

--=20
<https://www.alejandro-colomar.es/>

--4oqjdbiip3ghfwxo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmdgA+gACgkQnowa+77/
2zLPIA/5AerF1nzxPLD4PLp2HCPd0mB+UlmcQ+D0DwPTtGtCEbXow2p1EmRPi1gl
hvCq6WQXOwoQeYPdl77A0frRk+CNPFVrf9TzMkNwC1h+6I5alnGlVwzoglA9fWfm
VvES/OE0DRk0FnwZu+WxxSQ7oz+9FWoxP0NTLNPC+TOIrjaByJKG3J0Pyiu5OyDs
iUct2gJqW+4vwlzo4DVrcFJO5ViiiMXr+eNOzDi5/Lq0CGJ+HlsFaae70OXpFgI0
HWbeQr2xYQD5fvIRtCxN6eDEUnCRhSLTV32LGYEKUu9ZA2ipnpHPvG/1gBqB65Ro
POJAY1kWlODGid68DlM7N+b7dFqhngN4EAu2cDvfct4v2TUfe7o76SoaurAtGFqE
Ipmyy/JXbrHYi9SDc5RgZBVzJ0hEWZJl4zNDG6vFtzxDiqY7zaLOp7W8Y4c6ulEm
EdLWAcQI+VcnHiGs2ZGZvtjVAPQafFhrSoTR49h7mQSsLtrbzR1zhCOTFKPp34rG
2HO6laUQ47hurA9WtzUpnAuLuAWM5FUeoPJXYotTPOLMix3IVlNxQ7vRZaxzFFM0
LsnRF1V4aeisEKHDEYGtwcrI224PwGksHsDqG6ScWdd5olSBYfEHYPfhEwYPEGTt
X9e+b9QR207DKsG0AhRAHHzhEM31WXsCKLJAudZAPzmgQitolh8=
=9JmV
-----END PGP SIGNATURE-----

--4oqjdbiip3ghfwxo--

