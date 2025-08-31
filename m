Return-Path: <linux-man+bounces-3763-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B8844B3D183
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 11:01:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5821E3BE185
	for <lists+linux-man@lfdr.de>; Sun, 31 Aug 2025 09:01:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECFD918EB0;
	Sun, 31 Aug 2025 09:01:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pt1jdZ3Z"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACB8F3BBF0
	for <linux-man@vger.kernel.org>; Sun, 31 Aug 2025 09:01:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756630893; cv=none; b=sLqjNwbC+dq//rwu+Y1WJ+dj6XntLS/Prs4tkDCz5bdM6g1Tzo7HDj1BTDorB1SQdasNg+WXt60AsGA+HgL4OScK93GbxJrO4qTWhBXTFeAl4fddaRduKW5EOUt70FGQoMMaasyHlSU1GfnHqB9DbTveEQ+oA1+7SK56OgPdvS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756630893; c=relaxed/simple;
	bh=q9ew0NkSvt5VAUHdlMu/5+RVH2A8Pgz7gJT95j6hxdY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eFZSZ2kl5clu4JBEFtPqa3Qumto0FUEYUSmkBB4WUaX7U4vdvEamBh7kMWi9De/le/OocD3XavX0M/ISiINh7zy8BIZYOkFR28MHsK4O+9Nwh0+XqksBEhJXZuBrIJAFMXauNWyIkV6gpA4WpNQG8DJZ/w068CWBUtESLux2NUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pt1jdZ3Z; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C6324C4CEED;
	Sun, 31 Aug 2025 09:01:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756630893;
	bh=q9ew0NkSvt5VAUHdlMu/5+RVH2A8Pgz7gJT95j6hxdY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pt1jdZ3ZZdihn1StVIvHZgfoBYO1h5y5NvpHUiWI3BDfGdjrxdFtLrWS0hiEYCmIX
	 JtN8gWGixIySCgCwCCRRLp7nM6QgLyNH2Aju2qiwpETMS+UhsFi74LCamyOvuiaZoJ
	 DRb/yTWJIluhn5Chf+Lo9kXIQXgX5dStp+PSgjgkaiBd4No5hCem1w+uj7TvST8DUY
	 acB+XA/8PpKo9vMfvHzoNK1dt4+qY4XNmmva2fYExLFRGGer03yP2aBGmfSXWe+FjW
	 1e/1DDCmgIuPSF3hycesTItZ0WFD+ECfSGsbJ7osYkvM1LSYsJffTOqD/EZf1tbMbF
	 m/NSC/Pt8AH4w==
Date: Sun, 31 Aug 2025 11:01:26 +0200
From: Alejandro Colomar <alx@kernel.org>
To: trillian <trillian@r9.pm>
Cc: linux-man@vger.kernel.org
Subject: Re: man-pages bug report: missing documentation of quotactl_fd
 syscall
Message-ID: <kcgr45epiqdxxfg3wwqvfifudaz23ten3tuwdnn4o5rp2pj7ta@27jsmwb26cze>
References: <00100b13-bdc4-4a58-a1cd-ef0775644f6e@r9.pm>
 <7lqjed72kj25osci2h2tl6cqjw2hzrl3ksyrggi6bvkpiypdux@k7eu3rzqwrgc>
 <2c5786b7-4378-4b2b-9890-4a7c67794977@r9.pm>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nttbabg44rhsazv2"
Content-Disposition: inline
In-Reply-To: <2c5786b7-4378-4b2b-9890-4a7c67794977@r9.pm>


--nttbabg44rhsazv2
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: trillian <trillian@r9.pm>
Cc: linux-man@vger.kernel.org
Subject: Re: man-pages bug report: missing documentation of quotactl_fd
 syscall
References: <00100b13-bdc4-4a58-a1cd-ef0775644f6e@r9.pm>
 <7lqjed72kj25osci2h2tl6cqjw2hzrl3ksyrggi6bvkpiypdux@k7eu3rzqwrgc>
 <2c5786b7-4378-4b2b-9890-4a7c67794977@r9.pm>
MIME-Version: 1.0
In-Reply-To: <2c5786b7-4378-4b2b-9890-4a7c67794977@r9.pm>

Hi Trillian,

On Wed, Aug 27, 2025 at 01:11:56PM +0300, trillian wrote:
> On 27/08/2025 11:11, Alejandro Colomar wrote:
> > I think we should mention why this function is useful instead of
> > quotactl(2).  Why would one prefer to use one or the other?
>=20
> So, there are two reasons.
>=20
> The first is that=C2=A0in some cases, there simply isn't a block device
> file that could be referred to.  This is the case for tmpfs (which
> doesn't have a backing block device at all) and also bcachefs (in
> which case there might be multiple block devices).
>=20
> The second is that the API is simpler: in most cases where you want to
> manipulate quotas on a specific filesystem, especially an already
> mounted filesystem, you would refer to it by its mount point.  Mapping
> the mount point to a block device file requires manually parsing
> /proc/mounts, whereas with quotactl_fd you can simply pass in the path
> of the mount point, opened with O_PATH.
>=20
> While researching this I noticed some more details that would need to
> be mentioned.
>=20
> First, I discovered that the original patch came with some
> documentation already:
> <https://lore.kernel.org/all/20210304123541.30749-4-s.hauer@pengutronix.d=
e/>
>=20
> This is for quotactl_path, which was later replaced by quotactl_fd,
> see <https://lwn.net/Articles/859679/> for details.  I guess the man
> page changes didn't get merged when quotactl_path was dropped.  (Or
> maybe it was just directed at the wrong place?  It seems like it
> wasn't ever sent to this mailing list.  But I don't know the
> procedures involved here, maybe that was intentional.)

The procedure is essentially sending a patch to the mailing list
linux-man@, so it makes sense that if it was never sent here, there's
nothing in the manual pages.

> Anyways, the comment added to Q_QUOTAON is still relevant for
> quotactl_fd.  I also saw this comment in a commit message:=C2=A0"The glob=
al
> Q_SYNC command to sync all filesystems is not supported for this new
> syscall, otherwise quotactl_path behaves like quotactl.", which is
> also relevant.

Hmmmm, would you mind writing some paragraphs that you'd write in the
manual page?  I can tweka them later and transform them into man(7)
source.

If you indent them, it will be easier to differentiate them from the
rest of the email.

> > Have a lovely day!
> > Alex
>=20
> Thanks, you too!

:)


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--nttbabg44rhsazv2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmi0D2YACgkQ64mZXMKQ
wqn3+Q/9E6Nf0GUSsr/VzRV2z2IlsMmWu8z3oPpAzdrehk9xPX14m8eUmE6RqmfG
VllM8teriBVp2klxl3JcX12rLtZj3t27Uo7Ql/PnEo4U9CpTl4SJ0ekk45ssrm7i
ZN578WhYojhArAhxxI/f8Ae1fXgfOsYhgbyLBKSV4HLg4j36O+BjAUffJRULoeZ+
btlTGK1LkcU/HH/vbmCP+VZDpQltzrv+cAz/Ksm1DfKUU6npzs4GcDWbV+Or7voJ
NngZnNnMvn50yrugIWXIRKsWc/QKpiliINqjomzZXmeKGol/p44qq77mMesmKR1m
QwzJQkhT8D/pLzdLLNyy493BMjpbWINBJkeOePxTZdXd7KEigN7dISx+lHFA4nzm
6QW4qn2dwJ1UuXXjo+90z3pEqDt4Kt/qsWzWdIqm3p7IA3+CQvCjne8riuEJK/JS
0yklJFxWv1suaUZOSeKzPXhQLXnfSOx/Ypnc5kSQTMT2Ilxn/nkhQA7Ld5SyldwW
ZTTe6vjpHRcv0zauI6y/BfPiQSzXA0IINdQP3k4cgjqEU5IXdiczaAfOkePk6UwZ
mhyqSTk49Xc8uwd4Q8DREGus/ITAqusV4MscB5b1OqnQKHBY2DlUuCyb0YlIA2tm
qSXjTwZ2FYMByApy5Kgkuq51vDIiPYQVdVbBX7OFu1TzMhXw3Kg=
=sYjy
-----END PGP SIGNATURE-----

--nttbabg44rhsazv2--

