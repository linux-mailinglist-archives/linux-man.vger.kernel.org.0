Return-Path: <linux-man+bounces-2973-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 585A5ABB1FC
	for <lists+linux-man@lfdr.de>; Mon, 19 May 2025 00:06:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 83BB07A9BBB
	for <lists+linux-man@lfdr.de>; Sun, 18 May 2025 22:05:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BBD71FDA9E;
	Sun, 18 May 2025 22:06:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MsW/bNS+"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CB0B1C1F05
	for <linux-man@vger.kernel.org>; Sun, 18 May 2025 22:06:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747605997; cv=none; b=FzSMxD1Ab0JBGsYFRrm725itVWIaBQ8H+ZuE7IGjAGiNgcQbS5rkMGLjy77V72cqFJs8oSE9wXd6s9xFXafi862vf3HQBcjvLUppiUp7Ezb4/u9/wJ8WIDZq8YOddZfTcSd6fvmfZnz0SHU5J7+aBzUNQ8c58VZAKtM9XjERfHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747605997; c=relaxed/simple;
	bh=cU3R8nj5thZD6oC1Za5nTzVlvUUsKMUZtc8bfQHayCE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Fyf1rPnOD4AUNa33xNZmN2pCpPnrsYvP3GjCrDDlrc44qBtcHYLwBZAOCf9HLM95GTLTbgaJL8EtjmH9S0Ec9O2+0Kl9MryAsW72M78cPcKdgjMF7TAfXw5oyh1KadoPq0XYIIdjeR6pJC2Xsi3P3eONxStm3UAX4yluYT8LFLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MsW/bNS+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CDB09C4CEE7;
	Sun, 18 May 2025 22:06:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747605996;
	bh=cU3R8nj5thZD6oC1Za5nTzVlvUUsKMUZtc8bfQHayCE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MsW/bNS+bEYL2UAPHyugM9xwibmUR+4F3aSTGaHa6Dqq9LMIe4s9egi/bPuAqNmPA
	 DpunYNZkOBelXSFpEwWlN+1UNEqw6bmJd/oRdV11T5QGyOGoMToDrK72gAqxVVxAM6
	 gM+R4jEYmWeLHOrVXbJXz5JySzJRtVgCGKFO950Td2/iUnrbUXy2XwzH8SJrXHzwWe
	 1/hNS6qNgfCvJWIG8l6zNqtEVMIVIQHRJS4Oxw7WpqWvMkxbZIMLxrDzd+ri4uu9bx
	 HT6sbJLeUKabdQyZeDcXfqCH/sIQFMSYLD1SW8qwKTpq1kelkxEYfaGU5y65ccaku8
	 NWZqTOUjqn8iw==
Date: Mon, 19 May 2025 00:06:33 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Mark Harris <mark.hsj@gmail.com>
Cc: Collin Funk <collin.funk1@gmail.com>, linux-man@vger.kernel.org, 
	libc-alpha@sourceware.org
Subject: Re: POSIX.1-2024 requires 64-bit time_t
Message-ID: <6ipmw5huiygdt3yhcsahlufnsnm7xfifxlrmlqj5fpjtzi7fvl@bq4ikhcvyqde>
References: <zagbrxifsyor6bxzkqi7b66ixw3q67vez2nng7aqjpykkohph3@plmaq4pfz3yf>
 <87plg5hnb4.fsf@gmail.com>
 <CAMdZqKFyc=cNh-aQVLZ6ovEZurzqSREhY1gx8L0m27f2uS=smw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vimnvybv7annsxwy"
Content-Disposition: inline
In-Reply-To: <CAMdZqKFyc=cNh-aQVLZ6ovEZurzqSREhY1gx8L0m27f2uS=smw@mail.gmail.com>


--vimnvybv7annsxwy
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Mark Harris <mark.hsj@gmail.com>
Cc: Collin Funk <collin.funk1@gmail.com>, linux-man@vger.kernel.org, 
	libc-alpha@sourceware.org
Subject: Re: POSIX.1-2024 requires 64-bit time_t
References: <zagbrxifsyor6bxzkqi7b66ixw3q67vez2nng7aqjpykkohph3@plmaq4pfz3yf>
 <87plg5hnb4.fsf@gmail.com>
 <CAMdZqKFyc=cNh-aQVLZ6ovEZurzqSREhY1gx8L0m27f2uS=smw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMdZqKFyc=cNh-aQVLZ6ovEZurzqSREhY1gx8L0m27f2uS=smw@mail.gmail.com>

Hi Mark,

On Sun, May 18, 2025 at 02:52:30PM -0700, Mark Harris wrote:
> For glibc, all 64-bit platforms, and the most recently added 32-bit
> platforms (arc, riscv32, or1k), use 64-bit time_t.  All older but
> still-supported 32-bit platforms (arm, csky, hppa, m68k, microblaze,
> mips, powerpc, s390, sh, sparc, x86) currently use 32-bit time_t by
> default but can use 64-bit time_t with -D_TIME_BITS=3D64.  For musl, all
> platforms use 64-bit time_t.

Thanks!

> POSIX.1-2024 requires that an implementation offer a conforming
> environment that supports 64-bit time_t, but it is also free to offer
> other non-conforming environments that use 32-bit time_t.

Are you sure?  That's not what I read from the standard.

POSIX.1-2024 says something like that for other types; for example:

	The implementation shall support one or more programming
	environments in which the widths of blksize_t, pid_t, size_t,
	ssize_t, and suseconds_t are no greater than the width of type
	long.

But for time_t it is very strict:

	time_t shall be an integer type with a width (see <stdint.h>) of
	at least 64 bits.

It doesn't seem to support such alternate environments for time_t.  Of
course, an implementation is free to not conform, but then it's a non-
conforming implementation.


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--vimnvybv7annsxwy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgqWeIACgkQ64mZXMKQ
wqkYoxAAsfI/clOCK4my9breAxHqcNz0NsC1rjR7g9sLSBv/iBVnYCGcXY2QQCVA
6eVPLU/Tgtjwlo969C7zGwZCr/AVRcuAJjpGsuDHLBax9nj++xg8G+5ETr+5kiLa
m4ZgljnH+m0ZrwYYXgPuYOqBWiqVnz+xVLYbBEqY2tfTiJFLVTZ+YwiATKa6A8bc
OJooakUu7pjMM5cpaDsn3zROGgeZorBzIcZ3OASNnG6KHr3ZznuCfpRGu3vCL4OM
HnqyH1r61IuFpllcZicoOg7NkbMF5djwzAc8GgC1su0CcmXwHrblKVJweyCxIbg4
8e3JAOKtUAYb8YowfqUTXsFaJpCMbts0oXxxpTsLo7kWaUopyVSZPGVIaVDk4pRv
SoYFZ0XDouvTFdnkIuBPmqQlTt0DvcUSFMmeM3X8idfRK5sRQUbG/jjNateI2/Xv
vyEjmr32duf7BFBM0PD3xCNLhcJDhuN5xuKH2+UCIl8Vil0yfB3manGHOrt/8Nj3
F60cOgQZBleZecyKhQ0s8KjPmKZLbYbx12I63Zss8ixjsB3VMzBC8F47e8+uWKAm
eAhmFzLCI+MFlPJSf2NWAqm4Jk40XeWxZYOfDy0qBZzMKrBiYHexbfQATk8zMS8f
UrhMonBda7Wqc7lzLh2q5+md5GOyxvMO4h7j8OECyiE9yLmmh7E=
=XUIU
-----END PGP SIGNATURE-----

--vimnvybv7annsxwy--

