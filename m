Return-Path: <linux-man+bounces-1380-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B3F92B33A
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 11:08:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5075D1C224DC
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 09:08:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83DDC12D75A;
	Tue,  9 Jul 2024 09:08:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LJ45EN0+"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415562AF18
	for <linux-man@vger.kernel.org>; Tue,  9 Jul 2024 09:08:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720516084; cv=none; b=rG03UsbBbD5fy834S4s5gfzjzvskPs8xEcZSY7hapiHcYjN01z/3zOivi9cQMPJjRCq7fkzt1j3b4n8b0wabYJIEFzu6KXiQBkPn9or3jCtKShxI/BZDRhSvpl8qG8izWQjH7zFbXNNqwCLbly1oK/tYXfMLXGOplBphq5AcxiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720516084; c=relaxed/simple;
	bh=0pzwq+ZEAYFRZ7AsFmflb5COk48OEP0ihfxhL5YnF8I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZvvDWZElvVgIXpDap2TAc26exDq7eM+b3U5XXchZEJefpEhF+c3IIYf6ap9l6l3tAmcK7vUpQBjPwLE9eEcOy4CBFQoC/BNpGxugUPgmrX485y483IUTELkapCI4h+00aZY0Wzd6G1KBy6V12+kk9zaHsgfwzDYf6Z9a4n6noz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LJ45EN0+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3AF0AC3277B;
	Tue,  9 Jul 2024 09:08:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720516083;
	bh=0pzwq+ZEAYFRZ7AsFmflb5COk48OEP0ihfxhL5YnF8I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LJ45EN0+BJ+ulODNjKQZSpT1ikKKFAVEukAsH3z8rq2hP/WANUH4P8NHxI5+12RTX
	 kRBJcmwusQam5N0+AKK8s0MM/ch8Qz+b5rcIpwP2ap62dRuvRYAV4pPFfrGp2zYNoZ
	 xroecodtJKDgn7Z+oSu7Klg9gCKWkIBsRoBoMqRrPowIx1qbxeQTZuntBMyH1RTD39
	 AVIQdi+aTwNcguVoXAf+3/SrKLpHSdZPm9c1bU+ZxbavQ6QTmhTgveSLs7hNEiiRrb
	 QxDz+LHxdmDkNk/xnjRa0h3IgXloF8zMqOlHUjJFE1kmaywqR69v6HdsoULKRQdpSg
	 Vl18M7lG02E3g==
Date: Tue, 9 Jul 2024 11:07:59 +0200
From: Alejandro Colomar <alx@kernel.org>
To: David Malcolm <dmalcolm@redhat.com>
Cc: Paul Eggert <eggert@cs.ucla.edu>, gcc@gcc.gnu.org, 
	linux-man@vger.kernel.org, xry111@xry111.site, jakub@redhat.com, uecker@tugraz.at, 
	lh_mouse@126.com, jwakely.gcc@gmail.com, Richard.Earnshaw@arm.com, sam@gentoo.org, 
	ben.boeckel@kitware.com, heiko.eissfeldt@siemens.com, libc-alpha@sourceware.org
Subject: Re: WG14 paper for removing restrict from nptr in strtol(3)
Message-ID: <rh6sttlv3mpjgiktqcje5we7io5pnd24i7nt5yxi45nxjmcoee@mhuv3rq34mzz>
References: <20240705130249.14116-2-alx@kernel.org>
 <xjoazfkcloggmceefxusjusbksfslgpdpoph4ixdtp4kbu4kua@vdh73ba7k2zq>
 <37a1f7fa-eac5-440a-a3e9-08125ee7ec81@cs.ucla.edu>
 <tuosvljyewh6oxpjqwgc6jbs7caknva572zij2u6hr4xwphlt2@kxz4xcdghaxl>
 <e2d7b36d5716f1799ba43d1373a0a2d65cc7cb16.camel@redhat.com>
 <flrf5shec7kc466bze35ohi5u2r7svf3nky5dvpnih2djcybo3@f5yvxiwfivos>
 <bf77f96425a17ee62f31ca760fb6487e3ede3685.camel@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yoexjliukvbznmsn"
Content-Disposition: inline
In-Reply-To: <bf77f96425a17ee62f31ca760fb6487e3ede3685.camel@redhat.com>


--yoexjliukvbznmsn
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: David Malcolm <dmalcolm@redhat.com>
Cc: Paul Eggert <eggert@cs.ucla.edu>, gcc@gcc.gnu.org, 
	linux-man@vger.kernel.org, xry111@xry111.site, jakub@redhat.com, uecker@tugraz.at, 
	lh_mouse@126.com, jwakely.gcc@gmail.com, Richard.Earnshaw@arm.com, sam@gentoo.org, 
	ben.boeckel@kitware.com, heiko.eissfeldt@siemens.com, libc-alpha@sourceware.org
Subject: Re: WG14 paper for removing restrict from nptr in strtol(3)
References: <20240705130249.14116-2-alx@kernel.org>
 <xjoazfkcloggmceefxusjusbksfslgpdpoph4ixdtp4kbu4kua@vdh73ba7k2zq>
 <37a1f7fa-eac5-440a-a3e9-08125ee7ec81@cs.ucla.edu>
 <tuosvljyewh6oxpjqwgc6jbs7caknva572zij2u6hr4xwphlt2@kxz4xcdghaxl>
 <e2d7b36d5716f1799ba43d1373a0a2d65cc7cb16.camel@redhat.com>
 <flrf5shec7kc466bze35ohi5u2r7svf3nky5dvpnih2djcybo3@f5yvxiwfivos>
 <bf77f96425a17ee62f31ca760fb6487e3ede3685.camel@redhat.com>
MIME-Version: 1.0
In-Reply-To: <bf77f96425a17ee62f31ca760fb6487e3ede3685.camel@redhat.com>

Hi Dave,

On Mon, Jul 08, 2024 at 06:48:51PM GMT, David Malcolm wrote:
> > restrict, as of the formal definition of ISO C is useless crap.=C2=A0 T=
he
> > more I read it, the more I agree.
>=20
> Please note that "useless crap" was your wording, not mine.

Yup.  :)

>=20
> >=20
> > restrict, as of what -Wrestrict warns about, seems a reasonable
> > thing.
> >=20
> > How about a [[gnu::restrict()]] attribute, similar to
> > [[gnu::access()]],
> > which is simpler than the qualifier?=C2=A0 Since restrict is only
> > meaningful
> > in function boundaries, it would make sense to have a function
> > attribute.=C2=A0 We don't want a qualifier that must follow discarding
> > rules.
>=20
> If it doesn't have the same meaning as "restrict" then perhaps call the
> proposed attribute something other than "restrict"?

Yup, I was thinking that maybe noalias is a better name.

>=20
> That said, I don't have strong opinions on any of this, except to note
> that I have more than enough *other* work on improvements to GCC's
> static analyzer and usability to keep me busy, so getting sucked into
> discussion/implementation on 'restrict' is something I want to avoid,
> and -Wanalyzer-overlapping-buffers is getting the job done for me at
> the moment.
>=20
> [...snip...]
>=20
> Hope this is constructive; sorry again if I missed anything due to only
> skimming the thread

It is.  I don't want you to work on this if you don't have time or
interest.  Just having the idea floating aroud, and if somebody finds
time to have a look at it in the next decade, maybe try it.  :-)

Does that make sense?

Cheers,
Alex

>=20
> Dave
>=20
>=20

--=20
<https://www.alejandro-colomar.es/>

--yoexjliukvbznmsn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaM/e4ACgkQnowa+77/
2zL7xw/8Do3sPxP5QAG9+E6YzyBbosrnfYULZUnSQjfKSZXfNVoeAPyAQ4ILKt08
/VcHTKpJW+KYli5/5t5ktr90brc17yR5ASmm8mDAXn+alvlGbV3oomEA0Z7hT1Ph
SA26MuJtAP419H5rJBFphADalwoqhmQGb5e0HfOxHXcsdHRAYnl6Qi38LkTzCxjZ
HJrwJYVPTbnbzTjHmIL3slEArNdpZGxLOVTSpdglx+Klw4EkR81896lA4ouxphDd
sw8lLUhBym2eetMLjDcoUGcvTUxed8sJv7E51cXWivnu+g2zr3tXmk0jengcRZuI
C+OpOcjNa4ykP/H/UKPcI0KFREhN/RjTAphACvSIUnQPu6n0dI5tgK7pGZL4OUey
7KvPezzY4Oa/jYCHEGhsbFNJvBU5N5ainXJjzSR2A8c9/gMNFsn4ghEOGIqZuvSP
OnTqMHzruWHmx0rQRSiULGrXC8ba81meFKkXylBnyHqIT26p9D01MfPcSe1WWUlq
OHusRKPaicb/U/SGBZyOJnMIrEQYhCnwBYp9kWw8PrqVuTBRIGTX9hCmUmEud7ky
KHPBtTtgS7yvHx2nnrdMcNxyr01p7opk5V7ilgtUsD/sOhq1k9s2LRvMDO5165SW
/BObuXWaMTjfhVMeGRimIYCrUBZAtjnCHB4K/9pI/VbBP8+ob+k=
=Wysj
-----END PGP SIGNATURE-----

--yoexjliukvbznmsn--

