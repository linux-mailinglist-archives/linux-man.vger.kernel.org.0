Return-Path: <linux-man+bounces-2488-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CFBBA3C6F4
	for <lists+linux-man@lfdr.de>; Wed, 19 Feb 2025 19:03:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 873E23B6769
	for <lists+linux-man@lfdr.de>; Wed, 19 Feb 2025 18:02:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91D2E2144A0;
	Wed, 19 Feb 2025 18:02:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B/V87fKk"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5231C1C173F
	for <linux-man@vger.kernel.org>; Wed, 19 Feb 2025 18:02:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739988163; cv=none; b=ut0UnndpnuJQKscxwfeY2DuRslQlMKIDrTQO3I8B6YS0vMIPCYAz1KfMFoFTy8QjUDG34svlX+4Ypp5vfD28XwRgvN2Faqjxy7+9hPrlDn+B66JCVOZPuzVECKRu6w0YIpC/9SykA0ygRgt9ooZFbXUvWNtyvOx16a6eg+8D6YY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739988163; c=relaxed/simple;
	bh=/2alIY0+ajXQ51GhPy15p194sfvrWpwJVE8BZcAb+sQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YSWCz2cCRrt5kRHILcalj7N++vXtPTn+V4Sl2ZtaVviGL9QQJp4FtslOGFeKaTh3DwaMyBxEuoSNBbBQwPWTBxZdxlEsia7Gem8JLCAr0Fyafsnx9zB9GxDzn2FIxIgr8utSx6cGdEExdoFDTyWXd2LwWW16jbQF2FtDrUu7AB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B/V87fKk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ADEB0C4CED1;
	Wed, 19 Feb 2025 18:02:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739988162;
	bh=/2alIY0+ajXQ51GhPy15p194sfvrWpwJVE8BZcAb+sQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=B/V87fKkWFHzPS/7TZfl01YnMs6lVEXMMbT7L5D71zHxYF3tC/yCyw7H9D9VfW4mv
	 MpclKnB4wrBmS2owLhB9LDnueFY1tfLkdyDLwh92GENsUV7X8S1BjMcgOXActscr55
	 eHtODFS38DUdHb1CTIQGVEpU6hOz1VtiSXE4WeNJSXUmJZqrx9QzvHZGK/wHZlkabr
	 uOIdgx7/BpiURpXKBXWjK2HZZnnW0uywOXEJ7peIPjaz8MEi0OqAhr+G7OP4+LXxmR
	 w5WzNaBDcUoPHmM1AkPX199fFdvbq+ynzG2yCiKqXH55t8hmGZ9vHEnN8ybAdhTiT8
	 cKq8WJoBVZ/3w==
Date: Wed, 19 Feb 2025 19:02:13 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: Askar Safin <safinaskar@zohomail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v3 2/2] man/man3/getcwd.3: tfix (pathname => pathnames)
Message-ID: <dp3j7tqranfltdfa5qyqp66jquqc3clfpflmgnyocysye7fgsj@ubhsuqigtodb>
References: <20250216061828.2277971-1-safinaskar@zohomail.com>
 <20250217165143.1265542-1-safinaskar@zohomail.com>
 <20250217165143.1265542-3-safinaskar@zohomail.com>
 <1a4ff544-28d6-45e3-96c9-55097cd6fa4a@redhat.com>
 <gqpxaoxm3vhe67i3pqa3erbsmovf2i6y5nb7djnqanatfof2ic@2ehts6pa5axu>
 <124fdcc1-6380-49d4-b25d-13046a4693b9@redhat.com>
 <pgfwvmgg2w3ys6tnd7z6jo6tkhud4ndbtnplajwazyope7d4uq@ckgwqx5c4jvu>
 <9f1cf755-d99d-45dc-b171-d3b2232a2146@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bbfxglwprmym6yxi"
Content-Disposition: inline
In-Reply-To: <9f1cf755-d99d-45dc-b171-d3b2232a2146@redhat.com>


--bbfxglwprmym6yxi
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: Askar Safin <safinaskar@zohomail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v3 2/2] man/man3/getcwd.3: tfix (pathname => pathnames)
References: <20250216061828.2277971-1-safinaskar@zohomail.com>
 <20250217165143.1265542-1-safinaskar@zohomail.com>
 <20250217165143.1265542-3-safinaskar@zohomail.com>
 <1a4ff544-28d6-45e3-96c9-55097cd6fa4a@redhat.com>
 <gqpxaoxm3vhe67i3pqa3erbsmovf2i6y5nb7djnqanatfof2ic@2ehts6pa5axu>
 <124fdcc1-6380-49d4-b25d-13046a4693b9@redhat.com>
 <pgfwvmgg2w3ys6tnd7z6jo6tkhud4ndbtnplajwazyope7d4uq@ckgwqx5c4jvu>
 <9f1cf755-d99d-45dc-b171-d3b2232a2146@redhat.com>
MIME-Version: 1.0
In-Reply-To: <9f1cf755-d99d-45dc-b171-d3b2232a2146@redhat.com>

On Wed, Feb 19, 2025 at 08:20:49AM -0500, Carlos O'Donell wrote:
> On 2/19/25 2:59 AM, Alejandro Colomar wrote:
> > On Tue, Feb 18, 2025 at 09:30:00PM -0500, Carlos O'Donell wrote:
> >> On 2/18/25 6:48 PM, Alejandro Colomar wrote:
> >>> On Tue, Feb 18, 2025 at 06:33:26PM -0500, Carlos O'Donell wrote:
> >>>> On 2/17/25 11:51 AM, Askar Safin wrote:
> >>>>> Signed-off-by: Askar Safin <safinaskar@zohomail.com>
> >>>>
> >>>> LGTM.
> >>>>
> >>>> Reviewed-by: Carlos O'Donell <carlos@redhat.com>
> >>>
> >>> Hi Carlos,
> >>>
> >>> Thanks!  Does this apply to the entire patch set, or to this patch on=
ly?
> >>
> >> Only to this patch.
> >>
> >> I'll provide Reviewed-by's for individual patches in a series as I mak=
e it
> >> through review of a given series.
> >>
> >> Does that answer your question?
> >=20
> > Yep.  Since this was a trivial typo I expected you'd only give the RB to
> > the other one, and I hadn't yet received the other mail.  So I was
> > wondering if you accidentally replied to the wrong email.  Sorry for the
> > confusion.  :)
>=20
> No worries.
>=20
> I use RB even for trivial stuff, it's simple enough and crosses the item =
off
> my todo list that way.
>=20
> I could probably filter on Subject with "tfix" though.

No need to.  It's fine to RB those too, if that's easier for you.  ;)

Cheers,
Alex

--=20
<https://www.alejandro-colomar.es/>

--bbfxglwprmym6yxi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAme2HKQACgkQ64mZXMKQ
wqli7Q/9GqnTDVB02B7wg43EAXdUpdpRF9Y42w78PIuuCoHq6rIGlH7UwwjAYvSQ
C3ATkhj4Rx/2xr0A4dSSkrpVo7G0MMTVjsCigD0+XKDa6SatFbOQBzwTVuCy6P/b
uPyb2qxMjJd531pMJI7WkzBQo9j7GYHGp6OJquTFJHPIvFJPDjVwl4Jf/xr4j3+C
fX2vc5yCVUmQgUgRCePGVbbOVwVMc3pOx6bpE3D8GuDX7p96aOZODVXKg1cpbD26
sTZOebcDXJeWmrmPg0/FDNpyCewzyAGfz6jiTouAl6ILG+C3NqXnPfuNJLakBvFD
axTy6K1f4ViYWsoAssbCFf9eqKu0XKFA5FYz5507FPYnD3gXfi61bIhEY4UytMC3
83AtVPmFBHMuPNU2k1Mi2mY2agJHldScxXqusU+XmWGIiSx8CaR1Si2XDpEIo79I
MlvldBowESz89TGdrf+e94jmfOW9prDZMJqftPPVW9YMdp0bnPwC09GRyWhip49x
eqaD3KdshJulSssBTILtndyazFs/vwxtsHxslilZ4pKslsEUqLftr4Nbg3WRqWjb
6b8HK5fWCkWDhPLCuxdAFs/YVYz/lK/Zz19j+gz2Iq3RtHrWu+BKnL67UXNxgVI/
iFDu4KO0w7i73xvIzcSx2/FMjv+wt0/CkZCTzPsjNy3PXgfiG9w=
=hcJh
-----END PGP SIGNATURE-----

--bbfxglwprmym6yxi--

