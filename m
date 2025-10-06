Return-Path: <linux-man+bounces-4057-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 672B8BBDE70
	for <lists+linux-man@lfdr.de>; Mon, 06 Oct 2025 13:42:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5DC2D18957FA
	for <lists+linux-man@lfdr.de>; Mon,  6 Oct 2025 11:43:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 087E726B2C8;
	Mon,  6 Oct 2025 11:42:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PLn0GTeZ"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB87A20FA9C
	for <linux-man@vger.kernel.org>; Mon,  6 Oct 2025 11:42:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759750969; cv=none; b=Vxv+Y9rR3/5OB06PqMnhNDNWwEfATY5JUP6S9dh20jU40oonhmz/h2yb3qYw5/4fkLNy4jwEIr99dUZ8/lTOXjrt/m2O7gVinI5p6KY8WFVjL2uAl9QHNu9ysEjvnxDCo6XKXN3Df2MgHtEJriY68RcTE5M5QuNUQ/NlxeBiQXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759750969; c=relaxed/simple;
	bh=qpKGlEqr7zU9cXaTtkVi88h+b7byBVDiInAgpxfLtZ4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OY+dXAUU4LwS/Af3l3GIcYD/nsykT2yvY7FP444+Wy/S7COJgSo5assaMjYmpSmyRxmesdVZQNndxFV43NYk3nR+R9riOUX2gAeFb4XItv1XKxpFYM8/FXEKWN/Xcege/r2ojSf959nRhBq4QQRRsI/F29onSw6f1OSiP05Ns7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PLn0GTeZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6BC82C4CEF5;
	Mon,  6 Oct 2025 11:42:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759750969;
	bh=qpKGlEqr7zU9cXaTtkVi88h+b7byBVDiInAgpxfLtZ4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PLn0GTeZXjam76Yn+sj04jRvDuxje7gl9BADzWu8VtPmi1dG7ZaWWSZEUWVXoHlvR
	 GScCtnwrR2CBHYQmJMGXtDWzMgJovK7fr9IysaA2s57u+fepQN4LZZp51vAI8dKpft
	 P5Br9CJYwb+JnUtLbCRhqJJkVM0NuoD2nn04fuy5iO7tTlR9rZKCm7ieaQbVIhBlav
	 iaDHlRaLUugpQebSq1/jVbkVkJW0enIQpCN6lIlLWLUPPfeGzOA3nWGa4JZb/G+ImB
	 igzYYMwS88SvUiYLZFeuBRftAX3MER7kOkKN6HWafCTpLlXyFwo/P2AnjPPgl/ma6b
	 vOgEpaUUeQ8nA==
Date: Mon, 6 Oct 2025 13:42:46 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Luca Boccassi <luca.boccassi@gmail.com>
Cc: cyphar@cyphar.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/move_mount.2: document EINVAL on multiple
 instances
Message-ID: <bywtfrezkfevzz7y2ecq4w75nfjhz2qqu2cugwl3ml57jlom5k@b5bebz4f24sd>
References: <20251006103852.506614-1-luca.boccassi@gmail.com>
 <2hg43wshc3iklydtwx25ulqadzyuldkyi6wylgztzwendi5zhw@kw223cxay7qn>
 <CAMw=ZnR6QMNevxtxWysqi5UkDmbD68Ge=R5cVAxskqtmhb5m5A@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5koph3mjq5ysz4t4"
Content-Disposition: inline
In-Reply-To: <CAMw=ZnR6QMNevxtxWysqi5UkDmbD68Ge=R5cVAxskqtmhb5m5A@mail.gmail.com>


--5koph3mjq5ysz4t4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Luca Boccassi <luca.boccassi@gmail.com>
Cc: cyphar@cyphar.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/move_mount.2: document EINVAL on multiple
 instances
Message-ID: <bywtfrezkfevzz7y2ecq4w75nfjhz2qqu2cugwl3ml57jlom5k@b5bebz4f24sd>
References: <20251006103852.506614-1-luca.boccassi@gmail.com>
 <2hg43wshc3iklydtwx25ulqadzyuldkyi6wylgztzwendi5zhw@kw223cxay7qn>
 <CAMw=ZnR6QMNevxtxWysqi5UkDmbD68Ge=R5cVAxskqtmhb5m5A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMw=ZnR6QMNevxtxWysqi5UkDmbD68Ge=R5cVAxskqtmhb5m5A@mail.gmail.com>

Hi Luca,

On Mon, Oct 06, 2025 at 12:32:42PM +0100, Luca Boccassi wrote:
> > >  .TP
> > > +.B EINVAL
> > > +The source mount is already mounted somewhere else. Clone it via
[...]
> > > +.BR open_tree (2)
> > > +with
> > > +.B \%OPEN_TREE_CLONE
> > > +and use that as the source instead (since Linux 6.15).
> >
> > The parenthetical in that position makes it unclear if you're saying
> > that one should use open_tree(2) with OPEN_TREE_CLONE since Linux 6.15,
> > or if you're saying that this error can happen since that version.
> > Would you mind clarifying?  I think if you mean that the error can
> > happen since Linux 6.15, we could make it part of the paragraph tag, as
> > in unshare(2).
>=20
> I meant the former, the error is always there, but OPEN_TREE_CLONE can
> be used since 6.15 to avoid it. Sent v2 with this and the other fix,
> thanks for the prompt review.

Hmmm, I see.  Why not use open_tree(2) and OPEN_TREE_CLONE before 6.15?
The syscall and flag existed, AFAICS.  I think we should clarify --at
least in the commit message--, why that version is important.


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--5koph3mjq5ysz4t4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjjqzAACgkQ64mZXMKQ
wqnifg//fmXn7mEcHOXFVh0a7jUvHhivsTecKTNuVwf/9KxEytsH33DuKWMdRWhJ
cg9m3qiBEPMtpcFmfGxXHysru9o8lEHWWr9LT2jZanA13u35KJQulaBvxrPoNQgh
73Fv9bKx0xI6bkxqph23h2ymhIJHULZqX62tnj6q8qvR9s81gBimfF2YnGT3ExrF
jfDIY4PUoK0nWMRW+V79h89D1QYMYdse5Rh13kVy/upphqKqh/lPSmeWkIhws+qp
fCh8cdemngWQDEwPXR8qKuT0szOF5Qnexwt+vjLDENCJ+jiD4FKK1aDlQsFIRIOi
pChrRz82gIhI5HtML+ygASVXa2x4JyFmKj3YMob/fYs5a18SGIRmtwNmh4uR7kk2
QajkQpo/VK1yjuYLs+53d/i0Fg/F4efU+pd1cOi5IRZqu5pF0TVQuJmBSh4d2qOQ
LKt4Ur9pgxOtnNqjHV4z7VGUO6HLXxC4qXFIcxa5kMfftMm2Heva6sDPC5wu7FHp
ax0Cu0eh6C0LbJMnZWyuyy6xKwTE4F14QRjnetfBl+h13Rfa9M52mDb0uYe9QDVd
GZucVqP20oY77GU9SnrDGUapEz8Vh+Njvy5PGsChd3svBUEY20nwf1/PRT3o5DRl
MHi9VYW+XF+eBbgXreOCH8mpI9rRQ5gpYhZUY43mmT/kEKoU9Tw=
=biOp
-----END PGP SIGNATURE-----

--5koph3mjq5ysz4t4--

