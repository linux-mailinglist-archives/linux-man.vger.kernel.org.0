Return-Path: <linux-man+bounces-4021-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E8FABBAF4DA
	for <lists+linux-man@lfdr.de>; Wed, 01 Oct 2025 08:49:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9FCFD164C76
	for <lists+linux-man@lfdr.de>; Wed,  1 Oct 2025 06:49:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BA52238D32;
	Wed,  1 Oct 2025 06:49:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OMs6a3Tr"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E008021B9F1
	for <linux-man@vger.kernel.org>; Wed,  1 Oct 2025 06:49:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759301382; cv=none; b=hZoLXrwrRVsOSAYqE+zAA2tRLUhoNJ1a5DuNGHQg2iFEiDMOeDpYWhM24jF1lY0rIMnSrnQMCk/0i1LVcQevrujwnKi+oKlWWn5fRQoX4id1lXxgbwY5VWf7+XRZ233igzl8HA63ioLImo51p3S2EeFbYPb3iiVDq7tp5krHJAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759301382; c=relaxed/simple;
	bh=kbTV5hvFQ6+oWTHSvsmjj2MGFizC5VhyX8zjU9uUGUQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dcJsflUB8BEWBYW9Xb92/+XXXMm0nGs2fUZsOMmrHUehh3+g4k2XD4vtCPdJ/NOXyRMnsR7eEOp+2weo91N3O4ykjNB/oxUlu3NKi2DVwNQSrjnNSCvE97X/SHTUwYMYlZ0BY/ojBxvrcaa78MkR6OebTFgTWRL4Xnm35qFk9E8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OMs6a3Tr; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9449DC4CEF4;
	Wed,  1 Oct 2025 06:49:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759301381;
	bh=kbTV5hvFQ6+oWTHSvsmjj2MGFizC5VhyX8zjU9uUGUQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OMs6a3TraeoXl0aUG3lpZlJPF45JmGG/gtTOSDWyzgHZVLMaNpTAfn67lyimDSEBm
	 P8iwAG8NdTnyZ2A7b8Mrcd4pcm0lq3OOOE6I76xZVShr/dgbco8Y+BmJAVCS2fjHeQ
	 qEYsuhAk4nnIXRJ18iyRCGhut1pTisb90LatFaTMBYU76yg/jKgbby7AhavZ1FVcpw
	 psxTTntykXTMR+dmeYUE21DuW1ckvn4U7QpIVMbNVoAEH34HENzFSiiCFDLlSAkkuP
	 v7RY55B8U5ClBxmhaHI/vsVKsKRNLdLOLh6Cin9jEaNrdd4V6uR1joGR4Dpi/DoSnV
	 LkX8G3ncT3cgA==
Date: Wed, 1 Oct 2025 08:49:38 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Bjarni Ingi Gislason <bjarniig@simnet.is>
Cc: linux-man@vger.kernel.org, branden@debian.org
Subject: Re: '^\}$' is changed to a space character
Message-ID: <32j4rxtwivo2jafhq7fmtz4rk4kyhmv4ldzoq64757ercbiwxb@zfgmna4wiuvs>
References: <aNwetmt-I0cT-u93@kassi.invalid.is>
 <xvj6ylzxcbmr4wu3p73uylhb2sgyzx5egbukc4r745oosrvqc2@nka5rihouesp>
 <aNxbV4rHn1LKPKBv@kassi.invalid.is>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="r45rlr6slztbwbem"
Content-Disposition: inline
In-Reply-To: <aNxbV4rHn1LKPKBv@kassi.invalid.is>


--r45rlr6slztbwbem
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Bjarni Ingi Gislason <bjarniig@simnet.is>
Cc: linux-man@vger.kernel.org, branden@debian.org
Subject: Re: '^\}$' is changed to a space character
Message-ID: <32j4rxtwivo2jafhq7fmtz4rk4kyhmv4ldzoq64757ercbiwxb@zfgmna4wiuvs>
References: <aNwetmt-I0cT-u93@kassi.invalid.is>
 <xvj6ylzxcbmr4wu3p73uylhb2sgyzx5egbukc4r745oosrvqc2@nka5rihouesp>
 <aNxbV4rHn1LKPKBv@kassi.invalid.is>
MIME-Version: 1.0
In-Reply-To: <aNxbV4rHn1LKPKBv@kassi.invalid.is>

Hi Bjarni.

On Tue, Sep 30, 2025 at 10:36:07PM +0000, Bjarni Ingi Gislason wrote:
>   A patch is superfluous
>=20
> sed -e '/^\\\}$/ {s/^/./}'

This would also work; thanks!  After all, what I need is something I can
run to get the page changed.

On the other hand, I think I prefer Branden's approach, which entirely
eliminates the low-level roff(7) there.  What do you think?


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--r45rlr6slztbwbem
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjczwIACgkQ64mZXMKQ
wqkhmg//a0qev3XruRfSkFLQXszg4GE7wvn9KNeSivnxJiaBYRjzwVwjbJ7WHQ/3
JNU+TYqUc0Defs6CdPVk/tkY/2WOWoYBr6aeh3tyUbvn7GomfBkAXhZ5Dbbx9ZmK
rozpy71CeyXsn+iaW3ZLd9jjyE/nGBfAitvxc5qzYzzBOARUVSo4k1CgGR2+vXgd
z31cZaNDYyYzIk+POD5MWuVp09vLNPSeq74Qqt2F+eFnkWJRCgwUl3dtJKf+W5sk
dfRg/bwnl/IKICCcBRyUbTfZ3ZKs5GsnCkK5kRjk7QVxxTFlJl52HBCVgIA6tCk/
SPnfFg22+NW2FD0rLcWoNOIF7Y3N63WyeSiPsxOXe7+FPe9SJEvlpJdMKCSNNWi2
wFgTZQqc0WAkH1hkPmfmlKOWbfU27KU+uXHvJ0w9FYR9YDRQ32zpiYcRaxBBLURG
4QuWTJVnc0SmGqpdszSmoMVnCyWpXL5fdQhpkhdp9GzGEZTD90eM6T2eFSZmV1Im
12QS47M7fm7Jq5dG/nF6E3Y8eWC9qZfTg6DLX80SEYU2OijHmOw+iwVsNNGRswPZ
VQgmR0GwpkWElmRq1AdZ8LKOIwrns7AuyyX5GEF4L4sLl7+SMu5bv4kaWKLPuEiz
28Spfpd6vYKcWeVvQOIZbqaItsgZYK08ziuEiM4RX0yqZ3tN7ko=
=5dGH
-----END PGP SIGNATURE-----

--r45rlr6slztbwbem--

