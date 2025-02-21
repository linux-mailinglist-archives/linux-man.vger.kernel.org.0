Return-Path: <linux-man+bounces-2498-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F0153A3EC63
	for <lists+linux-man@lfdr.de>; Fri, 21 Feb 2025 06:54:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2553F189F718
	for <lists+linux-man@lfdr.de>; Fri, 21 Feb 2025 05:54:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23CF21FBEB1;
	Fri, 21 Feb 2025 05:54:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PrgkZiBd"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D89A01FBEA8
	for <linux-man@vger.kernel.org>; Fri, 21 Feb 2025 05:54:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740117267; cv=none; b=cl78Mw68Momobe9uj39MfNQxO2i9U5nqM9ehpwtYmRZ9qXVNNujeIHq+WpjoGDK2w0q5bs2miYOcbQlqzOXo4RzTBgIAou0bw/dpOLOxD0Y/nZDfI/WcSO36CnYEWMbOtefoU3sl695yytXJdkzdbHPgWWsnkr6z2Wb6Z8AGaoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740117267; c=relaxed/simple;
	bh=CB/cwZ+Qj1S8YiD/qq0OBomzEFFroFNgj/NuLJJVHEg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VxP1I09R5dFttyy5N3TnfUxUfEvfIg3V9+XRKRMmCy7vXIK/AYHMlaZDGNSQ/pcjpGufzW0OWA8klZBRXiWuI5Usp27XyOO2QwNVnObA45i50BHeC1slwKd1WN459h2XStVVAygXY1IWXpHKQ/BdyGybzi1gBzr2V6GvAL+fH6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PrgkZiBd; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9E5BC4CEE2;
	Fri, 21 Feb 2025 05:54:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740117267;
	bh=CB/cwZ+Qj1S8YiD/qq0OBomzEFFroFNgj/NuLJJVHEg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PrgkZiBdf4bGykKdOWUQnBNrFZ5Mb2EUUDV3/CQtFKELAlqfVKjfd1CvgMPvR4TLt
	 6hDM6TmEtdE6CVLqfijnoeMY95VA/IQO+ttb4yhJFn0XJ7OQ8s0rQiP2FmI0jN8hi6
	 PuUTdhxx+nvy/jFsmuRq14M+d7ODlwAxS8an6HFMW8qWLyA0Gm/jRGrJrivwqn7mAM
	 d4I3MOPGIJNp4v0iqddEAn9WbxkZjTA02RcbkSrL8uo3a93r9GMj4//ri/u7kDNNal
	 I/OfOsekftPTBNu3M7VBbZTpxAeR7wRoGEcJmGepfUA1jkTSiBniGgtO6Dj2gN8PCa
	 Z0rH2NewUBfsw==
Date: Fri, 21 Feb 2025 06:54:18 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Matthew Cassell <mcassell411@gmail.com>
Cc: linux-man@vger.kernel.org, dave.hansen@linux.intel.com
Subject: Re: [PATCH v0] man/man2/{mbind,set_mempolicy}.2: added mode argument
 MPOL_PREFERRED_MANY
Message-ID: <2xptkti22ivew2ku7c4lg5m6rof3ewkhylz2s6tethifdtw3t5@osddhf35ha5k>
References: <20250218161939.1934-1-mcassell411@gmail.com>
 <xpqtms6ebpacvwqitdzktanxvrjdjaxldxqfeybxu6ptqsskv5@g5prxncuni6g>
 <CANiscBAOgt3C3aZTGYpxFcK7qb5fMtPodUbo_Mf88BA0Thcpkg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="a2i4g2yowif7gl7g"
Content-Disposition: inline
In-Reply-To: <CANiscBAOgt3C3aZTGYpxFcK7qb5fMtPodUbo_Mf88BA0Thcpkg@mail.gmail.com>


--a2i4g2yowif7gl7g
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Matthew Cassell <mcassell411@gmail.com>
Cc: linux-man@vger.kernel.org, dave.hansen@linux.intel.com
Subject: Re: [PATCH v0] man/man2/{mbind,set_mempolicy}.2: added mode argument
 MPOL_PREFERRED_MANY
References: <20250218161939.1934-1-mcassell411@gmail.com>
 <xpqtms6ebpacvwqitdzktanxvrjdjaxldxqfeybxu6ptqsskv5@g5prxncuni6g>
 <CANiscBAOgt3C3aZTGYpxFcK7qb5fMtPodUbo_Mf88BA0Thcpkg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CANiscBAOgt3C3aZTGYpxFcK7qb5fMtPodUbo_Mf88BA0Thcpkg@mail.gmail.com>

Hi Matt,

On Thu, Feb 20, 2025 at 02:57:52PM -0600, Matthew Cassell wrote:
> Thank you for the feedback Alejandro. I'm writing a revision now to
> better stay in format.
>=20
> > Should we refer from one page to the other?  It's hard to keep in sync
> > two manual pages with the same text.
>=20
> Do you think that keeping the more descriptive paragraph in
> set_mempolicy(2) and putting a brief referral in mbind(2) would work:

Sure!

> MPOL_PREFERRED_MANY (since Linux 5.15)
> Specifies a set of nodes for allocation; see set_mempolicy(2)

Yep, this looks good to me.  Thanks!


Have a lovely day!
Alex

>=20
>=20
> -Matt C

--=20
<https://www.alejandro-colomar.es/>

--a2i4g2yowif7gl7g
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAme4FQkACgkQ64mZXMKQ
wqlP0w//WEfhu6WZz03FfLhNiJUEa9zZYL42lF0GDhiwE/RpHUMVpLRD+86coxpj
n7eUbJP4ocMZh9Qhmt1EL7Kh10eqS+TT39Um0+iR3eK/NdhESu8vBW/eg2i8bRPl
/dLjYIj67kfNvw8ebtgFHcmklXMiicc87bzjAONim8gb+W96tX5sSMcmeEiPbMpp
Vi/JwkG7TS8oCACSm6KMEInc10Ct3ipxdFLmknqAXfjGQeT24Qkf+FG+RW40Wepz
UCddU3U9rdoc8CWj0klPC6EiOk4oZhLoot2/MXZytejFCQk54BjO9a5uxj1HUKaV
ePqNLeN6C7VEf0wtGc5oJ4o2jY4najb/97PDZ5UolUptsvgnPoObOBoBDGyn1KVp
ThYxoXwg2GZZIpNMNhX2imW/MlssASPJiYpuQMWPMvNqeTDBVgqK4uDzpEVh1lW5
SlkVQWj7P4Ulcdb7oB9yqdx1M1eDH3WY2lLEOvDvXff1BMWwRLwD82ZhbMce0FhA
WqmOIRQ53Vrmpe4lyg9SsnENeGNhzRRe7KmQm7LQYWgpsPRe2FK9OWkBIRxi/IFJ
7HPNdzcEA0/VGygoOnv51ZZpUcWcfdHciLPQdBNLP4Pu/DVN0QzUTyLSTrxCpMxU
DVYE85z8u2+ssjTNobvlqn1XGSOvID0+sMcaQkV4DPyCVNHv5Ew=
=YuC8
-----END PGP SIGNATURE-----

--a2i4g2yowif7gl7g--

