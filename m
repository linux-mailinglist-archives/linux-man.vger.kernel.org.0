Return-Path: <linux-man+bounces-2902-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F56AB2381
	for <lists+linux-man@lfdr.de>; Sat, 10 May 2025 13:02:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 366241BA327B
	for <lists+linux-man@lfdr.de>; Sat, 10 May 2025 11:02:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BF2E223311;
	Sat, 10 May 2025 11:02:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IC5Kxa7n"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A97C259C
	for <linux-man@vger.kernel.org>; Sat, 10 May 2025 11:02:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746874950; cv=none; b=pHA7crMd5/67618sSDfmX0Tb8eZ9DYTa4goNVqd7eikedE5Hq7E81eww0r7aa8pnyNMDUVkuKTTM3kPjWrHLNJHIkVi9XiXgy2qSsRwX2UchugBrIgQjNCJFMgdoh2Cousw8us2YdsIpuLUSMsY2FnzkI7IDlIH0XMgLLivMhzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746874950; c=relaxed/simple;
	bh=t8eFpbY/2Rwqyj2idzIuuROry7Jjaz69SkUoF4aFeKk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=meg20OagmT4+PG3m1spR9T40V1MACSsq9BjCrbT3cXUk914Q0dtbYBgx3SbwjQ6BRxv4PL3uL6FUX9Q7NmsOUkCMLUOcmjNT5eIS5rfegBrMMzY2ZrjQnT1sr8Wchr9PEFAIWJM+/PpYfG33kUt87JVhxnGH+6xe1gTn/zxhlVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IC5Kxa7n; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE67DC4CEE2;
	Sat, 10 May 2025 11:02:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746874949;
	bh=t8eFpbY/2Rwqyj2idzIuuROry7Jjaz69SkUoF4aFeKk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IC5Kxa7nBrpYEquAxvo9/2ca/UGnkSM+wgsdV8Ute2nVNu9mjzKFBHWBoESxZtQ3R
	 ph8jgg8jkQuMi+LgNN/+k66twpI6fcRXaPwss1j6D3rV3oBjTBFyP99UkuzMkPqORD
	 e6zgFI3pEFPoiV3YDUAgMfO/7OqVbTSorAkxTBlPNFWF8tPtzhxXfMEa5iNlUjkY2b
	 601OI0sIVqD0hhUzamE8hTgd07VSAUFh9I/0IapGtTNtAJPyS79WFmARXmF+opTZvf
	 OGJH5TAze/10DxNBwBVNHFhwQEbgJXQMZPFIT0ObMRjsPw8NGV8NeTIhczgl8O/1As
	 nNvxlJUdUGNqw==
Date: Sat, 10 May 2025 13:02:23 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Oron Peled <oron@actcom.co.il>
Cc: linux-man@vger.kernel.org, Carlos O'Donell <carlos@redhat.com>, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: Removing in-source contribution records contributer
Message-ID: <nkamcxqmcwntehfcozfl3g4d5mlgtevrfruszmi2hqfjooutj5@aky3ijbnufxj>
References: <cover.1739389071.git.amitpinhass@gmail.com>
 <nfwircxzu43boe5tme6loarzsq2rcecazpuox6eujeqjj6a7rv@nhzkijkx4lix>
 <2tmwbk6ennuamcvjdqnialvh4ez3zen666qatcklevasimlihu@n7o5hp6aejqp>
 <5681932.rdbgypaU67@sodium>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="v5bqnbj56oe35fz7"
Content-Disposition: inline
In-Reply-To: <5681932.rdbgypaU67@sodium>


--v5bqnbj56oe35fz7
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Oron Peled <oron@actcom.co.il>
Cc: linux-man@vger.kernel.org, Carlos O'Donell <carlos@redhat.com>, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: Removing in-source contribution records contributer
References: <cover.1739389071.git.amitpinhass@gmail.com>
 <nfwircxzu43boe5tme6loarzsq2rcecazpuox6eujeqjj6a7rv@nhzkijkx4lix>
 <2tmwbk6ennuamcvjdqnialvh4ez3zen666qatcklevasimlihu@n7o5hp6aejqp>
 <5681932.rdbgypaU67@sodium>
MIME-Version: 1.0
In-Reply-To: <5681932.rdbgypaU67@sodium>

Hi Oron,

On Sat, May 10, 2025 at 02:37:52AM +0300, Oron Peled wrote:
> Hi,
>=20
> I've no objection to the change.
> Only after I searched the list I recalled there was some "boot.7" man pag=
e I wrote many years ago.

:-)

> So this change actually promote me to a "contributor to the Linux
> man-pages project", instead of someone that wrote a small and
> unimportant man-page years ago ;-)
>=20
> Thank you, the real contributors that are maintaining this for years.

IMO, you and many like you are as real contributors as the maintainers.
The project wouldn't be what it is without those many small
contributions.


Have a lovely day!
Alex

> --
> Oron Peled

--=20
<https://www.alejandro-colomar.es/>

--v5bqnbj56oe35fz7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgfMjgACgkQ64mZXMKQ
wqkbrA//VmdaNzUWAQGKcJbC2lnaOv8DFgXtInPARJZ1X8R3KcQmQ0BtpwT8l2eG
+eoDSNmVy8Kd5diuWJGu50ntnanpW1mh3T2nmVuqHT/2+xhjkatc91uixf12pztg
M1KC0U/fD/Hr8ihJ++xr0by4y7fJYhzD9LZ750+DjYN4K8RRVzuzfb0jIIP4tvTN
m11yJGLdqF1GrRxAwJUuTjMXFP9ax0GgUheqgqCjsXPpH4J47tzdGyM7ITmH1SX4
wfErxg6CSkrjEacmHoCDnRaBZziy/egCNmNtbuDjiGH49uIVbR5rCZbbxOYuKk0o
jF4YDrzmzOhpj1mCrppS7jJ2qLvctfC47CKYoNt0L5Km0LxGguYuN3xD61eM4h+Y
PIp1eSgzHqD28U9FAbbTFGjP61yGQCLR3q5VmxJJAOThD7mC+j+TSRJZhZweU5QB
J7y99UthvonjApbIl7JKXFjuWd/Ke6TQu3+SMR37dVtb20mjK5Re5gmg4xpceFPp
Z43n0Prg99ttWdwMA+jQ+bDMFEQnGpUYabSoZzPXWhCZQ4HgBP+RVPojp1gTmC5n
RRp3BRfFwQ1bsM+y0A8QZEslQgQsix6r7lW82rU0fwqCm9gBdokOFW9hwmHLbrpm
UOpf1YQ4cVqROky572zm7iwvftLqhrDI6+gxr7x1oXMt4J8HPlc=
=E9GT
-----END PGP SIGNATURE-----

--v5bqnbj56oe35fz7--

