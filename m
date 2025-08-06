Return-Path: <linux-man+bounces-3362-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CEEBB1C971
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 17:59:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BE17E3A6CFE
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 15:59:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47AA4292B3F;
	Wed,  6 Aug 2025 15:59:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cyphar.com header.i=@cyphar.com header.b="jT2IA0Bh"
X-Original-To: linux-man@vger.kernel.org
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [80.241.56.152])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77D42292B35
	for <linux-man@vger.kernel.org>; Wed,  6 Aug 2025 15:58:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.152
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754495941; cv=none; b=GJpCz3L3UXht4fRvk5k3wd5GFb961ub8WLDeQvYgdpyKxXX57Xx5s+BRAkTOe9GsMWZ9OMWlI2iinoVx7QhOafeSMhFmOBm7Xd8Ij3kV4P2lavrtHjJmMR0Aq3KpUuMD0Zqg8pUjyhQSvDqGtJwi36OwAk1dTI4IYpWc1iPiWfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754495941; c=relaxed/simple;
	bh=pnQyahKcRcTVAT29MinvyyLd6T9cX/VaRHKHUp3FYkE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pN1s3PoOs59EpJDZlmB8KnbFmqqTqZ8s4rwx3jQGX6ca3Jh3CeYJxxZ3jbXZ8XOd8YfXl5KAHYpESbtTd9L4IM9l1LPbdGve9PVCQxlrLHDGWlvp0NIkoMmieQR7N5wKLebrQQAfZlZNlGmA37pH6+6GcuJwrEJdNFFZnjSiZaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cyphar.com; spf=pass smtp.mailfrom=cyphar.com; dkim=pass (2048-bit key) header.d=cyphar.com header.i=@cyphar.com header.b=jT2IA0Bh; arc=none smtp.client-ip=80.241.56.152
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cyphar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cyphar.com
Received: from smtp202.mailbox.org (smtp202.mailbox.org [10.196.197.202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4bxw2R4WFRz9tnW;
	Wed,  6 Aug 2025 17:58:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cyphar.com; s=MBO0001;
	t=1754495935;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=WUGXjy8W2Gbll5ZKFmIFK9Hp1UA3nx+IPXUwdQqrmmg=;
	b=jT2IA0BhpdHlje9WdeQWLIz2Jyw7sZabbLrF3fwYCifMGwasMaAkeMXCiOC+3mW9yAD3Uw
	Nxgxxv85hKAQR/k9AtfdISe9v8tMOmfTUD/L/KiGiIuZQilc5N7b3mU6QMAwjhlNfViIZ2
	cNK2ygRG+pfq5F8LZLpEu6O3RTsg9eAXQrYMuf1h/j4ooDzGcyKLPUAMPxNyJmqChDi6uS
	4fK185cSnjaBD5pOV9cVpOIJJNzARs+kq6AaYepx47mCrXi0uy8uzE3OOXipw0aDR2uA2b
	oo/iue/D1R7dm/OU64uXyb8BKudLAj91TCOAwEn2iO2fnis7Gl36KjctHrMwig==
Date: Thu, 7 Aug 2025 01:58:47 +1000
From: Aleksa Sarai <cyphar@cyphar.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: "Michael T. Kerrisk" <mtk.manpages@gmail.com>, 
	linux-man@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>, 
	Jan Kara <jack@suse.cz>, David Howells <dhowells@redhat.com>, 
	Christian Brauner <brauner@kernel.org>
Subject: Re: [PATCH 02/10] mount_setattr.2: move mount_attr struct to
 mount_attr.2type
Message-ID: <2025-08-06.1754495787-noble-trunk-meaty-crawlers-oval-sleds-U5vKos@cyphar.com>
References: <20250806-new-mount-api-v1-0-8678f56c6ee0@cyphar.com>
 <20250806-new-mount-api-v1-2-8678f56c6ee0@cyphar.com>
 <lt47z3kplkm7g2stof7vey4fnh2r3eqr4o5vkmjep5fppcrdzs@nx2r24g4mdsj>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="axm7oyfdx7olvzoc"
Content-Disposition: inline
In-Reply-To: <lt47z3kplkm7g2stof7vey4fnh2r3eqr4o5vkmjep5fppcrdzs@nx2r24g4mdsj>


--axm7oyfdx7olvzoc
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 02/10] mount_setattr.2: move mount_attr struct to
 mount_attr.2type
MIME-Version: 1.0

On 2025-08-05, Alejandro Colomar <alx@kernel.org> wrote:
> > +This field specifies which
> > +.B MOUNT_ATTR_*
>=20
> Please use
>=20
> 	.BI MOUNT_ATTR_ *
>=20
> The variable part should be in italics.

I have changed this, but I took a quick look and it seems that

  .B FOO_*

usage far outweighs

  .BI FOO_ *

usage in the repo (before these patches, the latter is only used in 5
man pages). I guess this is still being worked on?

> > +attribute flags to set.
> > +.TP
> > +.I attr_clr
> > +This fields specifies which
> > +.B MOUNT_ATTR_*
>=20
> Same here.

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
https://www.cyphar.com/

--axm7oyfdx7olvzoc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS2TklVsp+j1GPyqQYol/rSt+lEbwUCaJN7twAKCRAol/rSt+lE
b8vnAP9USyIv4zXUXEHeZVZLmmALZzoYUpRL2fXRuwC9qfOlugEApNYCuzl0s4Em
P6Vmmq5hFMCrsgHBhhr3ulfjxnKaXQ8=
=cv5s
-----END PGP SIGNATURE-----

--axm7oyfdx7olvzoc--

