Return-Path: <linux-man+bounces-4704-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B76CFC765
	for <lists+linux-man@lfdr.de>; Wed, 07 Jan 2026 08:54:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 75466301028E
	for <lists+linux-man@lfdr.de>; Wed,  7 Jan 2026 07:51:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D037127A461;
	Wed,  7 Jan 2026 07:51:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alejandro-colomar.es header.i=@alejandro-colomar.es header.b="KKkHTqDg"
X-Original-To: linux-man@vger.kernel.org
Received: from out-183.mta0.migadu.com (out-183.mta0.migadu.com [91.218.175.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC6B219B5B1
	for <linux-man@vger.kernel.org>; Wed,  7 Jan 2026 07:51:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767772308; cv=none; b=Zohao+adbpAC+uEM4DfEJOuntmKiEAKFL7LZmNM/JmcqhRemDYNTB7HwAGenzqS4VIjjGbbXcj5iVp29Unuby5pEBUMAzPMdjX3Efig4XvhDaNcsdG8QmdkPl20HpUGQIzoqmx9KF53EQRTDvMcaVJw8mPmf2tCakXidUyZ5HAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767772308; c=relaxed/simple;
	bh=mLLROIGYLkjdtFyt11ClAQnZTLHmp4E0tCLsPwIsd88=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DBEg1XafrCgmRRAXfYfRr1Kt3IgsDMWul+HiLkbivM4Bf5FZ7i+1PZlwCyuvdbobi18PhxHoMZdWH5JHILTxcaG6Xaj5ZAcLrXgQp23LF9u0Wtx0eJAF8MtzZ377NuvV6EXscbpj/IdfMc3Ax0bCJbccb8+eWRGrthQzibRuBfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alejandro-colomar.es; spf=pass smtp.mailfrom=alejandro-colomar.es; dkim=pass (2048-bit key) header.d=alejandro-colomar.es header.i=@alejandro-colomar.es header.b=KKkHTqDg; arc=none smtp.client-ip=91.218.175.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alejandro-colomar.es
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alejandro-colomar.es
Date: Wed, 7 Jan 2026 08:51:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alejandro-colomar.es;
	s=key1; t=1767772303;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=h0J9FPqCmz/nMhtBk7BxAfGeLJhfj/HJqnm0niDQCFU=;
	b=KKkHTqDgbgftT7Sh2T975Bn2d69en1PVCOsCv6XNLXuSUMHBXhmbYR7n7lK/LCRTNqJhzr
	dduR5gw+AiijsvlyPLxWSusBiKeY/t5gG782QVsoXU8jQjFKg05fVkSnw4N27f559P02IU
	zno0iZtwv01/FOkflfNEkGoFcDMm4OQ7FrOo9Hyci2TYuV19/iQEEMbbKtzzw2hBqsl4NW
	3vXjZmHPDhQtYhDPh/HXQTiSfya+ERSQcG9lbTgM6dG4QZWhAk1Zep0eqjxRjTSw7o/DNc
	lQguWCWUJF/O5XpkcPgA/bVKQHZb9AwzHg6atuwKe3gx2HOc9+x9x0hrrwxOFg==
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Alejandro Colomar <une+c@alejandro-colomar.es>
To: David Svoboda <svoboda@cert.org>
Cc: Robert Seacord <rcseacord@gmail.com>, 
	"sc22wg14@open-std. org" <sc22wg14@open-std.org>, Florian Weimer <fweimer@redhat.com>, 
	Carlos O'Donell <carlos@redhat.com>, Aaron Ballman <aaron@aaronballman.com>, 
	libc-alpha@sourceware.org, musl@lists.openwall.com, linux-man@vger.kernel.org
Subject: Re: [SC22WG14.34664] n3752, alx-0029r8 - Restore the traditional
 realloc(3) specification
Message-ID: <aV4N-0egpfxhmnta@devuan>
References: <20251223161139.196AB356CF9@www.open-std.org>
 <20251223164349.F0BC5356D1A@www.open-std.org>
 <CACqWKsOkbArXm0XBUHkLcFFwDUP8iDQv_xPeNbomR0bKf-GCFw@mail.gmail.com>
 <20251223211529.6365A356CF9@www.open-std.org>
 <CACqWKsNQCchFZnFKKAyi-3HDtJYQ6sc=UZeb+hX48WQ1e7yj_w@mail.gmail.com>
 <20260106210527.AA3FA356D3A@www.open-std.org>
 <20260106214930.A5C8E356D2B@www.open-std.org>
 <PH1P110MB1636A1DEC402A702C28EBA9ECC84A@PH1P110MB1636.NAMP110.PROD.OUTLOOK.COM>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2iv6q3yuuqe2v5qf"
Content-Disposition: inline
In-Reply-To: <PH1P110MB1636A1DEC402A702C28EBA9ECC84A@PH1P110MB1636.NAMP110.PROD.OUTLOOK.COM>
X-Migadu-Flow: FLOW_OUT


--2iv6q3yuuqe2v5qf
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <une+c@alejandro-colomar.es>
To: David Svoboda <svoboda@cert.org>
Cc: Robert Seacord <rcseacord@gmail.com>, 
	"sc22wg14@open-std. org" <sc22wg14@open-std.org>, Florian Weimer <fweimer@redhat.com>, 
	Carlos O'Donell <carlos@redhat.com>, Aaron Ballman <aaron@aaronballman.com>, 
	libc-alpha@sourceware.org, musl@lists.openwall.com, linux-man@vger.kernel.org
Subject: Re: [SC22WG14.34664] n3752, alx-0029r8 - Restore the traditional
 realloc(3) specification
Message-ID: <aV4N-0egpfxhmnta@devuan>
References: <20251223161139.196AB356CF9@www.open-std.org>
 <20251223164349.F0BC5356D1A@www.open-std.org>
 <CACqWKsOkbArXm0XBUHkLcFFwDUP8iDQv_xPeNbomR0bKf-GCFw@mail.gmail.com>
 <20251223211529.6365A356CF9@www.open-std.org>
 <CACqWKsNQCchFZnFKKAyi-3HDtJYQ6sc=UZeb+hX48WQ1e7yj_w@mail.gmail.com>
 <20260106210527.AA3FA356D3A@www.open-std.org>
 <20260106214930.A5C8E356D2B@www.open-std.org>
 <PH1P110MB1636A1DEC402A702C28EBA9ECC84A@PH1P110MB1636.NAMP110.PROD.OUTLOOK.COM>
MIME-Version: 1.0
In-Reply-To: <PH1P110MB1636A1DEC402A702C28EBA9ECC84A@PH1P110MB1636.NAMP110.PROD.OUTLOOK.COM>

Hi David,

On Wed, Jan 07, 2026 at 12:47:18AM +0000, David Svoboda wrote:
[...]

> I could argue that this UB is really redundant, as it is a variant of
> the UB you get from reading past the end of an array.
> (notwithstanding that the array has zero length).

Clearly not.  First of all, requesting an array of zero elements is not
accessing the array, so you can't put both UB in the same category.

Second, NULL is not an array of zero elements.  NULL is an invalid
pointer.  You can't do anything with NULL (or you couldn't until it was
changed recently).  With an array of zero elements, you can do pointer
arithmetic and hold the pointer just fine, as long as you don't read
past the end:

	int     a[0];
	int     *p, *end;

	p =3D a;
	end =3D a + _Countof(a);

	while (p < end)
		do_stuff(p);

The above is valid in compilers that support arrays of zero elements,
but is (was) not valid with NULL.

And third, a pointer to the first element of an array of zero elements
is *not* past the end; it is the same as a pointer one after the last
element, and thus it's perfectly valid to hold it.

> We could also argue that this should be implementation-defined
> behavior, or even unspecified behavior.

No, this is what we had in C17, and UB is much better than that.
C17 destroyed the standard definition of realloc(p,0), even though it
was supposed to be a no-op change.  To some degree, I'm happy that that
changed, as that brought us to now, where it is obvious that the only
way forward is to go back to the traditional BSD specification.

>  However, the UBSG's current
> arsenal for slaying earthly demons has traditionally not extended to
> changing what platforms do, as n3752 does. So IMO the UBSG should
> stand back and wait for n3752 to be resolved.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>

--2iv6q3yuuqe2v5qf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmleEIYACgkQ64mZXMKQ
wqkYTQ//YNLX0r/+uQ6HoPjX9CVlaVxvNTOJrKjHI7LG0PWoVDsSY3Y6xyo5yGAu
JrqspZFapWN/NcEmYaYh6r0TJsE95dYh7x3GSPPfQHpAMtp1Fw6nKOsncwfSWQXD
xdTFtr5bhbbBdKq3fKleVcxc6xbdNAQHuVu+nurFJ2Rh1Jq07ctfpr8LGsFpHHqq
/SmpjtGuo/T75LP+ZPa9gx1VlrNP0sIVjiY9moid7SSN0stYfYtNiN5urlT+1MtM
i3I21JDwg8yhDE3OoO/Lb1VE8leUocl1ireTb0CxxQbnCoO8vgNl+dnQWmBtIEyj
14h8/em6v0uoH2sKL6q4t6wz6Ss/pbygLh/7APQk0vQGoAMOEcdqhEQgllkhMVGb
ZJUrTGGqcKLY3DUnfgflF7FUwBEEHrXHrJohqo9RNfTiqZhhqOMDwTto9RqITGhx
uffvfYVgS+z40mwdL1cZ0XHHYa2bCS4Doz8tJ0d9VGD4rPwJx5PNoPZ/9LQlglS5
ji/E0eDV6togdvAdBb9kFev+DZOWEFAZTD2ZTo+SOQGfeE7Mq1ounr1FUqqVV0HN
YxW0MmP1BQgnJUwiiRuCOrKKx4AKbPB8bSuJn7Suj4GYku9jrPsnTuEEYz8HrLnK
QiZoRGuIvXCuu4DUbij6Qb7Xmd9KIMzjTc6SnSE/4HcB8G5x0y8=
=Ec+i
-----END PGP SIGNATURE-----

--2iv6q3yuuqe2v5qf--

