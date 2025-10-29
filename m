Return-Path: <linux-man+bounces-4222-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C2E02C19E8F
	for <lists+linux-man@lfdr.de>; Wed, 29 Oct 2025 11:59:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id EB0644E3CFE
	for <lists+linux-man@lfdr.de>; Wed, 29 Oct 2025 10:58:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61383326D4A;
	Wed, 29 Oct 2025 10:58:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WK7jQe5f"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1F82F6937
	for <linux-man@vger.kernel.org>; Wed, 29 Oct 2025 10:58:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761735505; cv=none; b=IWjENPtz5X2vx1IPzPUTEG7T9w39escDzaVkXtefNAmzIH6kfX7kcPTLv+MRbXiNPcGg77c/NrXqafHD0KeTzLe7QEEJ6mzFoYw0p9GPSzawrl5Wp24amocoGE921HQ+aVzeIzRLuXpUypB8w9ElfxG27xBjIFWvFyBJK6sy9fk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761735505; c=relaxed/simple;
	bh=Hf/dwv00zSoePtskFPb3K7d0goErjqTOoaUm2tLuWYU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ktyLv+YXJKlNpVyYNS2rlWoFzB5h84Qpn/yCk0PYUfKfB7WC5pTMK+zcbm7vqcL6cRmoiD170A9xOMo2xmgd6FrJjQWVIJGbukRLoc3SUL7fCUAqH2Q83pmOAAkaMwDIkg3BERVfYqTn05xUZRYm0XlfdsN9GJv5X3MC8KQMAhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WK7jQe5f; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9CE2CC4CEFF;
	Wed, 29 Oct 2025 10:58:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761735504;
	bh=Hf/dwv00zSoePtskFPb3K7d0goErjqTOoaUm2tLuWYU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WK7jQe5f5/0M/M7+gsDKHZmn8/EJfIRHxNikltyRUsoyimx6SvkH3yi3+Sag3/RKt
	 9G6zQtlT9JYXEjT0PcZ3vW8/bFnjuhFfr+97BpjV33UAWT4rXoFxTzi67c3eY80CvS
	 pY4j8LcZ6xE0gIcvKrekCoSuvPgoUbewXiyFHXy6vdUDwUEI23gR1Nm8C/KN3BNwEE
	 lwzKLxg/g6wZ6YwtjDIfmLIpkuisFqSfHBaPNGOl69ceS50bjO3XsBO8NLIk5t/v+r
	 BNyNeLE+2sCjwm43hLnzhdlEYyhc1vGdholi8LRs5Y3HolaRj3NXs09xWu/Ab6CscN
	 dw24ke92qf2kA==
Date: Wed, 29 Oct 2025 11:58:21 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>, 
	linux-man@vger.kernel.org, "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: Re: [PATCH v2 3/5] alloca.3: clarify reasoning for no error return
 in BUGS
Message-ID: <gweobuilxwbb3llrq7lcwyvlnsobqfoqo2enu52sravwznof6f@gwlezhulonwj>
References: <ed9ad00910f264f8f9ecd266d398522077f4548f.1629752426.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
 <2001f398efa7415df60019cd29164d7cfe87ae04.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
 <4c862994-1fb7-7c45-8f0e-9a3bb8d76e13@gmail.com>
 <20251029084200.umuk2hbescz3txgn@illithid>
 <n7qbvcugequfez7depunqaxhz7wag3uid2khobz3wdzik7tytu@mta4olxxaxvr>
 <20251029103012.5tswxzup6yyhmi76@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="do6bxpxlfqrpfstg"
Content-Disposition: inline
In-Reply-To: <20251029103012.5tswxzup6yyhmi76@illithid>


--do6bxpxlfqrpfstg
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>, 
	linux-man@vger.kernel.org, "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: Re: [PATCH v2 3/5] alloca.3: clarify reasoning for no error return
 in BUGS
Message-ID: <gweobuilxwbb3llrq7lcwyvlnsobqfoqo2enu52sravwznof6f@gwlezhulonwj>
References: <ed9ad00910f264f8f9ecd266d398522077f4548f.1629752426.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
 <2001f398efa7415df60019cd29164d7cfe87ae04.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
 <4c862994-1fb7-7c45-8f0e-9a3bb8d76e13@gmail.com>
 <20251029084200.umuk2hbescz3txgn@illithid>
 <n7qbvcugequfez7depunqaxhz7wag3uid2khobz3wdzik7tytu@mta4olxxaxvr>
 <20251029103012.5tswxzup6yyhmi76@illithid>
MIME-Version: 1.0
In-Reply-To: <20251029103012.5tswxzup6yyhmi76@illithid>

On Wed, Oct 29, 2025 at 05:30:12AM -0500, G. Branden Robinson wrote:
> Hi Alex,

Hi Branden,

> At 2025-10-29T11:15:13+0100, Alejandro Colomar wrote:
> > On Wed, Oct 29, 2025 at 03:42:00AM -0500, G. Branden Robinson wrote:
> > > Neither wolverines nor beavers have yet self-domesticated.
> > > Neither C nor C++ are good language choices for novice programmers.
> >=20
> > C is quite simple, and as a consequence, a great choice for a novice
> > programmer, IMO.  :)
>=20
> I should have known I couldn't slip that example past you.  ;-)

:-)

> > > alloca() does not query the system for available stack memory, and
> > > does not fall back to using the heap if stack storage is
> > > unavailable.  It therefore cannot indicate an error if the
> > > allocation fails.  If it does, the system generates a SIGSEGV
> > > signal.
> >=20
> > Is this last sentence a guarantee?  Can something different ever
> > occur?
>=20
> I don't know the Linux kernel well enough to say.

Hmmm, then I'll reuse the old wording for that, which said it was
likely.

>  I don't know why we
> still name signals after hardware traps on the PDP-11 and VAX.  Well, I
> do, but I'm not happy about it.  It's yet another case of claiming
> portability wins by rearchitecting the world to look like old hardware.
>=20
> https://queue.acm.org/detail.cfm?id=3D3212479
>=20
> > Here's somethingvery similar, with s/does/fails/ in the last sentence.
>=20
> Yes, that's an improvement on my suggested wording.  It keeps "does"
> from working as a "pro-verb" (cf. "pronoun"); the reader does not have
> to scan backward in the sentence to find out what action is referred to.

I've now also replaced 'If it fails' by 'If the allocation fails', to
avoid confusing programmers to think that 'it' may refer to the
function (that is, to think that the function can somehow return NULL).
That would conflist with the previous sentence, so it's not necessary,
but I think this is more readable by being more explicit.

	Author: Alejandro Colomar <alx@kernel.org>
	Date:   Wed Oct 29 11:52:52 2025 +0100

	    man/man3/alloca.3: wfix
	   =20
	    Reported-by: Alejandro Colomar <alx@kernel.org>
	    Cc: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
	    Suggested-by: "G. Branden Robinson" <branden@debian.org>
	    Co-authored-by: "G. Branden Robinson" <branden@debian.org>
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

	diff --git a/man/man3/alloca.3 b/man/man3/alloca.3
	index 52b87a8a3..367de81d0 100644
	--- a/man/man3/alloca.3
	+++ b/man/man3/alloca.3
	@@ -111,11 +111,14 @@ .SH NOTES
	 making them unfit for implementing functionality like
	 .BR strdupa (3).
	 .SH BUGS
	-Due to the nature of the stack, it is impossible to check if the allocati=
on
	-would overflow the space available, and, hence, neither is indicating an =
error.
	-(However, the program is likely to receive a
	+.BR alloca ()
	+does not query the system for available stack memory,
	+and does not fall back to using heap if stack storage is unavailable.
	+It therefore cannot indicate an error if the allocation fails.
	+If the allocation fails,
	+the program is likely to receive a
	 .B SIGSEGV
	-signal if it attempts to access unavailable space.)
	+signal.
	 .P
	 On many systems
	 .BR alloca ()


Would you mind signing the patch?


Have a lovely day!
Alex

>=20
> Regards,
> Branden



--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--do6bxpxlfqrpfstg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmkB800ACgkQ64mZXMKQ
wqmQ+A/+M3crQ1BpKJ8WHcFngWpqvg6wo22UM/YSIx2c1IPwqbpinVbWC/DNl6xO
YxWK+5cYxbINCSvLv63XIWVFXPZ9BgJAOU4+IRTlv3i15WV0TDOzhNqiw9RjMZEr
uVg42BQB4r8V9Q2hyBTaHwmL6pmfO9MRUWJDJPjZvX4NYeTFDT2NKmb22qMPfC2Y
BviB5iH3HVK4JWUggYi861+J7BK3xC6IC3Ec/jlS9iTt5hk2tAtX6XtW1/4keo42
zGxM0JQneKi8oAYGQQW/7HjaDTgOA28Ty+ei/jYI5GFk46KNZkiT6WxmkjVQj2AQ
bT5zhm7vMnau7dS8U8NYmh8L4P4PYCEnFw/uj7GF06IHRpbBmYuo0SRDzVxWbcWI
dmI2anoYgsoC35C3OsWLS6mncCvUZ1/BxbcSARxBOJQSVgG07xXVvt+SXPkEBz7X
wbK+t9Gr4YllWHwMVTbM/pfZE0bwZY9q1tYbK+P/6w1py2OOrPAKqP7H5/sbv2DY
renJqL+H9rqGhU0V05iU6Rv4277kaWGV9NQweU9P3IkuKcQ1jHKH94v2GVtNWY2m
enMhi5mZoeUBRtqZe9WJHpxsMAFcIy1j/E5tpUnFcxlXpAtm2OOU7zyaEBkFAN3n
tCp2WI5V7qDaSiDKG9j+y69bC6KvFHc2zCot7v4R5lv51y6UDFE=
=RWtP
-----END PGP SIGNATURE-----

--do6bxpxlfqrpfstg--

