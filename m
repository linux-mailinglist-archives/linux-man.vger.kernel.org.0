Return-Path: <linux-man+bounces-4594-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C3DA3CE98BF
	for <lists+linux-man@lfdr.de>; Tue, 30 Dec 2025 12:35:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0CC9030194F7
	for <lists+linux-man@lfdr.de>; Tue, 30 Dec 2025 11:34:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C1F228504F;
	Tue, 30 Dec 2025 11:34:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f5pKSRxj"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF55321A444
	for <linux-man@vger.kernel.org>; Tue, 30 Dec 2025 11:34:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767094481; cv=none; b=TUZc6JqwhjupwIi/iP9dPX9f4xTR1fRxrKd4GgNIxP0HAJw0gE5a0l1LAvYCzJbiCdRwhyQDYiBSeHBKpoUMu81Wn7BOqRCzuTESd4Ob3AKeYsPAVtYK+7CZYocopUfYogD2GWsMit7eysSOAGRdqi3jLZWM44xZopNft7pR8+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767094481; c=relaxed/simple;
	bh=tifMc100pkdpkLY669st4ile5eIE38tSi9qv7PjSZl8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=C8+H4L9CYHDMXAf0XZLVKwgim1X3B/qlkCAoDEmgPCgfr7oDR9gMvyUpommnr+ZbCOAuCXkBdZcdHJO207vISipupl5OCDG6IAo84KpNf388E5HVV7jAXm6zlXvvxhv3UvfN3tRMVhBafZvpyN1e6L93X2mwB+Ay7SD4Hj3+PVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f5pKSRxj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4930BC4CEFB;
	Tue, 30 Dec 2025 11:34:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767094481;
	bh=tifMc100pkdpkLY669st4ile5eIE38tSi9qv7PjSZl8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=f5pKSRxjBnX0r76NDagI/oeWTqVk20I50sb2G5PNqWN2xBIqkovg4lm20S5mF9AEe
	 //agTuwRy0Iw4N5AZbta+jmOMNovhq3BSC9sTm5rFRMkFpIJY49hLj2zGKbIpoAtlE
	 lYuWN8DADAWZHctD7BkdGAgaoLtGbYP7T65/7VyF4xTAACipGRkKmGTN3oq/aDT85d
	 0OyqX1AHVTCbZy2EAbra7ZetxYpVe55jtwNUgkfi93qvP4tvp6iUOgg1KZkU/CNSX6
	 UpLMZztkpzBzyV63A5f725rUa3cwlhK8PCJC2tFlNSGZnawOrRiI6Oz+DFf5AeWh8l
	 3gjr9Jk47//TQ==
Date: Tue, 30 Dec 2025 12:34:37 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Collin Funk <collin.funk1@gmail.com>, Seth McDonald <sethmcmail@pm.me>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH v1 2/4] sys/man2/sysctl.2: HISTORY: wfix
Message-ID: <aVO19R1KEm7b2a3Y@devuan>
References: <cover.1767072049.git.sethmcmail@pm.me>
 <1477de655f76e1e6e85c12cb03c068b120704511.1767072049.git.sethmcmail@pm.me>
 <87zf70xxog.fsf@gmail.com>
 <pRpaTIVuHE4orVJSipNl_EnJbZVLMfPRMvPMLl2gRCXKXvpLA9uK1nqZaeQE7NfWySjyQqs1yBMjZpW9bJOToFOl81F2Bz_-koNMWm90qbo=@pm.me>
 <20251230072756.c25thnpent43mjma@illithid>
 <87ldikxvs4.fsf@gmail.com>
 <20251230075353.aupaewanzn26wadm@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="53ud6b7r5liuif27"
Content-Disposition: inline
In-Reply-To: <20251230075353.aupaewanzn26wadm@illithid>


--53ud6b7r5liuif27
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Collin Funk <collin.funk1@gmail.com>, Seth McDonald <sethmcmail@pm.me>, 
	linux-man@vger.kernel.org
Subject: Re: [PATCH v1 2/4] sys/man2/sysctl.2: HISTORY: wfix
Message-ID: <aVO19R1KEm7b2a3Y@devuan>
References: <cover.1767072049.git.sethmcmail@pm.me>
 <1477de655f76e1e6e85c12cb03c068b120704511.1767072049.git.sethmcmail@pm.me>
 <87zf70xxog.fsf@gmail.com>
 <pRpaTIVuHE4orVJSipNl_EnJbZVLMfPRMvPMLl2gRCXKXvpLA9uK1nqZaeQE7NfWySjyQqs1yBMjZpW9bJOToFOl81F2Bz_-koNMWm90qbo=@pm.me>
 <20251230072756.c25thnpent43mjma@illithid>
 <87ldikxvs4.fsf@gmail.com>
 <20251230075353.aupaewanzn26wadm@illithid>
MIME-Version: 1.0
In-Reply-To: <20251230075353.aupaewanzn26wadm@illithid>

Hi all,

On Tue, Dec 30, 2025 at 01:53:53AM -0600, G. Branden Robinson wrote:
> Hi Collin,
>=20
> At 2025-12-29T23:40:11-0800, Collin Funk wrote:
> > It does say 1993, but it also has the following:
> >=20
> >     .\"	@(#)sysctl.3	8.1.1 (2.11BSD GTE) 1/13/95
> >     .\"
> >     .TH SYSCTL 3 "January 13, 1995"
> >=20
> > The first line being used by SCCS? That is an assumption since I have
> > never used it.
>=20
> Yup, that's exactly what it is.
>=20
> https://pubs.opengroup.org/onlinepubs/9799919799/utilities/what.html
>=20
> To add precision to my earlier remarks, the "last" Berkeley CSRG release
> appears to have been "4.4BSD Lite Release 2", dated May 1995.
>=20
> https://gunkies.org/wiki/4.4BSD_Lite_Release_2
>=20
> The "real work" was by then happening as BSDI, where every developer was
> assured that their deeply principled avoidance of the viral GPL would
> result in billionaire status for them all.  Winning!
>=20
> > > I suggest the Linux man-pages project not attempt to track the
> > > provenance or timeline of 2.11BSD features.  It's too much work.
> >=20
> > And there is probably not much practical benefit, i.e., just some
> > (very few, probably) people interested in the history.
>=20
> I number myself among those few, but without some sort of tool to keep
> track of 2BSD + 2.11BSD patches on an _automated_ basis to monitor when
> symbols appear and vanish from the source base, I think researching such
> history is a poor use of Linux man-pages contributors' time.
>=20
> Put differently, I would advocate _against_ Alex mandating that
> contributors to "HISTORY" sections pin down just when a feature showed
> up in 2BSD development specifically.  Without the aforementioned tool, I
> think the problem is too hard.  The juice is not worth the squeeze.

I certainly won't mandate anything prior to POSIX.1-2001/Cor2-2004
(informally, POSIX.1-2004), as that's the oldest POSIX that is easily
available.  I personally don't check any older sources than that
regularly.

Actually, I'm even starting to ignore anything older than POSIX.1-2008,
because for some reason the search engine at
<https://pubs.opengroup.org/onlinepubs/009695399/> often fails for
"word search" with

	Not Found

	The requested URL was not found on this server.

so, I'm giving up on POSIX.1-2004 too.  For some reason, the search
engine works fine for more recent POSIX revisions.  The Open Group
website is a terrible thing, and part of the reason I decided to stop
supporting the POSIX manual pages.  The Austin Group would do well
having a talk with whoever is in charge, and fix several things,
including publication of POSIX.1-2001 and POSIX.1-2002, and actually
open their standards (the source code of the standard; WG21 did publish
the source of the C++ drafts and they got away with that).

However, I won't reject patches documenting 2BSD and 3BSD, if some
people are interested in doing the work.


Have a lovely day!
Alex

>=20
> If any 2BSD advocates feel slighted, we can always point out that this
> project largely uses the GPL, and that they can't expect anything good
> to come from sick, evil copyleftists anyway.  =F0=9F=98=88=F0=9F=A4=98
>=20
> Surely they can console themselves by counting their money.
>=20
> Regards,
> Branden



--=20
<https://www.alejandro-colomar.es>

--53ud6b7r5liuif27
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlTuMcACgkQ64mZXMKQ
wqkpjxAAppp1VCxmb96ROl3SUGuZgiRqgI7FsvZMA4YBbid+q6Zyx/XSNW+kdoKK
J3PJCtxoWqLvLh74I/u58Rnn28X0xHNEyEqV2iweSeYfCLjYfnu3bYu3nMD7NrPG
1hoHtE5c6/Bsvy/y83ngo1t3KQ8y00tbJs31EU+Uwpm96Ih7wVHCPvaaYWFYa/Ye
2IUgGbbEOi61J5oka+JtsGzYuAxnk2vm3k28mcDybmc/2e2GIgRxLWONzs32CDZA
iDh6H6uOhhcfq7XPOdIP7s6k2QYNBIKm85ammD6zmywgTwJAjLM4sFMImoNULXVB
e91Jt6fA3vCOv0H8UMFmALKKd/oTOxTuwvFmfdzAXmrFzqiKZGx1nWaeFZpnkPYD
/tPJmHAlbPsj6gAPrWU5RM2zGugVfWrxN2j525QdtZNvb09Lh0JPCaB0xC3Ic218
GTdF9y6lHfvrOKVZpMY9AQaRjF4JtW50PoiVGDCGgnHRRyyfyKDEoPMeuiFIKVb4
VCPY4A20HgxsRiXPDFA+QsaA/XvY+v+bl/T2yX6066tXvlN+wk3KvpP5xdl49Bm5
cFkK07KQIgraYtnMSl4GdDBnkvBko1d1R7zhRKVMUOSLEoGjOqjvomQOhiGCLGM1
MBglj9+Pn81QoxvnBCkTTtT1kiUMzkt8y88nlAY2mSNwcUpz4Ho=
=HO0e
-----END PGP SIGNATURE-----

--53ud6b7r5liuif27--

