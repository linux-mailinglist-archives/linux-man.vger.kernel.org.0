Return-Path: <linux-man+bounces-4218-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A714C19A03
	for <lists+linux-man@lfdr.de>; Wed, 29 Oct 2025 11:15:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 83C3934877B
	for <lists+linux-man@lfdr.de>; Wed, 29 Oct 2025 10:15:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CB5C2E040E;
	Wed, 29 Oct 2025 10:15:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lEJwuS6L"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C53F2D7394
	for <linux-man@vger.kernel.org>; Wed, 29 Oct 2025 10:15:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761732918; cv=none; b=LXDoJ4qPGUo67WI9ZSoV6ppUHwyHrmnq0P5yzef0HEiS+BmUvtLoXSKjbdQAm/b67oYaJlt+E32zovvsSxeu4GGkXu9vx/lld076GrjXi4pVzV4EKLnIlAq2MCYAwh/dJBoSi6Xt+IuUx+6wJ6UzgEeeEdj/aH0Mxdureso8tKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761732918; c=relaxed/simple;
	bh=4RUQKodtUat07DlC8oSQmPtkTuv0P+EeY9c46Rv4T78=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cDK8+uMWlzwh+kylNr7WrzgJB4fW8evQn+PCBWFF8HE3eyknq5tylnFaYIC6Ba6yEWMaQMSLMFSb8k8qPGSfbStJZC/RB0zI9NdjIcRawwwRapQ3uEmsSu+8daWO0mm0h0vMwWBQqeKlDyC6bm7Cx2YZDWAvnO7lyMqKBGaQQno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lEJwuS6L; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0808C4CEF7;
	Wed, 29 Oct 2025 10:15:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761732916;
	bh=4RUQKodtUat07DlC8oSQmPtkTuv0P+EeY9c46Rv4T78=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lEJwuS6Luq07+a9N+O44pWpr5TJ1BxSm4Ifz15u5+auEwMBPDXMWE7zCtFJvVm4Ke
	 xIHW6HmX+5ikHnIuRmQ2td7ZBZpAC4fYRfnwQ6k9lmYQ56gTNZCc1YEvgjtfIlSUhq
	 /Zp0hmSPzSArUJ33Kke8DWf07VAYwwXGiWT9B9tRCA6anMhIWTO9NdLTLovgYUdO2h
	 ooh+ZIqUMp/T2iO6axd/CklLDOpnWPr3n4YfYL2svAtBOR7pgH1kdTDJedDyEAlgyF
	 TC24ajO3s4tpWgvW6aS1I94weJKfs1elyw4tWFCS3VREl5mRpAVsh0s6g/FYbEtHKo
	 qdMZMy9qEt5jg==
Date: Wed, 29 Oct 2025 11:15:13 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>, 
	linux-man@vger.kernel.org, "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: Re: [PATCH v2 3/5] alloca.3: clarify reasoning for no error return
 in BUGS
Message-ID: <n7qbvcugequfez7depunqaxhz7wag3uid2khobz3wdzik7tytu@mta4olxxaxvr>
References: <ed9ad00910f264f8f9ecd266d398522077f4548f.1629752426.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
 <2001f398efa7415df60019cd29164d7cfe87ae04.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
 <4c862994-1fb7-7c45-8f0e-9a3bb8d76e13@gmail.com>
 <20251029084200.umuk2hbescz3txgn@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mmzxbcnj3q3k5aim"
Content-Disposition: inline
In-Reply-To: <20251029084200.umuk2hbescz3txgn@illithid>


--mmzxbcnj3q3k5aim
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>, 
	linux-man@vger.kernel.org, "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: Re: [PATCH v2 3/5] alloca.3: clarify reasoning for no error return
 in BUGS
Message-ID: <n7qbvcugequfez7depunqaxhz7wag3uid2khobz3wdzik7tytu@mta4olxxaxvr>
References: <ed9ad00910f264f8f9ecd266d398522077f4548f.1629752426.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
 <2001f398efa7415df60019cd29164d7cfe87ae04.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
 <4c862994-1fb7-7c45-8f0e-9a3bb8d76e13@gmail.com>
 <20251029084200.umuk2hbescz3txgn@illithid>
MIME-Version: 1.0
In-Reply-To: <20251029084200.umuk2hbescz3txgn@illithid>

Hi Branden,

On Wed, Oct 29, 2025 at 03:42:00AM -0500, G. Branden Robinson wrote:
> Hi Alex,
>=20
> At 2021-09-15T21:42:26+0200, Alejandro Colomar (man-pages) wrote:
> > On 9/14/21 2:41 PM, =D0=BD=D0=B0=D0=B1 wrote:
> > >   .SH BUGS
> > > -There is no error indication if the stack frame cannot be extended.
> > > -(However, after a failed allocation, the program is likely to receiv=
e a
> > > +Due to the nature of the stack, it is impossible to check if the all=
ocation
> > > +would overflow the space available, and, hence, neither is indicatin=
g an error.
> >=20
> > I'm not sure this use of neither (without a preceding "not") is valid
> > English.  Is it?
>=20
> The sentence is confusingly cast, but the problem is not as simple as
> you describe.  It is common in English to use "neither" without "not"
> preceding or following.
>=20
> Neither wolverines nor beavers have yet self-domesticated.
> Neither C nor C++ are good language choices for novice programmers.

C is quite simple, and as a consequence, a great choice for a novice
programmer, IMO.  :)

> Maybe you were expecting something like this wording:
>=20
> Due to the nature of the stack, checking if the allocation would
> overflow the space available is not possible, and, hence, neither is
> indicating an error.
>=20
> That's more grammatically conventional.  However, I would recast even
> more aggressively, as I find "due to the nature of the stack" hand-wavy.
>=20
> I suggest something like:
>=20
> alloca() does not query the system for available stack memory, and does
> not fall back to using the heap if stack storage is unavailable.  It
> therefore cannot indicate an error if the allocation fails.  If it does,
> the system generates a SIGSEGV signal.

Is this last sentence a guarantee?  Can something different ever occur?

Here's somethingvery similar, with s/does/fails/ in the last sentence.

	diff --git i/man/man3/alloca.3 w/man/man3/alloca.3
	index 52b87a8a3..4f4a87201 100644
	--- i/man/man3/alloca.3
	+++ w/man/man3/alloca.3
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
	+If it fails,
	+the system generates a
	 .B SIGSEGV
	-signal if it attempts to access unavailable space.)
	+signal.
	 .P
	 On many systems
	 .BR alloca ()


Have a lovely day!
Alex

> (I checked getrlimit(2) before composing that.)
>=20
> Regards,
> Branden



--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--mmzxbcnj3q3k5aim
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmkB6SoACgkQ64mZXMKQ
wql2Eg//THlR9kvyixmSDpuF1F3smzEvxRE9bn1PX//kV0vjR2eX89u+OonaUmyM
EzmeQ0OblSAiJhQFm9/Eb+PM6SNfY/++a0UBp6BZ3FMYAwkU3xrBjOe27ervgRb9
+UG1OAwlGidurheg4v9Pm5SPpurNKftFPzz9/P+E9Slb9marJyHpHkAqCaNlPTqD
8PtU6iBw3f9kBOJtoFFJaujtagcMSmmnqifvRE7C7gn6NJpwdR28rkJVRJylN08a
nHBbLVeJ+82d7E/MFyyq4mzuyEPa/eKNxaUtn11JqvsjEQuRN24+MKBL2MALWuhp
UXQ3pRbWPApj8ZqYg6B8qPHy+nO09SRKJCghQQUHBhb0FfOw+3I743DZGGXdo63X
w5vD89XAxVhBmOdGIC1zY+ZLs408zVkRGQPaYxdQdoef0sZKoLpQ9GtTBQiegFMi
lHluAIkPAnzboMscxMITXA5nSyJhmCsi4c6pBZZq+Gsr88LPnaeM688jlpZz2eFl
DiW+txErEn0JlnVuvlQ7aYZRqlEtevxRHYrU6zBklVUVOOKspun7nTWMeLKG0qgh
qRZNWABLarZ9fSBiIgi9NPBF26x8Z8zGfrpiurEgFxnGq07EP1vNNeLFkrZy2r0V
SVvQbFukmci1WvBDyFLsW/dRIxmrolkMffOGtlqoNqnGPmVtSGY=
=aQli
-----END PGP SIGNATURE-----

--mmzxbcnj3q3k5aim--

