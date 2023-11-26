Return-Path: <linux-man+bounces-166-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 378CA7F9389
	for <lists+linux-man@lfdr.de>; Sun, 26 Nov 2023 16:47:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E5E47281209
	for <lists+linux-man@lfdr.de>; Sun, 26 Nov 2023 15:47:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E13FD313;
	Sun, 26 Nov 2023 15:47:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WrGhyqXc"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFA17D270
	for <linux-man@vger.kernel.org>; Sun, 26 Nov 2023 15:47:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2B0D2C433C9;
	Sun, 26 Nov 2023 15:47:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701013673;
	bh=0q0X5aq1MArg6n6H4JjyMJ9Xqd/joqSNY8K1Y5UELZM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WrGhyqXcVvkU45UqlQsC52vS2ChYQ6Rwr3L96oarvhDAFcD9ztulSBonnlFA5G+Ki
	 wQWdbMfoqjHdpSuo0AtdmgFcsOYTujKymV/GqT1UCDirsdUn8x6PcSp6SbRNnvPg7v
	 6HXkOiadruqFIKdaReo/10uraWzQdTJACXRQJ5zmhkqzI+QCVIvBetCq9ZJpw/GAaz
	 J9kTyKFsYSpkIVNrEm0BLtr07shRMiCI31AL80Vv/NA2AHVzPykORJfWx4kSsI6pTL
	 oXNrTlT01H78k2ldIA3HDm4zL0SyqhhHrimsI4GnIwtAig7dQpKoVS31ZZEiuSuurn
	 SRESEfZh/p/PA==
Date: Sun, 26 Nov 2023 16:47:49 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Brian Kernighan <bwk@cs.princeton.edu>
Cc: "Brian W. Kernighan" <bwk@princeton.edu>,
	"G. Branden Robinson" <g.branden.robinson@gmail.com>,
	"linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
	Matthew House <mattlloydhouse@gmail.com>
Subject: Re: Errata in K&R C v2, page 97 (was: [PATCH v2] CONTRIBUTING:
 Please sign your emails with PGP)
Message-ID: <ZWNopRsUQAuh9qmh@debian>
References: <20231122134716.73658-2-alx@kernel.org>
 <20231122162557.mdd3z6hmt3pz43bo@illithid>
 <ZV4506eXcQhZj91V@debian>
 <41b65637907f43ecafadd58565a7b483@DM6PR04MB4443.namprd04.prod.outlook.com>
 <0596dd5a-3efd-7d89-6280-f6e032941c58@cs.princeton.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="p9GdlFdPK14Ka+kW"
Content-Disposition: inline
In-Reply-To: <0596dd5a-3efd-7d89-6280-f6e032941c58@cs.princeton.edu>


--p9GdlFdPK14Ka+kW
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Sun, 26 Nov 2023 16:47:49 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Brian Kernighan <bwk@cs.princeton.edu>
Cc: "Brian W. Kernighan" <bwk@princeton.edu>,
	"G. Branden Robinson" <g.branden.robinson@gmail.com>,
	"linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
	Matthew House <mattlloydhouse@gmail.com>
Subject: Re: Errata in K&R C v2, page 97 (was: [PATCH v2] CONTRIBUTING:
 Please sign your emails with PGP)

Hello Brian,

On Sun, Nov 26, 2023 at 09:57:32AM -0500, Brian Kernighan wrote:
> In the printed version of the C book, section 5.5 begins on page 104.
> pmessage is indeed the one with two boxes and an arrow.
>=20
> Are you looking at the real book or some mutated copy from the web?
> I have had error reports in the past on imperfectly pirated copies.

My real copy of the book is in Norway with my brother, very far from me.
Indeed, I read some online copy for the report.  It was something
converted to an ebook or something like that.  I'll try to find the
link.

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--p9GdlFdPK14Ka+kW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmVjaKUACgkQnowa+77/
2zKGNQ//aXwLQBMMy0xcR8/Fl+MCu7XHmtUMhKLpFVyErhO17FxZg6+zIg1ipuSH
0OzYkgoSfpCSwb8k72q/pYY0cPbiZ1ssRarAlTRcjEOWiBMzxgS+CcSNQvAf7Q14
r6VMQLtUMgH8W9BAW/Bu02LPPJewWVUxtJ0wjWrfDLDKvmplvPguPGMSzmXDZLzI
hlPoy7OWAIM7ILbd6eFuq3N14WMLtFylWRNqEKGTv8FCrI2mROiVsroN4ZkNGh7N
5nPIPxn89gg5iKoa6xTg1sGVsgGFZp/lWYfbsdsgqyJfNj8K1EI1cQAy59Vzjc4e
2C9qZSGd4T6+4VcAjmOUpe8CXfTuNaGxLsSUV9GlDlPSqD7sTKWzhbQDqOif0ha4
iwLSxWf4rr4S8zhT1O//HzVIyJOHg5VgZ48UNVHDZF43zJHCv05BrvzS4icfK2/6
/gxwwHdvRxs5k9RwSzBtHR9uWLqIpwc9M3lE/+lN4zlJNhbKikR/1f8UCqDR1AAs
wB1e4JM14try+LASzwll8qfMhHxK6EgqZ4g0mR4LUjr7uN6lJW3uL96xvDbCzxB5
gZ+uwnUbSjGqLTmI99UGDPusGisqLBx3GJhBRDDkaQIW0WCUMcPFcOLhIT95Jvr+
rPjRu9O0VBzt5EUH+SxAAdmBxQIn9TZMQLFySx14vkQeaGvrfrk=
=HE7O
-----END PGP SIGNATURE-----

--p9GdlFdPK14Ka+kW--

