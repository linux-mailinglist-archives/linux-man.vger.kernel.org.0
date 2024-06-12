Return-Path: <linux-man+bounces-1162-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 73339905CD0
	for <lists+linux-man@lfdr.de>; Wed, 12 Jun 2024 22:27:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 85A2B1C23DCF
	for <lists+linux-man@lfdr.de>; Wed, 12 Jun 2024 20:27:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E7A7984E0B;
	Wed, 12 Jun 2024 20:25:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jhgI9255"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A963284D0F
	for <linux-man@vger.kernel.org>; Wed, 12 Jun 2024 20:25:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718223949; cv=none; b=AhNBCZUplx10gXDYbgD2pSNPnVq9C406AM0/bhEyxYuMX1oj4oTQ//9rx5kiF2kKZsiwbC2dvCISRF3rH9ucOgWvcFmZzDrDvSXMaFN1ackpEZsHOmO66DlghOZLVAJpQZjheGLzJSpiDSXU13VwZm/13QLjIdml+XNI/39wAWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718223949; c=relaxed/simple;
	bh=gFylne8SXxt7w6aGhJr/s9yHzYD120DOgiCWDmkV+2E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=B5DEYpq3/RR1kpnQkU3jK5Vl1yiCCYTVGgbNEeRYLwi808iYhdzGqp/eVAcbdGSX77KNhUCd6xZryv5SfYtBR7JFBBhbWuOtuy/LzojAZ1ptCGQ5TFs+8EzZGVbwLw/hq8nXrifWosqk/RXXrN1WK7K73Q2LyhG7yA+1vHNNDUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jhgI9255; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E812C116B1;
	Wed, 12 Jun 2024 20:25:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718223949;
	bh=gFylne8SXxt7w6aGhJr/s9yHzYD120DOgiCWDmkV+2E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jhgI9255pSjDHwQx/My6ytvDkxz1tes9cLvEJiLItlHjC9WJtg9sOWEsuZZNruPx7
	 BbmdkelKjNbdacBrjMK7WgYdta0l3kskhVOmNzHL2iCrt2NWt7jqKSW/pQtgxvQAV3
	 mR8OhynA+sgvBqqkEf8DXoJFnUe/4nJcI2qOfXEC1N4TmTuiUKeNtrnl5k+KTLoE81
	 Wtsj8sf/qtbEJmXJidMmG/DTL1s/1eOx4Grzi0wirdHRjepeFD/53rGa9EvHtgFZVv
	 C5v71nDjuJv7j2U42cO2fCHPATe3Q/nRfaQfaveyih6zeRBE/XlberGEpgF083VbXw
	 3hLWnsSiJiGLw==
Date: Wed, 12 Jun 2024 22:25:45 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Brian Norris <briannorris@chromium.org>
Cc: linux-man@vger.kernel.org, Dietmar Eggemann <dietmar.eggemann@arm.com>, 
	Patrick Bellasi <patrick.bellasi@arm.com>, Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH] sched_setattr.2: Document sched_util_{min,max}
Message-ID: <6ojlih2pqcm6s4oiooyhwbltwxtcktjwsbcfnzazdecf32adwb@abj4g5lywy7d>
References: <20240524190829.2503648-1-briannorris@chromium.org>
 <erkmfrnua26323vx26kmzv7ynrt2vpub3pmrotr4wmvlujpfyi@42xwmyjyjt22>
 <ZmoAtQrMEaWKauA6@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="a32ipuryja4cuod2"
Content-Disposition: inline
In-Reply-To: <ZmoAtQrMEaWKauA6@google.com>


--a32ipuryja4cuod2
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Brian Norris <briannorris@chromium.org>
Cc: linux-man@vger.kernel.org, Dietmar Eggemann <dietmar.eggemann@arm.com>, 
	Patrick Bellasi <patrick.bellasi@arm.com>, Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH] sched_setattr.2: Document sched_util_{min,max}
References: <20240524190829.2503648-1-briannorris@chromium.org>
 <erkmfrnua26323vx26kmzv7ynrt2vpub3pmrotr4wmvlujpfyi@42xwmyjyjt22>
 <ZmoAtQrMEaWKauA6@google.com>
MIME-Version: 1.0
In-Reply-To: <ZmoAtQrMEaWKauA6@google.com>

On Wed, Jun 12, 2024 at 01:10:29PM GMT, Brian Norris wrote:
> Hi Alejandro,

Hi Brian,

> Thanks for the look! A few comments and questions.

:)

> > Please don't use blank lines in the source code.  They trigger a
> > warning.
>=20
> Oops, I probably should have gotten further into the documentation to
> figure out how to run the linters. Indeed I see the warning now, and
> I'll make sure I don't add more lint in the next version.

No problem.  If you need help, just ask.

> > > +These flags indicate that the
> > > +.I
> > > +sched_util_min
> > > +or
> > > +.I
> > > +sched_util_max
> > > +fields, respectively, are present, representing the expected minimum=
 and
> > > +maximum utilization of the thread.
> >=20
> > Please use semantic newlines.
> >=20
> > $ MANWIDTH=3D72 man man-pages | sed -n '/Use semantic newlines/,/^$/p'
>=20
> I'll give that man page a better read for my next submission. Thanks for
> the callout.
>=20
> >    Use semantic newlines
> >      In the source of a manual page, new sentences should be started on
> >      new lines, long sentences should be split  into  lines  at  clause
> >      breaks  (commas,  semicolons, colons, and so on), and long clauses
> >      should be split at phrase boundaries.  This convention,  sometimes
> >      known as "semantic newlines", makes it easier to see the effect of
> >      patches, which often operate at the level of individual sentences,
> >      clauses, or phrases.
>=20
> I'll do my best to interpret what the best "phrase boundaries" are. I
> don't think the writing always has enough punctuation breaks to nicely
> break into 80-char pieces.

Yup; it's not black and white.  Just find what you think is a decent
break point, and that should be ok.  Anything is better than random.  :)

> > > @@ -353,7 +398,6 @@ .SH ERRORS
> > >  .I attr.sched_flags
> > >  contains a flag other than
> > >  .BR SCHED_FLAG_RESET_ON_FORK ;
> > > -or
> >=20
> > This change seems to be unrelated to this patch, right?
>=20
> I suppose it's unrelated. At first I was going to add new EINVAL
> descriptions to this paragraph, and I found that it had an odd
> (incorrect?) use of too many "or". But then I simply broke out an
> additional EINVAL section, which makes this change less related.
>=20
> Side note: on second thought, it probably makes sense to split this
> paragraph into multiple anyway, since the pattern
>=20
>   "condition A; or condition B; or condition C [...]"
>=20
> gets a bit hard to read with sufficient number of different conditions.
>=20
> If it's preferred (and based on your comment, it probably is?), I'll
> make corrections in separate patches.

Yup, it is.

Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--a32ipuryja4cuod2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZqBEkACgkQnowa+77/
2zK7HQ//WoOC6lvo3Aif/p1C0Y7wSsTn+z0cn2s0UaBis32Cd8Bj/0Do+yyT9v/B
pNKArkmPoSwOgnzLVxrTDR/jV9saAJ9zz65MFMJqZqCH4VWMFjVF4hB43BStJOdW
cvZPqr6bEUvYysWyk56E8J6jB/HFfZnsUFb7XV2rTryBzXM1XvqcKJ744WqWeYD+
oI7q+usvSyQD4IxipRuaJX0IXhMWdImsyUrg/EpKMS5egI1pWxUOYtdMs/ROta66
bKpZ+mC9VGQsIMj7F08HGUCpZvGeOcbNdoLpU3E7N3QT2HoLAtyh42qPahEhLx9f
rv7XywgMeSvDOdu3Oqz8HelivhyoAVyTd+hEWqdD6QYmMhTYHJF23SeN9KpVQlX4
lnNvWQ4/HM47oSJpiiWanwMgjJIUahOu4t6xiNYal+eF625HxBRg+UPZpGkgEoTP
kG3d46DMJ5gtsVlZhzw1jGJfBP51URhHmRrPB70HQcCXj6XmJ0vzh77kvPOnzQf6
JIA6EsiUfE5Mb/83DpungRyVSS3ejenLhmDIS1QBU9eDLd/zzpqEltcJ5s2PnDzj
QWo1CizgcspknG6pzHdhqwRyat4ljJSGade3jU/e3bfTqgPkOV1wvaGfkmoy3szw
U4wOv0kBfWzyL5DrMGC7LO/9xeM1tIinHMY4KZ3yzib1LYxHAoo=
=leGY
-----END PGP SIGNATURE-----

--a32ipuryja4cuod2--

