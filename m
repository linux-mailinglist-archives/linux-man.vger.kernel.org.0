Return-Path: <linux-man+bounces-4062-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC44BBE250
	for <lists+linux-man@lfdr.de>; Mon, 06 Oct 2025 15:11:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 06CA63B1B5F
	for <lists+linux-man@lfdr.de>; Mon,  6 Oct 2025 13:11:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 551A6299A8C;
	Mon,  6 Oct 2025 13:11:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="is0U4M6w"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 136B72868B8
	for <linux-man@vger.kernel.org>; Mon,  6 Oct 2025 13:11:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759756279; cv=none; b=RjpJYKLhtajHrULXOrn2LzDdNFkH6VhOqlmHSjOV3FABU8Mra6bUlJ9wMyyCVCMPTRCfuo9MkNr9tbJdDrER8yl3Fb4HNKW3YiP6pcE7Nka0kXWCDY4qCNDBNP0BxEhYdsOaYsICkNcLUI64+WAzkXnDhmqu1VFvxaIUeZE5HIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759756279; c=relaxed/simple;
	bh=4KJZRlhfMIv+sIUTep1VSqIpm2qee9wx3Qsk+Tt0R74=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XJuiXmAnVdw6so+9+hMHjw67C/+zDftWHqTFoLYw1cosOcO/vWewFaxiVCweGX0NwbMPwdSOrA/wcrwGQEZG+QiR9kcu/jC8TekwEhKX5bixXyy7VzAH0GP0XMfCWHMeba1qUTo+skc/mPOTGj6acwSCHJq7KgIIIhZzhd0j4vU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=is0U4M6w; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C42AC4CEF5;
	Mon,  6 Oct 2025 13:11:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759756278;
	bh=4KJZRlhfMIv+sIUTep1VSqIpm2qee9wx3Qsk+Tt0R74=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=is0U4M6w5Z/WXSn+LRRZ72y3yQk8/jX6lBBcff3+rNGgJVqRVUmb2Uf25uko1pFao
	 LyGFRuz2f9meRM7r95BZ+WnUF8PLsH+vmr1/N0G8J7HcTrgo9RzwGxOlY08h15fCKC
	 iWa2iNlkpWMX9CV6X9Umi958I+f7v/S6byiZpejl0nj9gdU1ei351nXJ3dkeB5GAcD
	 9OCxCXys0MprU4Fc8LcgNV+VFFhy9MyudEpzRaLWXS13pbnphIIgRkn6VA47IYaNBJ
	 3V6x8GTSCRirEijsr2Q4Iqze+pCmJRFDr5i5gGrVg8bvQbYFEEauyyLl4YFdIxMoUS
	 vfSpo2IP2wzfQ==
Date: Mon, 6 Oct 2025 15:11:15 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Luca Boccassi <luca.boccassi@gmail.com>, 
	Askar Safin <safinaskar@gmail.com>
Cc: cyphar@cyphar.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/move_mount.2: document EINVAL on multiple
 instances
Message-ID: <kbecakpieenxtizlzbbuzeuqm5mc33mtthhjc4wvdhqqfwp5zo@ybdsc6cw6w7o>
References: <20251006103852.506614-1-luca.boccassi@gmail.com>
 <2hg43wshc3iklydtwx25ulqadzyuldkyi6wylgztzwendi5zhw@kw223cxay7qn>
 <CAMw=ZnR6QMNevxtxWysqi5UkDmbD68Ge=R5cVAxskqtmhb5m5A@mail.gmail.com>
 <bywtfrezkfevzz7y2ecq4w75nfjhz2qqu2cugwl3ml57jlom5k@b5bebz4f24sd>
 <CAMw=ZnSZmW=BFbLLSKsn7sze-FXZroQw6o4eJU9675VmGjzDRw@mail.gmail.com>
 <rleqiwn4mquteybmica3jwilel3mbmaww5p3wr7ju7tfj2d6wt@g6rliisekp2e>
 <CAMw=ZnTDw59GqW-kQkf1aTEHgmBRzcD0z9Rk+wpE_REEmaEJBw@mail.gmail.com>
 <xmnlbcgkao64gjwvwyzaw6fp6hevx5v6qqqauskrvpe6g3oplt@sugynizp2l5o>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zg76cnb2mxstuys2"
Content-Disposition: inline
In-Reply-To: <xmnlbcgkao64gjwvwyzaw6fp6hevx5v6qqqauskrvpe6g3oplt@sugynizp2l5o>


--zg76cnb2mxstuys2
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Luca Boccassi <luca.boccassi@gmail.com>, 
	Askar Safin <safinaskar@gmail.com>
Cc: cyphar@cyphar.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/move_mount.2: document EINVAL on multiple
 instances
Message-ID: <kbecakpieenxtizlzbbuzeuqm5mc33mtthhjc4wvdhqqfwp5zo@ybdsc6cw6w7o>
References: <20251006103852.506614-1-luca.boccassi@gmail.com>
 <2hg43wshc3iklydtwx25ulqadzyuldkyi6wylgztzwendi5zhw@kw223cxay7qn>
 <CAMw=ZnR6QMNevxtxWysqi5UkDmbD68Ge=R5cVAxskqtmhb5m5A@mail.gmail.com>
 <bywtfrezkfevzz7y2ecq4w75nfjhz2qqu2cugwl3ml57jlom5k@b5bebz4f24sd>
 <CAMw=ZnSZmW=BFbLLSKsn7sze-FXZroQw6o4eJU9675VmGjzDRw@mail.gmail.com>
 <rleqiwn4mquteybmica3jwilel3mbmaww5p3wr7ju7tfj2d6wt@g6rliisekp2e>
 <CAMw=ZnTDw59GqW-kQkf1aTEHgmBRzcD0z9Rk+wpE_REEmaEJBw@mail.gmail.com>
 <xmnlbcgkao64gjwvwyzaw6fp6hevx5v6qqqauskrvpe6g3oplt@sugynizp2l5o>
MIME-Version: 1.0
In-Reply-To: <xmnlbcgkao64gjwvwyzaw6fp6hevx5v6qqqauskrvpe6g3oplt@sugynizp2l5o>

BTW, I'll add Askar, since it was involved in the discussion of Aleksa's
patches.


On Mon, Oct 06, 2025 at 02:37:26PM +0200, Alejandro Colomar wrote:
> Hi Luca,
>=20
> On Mon, Oct 06, 2025 at 01:28:47PM +0100, Luca Boccassi wrote:
> > > > > Hmmm, I see.  Why not use open_tree(2) and OPEN_TREE_CLONE before=
 6.15?
> > > > > The syscall and flag existed, AFAICS.  I think we should clarify =
--at
> > > > > least in the commit message--, why that version is important.
> > > >
> > > > It was just not supported at all, so it would still fail with EINVAL
> > > > before 6.15 even with the clone.
> > >
> > > Thanks!  What's the exact commit (or set of commits) that changed thi=
s?
> > > That would be useful for the commit message.
> > >
> > > > Would you like me to send a v3 or would you prefer to amend the com=
mit
> > > > message yourself?
> > >
> > > I can amend myself.
> >=20
> > Sorry, I am not a kernel dev so I do not know where it was introduced
> > exactly, and quickly skimming the commits list doesn't immediately
> > reveal anything. I only know that by testing it, it works on 6.15 and
> > fails earlier.
>=20
> Okay, I'll wait a few days to apply the patch, in case Aleksa can
> comment on this.  I think it would be interesting to know.  But if by
> the end of this week we don't have any comments, I'll merge it.
>=20
> Thanks!
>=20
>=20
> Have a lovely day!
> Alex
>=20
> --=20
> <https://www.alejandro-colomar.es>
> Use port 80 (that is, <...:80/>).



--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--zg76cnb2mxstuys2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjjv+0ACgkQ64mZXMKQ
wqmYhQ/9Enn53FdJRvgOQIqeLojDxxXajFUqkPSEE5V53gqV17nHKHhUQjzMGPFO
W14OzsPsQ48ikj9Q79JabruIDeVzCgVTwBreLPykRpKHg0lufb2ShtUStmQnrIOb
LQ/kitSYJignrZDZZ4VKanC73Uqd47X/t6yO3CYtnV5pmPnSMucRfzGSALuU1BGI
65SdRN43ZE6pIAVrU+jL2Ataxi1PWt/Ci3XBXw9F90kFKAweLe3rvzoUR//eDaMj
1broYCAv71xOriI3f5UrA89G6xA272Q3Q/LUFGNsp1IHDxAkRpsT1Ia2DwbyryNJ
zkP6heGubnoj827fiykbHNj89xYFbAuxtSGeNifgQXUs0qnGi0jLfVFiKnS+dOAp
B+teV10BukjAyIbJfKDaDDsDJuxMpgdtSmhfz6+lL8GHEJE3Y+KfHIOdcbU/gfX1
IFPqZQWUPN4MyM6mWlEKHEBKwITBDTDAw/AKgr3U+Xy+FI+KchyykUeMqblWw8RV
/7KKe6kiQsH3TiDiZKmVl6CQ9/WYpkm23XM5YG/i5shKH1ooTmD6+o0Il1UuXVc3
KiayO4oY3G26KS7ybZrgLbGk01uy7cFMGCEuN5qTZpN9KcRu+5u5ny7v5yvyTt5C
JnOKY09gu96mBf/bdixO8jmdzLmgJPgzthntutRmeSGjxoaYWaQ=
=7bl1
-----END PGP SIGNATURE-----

--zg76cnb2mxstuys2--

