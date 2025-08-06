Return-Path: <linux-man+bounces-3348-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 26D58B1C249
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 10:37:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D2BDB18A82EC
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 08:38:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82A8E28852E;
	Wed,  6 Aug 2025 08:37:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Al2N53Nx"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 416852882C6
	for <linux-man@vger.kernel.org>; Wed,  6 Aug 2025 08:37:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754469471; cv=none; b=tE469Xw3VrBUY43R91kWu6iVQ+UxGhLAQBxCgl82EQw9lQn3fuk0Y8h/jy36gQh7CT8Ss1EJNXQUvnrEzWqApUZcvMCBgArOrTIuH3J3B1RIn96d4XajqFMZKExrgGnukeLGMJHCefe9nUXOfYjbnoj9FQ9OukUZX1Tj/AMTErc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754469471; c=relaxed/simple;
	bh=wBPFjSF/gNFrZ0eX9FqVI8oa/LKE6lozAk3InIbKRXE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tLNjv69OjepUc36VZ1mKo9c0zBiZsQCnwbdvRRMqbbfA/kmnW5YM2wsRTErBRSQSsrQhnNZWUKwauPrNesXdWzm+gnnHbBzpiUqQ3T4BimUr9noJBmOvISMPHr+Q+ijDp60kSNkzARDdy7UEDi2ehNSF+Y2H38YL8fYn02DebsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Al2N53Nx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EECC6C4CEF6;
	Wed,  6 Aug 2025 08:37:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754469470;
	bh=wBPFjSF/gNFrZ0eX9FqVI8oa/LKE6lozAk3InIbKRXE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Al2N53NxlYCSJ97RCYqesacYBDXgXgOOSvH3h6u+HRGDpVUF+LwbWmpnpoT61rLmM
	 JvXVNKaL4/iydrNqOmj28NZxttg/XcDik9GuUAXC0gKwGfKwEUylTrAgxH6HDW3Azn
	 uIRG2xB+cKT9qh7AEWxIRKbX6ZZd9y0uYtKz8Wz7ojQwdk9uYIZi/6DWTwju9M5mh7
	 +UxpUpUAlf1EQiDRFD7sUc6aV3Qd6NgowW2axkK/3BJVQWNJiuxb5cS7pwlBeAm8xI
	 /om1N34Zrv3VRHN0VW/dHCxRNlxAinnUh8vociOfEn+cjc0FVkREGWvcCAsvT3WEXv
	 /b8l7KvlAW5sw==
Date: Wed, 6 Aug 2025 10:37:44 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Aleksa Sarai <cyphar@cyphar.com>
Cc: "Michael T. Kerrisk" <mtk.manpages@gmail.com>, 
	linux-man@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>, 
	Jan Kara <jack@suse.cz>, David Howells <dhowells@redhat.com>, 
	Christian Brauner <brauner@kernel.org>
Subject: Re: [PATCH 02/10] mount_setattr.2: move mount_attr struct to
 mount_attr.2type
Message-ID: <s2mvvspnu2kxakpjinu3y4cnexo6keeqejrtwufbbpnzflmsf7@jsy663irx4iq>
References: <20250806-new-mount-api-v1-0-8678f56c6ee0@cyphar.com>
 <20250806-new-mount-api-v1-2-8678f56c6ee0@cyphar.com>
 <lt47z3kplkm7g2stof7vey4fnh2r3eqr4o5vkmjep5fppcrdzs@nx2r24g4mdsj>
 <2025-08-06.1754466294-elegant-cook-harsh-fiction-woody-sack-0yCISW@cyphar.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oeesyiyw5uwq57jc"
Content-Disposition: inline
In-Reply-To: <2025-08-06.1754466294-elegant-cook-harsh-fiction-woody-sack-0yCISW@cyphar.com>


--oeesyiyw5uwq57jc
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Aleksa Sarai <cyphar@cyphar.com>
Cc: "Michael T. Kerrisk" <mtk.manpages@gmail.com>, 
	linux-man@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>, 
	Jan Kara <jack@suse.cz>, David Howells <dhowells@redhat.com>, 
	Christian Brauner <brauner@kernel.org>
Subject: Re: [PATCH 02/10] mount_setattr.2: move mount_attr struct to
 mount_attr.2type
References: <20250806-new-mount-api-v1-0-8678f56c6ee0@cyphar.com>
 <20250806-new-mount-api-v1-2-8678f56c6ee0@cyphar.com>
 <lt47z3kplkm7g2stof7vey4fnh2r3eqr4o5vkmjep5fppcrdzs@nx2r24g4mdsj>
 <2025-08-06.1754466294-elegant-cook-harsh-fiction-woody-sack-0yCISW@cyphar.com>
MIME-Version: 1.0
In-Reply-To: <2025-08-06.1754466294-elegant-cook-harsh-fiction-woody-sack-0yCISW@cyphar.com>

Hi Aleksa,

On Wed, Aug 06, 2025 at 06:10:36PM +1000, Aleksa Sarai wrote:
> > > page. In addition, future man pages added in this patchset will want =
to
> >=20
> > Please use two spaces after period in commit messages.  See:
> >=20
> > $ cat CONTRIBUTING.d/patches/description | grep -A5 Style.guide
> >     Style guide
> > 	URIs should always be enclosed in <>.
> >=20
> > 	The correct inter-sentence space amount is two.  See some
> > 	history about this:
> > 	<https://web.archive.org/web/20171217060354/http://www.heracliteanrive=
r.com/?p=3D324>
>=20
> I'm really sorry to be difficult, but is this really a necessary
> requirement for man-pages submissions?

It's not a requirement; it's a nice-to-have.  I'll amend your commits if
something remains.  But if you'll be contributing often, I recommend
doing that yourself.  And in general, I recommend using two spaces after
period, as it results in more readable text.

> I understand how much of a stickler you folks are for the formatting of
> roff files (though it seems quite arbitrary to me at times), since the
> need to maintain ~600k lines of roff is hardly an enviable task (and you
> folks do a great job of it!) so spending more time reworking roff
> layouts could be seen as a reasonable price of entry for contributors
> (even if it results in man page submissions getting abandoned -- which
> is IMHO what happened with the first iteration of these pages).
>=20
> But what practical reason is there to extend minor style guide quirks to
> *commit messages*? To me, this seems akin to correcting minor
> grammatical mistakes made in commit messages by non-native speakers'
> contributions -- but man-pages doesn't do this, right? How many people
> are going to read most commit messages, outside of "git blame"? How
> often are commit messages typeset?
>=20
> I didn't grow up using double spaces after periods, so I find it
> incredibly strange to do it when writing. I don't mind folks who prefer
> it, but to quote the article you linked:
>=20
> > For any non-typographers who made it all the way through this article,
> > if you want to double-space, do it.  If you want to single-space,
> > fine.  Just please don=E2=80=99t try to enforce your view on the world.=
  Stop
> > judging people.
>=20
> I also have ":set nojoinspaces", because otherwise all of my documents
> will have mixed double-spacing depending on whether the spaces were
> added by "gw" or by hand. (So I would need to manually fix this each
> time I re-wrap text.)
>=20
> I mean, it is just one 0x20 byte at the end of the day, so I'll go ahead
> and add it if necessary. I just struggle to see _why_ this is seen as
> necessary...

Okay, no problem.  If it's difficult for you, I can amend that while
applying.  I was suggesting it in case it was easy for you.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--oeesyiyw5uwq57jc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmiTFFcACgkQ64mZXMKQ
wqkWIA//TvcDDlfi4mVtYmzv5ezo7GR9l8JGA1H9U7yvqXauAKB+GT8Tm7WFFWCN
SEV34Ajp8VvIRhSpvq1TyabpADIDdziLT78c9P62PCs7wE2Y2ztqr5nYx1qAzgY3
b/Vo3cbiB++ju5+jsXCFXqNg/cu/JbKrVOk4MV9ZwdoGJkbJ830IYTI3sActu1nI
pgrayk9lFJIAY+GOBaDpVSrPLNdq7KLcpdjUS093afsjfNdxUnZxxlbdBLyBaON9
7/FtoFjMf5xQzHGO7hfLUZeTDIh4nWO+Shnuo/6Q+6gzjFYgXXCCGB9vghdVQ4Aw
692DST/ZmiuhyyPUBnStIO2Kwm1cdzcYHcVGf36x5BqZMyVNd5gVAe6bDUk4RDUH
BF4NxxYrIXyu4wgBvsZHTPo7fmECIHumSQE6IdThGK8G/yJ9jU/I5dk6iXlJG7sF
Ej7d4n2a3avrfcjlb3P86f6qdVPoJXJmB/N9RKO3YUwHQZ6YDuYayoa3amI5q2Bh
Lx0X801ISOQaVn47OVZlloJJxwvoDLPDgTnv1miK1QYewEn60683AJD8SZiDuJz4
Dp6jaU8zb2dPEbrkrsWmyjEtI0Xua6OJiWBWXpLEpuFPRhWs4eP4ca7dnJTASpjW
gFjBd8IjXLM40AF2uLEXK/ljRBQRN1Y2ghsImHHb5m1og+Y13zQ=
=ma+m
-----END PGP SIGNATURE-----

--oeesyiyw5uwq57jc--

