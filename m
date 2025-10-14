Return-Path: <linux-man+bounces-4127-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C776CBDB93D
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 00:10:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 880223AF0FB
	for <lists+linux-man@lfdr.de>; Tue, 14 Oct 2025 22:10:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 528BE3081B0;
	Tue, 14 Oct 2025 22:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RppjV4Ou"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1193D30595D
	for <linux-man@vger.kernel.org>; Tue, 14 Oct 2025 22:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760479833; cv=none; b=fjiNod1b/A30OitrV0qC5ZXdVUb7I9WFTdtcOgbDHPXqQoqjuI21mzj94T4piykAwoYj9yOcf1HAh5HV+mXePNeIWkPLERhzskyEb7wqK2Ho4PSszkFMxn5/5fnskEyU/OpEwpp2E2xwhzIg5o2dynVMs3es2065hnBSe++mAcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760479833; c=relaxed/simple;
	bh=EZf33ABsmQtqZRrbHjBnX8rbX3VH2b3OHffqxLJANUI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=H1tZINEDu8a8Qc6jqiBhsWaPR1D4J84d/H0Ldhpw7zQMYXSg9fdqi29kznSXQ1cSQ71mcjeLitB6LyZFuwOlSWLZGLRF023AM5aawrtLR8M4klJPN2O/sukq7U2vj5xv1R35wosTmJFpe5fbLBeDF8E8FfQtcz/MmP3294CEWL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RppjV4Ou; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 16011C4CEE7;
	Tue, 14 Oct 2025 22:10:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760479832;
	bh=EZf33ABsmQtqZRrbHjBnX8rbX3VH2b3OHffqxLJANUI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=RppjV4OuOl74tXWKyu9aQqa0ll9CHDcZBjQgnTKREKcsK/g2xC0j9x31Vl/wW1ib3
	 IknoksMGWnOqIvknMx8rMhJtuez7yI0MVzXbYTYqt5CJg/w0Je0tik7aYYk71BsK5P
	 OoPbmSegek4eLbJSuoLa7J32jsxxXH9IBk8M3AH+wdunRGs+x2K2y1uHB3jveUYgns
	 5g5TxGDI5rb55Cd6JO/uODd/VmwZ6Dn29ldkg7wEs9HZrtgZwwM7EB7mbCdQam6ZeK
	 +t2uMvrt+vkD9+of6gMJFY3XG7T1uKdXDm8phOuB1wCDTsNcB9ir3cPPtcBrXkzBaU
	 JxMgKsiA6VDMw==
Date: Wed, 15 Oct 2025 00:10:29 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: Collin Funk <collin.funk1@gmail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <wcfg5wvv27thvhn2bc5wevuxotadj3xvuaf55hz5ctxryfuacr@mdjyx3p2sdut>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <877bwx6u48.fsf@gmail.com>
 <xcupkgdicaihwfxnggznr2wkks6d4axm23is6arlly6zyeftlb@xf2gci2joaeu>
 <0d2c1adb-ec94-4411-9ca3-d137feb076d9@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3lnyhlgh5vf4mznd"
Content-Disposition: inline
In-Reply-To: <0d2c1adb-ec94-4411-9ca3-d137feb076d9@redhat.com>


--3lnyhlgh5vf4mznd
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: Collin Funk <collin.funk1@gmail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <wcfg5wvv27thvhn2bc5wevuxotadj3xvuaf55hz5ctxryfuacr@mdjyx3p2sdut>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <877bwx6u48.fsf@gmail.com>
 <xcupkgdicaihwfxnggznr2wkks6d4axm23is6arlly6zyeftlb@xf2gci2joaeu>
 <0d2c1adb-ec94-4411-9ca3-d137feb076d9@redhat.com>
MIME-Version: 1.0
In-Reply-To: <0d2c1adb-ec94-4411-9ca3-d137feb076d9@redhat.com>

Hi Carlos,

On Tue, Oct 14, 2025 at 06:03:12PM -0400, Carlos O'Donell wrote:
> > 	if you believe your use of AI is necessary for a major reason,
> > 	please disclose it and ask for an exception
> >=20
> > for covering some cases where health is involved (such as what Carlos
> > mentioned).
>=20
> Requiring such disclosure of health issues may be illegal and discriminat=
ory
> in many jurisdictions. I urge caution here and recommend we not go in that
> direction.

Hmmm, true.  Do you have any suggestions for the wording?


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--3lnyhlgh5vf4mznd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjuylUACgkQ64mZXMKQ
wqlfeRAAkmVGjRAD1sboafA9IS1ZyeNb/WXyoOJzroya2Jq+6rq0lr+3zH4ifip9
1hvCl33hTUF+58r2PMKbdTMyUvz5SnE6nzGuCwFu9waFpfbtvAa3INH/Ppjh0XcC
KMgSGfLPxDn/WkPhtprjaQQVvKtG5yKmu7rK3Bh9Uzvw+i8c+L3vIof4LRCj/ykT
450mSjXb4pufoGGJOZ+1qZhuF5vevI3H7G95It21j1RRm22XdhMNjfkV1oo4U82B
AVHYJqdfoyTJQLzqTje7tvcJ4gi0ms5OCsmiFeNtaKqBvabVRMbDT/7eFo5NLTqt
TH2jHFicPoMh/NSXYk6Xqs03aNmGVeCOqXOyO5kbbbHLumwEh1VkSJDqYCLTcMnM
SCur/xGBFgRam4/roTAsbTAg8CzUrutCKX/jWbEMYcOl2/TpCyxUS4hoGPf2Wa+M
UVXLdyfuMCit887WCAUpt4UuM9ye/vfmsbVTxs/pozKa09EGa+2alB7ix49TPQ+c
3yzk+4kOUD+B2c3ClCDu4frXwkEF4wRx+ufnyNlt42M6U6agRDHoX75WO40wBVLf
N8gQGJW69X36a/Iscd29fm+LA2GZsbYXvJ/Wk8tE1MWM/O6bg2F8MCGRHbylneva
GhM2Ob8Z3nPEUQG3JP+XYrqpmtQLgx9BXPWPILElYRMBOGHJzkI=
=plUv
-----END PGP SIGNATURE-----

--3lnyhlgh5vf4mznd--

