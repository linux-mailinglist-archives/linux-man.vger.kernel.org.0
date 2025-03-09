Return-Path: <linux-man+bounces-2590-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4049BA58775
	for <lists+linux-man@lfdr.de>; Sun,  9 Mar 2025 20:02:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C957B7A3D81
	for <lists+linux-man@lfdr.de>; Sun,  9 Mar 2025 19:01:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 122281DED57;
	Sun,  9 Mar 2025 19:02:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HXm1t2SF"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C477C176ADE
	for <linux-man@vger.kernel.org>; Sun,  9 Mar 2025 19:02:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741546932; cv=none; b=ogsVlrkNSR+5lfyJ3xudvnRIR399Pq1io/CQzWZlQ7EIU0gEvhHyTBlS5xQnh0TOZfJaRKQv4hR7J5yYj0cXN+ZGoRD33NseJP82R6v02xn8m24LZtLRmeJNtoybqjrm4AvQNUsvKqzk8ip/FKMyvXX51NmPcCgAAMDDf+ZVzo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741546932; c=relaxed/simple;
	bh=VB0YIZ3dGKDXiKHLQBNEPIDcXxKycI61bd+LRa05MOo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=desFJpoFM2MD/Oca5nTLBlHR2lorb8fgF5h1fxRqnmZy3nxR4gNdJXUeQNNY0gpP+04X3vkSt2ETRwmpFt34ZUmt81FQEWRnBMOVIxWe2vY3YWRHaVbguXry+oyfjRPmpwhMiBL2VtlZksoUYvdMklxxRlMie4SmUqQt6LhU31I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HXm1t2SF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E148C4CEF6;
	Sun,  9 Mar 2025 19:02:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741546932;
	bh=VB0YIZ3dGKDXiKHLQBNEPIDcXxKycI61bd+LRa05MOo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HXm1t2SFd5uLdB9N6osXAjXY5QGHrVhUnCwP7DtvsKLrzGz+6IS8PIfVfhHWX5+fO
	 AK6EhP8bQFHx+kBnun3iBRMo0DyJE3DLA9YY5yzHe+ssz2dEWaT8wIfXtwFs/2ikyD
	 2h5YWJr2Japyv2uoBmcesqmsh1+T1inUwlfVGzRJxAB+fESQ2mVyoZrX/yzUxuWjvG
	 1TW5VrlUtzVctOjCxsJSAWmBrMGNAPH9hmI30p1cP3heDd5qWZz9D27Wnp4jzrBqOg
	 sQMTKZdhJAqQEU39Gx8s3oRe2o4nE1X0kSu6+JuhPy4SLb3QsS7E5DtC9dSJp3L4xg
	 7z7QENfZyo8cg==
Date: Sun, 9 Mar 2025 20:03:24 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Mingye Wang <arthur200126@gmail.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH] random.{4,7}, getrandom.2: Adapt to Linux 5.6 changes
Message-ID: <5xemaly36nplgnzgpjymwdq44phbg5d43apdb5r7jnxoffjjpp@xgbyo2cksjch>
References: <bug-214885-11311@https.bugzilla.kernel.org/>
 <bug-214885-11311-M5kG7tptAp@https.bugzilla.kernel.org/>
 <CAD66C+YnJ6oAL2Qh0s91Pc5U5+8StgcyuU6P=hAoYp7Vu_J-Wg@mail.gmail.com>
 <c4ec42cd-c72d-76e2-0078-f8b68f525152@gmail.com>
 <CAD66C+aPZxQ+FQaFUgDAZoD_FSamWLTUiBjD8ZC3kCHn2HdVfw@mail.gmail.com>
 <CAD66C+bLeRstDB++5LHEBrXNbXJxbBkupKdkReaCrKSaxkBL-g@mail.gmail.com>
 <62c56706-4879-3f68-745f-84f214498bf1@kernel.org>
 <CAD66C+YbsFBHSZ8ZPp1QQECO5o6inTh+e_vYUuH6jRzAMDDb6Q@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dlfnfny2ajzrzjk4"
Content-Disposition: inline
In-Reply-To: <CAD66C+YbsFBHSZ8ZPp1QQECO5o6inTh+e_vYUuH6jRzAMDDb6Q@mail.gmail.com>


--dlfnfny2ajzrzjk4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Mingye Wang <arthur200126@gmail.com>
Cc: linux-man <linux-man@vger.kernel.org>
Subject: Re: [PATCH] random.{4,7}, getrandom.2: Adapt to Linux 5.6 changes
References: <bug-214885-11311@https.bugzilla.kernel.org/>
 <bug-214885-11311-M5kG7tptAp@https.bugzilla.kernel.org/>
 <CAD66C+YnJ6oAL2Qh0s91Pc5U5+8StgcyuU6P=hAoYp7Vu_J-Wg@mail.gmail.com>
 <c4ec42cd-c72d-76e2-0078-f8b68f525152@gmail.com>
 <CAD66C+aPZxQ+FQaFUgDAZoD_FSamWLTUiBjD8ZC3kCHn2HdVfw@mail.gmail.com>
 <CAD66C+bLeRstDB++5LHEBrXNbXJxbBkupKdkReaCrKSaxkBL-g@mail.gmail.com>
 <62c56706-4879-3f68-745f-84f214498bf1@kernel.org>
 <CAD66C+YbsFBHSZ8ZPp1QQECO5o6inTh+e_vYUuH6jRzAMDDb6Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAD66C+YbsFBHSZ8ZPp1QQECO5o6inTh+e_vYUuH6jRzAMDDb6Q@mail.gmail.com>

Hi Mingye,

On Tue, Mar 04, 2025 at 10:29:48PM +0800, Mingye Wang wrote:
> Hi Alex,
>=20
> Apologies for being so slow (1.75 years! wow) at fixing my patch.

Thanks!  No problem.  :-)

> I've corrected
> your mentioned deficits (linebreak, version number) and rebased my patch =
to the
> current HEAD at 46b7bca (Feb 27). Please check my work and tell me
> what you think.

Would you mind sending each patch in a separate mail?  As
git-send-email(1) does?  It makes it much easier to read and reply to
each patch.  Thanks!  See also:
<https://web.git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTR=
IBUTING>


Have a lovely day!
Alex

>=20
> Thanks,
> Mingye Wang
>=20
> On Sun, Jul 9, 2023 at 3:07=E2=80=AFAM Alejandro Colomar <alx@kernel.org>=
 wrote:
> >
> > On 6/5/23 05:13, Mingye Wang wrote:
> > > Hi Alex,
> > >
> > > attached are two patches split and revised as requested.
> > >
> > > Regards,
> > > Mingye
> >
> > Hi!  Here go some comments for one of the patches:
> >
> > >     * random.7: Revise "choice of random source" to remove any recomm=
en-
> >
> > Don't hyphenate words here.
> >
> > > +.\" commit 30c08efec8884fb106b8e57094baa51bb4c44e32
> > > +As of Linux 5.6, \fI/dev/random\fP is identical to \fI/dev/urandom\f=
P,
> > > +except that it blocks during early boot.
> > > +A jitter-based seeding technique added in Linux 5.4 should help redu=
ce
> > > +block time.
> >
> > Please use semantic newlines.  See man-pages(7):
> >
> >     Use semantic newlines
> >         In  the  source of a manual page, new sentences should be
> >         started on new lines, long sentences should be split into
> >         lines at clause breaks (commas, semicolons,  colons,  and
> >         so on), and long clauses should be split at phrase bound=E2=80=
=90
> >         aries.   This  convention,  sometimes  known as "semantic
> >         newlines", makes it easier to see the effect of  patches,
> >         which often operate at the level of individual sentences,
> >         clauses, or phrases.
> >
> > > +.\" commit 50ee7529ec4500c88f8664560770a7a1b65db72b
> > > +.PP
> > > +The pre-5.6 \fI/dev/random\fP device is a legacy interface which dat=
es
> > > +back to a time where the cryptographic primitives used in the implem=
entation
> > > +of \fI/dev/urandom\fP were not widely trusted. It would return rando=
m bytes
> > > -read from both files, but it will not make reads from
> > > +read from both files, but it will not make reads from a pre-5.6
> >
> > To make it easier to grep, prefix verions with the software name (this
> > is done consistently in the pages).  So something like 'pre-Linux 5.6'
> > would work.
> >
> > Thanks,
> > Alex





--=20
<https://www.alejandro-colomar.es/>

--dlfnfny2ajzrzjk4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmfN5fUACgkQ64mZXMKQ
wqmwcxAAr2k0xNVC4fenFK6mD8sieMv4MrQOUZcSx7QT/d7SzRJd4WRShHmwzi4p
qKfKPzjpz0WAAqapN6Zt4gYql5CHjN6stsv1ytWQowCpyB489NcYdYOyjoh9/nld
XhfeS65h2gSCoB2HSSpWSITufoBltzItlq5celBLJtFqfD2Bpm06fJkiNHCg5Uls
8bi6GrZe6ApXwjRh7jkwvt2rm5zWAPKD1i4CphPvnlqX14SYRniHHS0LX5u94s3b
/15vr0cYS/XlHXxKKDFg5dKz2V0Nlb0OuX6f0KYh/1F6J3Sw/M+5ZKo5nq4Tw0LK
iRjD3mrcRaMmZf2QRHFCr6WRohb4X8UGEdZkt4kgXeWQ4cX5mD4Waa+sRs2cDuLh
6Y4IOzK6do5t9xP7TPt3MUaLhJqPbJ4SagJW5UaI1hQv8L3RyK/rJJVyuXV9hA+R
0u9NElps2xylCJQjb9Mx7QhvapY0mOhT+lXNoZP7vYEdHIb9AbpU+qlkw2V4JiUi
EpBxBd+ZYGu3nLjF1kdiux0MDNILD6lwHEDrbGVi1CVOVwfIV12NS3vt3D7XGolU
hwf37R4M9sotVHQnJf4jxEWctRddbKby377TCboN748aYyybdM1eL+w4umZWCjPS
pJOXDFWPiyDgFTL7m03/FYgcVMAykbmcOcQiI/AYh9XEf0+lwwM=
=CJsI
-----END PGP SIGNATURE-----

--dlfnfny2ajzrzjk4--

