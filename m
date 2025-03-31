Return-Path: <linux-man+bounces-2690-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD83A7611E
	for <lists+linux-man@lfdr.de>; Mon, 31 Mar 2025 10:15:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A9020166AB2
	for <lists+linux-man@lfdr.de>; Mon, 31 Mar 2025 08:15:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E40B1D86FF;
	Mon, 31 Mar 2025 08:15:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cmNV4Jeh"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B58531D63F7
	for <linux-man@vger.kernel.org>; Mon, 31 Mar 2025 08:15:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743408912; cv=none; b=F0AAEm0XbCWi9OE1O6RpG0vEHPhpu7+hHzsTzZXUMWcwVcA3Myzo4GE4io+g3qpuppaoxdXxvz4T35UubSrRjdB32Qbcl6PUD8byiAvN8y2ggb7V/l0U5WBsj8N2x8ZCCJGOQYIy35NEkYQRoOa5xPaYqL+rrZwOZ/ICeDwgXsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743408912; c=relaxed/simple;
	bh=T54vyibGMWQMGm33LR0f/jd7WdwMIJGwgmpqHXQFbGY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eet3LxNBxts5Crgnfhpd7296YQKoh+ut438+V6Doyp14BUXnyI4iEjpwIN3sE/lvAZDt9AZVSbC3fgLbo+cc1lt5eFZrpRVROffyktapy4PEM6jSwUwaE1ard4MVi29Sf2Rp14i0XPVIjcIw21c0fh0alHbNqTW+n3h6AJSGN+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cmNV4Jeh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1353BC4CEE3;
	Mon, 31 Mar 2025 08:15:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743408912;
	bh=T54vyibGMWQMGm33LR0f/jd7WdwMIJGwgmpqHXQFbGY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cmNV4JehiIXcS12O+28qz3Ue3IF70zEGQ3bpFo6DBPb84HL7gGgcIlzr+X5WTa+6U
	 w2p41B26TIIxMAFAMpsU1rUwUNMHyeEodoQJf++sTjv4sTA9t8WOs0M6mcp5ozjrWR
	 m+xgA0bBVU6kKD+X9osaV5P9+DadQXX90H7DAqGDuAj9Xye24h9HEDxiOgyTWivsey
	 cVWxOvZMiBvmiKUWrvJp1AIbWb2Rvm7gt5se2guCXetjzRRHyGdNC39J90pIDSidB7
	 o64lNsmCKa5SyE3lTsRH2aRvTtXScs2n7UrWUabvrDpqF0bzpK8iM4HthrsmjgkzLL
	 szYf+IYf3aUxA==
Date: Mon, 31 Mar 2025 10:15:08 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Cc: Jared Finder <jared@finder.org>, 
	"G . Branden Robinson" <g.branden.robinson@gmail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v4 0/2] TIOCLINUX.2const: Document TIOCL_SETSEL selection
 modes
Message-ID: <ukr52aoj5f6mpkymuhlggjhtprm7wxzso7admdoovn2wfjpyir@7f5grvqjlj52>
References: <20250330143038.4184-2-gnoack3000@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5ev7pzuk3iuhgql6"
Content-Disposition: inline
In-Reply-To: <20250330143038.4184-2-gnoack3000@gmail.com>


--5ev7pzuk3iuhgql6
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack3000@gmail.com>
Cc: Jared Finder <jared@finder.org>, 
	"G . Branden Robinson" <g.branden.robinson@gmail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v4 0/2] TIOCLINUX.2const: Document TIOCL_SETSEL selection
 modes
References: <20250330143038.4184-2-gnoack3000@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20250330143038.4184-2-gnoack3000@gmail.com>

Hi G=C3=BCnther, Jared,

On Sun, Mar 30, 2025 at 04:30:37PM +0200, G=C3=BCnther Noack wrote:
> Hi!
>=20
> TIOCLINUX's TIOCL_SETSEL sub-code has another layer of sub-operations,
> called "selection modes" (even though not all of them actually deal
> with the mouse selection).
>=20
> Going forward, the CAP_SYS_ADMIN requirement will be different for
> some of these selection modes, which prompted me to at least list the
> different selection modes with a short description.  I am leaving
> CAP_SYS_ADMIN documentation as it is for now and will send another
> patch once these semantics are finalized [1] [2].
>=20
> Thanks,
> =E2=80=93G=C3=BCnther
>=20
> [1] <https://lore.kernel.org/all/20250221.0a947528d8f3@gnoack.org/>
> [2] <https://lore.kernel.org/all/20250223205449.7432-2-gnoack3000@gmail.c=
om/>

Thanks!  I've applied both patches.  I've added Acked-by tags for Jared,
since there was a mail saying LGTM in the previos version, and it hasn't
changed significantly.


Have a lovely day!
Alex

>=20
> History:
>=20
> V2:
>  * Split into a "restructuring" and a "new documentation" commit
>  * Use non-breaking space \~
>  * Put URIs in <>
>  * Added a helpful link to console_codes(4) regarding mouse reporting
>=20
> V3:
>  * Corrections and clarifications for various selection modes
>    as suggested by Jared Finder. (Thanks!)
>=20
> V4:
>  * Clarified how TIOCL_SELPOINTER selects the coordinate to use
>=20
> G=C3=BCnther Noack (2):
>   TIOCLINUX.2const: Restructure documentation for TIOCL_SETSEL selection
>     modes
>   TIOCLINUX.2const: Document missing TIOCL_SETSEL selection modes
>=20
>  man/man2const/TIOCLINUX.2const | 59 +++++++++++++++++++++++++++++++---
>  1 file changed, 54 insertions(+), 5 deletions(-)
>=20
> Range-diff against v3:
> 1:  d07edb528 =3D 1:  828c5189a TIOCLINUX.2const: Restructure documentati=
on for TIOCL_SETSEL selection modes
> 2:  59f217fb0 ! 2:  bffc3e550 TIOCLINUX.2const: Document missing TIOCL_SE=
TSEL selection modes
>     @@ man/man2const/TIOCLINUX.2const: Select line-by-line,
>      +.RI ( xs ,\~ ys )
>      +or
>      +.RI ( xe ,\~ ye ),
>     -+whichever is greater.
>     ++whichever is later in text flow order.
>      +.TP
>      +.B TIOCL_SELCLEAR
>      +Remove the current selection highlight, if any,
> --=20
> 2.49.0
>=20

--=20
<https://www.alejandro-colomar.es/>

--5ev7pzuk3iuhgql6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfqTwwACgkQ64mZXMKQ
wqnKUxAAquJDNZi1LS+elfNF+yoOkrHzqAa9edS/pqW+yOpUBkYVMDorZWkoRTkb
2AqUgsf3oe3CambJ2BQuEDiVjtwwDtnQUe4YLYo/ZYJka+YzYyWOOVo+N3ZZUq5b
vBSjJYbWAwhmpjGfrJKnHbCRYjXFFMU7BZUTdhSIb8pXW5zYqE6ltQhyUX2XSFCi
fyMN66NuXRSwJHCdsd5++2dVbYyzpYHBRVDHi/Ds+oxwKvn0SqH1EurvatB+eR+r
NOt77hpaffeTlPITp47IBDGjoOeLP/n+fjvNXkrDy9I72qH+/d0qMQ8PmLaJ7saS
fumcdXnQI/z5nz+yoFJaP9j+FZyu/4Z5lkiMvj+aNA9fgs5jPabSknBUyly0XoZr
hC0KuU38gnoDaLYVAsFEzx3BlXGkdjPXR594M38JZk3yRIE4i5X0FNC2gx/loi16
nKEBxQ9z4e3dlyQnp/UOPDC4fesmcckWU6tp01Ltdmc3aZcB5eVwGfCo103AkgWx
U0WvRVAYAX5BbbIafDeWD31zfo/8ESV3mgwXlOlk7ANTYe3h/pQALLZaB9S2irs9
pzsGjTY6TompeXh8yoC4sUabl9rI2LyHIkILxjBf813OLDTtg2bnXwJnc3Gs47IN
pkouBJYo+XhOV8CktYg/EP88RZZ7jX1+d2DTpMi4hC168Z7TgIQ=
=WK8u
-----END PGP SIGNATURE-----

--5ev7pzuk3iuhgql6--

