Return-Path: <linux-man+bounces-167-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C0D7F9390
	for <lists+linux-man@lfdr.de>; Sun, 26 Nov 2023 16:49:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D38FF1C20A8A
	for <lists+linux-man@lfdr.de>; Sun, 26 Nov 2023 15:49:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B761D50E;
	Sun, 26 Nov 2023 15:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sic4EjJC"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA41D270
	for <linux-man@vger.kernel.org>; Sun, 26 Nov 2023 15:49:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D1D5FC433C8;
	Sun, 26 Nov 2023 15:49:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701013763;
	bh=mjpo2b8y2Z3ccciN8paSKkmRCV/YHZURxYuus2rEV7Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Sic4EjJCzcXZhFSu4tMkxGo5CyZiXofzuiRJmotg5cHXriSNFjpdirQcXYbhHNfve
	 ep4roKc/4y8uavXNSJ1veQ9NUNWSM1kx+Swcxp4l5oXzpWrlDuKVosuD0Lpz4FLvZn
	 Cf+FOjBaff+D5YjVE887bkKchF1A3bg51ROu5KWip+DGW1eqsAbXNCgbaGkgHvTX7e
	 5AWMjTdaU14YZOUlvxHsBW/NxSIGTngPltFQ8FP02REWlSHUDP4fZo0teUB097jEWm
	 qCJ+oX2s3c47HqCvHxt5UVIGXWhLPBGoyIANuW6EXIhKbjeNOIwsGgGEeqYhSu32ML
	 TYZJAR1hC9eDg==
Date: Sun, 26 Nov 2023 16:49:19 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Brian Kernighan <bwk@cs.princeton.edu>
Cc: "Brian W. Kernighan" <bwk@princeton.edu>,
	"G. Branden Robinson" <g.branden.robinson@gmail.com>,
	"linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
	Matthew House <mattlloydhouse@gmail.com>
Subject: Re: Errata in K&R C v2, page 97 (was: [PATCH v2] CONTRIBUTING:
 Please sign your emails with PGP)
Message-ID: <ZWNo_xYMkqDiI_JG@debian>
References: <20231122134716.73658-2-alx@kernel.org>
 <20231122162557.mdd3z6hmt3pz43bo@illithid>
 <ZV4506eXcQhZj91V@debian>
 <41b65637907f43ecafadd58565a7b483@DM6PR04MB4443.namprd04.prod.outlook.com>
 <0596dd5a-3efd-7d89-6280-f6e032941c58@cs.princeton.edu>
 <ZWNopRsUQAuh9qmh@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="VHUBWg4LHNJiU/Qp"
Content-Disposition: inline
In-Reply-To: <ZWNopRsUQAuh9qmh@debian>


--VHUBWg4LHNJiU/Qp
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 26 Nov 2023 16:49:19 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Brian Kernighan <bwk@cs.princeton.edu>
Cc: "Brian W. Kernighan" <bwk@princeton.edu>,
	"G. Branden Robinson" <g.branden.robinson@gmail.com>,
	"linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
	Matthew House <mattlloydhouse@gmail.com>
Subject: Re: Errata in K&R C v2, page 97 (was: [PATCH v2] CONTRIBUTING:
 Please sign your emails with PGP)

On Sun, Nov 26, 2023 at 04:47:49PM +0100, Alejandro Colomar wrote:
> Hello Brian,
>=20
> On Sun, Nov 26, 2023 at 09:57:32AM -0500, Brian Kernighan wrote:
> > In the printed version of the C book, section 5.5 begins on page 104.
> > pmessage is indeed the one with two boxes and an arrow.
> >=20
> > Are you looking at the real book or some mutated copy from the web?
> > I have had error reports in the past on imperfectly pirated copies.
>=20
> My real copy of the book is in Norway with my brother, very far from me.
> Indeed, I read some online copy for the report.  It was something
> converted to an ebook or something like that.  I'll try to find the
> link.

Here it is:
<https://venkivasamsetti.github.io/ebookworm.github.io/Books/cse/C%20Progra=
mming%20Language%20(2nd%20Edition).pdf>

>=20
> Cheers,
> Alex
>=20
> --=20
> <https://www.alejandro-colomar.es/>



--=20
<https://www.alejandro-colomar.es/>

--VHUBWg4LHNJiU/Qp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVjaP8ACgkQnowa+77/
2zJUEA//eOvC6BrOfYUDP/o4kcuBZ+jcmcp3AE4dFB/sQLo77uzinOOS2wxBQiij
ynq/zJfwwMx0U6wXvUC0cg/1kcHQl6faaiYF4L99vfOhKCTHofQCw9DK6JF+EGod
mMS63Jyppy448jhp86D71V0fuVwekRFs00zdTbgLqsyXVRaKwDStvaV4FtyPkrwr
IW2+WdS2UTHhtP0kPgGCyFCiO73x38kLmJHHdRSgaHt2PgObp3XyV3SipGFiRpU8
M6YzR22SLbuXr69Z4kA2BlYESHgz1BxlBEyGL37lwGd2XDblkLFPR4fOFn2KdpiQ
nkTWtDpF6qbCVCY0+fiTF5tkJ3c5QLbAocJw7cNvfwRQznZemsf1NQercH1n9sGl
MbkXSvi1pV0uRTW1JyPfc/A3wqf3ySsfmPCVQ9qHfcvWBDyJc11rrPrfpTdSTBzQ
9LrNRGRNHqP6oJ6kRLzUU0uI5pCIJG9XIYDvg105QQIWs2+drE8wKuhyn5czCFTE
WV5c8b2Yz7Hnng35/rP3DG7Xtr5WhbtdUJBUKhyeAPSG+yPrrsZ3Ak+BqVbJoUWP
L5StL4mwhnsE5Vn5zgfktJafU3m0s3BA1m5nkemhCK4CdDh3Fegduvgnxmw46X7M
OZ9YHJhu/lCb0HEgH/shtp7Vvvp6/vyOQMS01BFHhFnomk1iFLk=
=Cfa3
-----END PGP SIGNATURE-----

--VHUBWg4LHNJiU/Qp--

