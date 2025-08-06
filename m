Return-Path: <linux-man+bounces-3350-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F1DB3B1C2B7
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 11:03:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1BC2A16F244
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 09:03:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B8F528935D;
	Wed,  6 Aug 2025 09:02:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cyphar.com header.i=@cyphar.com header.b="O58cnhej"
X-Original-To: linux-man@vger.kernel.org
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org [80.241.56.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE3522332E
	for <linux-man@vger.kernel.org>; Wed,  6 Aug 2025 09:02:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.151
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754470970; cv=none; b=Iy7gs/0OVmOe6lasb9GRCgodagj16W+hNJsSdVAh8tL2ngY/1gsw8f4Gb7tFMrmPFFHJ4P0MhGCqvuZkRFfFxgTSR9YBJB2QBhlR3POB3PHl6ou8SLJNDypGV4A/C/4J+vpABeeu7Hf7Ro1L5LZtNVBNM3NG7WVtkWVAvoiNdzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754470970; c=relaxed/simple;
	bh=GfmyAYD6kjQ+/tkyBR58rs4NxyB7SnmerNPKdft74gc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gdpLeY5oKptQNWA3UC2w+6e5neEMORglkOzU2UeP8K2IVkPMNdrf24t0zyt7xCKGMc4GgVUkvhv/gLDGE23Toga1/e8EYR/sAw8LedwChBtuxtGoEgZvS52ab25Hll5JgB/5dWKwlR4en27LUXRVO32FtawG8+n67v2CLB4KGAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cyphar.com; spf=pass smtp.mailfrom=cyphar.com; dkim=pass (2048-bit key) header.d=cyphar.com header.i=@cyphar.com header.b=O58cnhej; arc=none smtp.client-ip=80.241.56.151
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cyphar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cyphar.com
Received: from smtp102.mailbox.org (smtp102.mailbox.org [IPv6:2001:67c:2050:b231:465::102])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4bxkpC3y3nz9sm9;
	Wed,  6 Aug 2025 11:02:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cyphar.com; s=MBO0001;
	t=1754470963;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=WAqjl1uGdN5o4V27yOulAWAKgDd+CkwnQRBTeLCerIg=;
	b=O58cnhejBNlfcPulC4dQSFzFbVdRm4ai42LJD8Pou6aZn1WKz+M6e6Km2NGIQ0941l8ozq
	ltuGkKVFNzxMOsYJdvJN7C7V1ePTHaaNCOSkQxsctorshH/VoFTgC6NAu1C2fZJ78nZrfI
	2XA5P364AdO/W6K+lbWi1zPSCZPPjruQ47YEqW32TooO1CrBwVRrLzIx0ZfxnCOJbodGoR
	kzMdDaotjDkodTQe5H4qZkm5ryLCdDGHlxzwGo9ZkKwmqb/FIIWlY8o9P7+j6ANj9/bMmx
	FK5PfgZs9Vthwll1o0ejwc+ZTJI6b91KNktu0P1mmYBEhIczssv1of7/vSGIWQ==
Authentication-Results: outgoing_mbo_mout;
	dkim=none;
	spf=pass (outgoing_mbo_mout: domain of cyphar@cyphar.com designates 2001:67c:2050:b231:465::102 as permitted sender) smtp.mailfrom=cyphar@cyphar.com
Date: Wed, 6 Aug 2025 19:02:35 +1000
From: Aleksa Sarai <cyphar@cyphar.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: "Michael T. Kerrisk" <mtk.manpages@gmail.com>, 
	linux-man@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>, 
	Jan Kara <jack@suse.cz>, David Howells <dhowells@redhat.com>, 
	Christian Brauner <brauner@kernel.org>
Subject: Re: [PATCH 02/10] mount_setattr.2: move mount_attr struct to
 mount_attr.2type
Message-ID: <2025-08-06.1754470775-trained-plaza-jaded-kilns-vile-enzyme-SXJffa@cyphar.com>
References: <20250806-new-mount-api-v1-0-8678f56c6ee0@cyphar.com>
 <20250806-new-mount-api-v1-2-8678f56c6ee0@cyphar.com>
 <lt47z3kplkm7g2stof7vey4fnh2r3eqr4o5vkmjep5fppcrdzs@nx2r24g4mdsj>
 <2025-08-06.1754466294-elegant-cook-harsh-fiction-woody-sack-0yCISW@cyphar.com>
 <s2mvvspnu2kxakpjinu3y4cnexo6keeqejrtwufbbpnzflmsf7@jsy663irx4iq>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vbqqrdfsa4hopqyg"
Content-Disposition: inline
In-Reply-To: <s2mvvspnu2kxakpjinu3y4cnexo6keeqejrtwufbbpnzflmsf7@jsy663irx4iq>
X-Rspamd-Queue-Id: 4bxkpC3y3nz9sm9


--vbqqrdfsa4hopqyg
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 02/10] mount_setattr.2: move mount_attr struct to
 mount_attr.2type
MIME-Version: 1.0

On 2025-08-06, Alejandro Colomar <alx@kernel.org> wrote:
> Hi Aleksa,
>=20
> On Wed, Aug 06, 2025 at 06:10:36PM +1000, Aleksa Sarai wrote:
> > > > page. In addition, future man pages added in this patchset will wan=
t to
> > >=20
> > > Please use two spaces after period in commit messages.  See:
> > >=20
> > > $ cat CONTRIBUTING.d/patches/description | grep -A5 Style.guide
> > >     Style guide
> > > 	URIs should always be enclosed in <>.
> > >=20
> > > 	The correct inter-sentence space amount is two.  See some
> > > 	history about this:
> > > 	<https://web.archive.org/web/20171217060354/http://www.heracliteanri=
ver.com/?p=3D324>
> >=20
> > I'm really sorry to be difficult, but is this really a necessary
> > requirement for man-pages submissions?
>=20
> It's not a requirement; it's a nice-to-have.  I'll amend your commits if
> something remains.  But if you'll be contributing often, I recommend
> doing that yourself.  And in general, I recommend using two spaces after
> period, as it results in more readable text.

I don't want to add more needless work to your hands -- if you were
going to do it amend my commits manually (which it appears you have done
for my previous contributions), then I'll just do it for you.

I just found this a little perplexing. I also think the readability
thing depends a little on the form of the text (and the reader, of
course) -- for typeset text it does look nicer, but for plain-text I
personally find it distracting. Though, I'm sure you find not having it
distracting instead! ;)

> > I understand how much of a stickler you folks are for the formatting of
> > roff files (though it seems quite arbitrary to me at times), since the
> > need to maintain ~600k lines of roff is hardly an enviable task (and you
> > folks do a great job of it!) so spending more time reworking roff
> > layouts could be seen as a reasonable price of entry for contributors
> > (even if it results in man page submissions getting abandoned -- which
> > is IMHO what happened with the first iteration of these pages).
> >=20
> > But what practical reason is there to extend minor style guide quirks to
> > *commit messages*? To me, this seems akin to correcting minor
> > grammatical mistakes made in commit messages by non-native speakers'
> > contributions -- but man-pages doesn't do this, right? How many people
> > are going to read most commit messages, outside of "git blame"? How
> > often are commit messages typeset?
> >=20
> > I didn't grow up using double spaces after periods, so I find it
> > incredibly strange to do it when writing. I don't mind folks who prefer
> > it, but to quote the article you linked:
> >=20
> > > For any non-typographers who made it all the way through this article,
> > > if you want to double-space, do it.  If you want to single-space,
> > > fine.  Just please don=E2=80=99t try to enforce your view on the worl=
d.  Stop
> > > judging people.
> >=20
> > I also have ":set nojoinspaces", because otherwise all of my documents
> > will have mixed double-spacing depending on whether the spaces were
> > added by "gw" or by hand. (So I would need to manually fix this each
> > time I re-wrap text.)
> >=20
> > I mean, it is just one 0x20 byte at the end of the day, so I'll go ahead
> > and add it if necessary. I just struggle to see _why_ this is seen as
> > necessary...
>=20
> Okay, no problem.  If it's difficult for you, I can amend that while
> applying.  I was suggesting it in case it was easy for you.
>=20
>=20
> Have a lovely day!
> Alex
>=20
> --=20
> <https://www.alejandro-colomar.es/>



--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
https://www.cyphar.com/

--vbqqrdfsa4hopqyg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQS2TklVsp+j1GPyqQYol/rSt+lEbwUCaJMaKwAKCRAol/rSt+lE
b36fAP9a+Y1q/2+pg7K0DSXHPceLmWcj6f+DSh++gLA/mLLCEgEAqA7uOi3BplGY
E9+QyWTXbBAlx7VEJeGaQEz9hIWMNwQ=
=OpOi
-----END PGP SIGNATURE-----

--vbqqrdfsa4hopqyg--

