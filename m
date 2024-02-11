Return-Path: <linux-man+bounces-424-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A3BDC850B58
	for <lists+linux-man@lfdr.de>; Sun, 11 Feb 2024 21:00:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 62DAF2849CE
	for <lists+linux-man@lfdr.de>; Sun, 11 Feb 2024 20:00:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E34835F496;
	Sun, 11 Feb 2024 20:00:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="Cvx59ijO"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B67D5EE82
	for <linux-man@vger.kernel.org>; Sun, 11 Feb 2024 20:00:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707681619; cv=none; b=KmVDcUOuv9hGDEGEADpu54Db0NksFajppb5pU5Jg2ujthSLmHBVDpCXV49R4+oDQ5zyK1epS8BH4KIYKn8k06hDDugFJFIxrvcvK6UKQZzccG0FRnpH21qauSC7bRkUvkxDPzp1QuFp3TmeTzaejO330syF9XTa8P8l0caMJ8ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707681619; c=relaxed/simple;
	bh=OkJKgCzNmqhT3skkTLCxIhZEhMjz6LtpDPcvX5PU6tQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dQAImQw2oT0cj0+G0MB4D6p7gg/lUaDblUmHdeXhtqEsmyUyyWZ8+ZRs5xYPLd3hsszSNjxTxcgpVP1DVA7TSLwDmxkigSh0Xp5TWxBW+awAzsYlYvs9d1yatHs0D+HxFMWkWTyCDq0oidU5pCfWN2+zKhYm5totdGGyafC6YRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=Cvx59ijO; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202305; t=1707681604;
	bh=OkJKgCzNmqhT3skkTLCxIhZEhMjz6LtpDPcvX5PU6tQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Cvx59ijOPKioQ+SfLjNIHbvGIAryBzdRrEBy/PfszHvFATV8FmGKEf8HuwZFAF2Qg
	 It18RrKtcz0O3Gb7fdTNru9I/zDw7w9kyar0oGD+XVqAvntIdQVKxPMUg9oh7c9Zg8
	 0rPMMnxc1D9NCHT3bvzDFydvta4sv4tQnYh4Thv3sTKOhwF9azDYgHvseBnBjtcIzk
	 9V2gxiN/cBpJcmrtoiqVla5vhqcpDc+eVWwzcZCoyjFJOIqP26Sl3XkYi3QIlUf8VX
	 NXyaw6BSi5h2cfHpWbiA7yr7FqKlcOO1f3UDbmR0ZsvJQGSmNAQpV8KvBSOI3Mr78u
	 gUZShj6afo8Hg==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id A1D921D8C;
	Sun, 11 Feb 2024 21:00:04 +0100 (CET)
Date: Sun, 11 Feb 2024 21:00:04 +0100
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] pthread_create.3: re-do the architecture/default stack
 size mapping
Message-ID: <47dmavi2ewo6pyxfoydqv5ztl35nuixe5z5wydqixozognii3v@tarta.nabijaczleweli.xyz>
References: <4wwe76cvuczjn57bzw7wd4derfaufcgrxr5skvlu25wvwecmmh@tarta.nabijaczleweli.xyz>
 <ZckYZ2q0PQIWFqrq@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5wswhfmw6lj7nyfs"
Content-Disposition: inline
In-Reply-To: <ZckYZ2q0PQIWFqrq@debian>
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--5wswhfmw6lj7nyfs
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

On Sun, Feb 11, 2024 at 07:56:39PM +0100, Alejandro Colomar wrote:
> On Thu, Feb 08, 2024 at 09:43:21PM +0100, =D0=BD=D0=B0=D0=B1 wrote:
> > +a per-architecture value is used for the stack size:
> > +2 MB on most architectures; 4 MB on POWER and Sparc-64.
> Why capitalize POWER and omit PC?  Other than that, LGTM.
This is what the official nomenclature seems to be:
  https://wiki.debian.org/ppc64el says
  > News
  >=20
  > The IBM POWER platform, code name ppc64el, is an official architecture =
since
  > DebianJessie.
  >=20
  > Required Hardware
  >=20
  > Debian/ppc64el requires, at minimum, a POWER8 processor machine. Althou=
gh
  > Debian was initially bootstrapped on a POWER7 set of servers, this clas=
s of
  > server is not supported anymore, and you are not able to run Debian/ppc=
64el
  > on a POWER 7 processor without hitting an illegal instruction fault.
  >=20
  > There are, at this moment, a plenty of POWER8 machines being sold by
  > different companies.=20

All the branding I've ever seen in the modern world calls it POWER,
and AIUI the PowerPC branding was abandoned like 15 years ago.

The debian wiki page even says
  > The ppc64el port is not aimed for old Powerpc Macintosh machines,
  > and, at the moment, there is no way to install it on this class of
  > machines.
but wikipedia tells me the last product from this line came out in 2006,
which is pushing two decades by now. Even then, apparently
"PowerPC is largely based on the earlier IBM POWER architecture"
so it's the same thing.

Maybe when Apple had a choke-hold on the millennial mind a calling it
"PowerPC" could've made sense, but through a modern lens PowerPC,
to the extent it exists at all, is just a derivative of POWER I think

Best,

--5wswhfmw6lj7nyfs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmXJJz8ACgkQvP0LAY0m
WPEpORAApf3lKHyHyDdt4ghkBUiMmf7PmsDVmZpiqpOWqQa6tGDJh9uk4pVLmaOq
L96owAEechydAJWrIDj8g6khCp9zV8/wfg01483hvzqGdOpCtj9nZo2eRZHKiJus
RNMK4IrT20+dStuezInrKbND4kAXbtA9h8QFgSov7F+ylnr2APD1HemO/s943OQu
3BsbiB86ZlVoeXTrxehaQ/ntBzfIRRAOcvRz5Jwu+KzPmIfFZkYeyEaDVLwatLEq
qEoy0ugP6iASRMYr2AYepAaM6cG12jWV1cMrLjNQA2Gjj6Y3g6vimCDGvB5exbFp
7JNeLldWfe6F8t42C4k+f0of+7WhFAPPDWou0Up4Q+FDacfmSYu4XbA1VrHbIqwe
tdg+chOj0enIL240YKTbix86zyKUr4W/4BNZ96wBKnKgwi8PmUNUTy0/oxyogwdk
0o5KqR8iw67tKIPHkjB7BJrxQY8jJLS8g4ZjXNzOCUUvKMLDm0KBkxVj1nTRt7w7
sPABk5t8U/2nqfDwK6LrLQHnAgCmqWurGYyP/maMWA3A973rRZJ3KTpT8lnTshjG
6bTjfrOtKJ+ocSGkNpBC4aCBMFct+Z3tSc2rsrgglg21wOf1dA5RSjznzNUzzJth
SANyVwShUraC5h+gxYGpuhKzMiViFi71hwfKumOBY+w8LFlJs94=
=D3vv
-----END PGP SIGNATURE-----

--5wswhfmw6lj7nyfs--

