Return-Path: <linux-man+bounces-4819-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 17D72D38EA0
	for <lists+linux-man@lfdr.de>; Sat, 17 Jan 2026 14:16:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D02E3301AD0D
	for <lists+linux-man@lfdr.de>; Sat, 17 Jan 2026 13:16:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31E821C6B4;
	Sat, 17 Jan 2026 13:16:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fl0HkssC"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E93CA849C
	for <linux-man@vger.kernel.org>; Sat, 17 Jan 2026 13:16:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768655767; cv=none; b=YpYrVgI9jV8J86vfP1/oucB0/eh7CWBv/PfvBsoSk+MkM7IK0xw/voL8nhLxb7ELI+UKvk6UGKg8I0ay9H6A5Zz01/HvUMcqnt+gaCMG3oABNwa0VCWvIxAKMFe7sJnGJJAdqAu9kX0lukkhUVYehPrlIi0PMVjfy7Yz78aHaS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768655767; c=relaxed/simple;
	bh=TPx68TziId2+vo3sra7oxVh1DoiXHRQ/C5ZwmWm0AXE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hzM6mbCB0v8/QoRzVelky/cZmxxdRWI5fRfW6mmXGY7ErDGOQzwjYkWQgoaks+Dji2oQ7g45akIMXzVSuUxIfU2jfjI6EAL448qXBSxXrkzD/y5pDKzhzNjWNT3XYgtd9rL3m3iZtJNiMaxlL0o5MxHwELUJ9NYI9285PXwAbn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fl0HkssC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 807D8C4CEF7;
	Sat, 17 Jan 2026 13:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768655766;
	bh=TPx68TziId2+vo3sra7oxVh1DoiXHRQ/C5ZwmWm0AXE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Fl0HkssCEGDyr+2C6IbeRQ7WKC5pjyPrqOs4WEOKxIY0c2MHkW0o/WSFuMLEF2I71
	 gEp6SGCd07+U+Z0vSB51bur9ymUotVZcTCA32q1nm39YQpFDQETQkDK5at0U+WhZ4Q
	 O55ohCXxQ8DgVnOt384Ky/dKQJAZ+4qj7b+kCKip3CaU6V7CZmw+QAd1frJ23aNrh7
	 xq1YbgM9f3y/b6z//wKZCFmswrJTMKnZNGVfhaIsKGj/ytbQgXsu9gCVYAA18QLf7x
	 3ONvlccKA4CaT+e96kI1R1yuIkoLsjorgLN0dbFw+LjQFiTNJs2mwwlHOmNhX7FbUk
	 VVy0uzMifSl0Q==
Date: Sat, 17 Jan 2026 14:16:03 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>, 
	=?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man <linux-man@vger.kernel.org>, 
	"G. Branden Robinson" <branden@debian.org>
Subject: Re: Chronological order of BSD, SV, and POSIX.1
Message-ID: <aWuHPHi-08JB8UAS@devuan>
References: <aWtmabtT1dFTBCI8@McDaDebianPC>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fittoxyct32oamww"
Content-Disposition: inline
In-Reply-To: <aWtmabtT1dFTBCI8@McDaDebianPC>


--fittoxyct32oamww
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>, 
	=?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man <linux-man@vger.kernel.org>, 
	"G. Branden Robinson" <branden@debian.org>
Subject: Re: Chronological order of BSD, SV, and POSIX.1
Message-ID: <aWuHPHi-08JB8UAS@devuan>
References: <aWtmabtT1dFTBCI8@McDaDebianPC>
MIME-Version: 1.0
In-Reply-To: <aWtmabtT1dFTBCI8@McDaDebianPC>

[CC +=3D =D0=BD=D0=B0=D0=B1, Branden]

On Sat, Jan 17, 2026 at 10:37:36AM +0000, Seth McDonald wrote:
> Hi Alex,

Hi Seth, =D0=BD=D0=B0=D0=B1,

> In my next patch set (for system calls), I've generally been ordering
> POSIX.1-1988/1990 relative to BSD and SV according to their release
> years as specified in standards(7).  Which gives the following relative
> ordering between SV and POSIX.1:
>=20
> SVr1
> SVr2
> SVr3
> 	POSIX.1-1988
> SVr4
> 	POSIX.1-1990
> SVID 4
>=20
> And the following relative ordering between BSD and POSIX.1:
>=20
> 3BSD
> 4BSD
> 4.1BSD
> 4.2BSD
> 4.3BSD
> 	POSIX.1-1988
> 	POSIX.1-1990
> 4.4BSD

That seems to match standards(7).

There are more SV standards than those documented in standards.  I think
we should document these in standards(7):

SVID Issue 2 (1986):
<https://bitsavers.org/pdf/att/unix/SVID/System_V_Interface_Definition_Issu=
e_2_Volume_1_1986.pdf>

SVID Issue 3 (1991):
<https://archive.org/details/systemvinterface0001unse>

I wonder how these influenced early POSIX and ANSI C.  I know that some
SVID heavily influenced ANSI C, at least regarding allocation functions.
<https://nabijaczleweli.xyz/content/blogn_t/017-malloc0.html>

Also, I suspect SVID eventually was absorbed by POSIX.  POSIX.1-2001 is
known as "Issue 6", and it sometimes refers to earlier issues, and I
don't know if some of those issues refer to SVID or early POSIX
versions.  It would be good to document that under standards(7) if we
learn it.

> Because many of the system calls I updated listed SVr4, and some listed
> 4.4BSD, I want to check that it makes sense to list them after
> POSIX.1-1988.  In case, for example, SVr4 is known to have influenced
> POSIX.1-1988 prior to being officially released.

I don't know much of this.  I've CCed =D0=BD=D0=B0=D0=B1, who I suspect wil=
l be able
to confirm much of this, and fill the gaps.  Also Branden might know
since he's subscribed to the TUHS mailing list.  (You may find TUHS
interesting, if you're into old standards.  See <https://www.tuhs.org/>.)

=D0=BD=D0=B0=D0=B1, would you mind having a look at standards(7) and fill t=
he gaps?
Links to standards would also be very useful!  :-)

> (I've also taken your recommendation and am trying out mutt(1), starting
> with this email.  It's certainly a learning curve, but I'm slowly
> getting there!)

:)


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>

--fittoxyct32oamww
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlri40ACgkQ64mZXMKQ
wqk+eg/+Kv5zTA9mxhRKsa11ifVmxPmkB/9+fxjOR0sX3j4WtsbEeDPwNiKG0o6M
wrxHdch2dR7cVnswt77i5czPfwNCkViPjIU1RdQC+p4Qp+XHhaoXB1P3HZflyjnj
bGJv4yRH6rFWravGgWG8a4Yok4bPH7Z2c6e+6mUj04OkYZW1xq+O3el65PoDs/vK
zDBQ4P3/KA9YYDfrnM8ffJf9+fm6iEN66csadtgp50qCG9JMXPiJtrwGqBHpQkdc
bCb1p+3qFaDOLyM3Gu90vQxK39WDDxzzKSUi9/NBvH5VildeGbmFIxvE2pEiBiVx
6++V2sTrHlIiScGHHMxWQtARJrxjtCP10eh+2qDklKDu1qyucmUvJ254HBPC8mlw
RLJRMCKz9VbRle/tFzGIrKD1gNV4Mi5sY9AzrEk8Qofn+b5EQMadq5VwmHQjy6/v
omwtMbii8LklG+/qp001IRrqWZJczyME/kLVsG4fgH1Yi1EtEz7E1g/RKa3S7HOx
/KBx5o3k0IIC9YB2Hux0VCxYlP16UNY7rrNkl9YuRK4GtywfL5ECX0ARG8UqS8Lu
Gwz5WGVCKGUbmqUsNodTShT5y+Borp15Ec8gvC0ZHHu5gjWnmOU3iDX3jHZEpz1+
p1DIuAEFVQZaVCBERVOL0mqWsXfTLl6QfJVIvZNmrqoWDaXLrT4=
=NPz+
-----END PGP SIGNATURE-----

--fittoxyct32oamww--

