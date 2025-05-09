Return-Path: <linux-man+bounces-2896-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A399DAB1D27
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 21:07:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 56BD6983010
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 19:07:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BE85253951;
	Fri,  9 May 2025 19:07:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OhFcGYl6"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A88E241697
	for <linux-man@vger.kernel.org>; Fri,  9 May 2025 19:07:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746817671; cv=none; b=rLtsXP2aLwTiUaEU31rad/E3DkcuGh/YH88YuDH8LhgmeDDGtZVuY0t8XfGahomSMz2UzCknx7EdMThgJ7EtDXStmFNOE7OGEZ08i2Yur3R5R/NUxMdegnVLpHeuc5Fyq+s7tInqsoiuCl2q4PaDdTW7zrZRzShOuneuv7ZIXfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746817671; c=relaxed/simple;
	bh=08PvLzoW3iOzKHNly2m0zaa9fkV3m2tEWlacHYMF+Z4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WchbTE6c5bDvadKF2UA5i8pBczwECTB+GOUQN6fntebAl9fuiKouFI478r6JGfgGC2BAoJDbpjW+TUzLWSDaj1/BFV9P4FLmsOj5emhVdpviNSu9kyii84TccuILJgUHILuTAsJ2tuG6LuKwt3+VDvN8T5OaXSMu/wJD0JrFz5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OhFcGYl6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 33879C4CEE4;
	Fri,  9 May 2025 19:07:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746817671;
	bh=08PvLzoW3iOzKHNly2m0zaa9fkV3m2tEWlacHYMF+Z4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OhFcGYl6O+OoHTqqUpvTrKzWMRPUu0QH7SPF7Ysl2V4/FK+PITK78ZKAYiPFmiQzW
	 Go+cu0oyYIJVy0wodbMy3ekEB8c72nGKWpd2TR/iP1WwA7XWatXxOvWCHJKUYeB/Vr
	 6Eh+GbvRTHDBt2jg1FEEkj8XuQ/TF4eOMcRBwypK/C0RkTTiKbFa1fuuZgNchbQ+20
	 s6mRAZW9ZHlnhAK/qjPTaTdqd5J6x3D6ICmURPm+eipgD3BFDQkb478phdfTa75uYf
	 0F05VP8RAc6OkDNDI1Pw0J9iuCizBJHLbTByXagyG2e/gy0MQwb/vxnWkq4xYEAsgK
	 nS5mOyQqvYVIw==
Date: Fri, 9 May 2025 21:07:47 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Dave Martin <Dave.Martin@arm.com>
Cc: linux-man@vger.kernel.org, Carlos O'Donell <carlos@redhat.com>, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: Removing in-source contribution records contributer
Message-ID: <juos3oxvdsxkwzwe5rcst3jft3wsnhh4dxs6xasvfk2nzp7jdo@h2tz4hvtkqp7>
References: <lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn>
 <gatqfsr5gvyy5iuq7gmlpibawerkcmbg4dl4ahzswbe5bgbec6@xyfht7yewjfv>
 <20250408124238.2gbis6jq5pdz7yoi@illithid>
 <7a09c8a5-6329-412e-be41-9950a758e55e@redhat.com>
 <nfwircxzu43boe5tme6loarzsq2rcecazpuox6eujeqjj6a7rv@nhzkijkx4lix>
 <2tmwbk6ennuamcvjdqnialvh4ez3zen666qatcklevasimlihu@n7o5hp6aejqp>
 <aB4N4eD1gbZi6Cao@e133380.arm.com>
 <vvom7m3xnrzq6w64rm5wue4byj64mg6jynme7kqdzjs3xkpttp@elcgfz4quzdw>
 <aB4iqKfkuNpOXUuY@e133380.arm.com>
 <bwtcqxfzrtnr2genjayihmgmqonac7blka6m43a5kbhq73mba7@l5jkhkp34h2d>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hfu5mdexttcmeq6w"
Content-Disposition: inline
In-Reply-To: <bwtcqxfzrtnr2genjayihmgmqonac7blka6m43a5kbhq73mba7@l5jkhkp34h2d>


--hfu5mdexttcmeq6w
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Dave Martin <Dave.Martin@arm.com>
Cc: linux-man@vger.kernel.org, Carlos O'Donell <carlos@redhat.com>, 
	"G. Branden Robinson" <g.branden.robinson@gmail.com>
Subject: Re: Removing in-source contribution records contributer
References: <lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn>
 <gatqfsr5gvyy5iuq7gmlpibawerkcmbg4dl4ahzswbe5bgbec6@xyfht7yewjfv>
 <20250408124238.2gbis6jq5pdz7yoi@illithid>
 <7a09c8a5-6329-412e-be41-9950a758e55e@redhat.com>
 <nfwircxzu43boe5tme6loarzsq2rcecazpuox6eujeqjj6a7rv@nhzkijkx4lix>
 <2tmwbk6ennuamcvjdqnialvh4ez3zen666qatcklevasimlihu@n7o5hp6aejqp>
 <aB4N4eD1gbZi6Cao@e133380.arm.com>
 <vvom7m3xnrzq6w64rm5wue4byj64mg6jynme7kqdzjs3xkpttp@elcgfz4quzdw>
 <aB4iqKfkuNpOXUuY@e133380.arm.com>
 <bwtcqxfzrtnr2genjayihmgmqonac7blka6m43a5kbhq73mba7@l5jkhkp34h2d>
MIME-Version: 1.0
In-Reply-To: <bwtcqxfzrtnr2genjayihmgmqonac7blka6m43a5kbhq73mba7@l5jkhkp34h2d>

Hi Dave,

On Fri, May 09, 2025 at 08:49:39PM +0200, Alejandro Colomar wrote:
> Hi Dave,
>=20
> On Fri, May 09, 2025 at 04:43:36PM +0100, Dave Martin wrote:
> > > > Should the one-line replacement statement in each file refer back to
> > > > the CREDITS file?
> > >=20
> > > I prefer not, because then someone can copy the files to a different
> > > repository, without needing to modify the notices (they might take the
> > > CREDITS file as CREDITS_Linux-man-pages).
> >=20
> > Fair enough, though would it make sense for the boilerplate line to at
> > least become
> >=20
> > 	# Copyright, The authors of the Linux man-pages project
> >=20
> > ...?
> >
> > This remains meaningful out of context, but when shipped with the
> > original tree this wording macthes up with the naming of the AUTHORS
> > file (assuming that's what the file is called).
>=20
> Hmmmm.  I see the point.  That sounds very reasonable.  Contributors
> sounded more like inclusive of anyone who passes by and writes a few
> lines, as opposed to authors which are usually considered only the long-
> term ones.  But since we would list all of them as AUTHORS, they're
> clearly included.  So, I'm going to do that change.
>=20
> > > > Renaming the CREDITS file to AUTHORS and/or clarifying this in a br=
ief
> > > > top-level LICENSE / COPYING file might make the meaning clearer?
> > >=20
> > > Yes, now that I discarded the idea of crediting *all* contributors, I
> > > agree this file should be renamed to AUTHORS.  Regarding a file solely
> > > to clarify that the AUTHORS file holds the copyright holders of the
> > > project, I guess by calling it AUTHORS it would already be obvious.  =
I'm
> > > hesitant to add another file for explaining that because the more
> > > uppercase files there are in the root of the repo, the harder it is to
> > > understand their relationship.  However, I can add something in the
> > > README, where I already document what each file is.
> >=20
> > Ack, it's probably fairly obvious what a file called "AUTHORS" means.
> >=20
> > Just a suggestion, would something like this work in README:
> >=20
> > +   AUTHORS
> > +       List of individuals and organizations that have contributed
> > +       content to the project.
> > +
>=20
> Certainly.  Thanks!
>=20
> > This will still be a true description regardless of whether the list
> > is complete or if non page content contributors are included.  (There
> > are probably plenty of borderline cases as to whether something counts
> > as a page content contribution or not.)
>=20
> Yep.  For now, I haven't documented it, but I've drawn the line at:
>=20
> 	-  Had its name either in a copyright notice,
> 	-  or in a source line saying something like "modified by"
> 	-  or was 'Author' in a git commit.
>=20
> Anyone who meets at least one of those has been included in CREDITS (to
> be renamed to AUTHORS).
>=20
> Exceptions are authors of code that was taken by this project, but who
> didn't contribute to this project themselves.  For example, the regents
> of the University of California wrote pages that have been incorporated
> into this project, but they didn't consciously contribute to this
> project.  Thus, I've retained their copyright notices, and didn't add
> them to CREDITS.

I've applied both changes already (currently in my branch):

<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3D98c87fcf783f20da7aae8adbe21e1954d9e8f310>
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/com=
mit/?h=3Dcontrib&id=3Dd5218b220e41a1ed031eea6219237fda0a93d9b2>


Cheers,
Alex

>=20
>=20
> Cheers,
> Alex
>=20
> >=20
> > Cheers
> > ---Dave
> >=20
>=20
> --=20
> <https://www.alejandro-colomar.es/>



--=20
<https://www.alejandro-colomar.es/>

--hfu5mdexttcmeq6w
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgeUoMACgkQ64mZXMKQ
wqmMEQ//Vj07WClGfCmLhdSBbFPxnY1Rbrr5j0McBMLTD+/nQTr/meSKa9Y1J/dO
ml/GVdwI9FMwuqn8hE+ESh0ggi/IRBEnxpQftSPpGcmdG/WUYOmvy/zO7KanEIo3
T1336I0S5zp9UV/Cb8mqdA9KduQseW/F2cy8UN6kFdoFw0EbKAbC26y9Iq5WC7df
teLBK3JEYVOEWnIrNsbPRQKN9qecikgtVBmmENTxQstcJUtIPU7HUC7PXXaGq17q
0U6109K+fF42DtiioKdU+IBenDOjXqEdQ50hVG7qhKVsSNzVn3r1sDLrETdIsadD
DcpByffSa2davkzYcF/WSM5CkvFgD8IDCubahoeDz3sm5WhXLeDmZfHh1UhLQVIb
SRrw3qlHYWuP6ThbxUWUVXZb5WrCzU4uTZxqrhvheMs7oE5ACo61hQp42zAk/C8a
q7WBKxXXFmTvkIVPoiX9OUlUTzNE9hJp/tN05RUYIFw/59LcCoN5f9KMqeuXUkSR
zsXWkmfVqFrmsUJ3+TRfo2yUXpxwRfABfQmkx8pBY1gl8TUHndvU+N7+sbu8zk1M
WhHTxcO05VKo/0wCkYA010a4DKA2cSbw+bOO7OhqIPIt0zr05IDc2iSuf2xfoNNT
rd0iODzwNF0ZmLsKtb3rD8Ad6nMYZmC8GDAYU3XIauf2wBcFHKE=
=aNT/
-----END PGP SIGNATURE-----

--hfu5mdexttcmeq6w--

