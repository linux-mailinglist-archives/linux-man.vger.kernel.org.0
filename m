Return-Path: <linux-man+bounces-4061-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 77325BBE0AD
	for <lists+linux-man@lfdr.de>; Mon, 06 Oct 2025 14:37:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4DCA71893F6C
	for <lists+linux-man@lfdr.de>; Mon,  6 Oct 2025 12:37:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C757B27E7DA;
	Mon,  6 Oct 2025 12:37:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PEp4hiYB"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85D4C22DF99
	for <linux-man@vger.kernel.org>; Mon,  6 Oct 2025 12:37:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759754246; cv=none; b=K/9X0Wthgk9JZGHRq41ImmkoXegSOQ/lQeWyE62BgEu2Uqft5wzug2+ZJmBcmI5KNV8NsLCE6iQU6xG/SRhqsB1TMCzuVfE50YpBEhIQQiaiTx8oHfushDueMQpyUfPNaflcf9W3nzMysgr5cQr200lI9CrFFC50KapYPf8XXMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759754246; c=relaxed/simple;
	bh=fR40MxztT2TB55OXg3DPe/OkZLb9+c+muW2nZGnHBo4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FTrjaL0QU/qMHdMpNTzk8Mg+yGvf42JtWGk4WDlrC9I18BgPAmID0qbJlCJozpbV3hpa3eNqqHAdKSQiDfxQcAYmT7N6e/MuUKG+6A+RUDLLFxw/0Lwxc8EJ56bh++6YYCDpGNDbHjdAqVNEj4nFNguOrOJglGiWHcNmgkdKLPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PEp4hiYB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4CD22C4CEF5;
	Mon,  6 Oct 2025 12:37:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759754246;
	bh=fR40MxztT2TB55OXg3DPe/OkZLb9+c+muW2nZGnHBo4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PEp4hiYBq2D7LPkrZjoH8D9OReh0lbeuZVFwZk/etkJVcysexusLgP4vQXqj2ndLv
	 vFDr9IjfEzsie3HxSkSK3ZeVYR7sv3sLPX3voKrtTdKYlrf/41JX37ozh+GAwGzd9C
	 fFejh25HwX9h6XnZ4dYcfltKFUUjpHdBDmzcEShrTE0s75HzOnUY+6SM7w7c5CvyiH
	 OZUlz98oe5++kW9rmonKmIVfxdG2O9dHJXS7CcjWTjyXLOuasKmpcX/8wfaEQdsWFX
	 QUH7suEugbRitUbj7x3MmB3voWYXrumcCxYpDH6efycQka94GJKkIotgSSuPYVrsPV
	 Z9ztnrkYAZRdw==
Date: Mon, 6 Oct 2025 14:37:23 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Luca Boccassi <luca.boccassi@gmail.com>
Cc: cyphar@cyphar.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/move_mount.2: document EINVAL on multiple
 instances
Message-ID: <xmnlbcgkao64gjwvwyzaw6fp6hevx5v6qqqauskrvpe6g3oplt@sugynizp2l5o>
References: <20251006103852.506614-1-luca.boccassi@gmail.com>
 <2hg43wshc3iklydtwx25ulqadzyuldkyi6wylgztzwendi5zhw@kw223cxay7qn>
 <CAMw=ZnR6QMNevxtxWysqi5UkDmbD68Ge=R5cVAxskqtmhb5m5A@mail.gmail.com>
 <bywtfrezkfevzz7y2ecq4w75nfjhz2qqu2cugwl3ml57jlom5k@b5bebz4f24sd>
 <CAMw=ZnSZmW=BFbLLSKsn7sze-FXZroQw6o4eJU9675VmGjzDRw@mail.gmail.com>
 <rleqiwn4mquteybmica3jwilel3mbmaww5p3wr7ju7tfj2d6wt@g6rliisekp2e>
 <CAMw=ZnTDw59GqW-kQkf1aTEHgmBRzcD0z9Rk+wpE_REEmaEJBw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="y42qj4qcl7gxarrg"
Content-Disposition: inline
In-Reply-To: <CAMw=ZnTDw59GqW-kQkf1aTEHgmBRzcD0z9Rk+wpE_REEmaEJBw@mail.gmail.com>


--y42qj4qcl7gxarrg
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Luca Boccassi <luca.boccassi@gmail.com>
Cc: cyphar@cyphar.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/move_mount.2: document EINVAL on multiple
 instances
Message-ID: <xmnlbcgkao64gjwvwyzaw6fp6hevx5v6qqqauskrvpe6g3oplt@sugynizp2l5o>
References: <20251006103852.506614-1-luca.boccassi@gmail.com>
 <2hg43wshc3iklydtwx25ulqadzyuldkyi6wylgztzwendi5zhw@kw223cxay7qn>
 <CAMw=ZnR6QMNevxtxWysqi5UkDmbD68Ge=R5cVAxskqtmhb5m5A@mail.gmail.com>
 <bywtfrezkfevzz7y2ecq4w75nfjhz2qqu2cugwl3ml57jlom5k@b5bebz4f24sd>
 <CAMw=ZnSZmW=BFbLLSKsn7sze-FXZroQw6o4eJU9675VmGjzDRw@mail.gmail.com>
 <rleqiwn4mquteybmica3jwilel3mbmaww5p3wr7ju7tfj2d6wt@g6rliisekp2e>
 <CAMw=ZnTDw59GqW-kQkf1aTEHgmBRzcD0z9Rk+wpE_REEmaEJBw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMw=ZnTDw59GqW-kQkf1aTEHgmBRzcD0z9Rk+wpE_REEmaEJBw@mail.gmail.com>

Hi Luca,

On Mon, Oct 06, 2025 at 01:28:47PM +0100, Luca Boccassi wrote:
> > > > Hmmm, I see.  Why not use open_tree(2) and OPEN_TREE_CLONE before 6=
=2E15?
> > > > The syscall and flag existed, AFAICS.  I think we should clarify --=
at
> > > > least in the commit message--, why that version is important.
> > >
> > > It was just not supported at all, so it would still fail with EINVAL
> > > before 6.15 even with the clone.
> >
> > Thanks!  What's the exact commit (or set of commits) that changed this?
> > That would be useful for the commit message.
> >
> > > Would you like me to send a v3 or would you prefer to amend the commit
> > > message yourself?
> >
> > I can amend myself.
>=20
> Sorry, I am not a kernel dev so I do not know where it was introduced
> exactly, and quickly skimming the commits list doesn't immediately
> reveal anything. I only know that by testing it, it works on 6.15 and
> fails earlier.

Okay, I'll wait a few days to apply the patch, in case Aleksa can
comment on this.  I think it would be interesting to know.  But if by
the end of this week we don't have any comments, I'll merge it.

Thanks!


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--y42qj4qcl7gxarrg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjjt/wACgkQ64mZXMKQ
wqkCOxAAhWHd4akc5I31y3Bmn1ZyXlj66zOGDm3B52j09EkWbrAG6FGpY2L97L9y
MqffBgULbuufW5TfbVOX3ma+8oYviQWcdd/Pqmlt90z+H4NvEkq0GKUohsQTERHi
TpOt+piWgZbuI7eVcnLzs73NgiOYk/11tlaasurLDFTMmqn+ueqe6FJFHP7o+c2s
lZOp8B89zARHVz1iY8H1rrHpw60tvs+VeofgaV2B8NqVoj0ZKrJSmF9Itj/wCMJk
6GwU/GOaumpWugSQ1CClxdlHJHkC1DKZblSBXn6OUi2PpBaUOilDUhmYkTmyTVQm
NhQieYfgs8M3O7CoLn5njBNeApJZzeShdDdYdeAsgn5KljRLdGu/JTGnwuB1H7sJ
5m8Fv+BgC/EtFPp/BCvXaKvGwhXQ144gM0aOJ8/ojICcBbhwVJHvyVwsR0KPXzzh
DsBnRu6n4O0xCBiB4G6B2EQe68FBwT652JxjIWXVlEWAg0PUyuigs+Yj4nvLX295
wYDXrPybKlTMvhNHZoiLVJ0GoaU4/ELf4gSe4QBK+0RYbSFLZV9v3tbRrqK8QwBu
oFmwFKK2hJNh3NQTw7aH5ejLyjMX4v569+jVXFIt3w79BYtcnMrQFga+IeyJtjGW
wpsFaNxqDoq4fJ5Olur1CdNqY8JRP0zaZwi9DbblMLY+FaGvtGM=
=zdei
-----END PGP SIGNATURE-----

--y42qj4qcl7gxarrg--

