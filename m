Return-Path: <linux-man+bounces-1651-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C00BD95BBE7
	for <lists+linux-man@lfdr.de>; Thu, 22 Aug 2024 18:27:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EE97A1C21E8D
	for <lists+linux-man@lfdr.de>; Thu, 22 Aug 2024 16:27:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF9591CCEC9;
	Thu, 22 Aug 2024 16:27:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JbHjJ1A+"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A176C29CE8
	for <linux-man@vger.kernel.org>; Thu, 22 Aug 2024 16:27:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724344046; cv=none; b=g087bCwpb7WAuwSjlLY0F6SnOl722F/pyyyk//pj+QdwIO4WlPieDRCbv9hvhuQqTS3XxNVl9nan0DU0LhuRELGpRs1F5iRh9m3oJ6CafElp8MSNnSGRut1V5Xy+wno50xgj0YqS5yR0WMir4IiR77HQS4TA9GVJDn6m/DWmRcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724344046; c=relaxed/simple;
	bh=S/fFHDSaqHszKBvPWeDRdni9rkC09iEac23yLaBAEHU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NPXPbgV0/gVDWhGmNXcRTymPDHadDoHX86FnU0d4lBMuF/iBVbZxY/xRsdr0KyP8suyE/Af3vdFInk80wb8OlP4NFpKA2Xlrbv5vD0tqBay48fdvThfdshrQXHtyfd0HSioQhijXqaEyqByUcKWa3aL/zxCouOkO9OqhqQsbtwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JbHjJ1A+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 31251C32782;
	Thu, 22 Aug 2024 16:27:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724344046;
	bh=S/fFHDSaqHszKBvPWeDRdni9rkC09iEac23yLaBAEHU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JbHjJ1A+kJqxWqc8S5jFVWFACTcZFftKj8dUSxhx+lhVCTjVENvaKk0304q4HS5mI
	 +ob5gpXK+wOw1lZvYIo4OXkyjHOMF4qkdypprm5RXuzozQWMzgdi4eQBY/SgljWGdM
	 LBrsgsn0MYAlC01CKeJcZIEm0OQa0tUFDmLcTJWLuFKG+mcsOqhpTsEKcCHtaQOCLv
	 /UIvvElxz+dg+AZLeMNOYngfkvtaN7/U0ZK3ofdJj2Nliwt64heTOL7e01veZQRMA/
	 v5eEFuHZyHbSNSJXP3rtNibRnHRq4OuTYKvAdXxDIRFd79Y+xkMOSKtjt/fkH8U2X0
	 eIz7sJBRjypFQ==
Date: Thu, 22 Aug 2024 18:27:23 +0200
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: "H.J. Lu" <hjl.tools@gmail.com>, 
	Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>, libc-alpha <libc-alpha@sourceware.org>, 
	linux-man <linux-man@vger.kernel.org>
Subject: Re: arch_prctl()
Message-ID: <lnrhoiigxf7ft6p4lv7x5euyeu6qwdqndmhjxr36orkaxztrkw@qsazxkgfyzvn>
References: <CAJgzZoq7rTQ5mQm9JzSkeGJ8fqu1aDw0BfQnUqs4F24YuxV0Wg@mail.gmail.com>
 <937dcbd1-69c3-48ba-ada1-6b25e5381672@linaro.org>
 <CAJgzZoq+PgP71mP3XBnJsiD_wr58Z-7mAix7NxBWV2K_=0cxKA@mail.gmail.com>
 <CAJgzZorYAxxxa0+RFz706ip1J97hz0oDz32et_FONMu-bLpeKQ@mail.gmail.com>
 <138cac72-3ec9-42c0-9c1d-982aae975fc3@linaro.org>
 <xryntaw4ltavijpf7ejf4v7uhvwfp2lytgfzeablezxlvex4ky@yfkfhw7jtzch>
 <a580c3e7-2489-445d-8ea0-cbac245092a7@linaro.org>
 <CAMe9rOpSYOG-J1H+pLWHp5aNtSFuoHo=ZFS5H17jhK2obZtddQ@mail.gmail.com>
 <CAJgzZorgr+vHuQgQyMkMZPwWjDpr=b1ibkv4U0B2V9Lh=K_dag@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tbqdl4a6gqrx3tg4"
Content-Disposition: inline
In-Reply-To: <CAJgzZorgr+vHuQgQyMkMZPwWjDpr=b1ibkv4U0B2V9Lh=K_dag@mail.gmail.com>


--tbqdl4a6gqrx3tg4
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: enh <enh@google.com>
Cc: "H.J. Lu" <hjl.tools@gmail.com>, 
	Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>, libc-alpha <libc-alpha@sourceware.org>, 
	linux-man <linux-man@vger.kernel.org>
Subject: Re: arch_prctl()
References: <CAJgzZoq7rTQ5mQm9JzSkeGJ8fqu1aDw0BfQnUqs4F24YuxV0Wg@mail.gmail.com>
 <937dcbd1-69c3-48ba-ada1-6b25e5381672@linaro.org>
 <CAJgzZoq+PgP71mP3XBnJsiD_wr58Z-7mAix7NxBWV2K_=0cxKA@mail.gmail.com>
 <CAJgzZorYAxxxa0+RFz706ip1J97hz0oDz32et_FONMu-bLpeKQ@mail.gmail.com>
 <138cac72-3ec9-42c0-9c1d-982aae975fc3@linaro.org>
 <xryntaw4ltavijpf7ejf4v7uhvwfp2lytgfzeablezxlvex4ky@yfkfhw7jtzch>
 <a580c3e7-2489-445d-8ea0-cbac245092a7@linaro.org>
 <CAMe9rOpSYOG-J1H+pLWHp5aNtSFuoHo=ZFS5H17jhK2obZtddQ@mail.gmail.com>
 <CAJgzZorgr+vHuQgQyMkMZPwWjDpr=b1ibkv4U0B2V9Lh=K_dag@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJgzZorgr+vHuQgQyMkMZPwWjDpr=b1ibkv4U0B2V9Lh=K_dag@mail.gmail.com>

Hi Elliott,

On Thu, Aug 22, 2024 at 12:18:21PM GMT, enh wrote:
> On Thu, Aug 22, 2024 at 10:05=E2=80=AFAM H.J. Lu <hjl.tools@gmail.com> wr=
ote:
> > On Thu, Aug 22, 2024 at 5:21=E2=80=AFAM Adhemerval Zanella Netto
> > <adhemerval.zanella@linaro.org> wrote:
> > > Although we do use __transparent_union__ we have to still handle very=
 old
> > > compilers:
> >
> > We can hide the prototype for the older compilers.  Softwares need to
> > deal with the missing prototype anyway.
>=20
> (avoiding source incompatibility via mismatching declarations is
> perhaps a reason to just go with the kernel signature, since that's
> what the folks i've seen `extern` this function themselves seem to
> use...)

I'd rather add a diagnostic for those who define it themselves now,
than providing a sub-par prototype for eternity.  I guess the existing
number of users is small, and it doesn't break binaries, just
compilation.

Those will probably just need to add an ifdef for the glibc version that
added the prototype, so it's an easy fix.

But I tend to value more eternity than added diagnostics, and others may
disagree with that, so whatever you decide is probably good, and I'll
document it.  :)

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--tbqdl4a6gqrx3tg4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbHZuoACgkQnowa+77/
2zIcNQ//bg5pi6bPEJZcKJxmkbK2YrE56iuF3JK8y0D8pVh6YVi+SEhcIeb1YKKC
IQCUlW+Xq7852AnzwbbqdB2Yh6uBlhZFqxBEOYMSkdzuuUZuaaPWixGyas2xGMOM
uTmlcAQ/pFZccTwh7CoI54LxTD/M83GRWkpFozC9FQcgEWfq76ZnnPQf4qQyO38u
AH6h5jrGfFBmRCsLvNnYRvkQ7Q1W9bZt216npXPHCn5GnDxp/jnZ3UmZ6EBd9hE1
LMcWeDV1SRXD6QMWn11F4Ygc7zJRRJOFR61gDBO5She/CnwhAwsVdfITihvcbdWD
SlC6KMxSfrRfdQ/4f9dg6cxNWg/f6zWpj6n5LfyOWnT4xy0bFTbWNrMsLtfV8DFs
xwuCN+9KXqUIigF+pCchFKAE0hhkaezocUvZvghGYhFsojre7owjePcfLbZOL2fH
bcF7g0HJ/APNBvMfM/CYIc7e+sxsYVP8Ju2G6UTBBP+xFWuxF6ewuUGjGnl4whaH
St8b2HC8CaQtWFOlBnP03oxmL+rEB/dKwwSHj7Jp04Pnjz1aD4gUu0vT5m7OfISV
LlFr9DjW1N2l3CRfuuwoY0gNL93vQtERgNnvokYsMt7KkpdIVBijLicBFgE2JROZ
D2PCI7rI1jrt0iSxj2WG9HfVMJB8Zu4ZLtzp8PfmNB2fnySKJwU=
=rHRB
-----END PGP SIGNATURE-----

--tbqdl4a6gqrx3tg4--

