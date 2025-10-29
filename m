Return-Path: <linux-man+bounces-4225-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 941FEC1A062
	for <lists+linux-man@lfdr.de>; Wed, 29 Oct 2025 12:30:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3A3683B7171
	for <lists+linux-man@lfdr.de>; Wed, 29 Oct 2025 11:25:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DE6032E732;
	Wed, 29 Oct 2025 11:23:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G7wZ5id6"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8EF3321BB
	for <linux-man@vger.kernel.org>; Wed, 29 Oct 2025 11:23:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761737005; cv=none; b=FqpcB6+HyexJdakZJEN0BSNLXdJ3zDVZCGnTWm9siGsTqE/VeSUBt9aEwFQL3+XQR4Ufc83QQ3Qgc0zjqAx3J1t4S3yrOp55oRcdfBDwkqxLm/GUIVAiJENGE4xZiAjMU5bfjClpmTm19/w0xd/U2dl0TBb0DrqjjiVVxSu4lAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761737005; c=relaxed/simple;
	bh=dfZ1m/Nxg9aiqa9jQGzojVF2fbHKCni205fFMgYiQW4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GmgQXrpiP1FXCYfQiu9+XF/z/evsvMTaHeQoLorLf86fw9/nv/5rGGC+soPQguVvjl/fgyDoNIviszOkcSGDsCLpEpuxhAknBFgVQs5GMbTOosC6gxx/BLITSz7fHdnG7/PxXGidh6xqbMkM8+psav8TYJzEdDV8q5ZHf4np548=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G7wZ5id6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3145C116D0;
	Wed, 29 Oct 2025 11:23:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761737004;
	bh=dfZ1m/Nxg9aiqa9jQGzojVF2fbHKCni205fFMgYiQW4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=G7wZ5id6n2weuUWROYSxgTLqNFFhi5Rw9m4Yqo5VSdO84bASMEs6LvDJM4AmnlEc4
	 sUsr44ZN6gDgjmrpnkzWT6vlvv8cpm9XuP6d6IaLDD6Lyz8f0DDTo5TUmqMOr5otoA
	 CIi3bFQ5wa8bZLyZNuz/qBTx6bFDoWc5MOM1WYIruOkbdiQ4t+RWLx566Q+oukP5po
	 pFBxOq/mUfNnL9iPwWbV9fmFaJEY/CX7vHzZ08gVJ+JHx7GixCwkiYedEHecKKZdYR
	 PmefAdQGjnoYQH+80H/B91OQqxIS14SX7RIlprDGwvKyVL1GM4Aw8VIqVaNSNXoqe3
	 UvDGiCBVyZpxw==
Date: Wed, 29 Oct 2025 12:23:21 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>, 
	linux-man@vger.kernel.org, "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: Re: [PATCH v2 3/5] alloca.3: clarify reasoning for no error return
 in BUGS
Message-ID: <mn5vhhda5ovwdj4yegk5ibdj23bnb7bro7uc3hbea23siicix7@pg6hlczefiym>
References: <ed9ad00910f264f8f9ecd266d398522077f4548f.1629752426.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
 <2001f398efa7415df60019cd29164d7cfe87ae04.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
 <4c862994-1fb7-7c45-8f0e-9a3bb8d76e13@gmail.com>
 <20251029084200.umuk2hbescz3txgn@illithid>
 <n7qbvcugequfez7depunqaxhz7wag3uid2khobz3wdzik7tytu@mta4olxxaxvr>
 <20251029103012.5tswxzup6yyhmi76@illithid>
 <gweobuilxwbb3llrq7lcwyvlnsobqfoqo2enu52sravwznof6f@gwlezhulonwj>
 <20251029111259.nvmnemste6zkg6kw@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="s7c3ozv2c3zuu5ms"
Content-Disposition: inline
In-Reply-To: <20251029111259.nvmnemste6zkg6kw@illithid>


--s7c3ozv2c3zuu5ms
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>, 
	linux-man@vger.kernel.org, "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Subject: Re: [PATCH v2 3/5] alloca.3: clarify reasoning for no error return
 in BUGS
Message-ID: <mn5vhhda5ovwdj4yegk5ibdj23bnb7bro7uc3hbea23siicix7@pg6hlczefiym>
References: <ed9ad00910f264f8f9ecd266d398522077f4548f.1629752426.git.nabijaczleweli@nabijaczleweli.xyz>
 <cover.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
 <2001f398efa7415df60019cd29164d7cfe87ae04.1631622750.git.nabijaczleweli@nabijaczleweli.xyz>
 <4c862994-1fb7-7c45-8f0e-9a3bb8d76e13@gmail.com>
 <20251029084200.umuk2hbescz3txgn@illithid>
 <n7qbvcugequfez7depunqaxhz7wag3uid2khobz3wdzik7tytu@mta4olxxaxvr>
 <20251029103012.5tswxzup6yyhmi76@illithid>
 <gweobuilxwbb3llrq7lcwyvlnsobqfoqo2enu52sravwznof6f@gwlezhulonwj>
 <20251029111259.nvmnemste6zkg6kw@illithid>
MIME-Version: 1.0
In-Reply-To: <20251029111259.nvmnemste6zkg6kw@illithid>

Hi Branden,

On Wed, Oct 29, 2025 at 06:12:59AM -0500, G. Branden Robinson wrote:
> Hi Alex,
>=20
> At 2025-10-29T11:58:21+0100, Alejandro Colomar wrote:
> > > > Is this last sentence a guarantee?  Can something different ever
> > > > occur?
> > >=20
> > > I don't know the Linux kernel well enough to say.
> >=20
> > Hmmm, then I'll reuse the old wording for that, which said it was
> > likely.
>=20
> In principle, some linux-mm people might be lurking.
>=20
> > I've now also replaced 'If it fails' by 'If the allocation fails', to
> > avoid confusing programmers to think that 'it' may refer to the
> > function (that is, to think that the function can somehow return
> > NULL).  That would conflist with the previous sentence, so it's not
> > necessary, but I think this is more readable by being more explicit.
>=20
> "Clarity over all" is a basic principle of technical writing.
>=20
> > 	Author: Alejandro Colomar <alx@kernel.org>
> > 	Date:   Wed Oct 29 11:52:52 2025 +0100
> >=20
> > 	    man/man3/alloca.3: wfix
> > 	   =20
> > 	    Reported-by: Alejandro Colomar <alx@kernel.org>
> > 	    Cc: Ahelenia Ziemia=C5=84ska <nabijaczleweli@nabijaczleweli.xyz>
> > 	    Suggested-by: "G. Branden Robinson" <branden@debian.org>
> > 	    Co-authored-by: "G. Branden Robinson" <branden@debian.org>
> > 	    Signed-off-by: Alejandro Colomar <alx@kernel.org>
> >=20
> > 	diff --git a/man/man3/alloca.3 b/man/man3/alloca.3
> > 	index 52b87a8a3..367de81d0 100644
> > 	--- a/man/man3/alloca.3
> > 	+++ b/man/man3/alloca.3
> > 	@@ -111,11 +111,14 @@ .SH NOTES
> > 	 making them unfit for implementing functionality like
> > 	 .BR strdupa (3).
> > 	 .SH BUGS
> > 	-Due to the nature of the stack, it is impossible to check if the allo=
cation
> > 	-would overflow the space available, and, hence, neither is indicating=
 an error.
> > 	-(However, the program is likely to receive a
> > 	+.BR alloca ()
> > 	+does not query the system for available stack memory,
> > 	+and does not fall back to using heap if stack storage is unavailable.
> > 	+It therefore cannot indicate an error if the allocation fails.
> > 	+If the allocation fails,
> > 	+the program is likely to receive a
> > 	 .B SIGSEGV
> > 	-signal if it attempts to access unavailable space.)
> > 	+signal.
> > 	 .P
> > 	 On many systems
> > 	 .BR alloca ()
> >=20
> > Would you mind signing the patch?
>=20
> Signed-off-by: "G. Branden Robinson" <g.branden.robinson@gmail.com>

I have to change the other emails now too.  :)

> There ya go!

Thanks!  I've pushed now.


Cheers,
Alex

P.S.:  How is it going with the countof() patches in groff?  :-)

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--s7c3ozv2c3zuu5ms
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmkB+SgACgkQ64mZXMKQ
wqkI+g//SDkpa8QQjtOrGeuAr2lZQ19y9lvwr/bCs6cvkMTtiZrReJyBpGZpitg+
GDh3IgWJlLMQv2iqAaubJRYvLjem+7YPj4p/YESNrNGhVHNzuAlGVDwXOaCyTR4Z
3dV84zJzbFfi2TpHCozZIoHHF5sWtQhne6LjYGI16fCiNpOG+8qvfP1B7KbuJuHp
dy/M6sRYvCre6FL1XqSwpeSE79je2l8w9cFyb/OCd67Q7jZ2WeinnvvZ26uoVC6X
25FY8raVxdSIf3gIvvovCcPn5qi14hBfStJI/jr1qIBGY/JWlxiW1woX2jR8zjer
io6507CmfPfvQviovCJvZBBhg3nJUyNhTzmAIK/BXSopJaKlKE9gpQZX06oDUNkS
Lyk1glpLdilErSnvkP92Dot29aIbDe5Z72yPV09xQY0X8CswmpAH4Ye0gQB7kvWs
B2azNf93jkUcAZnnM4RDsZ7EKG5ea8cDAHMNoHe3+mRcdfDH5+qqQHKLumtslxUv
opiQXzILzNgJDUZ6pu0vxz1IvfY9bxvysvpjF9f4UxHdOe2p+v0/R60L/DWtOzOg
FlPFEFz2rrkkWpOuzmJFIo5bHCPt/WnjG5tOm4U40nnljyT42M+SMONKDMhwaQiY
b00ck8RzDAAkcGzUKbA6Qt6dXw1EcpxIgEqbzBdfBfxFZ1dLS/0=
=RHzw
-----END PGP SIGNATURE-----

--s7c3ozv2c3zuu5ms--

