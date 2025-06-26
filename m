Return-Path: <linux-man+bounces-3215-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E24EAEAA46
	for <lists+linux-man@lfdr.de>; Fri, 27 Jun 2025 01:14:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CC5A4568012
	for <lists+linux-man@lfdr.de>; Thu, 26 Jun 2025 23:14:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F412225390;
	Thu, 26 Jun 2025 23:14:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KfN8K24D"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4DB223322;
	Thu, 26 Jun 2025 23:14:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750979688; cv=none; b=Vw2UY2PQmAeVn+ZrVaEx3Q2FV3v8bh0a8lI1bt5H7L2eL2vNtpysQuWhGS1A+avMQs7Nhd3yDfDj9AKrI8+8TIfkIcgGELb3P0WAUG6GgLnW9ScKQhsh/wh8JB0Gi979dGm3GZYsNY9IZOrm1Z1uOmAK13SxMIbgUH65ZQE1OZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750979688; c=relaxed/simple;
	bh=QSsOtqlSOQ8rkxp/bFDq8HJW+rihN1ioAiaEjFkQzns=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JYNP5PUO5NnRotXLpwp3l6F51WzcQ4EZlXWqJEws10PttLkG/lrmQp6CwCYP99olYBJq6Far58rLb5qYtKJgsoTu4Rmh3IbgAk+woi8hKwi+clLgyK9AOspdkEkma16rJMRLWDtKo4rTJ1yn7Lev4T7bNeQU/4TcSK6eGa0dq40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KfN8K24D; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A3A7BC4CEEB;
	Thu, 26 Jun 2025 23:14:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750979687;
	bh=QSsOtqlSOQ8rkxp/bFDq8HJW+rihN1ioAiaEjFkQzns=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KfN8K24DHp5kdnUiSDoZriULC5/L8NpJ6Q23yiwcPC50RtOywFb59GjX+bzo1Dqrk
	 MSfDZYtHcJmoK/Ins22fmB9TvsEYYFwo2RTcoZ6v/cWvUVCMVYexPP0wq/almH6T6/
	 VeGLaKhXGxKSjXGzHbvDA8jYAsCzb1WpPtWWLotfw8+LRPgw7VXyTZlggpVRL8GZXj
	 j4blVYPPl5KG8j54+UH1n+pVOO3GvKCHvdMrG1zFmq9GLMtyCxRCgFkaWeMyzXYhky
	 SSPn3gORvXBQlgLEHIO3+SoeXOm8PcqpSIEuSgi88rWRfakUMlxa0sRjj7G/+j6GXd
	 UiywU4ltZE+Fw==
Date: Fri, 27 Jun 2025 01:14:46 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: "Andries E. Brouwer" <aeb@cwi.nl>, linux-man@vger.kernel.org, 
	linux-kernel@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: man-pages-6.14 released
Message-ID: <u2ogua4573d2xm2p2oiuna67kydkr3e26pt6lixeidezdw34dg@nvn64na3cptt>
References: <uidtufql6ftz72im7w6zggeihwhuwgnpxwb7j46fbp6ryvzv4i@cwyp6ewepeob>
 <20250509112627.GA924923@if>
 <bn2rs76dkhejmthy2wvul4ho26zzlwtkfg474ztiwggkxz7f3d@g25omktsd3ug>
 <20250509121454.GA952723@if>
 <3e82680d-149c-4a67-b838-bc73c0be3e4e@redhat.com>
 <e363mzanav4inu3wtk5pmyzfwlquxr5kwh7ytk5emtayizi7qi@dqxritlnl22g>
 <42dad79f-e0f2-4731-ac14-0189f5d278a0@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mob4obqyeafrmizf"
Content-Disposition: inline
In-Reply-To: <42dad79f-e0f2-4731-ac14-0189f5d278a0@redhat.com>


--mob4obqyeafrmizf
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: "Andries E. Brouwer" <aeb@cwi.nl>, linux-man@vger.kernel.org, 
	linux-kernel@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: man-pages-6.14 released
References: <uidtufql6ftz72im7w6zggeihwhuwgnpxwb7j46fbp6ryvzv4i@cwyp6ewepeob>
 <20250509112627.GA924923@if>
 <bn2rs76dkhejmthy2wvul4ho26zzlwtkfg474ztiwggkxz7f3d@g25omktsd3ug>
 <20250509121454.GA952723@if>
 <3e82680d-149c-4a67-b838-bc73c0be3e4e@redhat.com>
 <e363mzanav4inu3wtk5pmyzfwlquxr5kwh7ytk5emtayizi7qi@dqxritlnl22g>
 <42dad79f-e0f2-4731-ac14-0189f5d278a0@redhat.com>
MIME-Version: 1.0
In-Reply-To: <42dad79f-e0f2-4731-ac14-0189f5d278a0@redhat.com>

Hi Carlos,

On Thu, Jun 26, 2025 at 07:01:24PM -0400, Carlos O'Donell wrote:
> > Well, we got express permission for a third of the copyright holders in
> > the last few months.  Also, we got no express notices in the contrary,
> > so around two thirds have remained silent.
>=20
> You should track down the copyright holders and get written approval,
> or restore the copyright notices.
>=20
> This is exactly the difficulty in maintaining such written notices.
>=20
> And why they are no longer recommended.
>=20
> > We could restore those that haven't expressely granted permission...
>=20
> Yes please.
>=20
> May I suggest doing a new release with the copyrights restored?
>=20
> > The thing is, as someone else mentioned, removals happen also implicitly
> > by moving text from one page to another and not copying copyright
> > notices, so how much does it matter an intentional rewrite of the
> > copyright notices into a different form (but which keeps their
> > copyright, as part of the AUTHORS file), compared to an unintentional
> > removal of copyright by moving the text (these do actually remove
> > copyright, so these are the problematic ones).
>=20
> Both are legally mistakes.
>=20
> The common utterance is "As compliance approaches 100% cost approaches
> infinity" :-)
>=20
> However, you should not deny anyone the right to have their copyright
> directly noted in the file, but you can encourage the generic use of
> "Copyright the Foo Authors." You can deny the contribution entirely if
> you wish on grounds that maintaining copyright statements is too much
> work.

Sure, if anyone explicitly wants to retain a copyright notice, I'll do
so (if it was old), or refuse to accept the patch (if it is new).

> > By rewriting the copyright notices, we'd actually be honoring the
> > copyright, even when text is moved from page to page.  I think that is
> > more important.  And since all explicit notices have granted us
> > permission, even if some have remained silent (in some cases, their
> > email probably isn't monitored anymore), I think we should go forward.
>=20
> I agree, but you need permission from the authors.
>=20
> I disagree that man-pages should go forward with the current changes.
>=20
> May you please restore the copyright notices and cut a new release?

Hmmm, it'll take some time.  I need to stop and compare the both lists,
which are rather long.  I don't promise it will happen soon, but I'll
keep it in a TODO list.  I'll also try to do it at least after
September, when I'll be meeting Michael in person, where I'll ask him
about his copyright notices (which represent a huge percentage of the
copyright notice lines).  That will reduce the work significantly.
So, it might happen around the end of this year.

Once I start doing that, I'll do another round of asking the remaining
people about their copyright notices.  Hopefully, there'l l be few of
them.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--mob4obqyeafrmizf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhd1F8ACgkQ64mZXMKQ
wqmxDQ/8CoxWbKyjl8vppWARokN76DeaTHnBCrDH9mdGWOCE+fjb+N2hpalg9eEr
PpEUYLzF0+EkxQ2PmexKlxFXsOhnbXzwK6JJJ8Ydc3rbMG6bz0bdM+s53nACk3ma
zqXljTUPMtwS7QkRAMGEfHqKri4u6U1TMjZ1qRkUAU+SPwYsxLbS8n1BGm66zZIa
d8vuwd8jF5W0s0qmtmybNz3t3aBzz7KP5Wmoh4Gc8jg5Ftn6R02MbUqnSru1gA9b
ae5gmcmUcJSVI9CGSZgacQTSyk6pGeEOnm1ZWqstwdfk/UoVhxcKGqQTfmH8WGtF
9s6p5UmTdhk/VLDHYbeL0/rTc3RBczgZ63Jb/1rTk2nTO/stcpJM8GmFDNN/P0ds
Hu2q24+QHVBfJMIxtm7XfPaMmXZ5sp+Q40EshhDEnpS0zQRCI6yo8XGTvo1zrBVW
0GqAPdZeAac2rmgZyqPiM+NCBgoncX3qfNVcMTAt79HH2+nCuFmRPpCpUzAKkjS3
8z2E8H/DLPRqm5LIsiL14FD66z3/zpS+eU7It4pAQIkmZ+V053r68Y6BdEQ2EGHG
xb52VqlkMn0cDsWZJ/qNE1YVnYmV+KbenHI4lnO/KE2yLrJVyRDg3he103EKIxsL
UdzK2HpxopYb3yHQlRbIW1kOOiwGRJ3o7d6OkusxzkobC+uSjm8=
=6SAu
-----END PGP SIGNATURE-----

--mob4obqyeafrmizf--

