Return-Path: <linux-man+bounces-1976-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A881B9D0344
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 12:28:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 208F9B2445F
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:28:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81FCB14A4D4;
	Sun, 17 Nov 2024 11:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RTm/uxH0"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419AD145FE8
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 11:28:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731842903; cv=none; b=csKDSvgUqePi3L78xKlqvIhUK7KObpLBtvwveJ4ct9aid5cKd87O3WG78vwTPyYn3FmowMNDd1ch8FE2kDPN5XxWnxjrwmD8xDaOShjZA+Ke4YEK9aJsPNoXKpGXLO6XP+Ce9pPJsRNmQi15/NYJQFLWysrz0XLx39sraZCYh/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731842903; c=relaxed/simple;
	bh=DBW4dqEdabecBVtN3U+5Lq3STtfEyWngiwunJ4prt2Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IZSwv9Ekn/CZ9MRzRivvgvyo2JDzKgXPMdxasRiEH71DRvY5PcckdakeEpgmh8P7rTXsujNCGevGDBfRXCnlCFMWRJJ3BfLPX0aEWo67Wyi9Ldw1TbWbjaAkgZuHoXqDnJguzpcMwOpzH7OdHwsWmxNxzGfBA0Le90ubYdXUGsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RTm/uxH0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C860AC4CECD;
	Sun, 17 Nov 2024 11:28:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731842902;
	bh=DBW4dqEdabecBVtN3U+5Lq3STtfEyWngiwunJ4prt2Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RTm/uxH0flgMEtqGskfl4IPn2l4LH37XV+HjriwRB46MYw4gtzrELCKiLkgS5ODXH
	 z82z1HeUEcu5EbAfGfxzIXtNDMmmsanr7Bm1nz4jz1x1u0n8YeZNm2CVny0XteOB3u
	 +VpcoGn1N2OiWdzShET5guf+Rh7hHy+ZGTlGRCaLJ5aYQmAjeki/DBhLg4QNwbMSr8
	 HyogcBlvX8ZY32kpaM/tE6ByP2N68bFHPCavPVDoWBRZPtcVIfVT5lAqZIYYW7cHyk
	 6Vk9psGTDSYXNfhiGbYPGMVB9G2y1BaeMzNXmCsHpsnM0n90jKaPYud/8UYt+ITy7h
	 U0RbvwSGENw/A==
Date: Sun, 17 Nov 2024 12:28:19 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page regex.7
Message-ID: <r6qnzxtu5jlyfxlpb3ce2jog2fj3gppziukb7j3okta6ta5jzc@7qfe4cbzfl7l>
References: <ZznJfodBCrTTrRbU@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tluxqv2l4iit3bb6"
Content-Disposition: inline
In-Reply-To: <ZznJfodBCrTTrRbU@meinfjell.helgefjelltest.de>


--tluxqv2l4iit3bb6
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page regex.7
References: <ZznJfodBCrTTrRbU@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <ZznJfodBCrTTrRbU@meinfjell.helgefjelltest.de>

Hi Helge,

On Sun, Nov 17, 2024 at 10:46:22AM GMT, Helge Kreutzmann wrote:
> Without further ado, the following was found:
>=20
> Issue:    alphabetic? Do you mean alphabet?

No, it means "alphabetic character", but character was omitted.  As in,
anything that isalpha(c).

Cheers,
Alex

>=20
> "If case-independent matching is specified, the effect is much as if all =
case "
> "distinctions had vanished from the alphabet.  When an alphabetic that ex=
ists "
> "in multiple cases appears as an ordinary character outside a bracket "
> "expression, it is effectively transformed into a bracket expression "
> "containing both cases, for example, \\[aq]x\\[aq] becomes \"I<[xX]>\".  =
When "
> "it appears inside a bracket expression, all case counterparts of it are "
> "added to the bracket expression, so that, for example, \"I<[x]>\" become=
s "
> "\"I<[xX]>\" and \"I<[\\[ha]x]>\" becomes \"I<[\\[ha]xX]>\"."

--=20
<https://www.alejandro-colomar.es/>

--tluxqv2l4iit3bb6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmc501MACgkQnowa+77/
2zJQgw//SB78+5zWJjxIfmC/0/xYvzT0Iw0zQiF2sChTf67Z9balxjYIcyraZFds
3OT+X+KYbantcqXZSstxoP4nhhywLewb3p10YIyzGk2fqRlvkUtSjg0h3606xqYx
LzFmoq3FCbYvHQ9yEoXlpgx0kaDrl6tbg3S0P6YchJpZTVigZWQlm0Jna3HpWJ4T
uaxrqBk2c7IaWd0xoils9gG3YmA2XGTqsYXXC5KUtRiNbj7l/2B/EAUejSnflYh6
zieNP/h2WI+rrKQJlfqJ4rMCTW39+GP+AjN/kzBePdSlvvRCNH6uaWXLVmk8YnFp
Rgn70gkI6GBa0AveTeFM+4o+eeVrRzwYxOHALpKa+2wTPrIeN2c6fNvay5smQvTG
jG945MYK+T9+BQPeqXvmb3IQ+gYFOUMWcdUkfDVRb8SMegQu22H0o7FfvvxIuTBx
vjvRSSJHGxf9/07W2kDRw2i/C58v6aDO7+Ou+c6EslURLlorxp2qNMjg3zNFuHEQ
mo7bL0xBVQdOdKdiR96LQSXNyO8+vYCJlwsl629gnKCYHQzqNmxjT31iQJdHaCOB
3VXEsHeQFS6hzFm6+DuuTzTuBRpLmh8t+GWZHqnM/Kdkrb4ZPlvy2UxdtIph4KGS
zlt6apK43+gaYkEYCXB06+GflwAqDdEOU/aP34AYU+wjykXfu+k=
=X1d9
-----END PGP SIGNATURE-----

--tluxqv2l4iit3bb6--

