Return-Path: <linux-man+bounces-4059-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 913BCBBDF03
	for <lists+linux-man@lfdr.de>; Mon, 06 Oct 2025 13:57:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 483CA3B9DBA
	for <lists+linux-man@lfdr.de>; Mon,  6 Oct 2025 11:57:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C81DD226CF0;
	Mon,  6 Oct 2025 11:57:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KGRv/wuY"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86C0A17E4
	for <linux-man@vger.kernel.org>; Mon,  6 Oct 2025 11:57:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759751862; cv=none; b=fg+bHobQKZYLrN7YenM7Hz80zHVq5k0hZHTxmzb+0YWfKI5ebPnv86hiEnouCBNEIy3ooB/yT53wwL28WopynOvxtRgSjMoWwXqFSfc6Kf0qD6eXFI3BPAqqWMTBUrSEqBwXo1rm1oKygKxWbGmOWE592l2gfoNp5A4FqP6AsPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759751862; c=relaxed/simple;
	bh=bE+PzemfnJwVY4FpzD3/yCxjt52c5zBpnxfSFSz51ZI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eu0LZE4HYRbIAKWjLTPbr7/h79dIq5yEebbnZm97t9Cj/h5Mzub4p/Gv99SBwa2ceJGFrz2ogg84N2hsGo/ttOQXgF7o9P3Fl50zFxiuHaPjYJhpFjLZFl90VXqW8Ze9n4zPXRdJx4hRDRwHPKWFhu+w3Z34VrpwQkaO8vX+BhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KGRv/wuY; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36BBDC4CEF5;
	Mon,  6 Oct 2025 11:57:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759751862;
	bh=bE+PzemfnJwVY4FpzD3/yCxjt52c5zBpnxfSFSz51ZI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=KGRv/wuYPfR7TSBTiM6o9Ugm26yQQ4cW3dfr6hAJCcDSi59ggYr4gZW65NvdGCdXw
	 LC878+kwnidweHi+rilS33VVieV0iyTVVLaKuETu07SfBTdPpA7t9SbiGFN6RNF2Ip
	 8fjAhWaTYSckkqJ26BilJMlKcZ9Y058UuL3tpfo64A/+fwY0mxM0SHqGI91VgOi16H
	 pY1dJCqVRSfhu0V547tsbgx6YsNnJiDjP1l5umlCDO8ijNI7PS1ONw/l2XmyNPo9VH
	 2ui8uHIeGcdLGf0e0/qJQAOSl9ohliqGV3xT0Fuzjv4bPHL5SehKnzf/3defzLlSup
	 C5rlNXsYH24gA==
Date: Mon, 6 Oct 2025 13:57:38 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Luca Boccassi <luca.boccassi@gmail.com>
Cc: cyphar@cyphar.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/move_mount.2: document EINVAL on multiple
 instances
Message-ID: <rleqiwn4mquteybmica3jwilel3mbmaww5p3wr7ju7tfj2d6wt@g6rliisekp2e>
References: <20251006103852.506614-1-luca.boccassi@gmail.com>
 <2hg43wshc3iklydtwx25ulqadzyuldkyi6wylgztzwendi5zhw@kw223cxay7qn>
 <CAMw=ZnR6QMNevxtxWysqi5UkDmbD68Ge=R5cVAxskqtmhb5m5A@mail.gmail.com>
 <bywtfrezkfevzz7y2ecq4w75nfjhz2qqu2cugwl3ml57jlom5k@b5bebz4f24sd>
 <CAMw=ZnSZmW=BFbLLSKsn7sze-FXZroQw6o4eJU9675VmGjzDRw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rsq7h2z7ikfbwn5n"
Content-Disposition: inline
In-Reply-To: <CAMw=ZnSZmW=BFbLLSKsn7sze-FXZroQw6o4eJU9675VmGjzDRw@mail.gmail.com>


--rsq7h2z7ikfbwn5n
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Luca Boccassi <luca.boccassi@gmail.com>
Cc: cyphar@cyphar.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/move_mount.2: document EINVAL on multiple
 instances
Message-ID: <rleqiwn4mquteybmica3jwilel3mbmaww5p3wr7ju7tfj2d6wt@g6rliisekp2e>
References: <20251006103852.506614-1-luca.boccassi@gmail.com>
 <2hg43wshc3iklydtwx25ulqadzyuldkyi6wylgztzwendi5zhw@kw223cxay7qn>
 <CAMw=ZnR6QMNevxtxWysqi5UkDmbD68Ge=R5cVAxskqtmhb5m5A@mail.gmail.com>
 <bywtfrezkfevzz7y2ecq4w75nfjhz2qqu2cugwl3ml57jlom5k@b5bebz4f24sd>
 <CAMw=ZnSZmW=BFbLLSKsn7sze-FXZroQw6o4eJU9675VmGjzDRw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMw=ZnSZmW=BFbLLSKsn7sze-FXZroQw6o4eJU9675VmGjzDRw@mail.gmail.com>

Hi Luca,

On Mon, Oct 06, 2025 at 12:46:41PM +0100, Luca Boccassi wrote:
> > > > >  .TP
> > > > > +.B EINVAL
> > > > > +The source mount is already mounted somewhere else. Clone it via
> > [...]
> > > > > +.BR open_tree (2)
> > > > > +with
> > > > > +.B \%OPEN_TREE_CLONE
> > > > > +and use that as the source instead (since Linux 6.15).
> > > >
> > > > The parenthetical in that position makes it unclear if you're saying
> > > > that one should use open_tree(2) with OPEN_TREE_CLONE since Linux 6=
=2E15,
> > > > or if you're saying that this error can happen since that version.
> > > > Would you mind clarifying?  I think if you mean that the error can
> > > > happen since Linux 6.15, we could make it part of the paragraph tag=
, as
> > > > in unshare(2).
> > >
> > > I meant the former, the error is always there, but OPEN_TREE_CLONE can
> > > be used since 6.15 to avoid it. Sent v2 with this and the other fix,
> > > thanks for the prompt review.
> >
> > Hmmm, I see.  Why not use open_tree(2) and OPEN_TREE_CLONE before 6.15?
> > The syscall and flag existed, AFAICS.  I think we should clarify --at
> > least in the commit message--, why that version is important.
>=20
> It was just not supported at all, so it would still fail with EINVAL
> before 6.15 even with the clone.

Thanks!  What's the exact commit (or set of commits) that changed this?
That would be useful for the commit message.

> Would you like me to send a v3 or would you prefer to amend the commit
> message yourself?

I can amend myself.


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--rsq7h2z7ikfbwn5n
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjjrqwACgkQ64mZXMKQ
wqnCVw//SJdGDpJDR8bULcZve9sOySAlVFKTGAunxIBGIX3tLcVKAROb2p5/mkp/
zobYFVn3UHSpxBWNqL47cf0QRdOcHa7BFUT1eMIXhmG3IG2Yc4syqjT/CxTNEDqm
aoWdYk5+r/1CvR+klLJZjAaKEzh4MVycRceIUf1lzxQHyDp44koww3gV4HuB7FwR
GYPnS2rEc0erky0BxwQKY0Yn5DLrPeOMRVzTEOCQL0JgPoBZQFkEo+mblXZzLnH6
RbR04kr7YYKWPlzZngWQwLVuyDN+Gg7kcFGmRACQCcNKShuOZGx/0eY3dOdW7h47
XXT4s7wu8o+BRy8aPyd+uRFRT9+Fq8VWO5BjCpGcVBlytmwirOrGq4WBjpJ3jsEC
8C1JOpOnsVWk/EIjh5BqJZx2clv0etpv1AA87JdYxIvN2iZ5z2TjGkYEnMAzUE6/
Ed7cDsAUJmr1GlwhpdrCWbdYzhZYYQsWcJnOzPD+vDGxsrQ9AUgctHDQvuoGKBuh
j5nfAmXOBi1CJPbdTK9zUkzEZV38h9pWxs1RvgCPvsdyai4Es+iZKF26UHKc2Llx
E5qJjxZ72O5zwFpK4JRhoaJbQbWxe5aLy5B24KVTa5Z4ceh7hNxeQyYGq62jU6Rl
N94CR/waL1l02fK6E21Tq8tkbmLNmok10cyxah7fD2OIb8jbgtQ=
=/LBZ
-----END PGP SIGNATURE-----

--rsq7h2z7ikfbwn5n--

