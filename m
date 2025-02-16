Return-Path: <linux-man+bounces-2450-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2367AA3748F
	for <lists+linux-man@lfdr.de>; Sun, 16 Feb 2025 14:37:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 656C616DF73
	for <lists+linux-man@lfdr.de>; Sun, 16 Feb 2025 13:37:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3F5C18DB08;
	Sun, 16 Feb 2025 13:37:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dmWb8saf"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8300D14A60A
	for <linux-man@vger.kernel.org>; Sun, 16 Feb 2025 13:37:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739713021; cv=none; b=AMDF6vCiLd7hHkS1jrNRQ9DPuT0Jyr8Fc4EYeSeE8xe0EcBwBudApGUwlCeec1MtA0/TruztLBLY9YDdty0GqxBFq70Ppi9qh1OR/TiBK86Qgd4hiHDTJsRW42rLGYL/N3mq7bQeArXsfaawMoB349M7Qn8RKzhEGCt6Hmou8pA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739713021; c=relaxed/simple;
	bh=M2Z5Zdq2Lt5+HK0rmADDjfN5Dnr+CbGbOVFYWIymOCA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BNZf1d0RjeEFvSMtjpcJRxxV6tp8rvI7aug9Un/yUrbvdFAFYsCcvg6CTLd8IDyC8+dascfPLP+FuPLe3Bc0T7Ima9K+rsvJ8aMsfNJ6IiN3iV1QFImiw44C0fGGpeZPY+zeAA/VYaDmC/4lXsta1MozwEoCKIln+gSQbVX2wPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dmWb8saf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35BB3C4CEDD;
	Sun, 16 Feb 2025 13:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739713020;
	bh=M2Z5Zdq2Lt5+HK0rmADDjfN5Dnr+CbGbOVFYWIymOCA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dmWb8safpEPm9/ts3LSXEg6xiRsYNvJAsWsxAM1qf8etzE24vyOZn0bssNvgG4JX1
	 hkXzJprApiksiCCcnfzWQXpum2ZpGIS0p3vITvHs/M57xRDEqlKNNd/8akcL35b+FU
	 VNABvZuzkNYWqnqnWRJDuGV6HNzSrl/T1CgkCrIa8Q2NfVEI+ehngEO8cBvfKmY/ZK
	 kTQZnsPd/n81Ipntd3crHHLr6UVQrcJnkuXEs5Z+4Dpeep2NoluMjYpnIQRqEf9Kmx
	 L0HQDjN8fUoFRnI4To/qbgA4ZX2k0ZxRUnOB/1WBKeisWTNUQXCa3sdKhz5Nt1DEdY
	 tP0dEtH47oBQA==
Date: Sun, 16 Feb 2025 14:37:41 +0100
From: Alejandro Colomar <alx@kernel.org>
To: brian.inglis@systematicsw.ab.ca
Cc: linux-man@vger.kernel.org
Subject: Re: man-pages-6.11 released
Message-ID: <t3ha5wm6yqgkx43y5mycwcw2ynwidl6gi2sq5erlhssadibvcr@mbmk2qff45fl>
References: <frz5e2i7dv3kpl3mqxnkrrl5v54bjvw77fev6szkrggtx2ztxh@oyfvhx7zfm4u>
 <b6a4f0ba-2d13-4fa2-933d-131792adea3e@systematicsw.ab.ca>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7u536qn5n3lerxiz"
Content-Disposition: inline
In-Reply-To: <b6a4f0ba-2d13-4fa2-933d-131792adea3e@systematicsw.ab.ca>


--7u536qn5n3lerxiz
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: brian.inglis@systematicsw.ab.ca
Cc: linux-man@vger.kernel.org
Subject: Re: man-pages-6.11 released
References: <frz5e2i7dv3kpl3mqxnkrrl5v54bjvw77fev6szkrggtx2ztxh@oyfvhx7zfm4u>
 <b6a4f0ba-2d13-4fa2-933d-131792adea3e@systematicsw.ab.ca>
MIME-Version: 1.0
In-Reply-To: <b6a4f0ba-2d13-4fa2-933d-131792adea3e@systematicsw.ab.ca>

Hi Brian,

On Sun, Feb 16, 2025 at 05:50:17AM -0700, brian.inglis@systematicsw.ab.ca w=
rote:
> Hi Alex,
>=20
> Looks like the tarball pages are missing the version preceding release -1!

Hmmmm!  I can reproduce that.  I'll check why this is happening.

	alx@devuan:~/Downloads/man$ ls
	alx@devuan:~/Downloads/man$ wget https://mirrors.edge.kernel.org/pub/linux=
/docs/man-pages/man-pages-6.11.tar.gz >/dev/null 2>&1; echo $?
	0
	alx@devuan:~/Downloads/man$ tar xf man-pages-6.11.tar.gz=20
	alx@devuan:~/Downloads/man$ rm man-pages-6.11.tar.gz=20
	alx@devuan:~/Downloads/man$ cd man-pages-6.11/
	alx@devuan:~/Downloads/man/man-pages-6.11$ man ./man2/membarrier.2 | tail =
-n1
	Linux man=E2=80=90pages (unreleased)       2024=E2=80=9007=E2=80=9023     =
                membarrier(2)
	alx@devuan:~/Downloads/man/man-pages-6.11$ make -R -j24 install DESTDIR=3D=
i 2>/dev/null | wc -l
	5740
	alx@devuan:~/Downloads/man/man-pages-6.11$ man ./i/usr/local/share/man/man=
2/membarrier.2 | tail -n1
	Linux man=E2=80=90pages                    2024=E2=80=9007=E2=80=9023     =
                membarrier(2)

There are some error messages in the make(1) call, so it might be
related to that.

I should also make sure that there are tests for this in the build
system, but due to a bug in the packaging of the tools I use in my
distro, I can't at the moment.  For now, I'll try to just fix the bug.

Thanks for the report!


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--7u536qn5n3lerxiz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmex6h4ACgkQ64mZXMKQ
wqkR5Q//cBdv1v1Dt177OklQNpDBM8E3krXDvTU/MJj867YKBIpHIPWc+JTOduae
m99VlZzWUJkIJrYHIIsZLmfBoEyDg84ZVlK73mvB5KD7zwRll8vssJyw7ImbN5dY
bVgUQBDaOOyQtAJYODMoaTZtESnZu5to0vVdJVSDbWjGSw51S5YLhgOV9NrrS3oj
3fkknoEPogp+aBb6SGTQJ1RCU/K7MLDV5CSfwuOEONsnx78oLJa7ZjuABBougGSS
bsi7S6HdmKby4skfCoqFDGq9VrwdjN4yLbJ/e9ESAU7KuSGTo0bJmW/QD+jY6ix3
YexINBKDZv3AzsKl1GRX/yKnfi26Rf04zR9WDe/UDpr4sYCvZra/5EyKg9J45BPW
AP8uV2b0Ea9aZg3/Ypn17IYpiN9YEvzhC+fOur4f5ZEOGZ9J0mRqKU1BgOFbPQeL
YLwqDVZAUPTUo3awNt7Mi3ya9BPrI3zjW0nX/0+Jpj9ovXJmUO6i3/4N54OLzlcy
TPS1p12jfASSHiMI36bQwP4SM4RUr9MMxHZteEBxKgTJf/oc9EbmtbryL6ZTjBXI
WGo+WoWxio016H4/x24zpSZgLklUDN4VDXyLPybpu1uU1HJ8Fr6827cPqh1M+6Bg
gV7W2B5i+X6WSX1KYL+heGpJ9z80RQxBhK7xOY8kksmy6Ak065I=
=GnLM
-----END PGP SIGNATURE-----

--7u536qn5n3lerxiz--

