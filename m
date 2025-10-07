Return-Path: <linux-man+bounces-4066-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C81DBBC0C6A
	for <lists+linux-man@lfdr.de>; Tue, 07 Oct 2025 10:48:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A9D7F4F38E3
	for <lists+linux-man@lfdr.de>; Tue,  7 Oct 2025 08:47:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E7872D661D;
	Tue,  7 Oct 2025 08:47:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FPABTeBD"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CEFC2D6409
	for <linux-man@vger.kernel.org>; Tue,  7 Oct 2025 08:47:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759826869; cv=none; b=bmO3H5ZzxG3rNChg1yv9KeqtU1DQmhh+gcoe9bQX5Hy3e/HaQRM9U4jLbh/lpVejywAS83dds+Zh1sLwSZ2Cns/LbBJd6yVoKiJDy+7W8qVN3AH8lAX05QzblrIZ/3Mamyt5rzdfJueOyGXz8TAwnfdtkdQU7OLG0vvkZ7csA9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759826869; c=relaxed/simple;
	bh=3RsKsTy9M0oOSK/NDpvN8mvDBcisaY3e1f5lbkhile4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uGOwwAtc2eyf9KDLI6r8TEWK70EUNhpTq6/n4qhV3H9VIaY/UpW8fjCK9yXmsOhx/6vlnXN/wASlE/1t97NmOBvSYB3C9htfozzwpwRYvRTPSmMMLUl7nNyHEzCHXTg7mRA9mRbsbiCH7WjVavRybNpusFwzFSutVPY/WLLz+jQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FPABTeBD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 626F7C113D0;
	Tue,  7 Oct 2025 08:47:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759826867;
	bh=3RsKsTy9M0oOSK/NDpvN8mvDBcisaY3e1f5lbkhile4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FPABTeBDZ/e4ECGDIZttPqTCK7tEJNQGBaQfTkQ/Wc1jV/4xuhnOK9DlwXZBfGf6U
	 32yqgERx4XP97Fw4+vLd5lN42er16I4MzQtC1qQZMeeE3w/UIbDFiVo6o1vsAICT+L
	 b/qGUh4hseKQaHYWs8YFZIuVFPR3OQI7DGCJLT+TogJSZjvF/RiPnmNYkOnNTmJtbU
	 HqCxzz4eLib1jQ2H1ab21RLgpIB8CCg9FX24AmaAiFfpvpK79izpIbl/z+ujbx3zID
	 c64g5KgS7ncEXT2zKUcwAsliEjM0Ao4Cdf5pV5YltIZgTekDwEMsDCUTjkTfNNuviO
	 wtAbZZ90nxmpA==
Date: Tue, 7 Oct 2025 10:47:43 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>, 
	Bjarni Ingi Gislason <bjarniig@simnet.is>, linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: groff build problem involving "ckd_mul" and "ckd_add"
Message-ID: <354kaidblgryvixec3l3fcs3vivg6i2xloyqiyzzrokp5cxlnl@d54fq3xdfep4>
References: <20250930194004.btcbo4xspyo3j3ua@illithid>
 <6zdtfxpuemava6k4zecq5pfzjnothtlqckm5wn5d2b2vam5xtt@dkzgvtc5vzf4>
 <20251004094243.avg4hvwwir7ink5u@illithid>
 <20251005134812.jvwyjjklabmnzejp@illithid>
 <66cvsf636zixy2o7inf7usaq4r56fiwaewfo7czjjbkv3hsqc2@vcxyruqmonxa>
 <20251006085149.oor3kddfih63yutt@illithid>
 <bfl4642gesg23ysveu3dfbkzd4orct75malbxnyg7biud4aln7@mzh34qxcd65p>
 <20251006104224.yw5dusvjjkw2ymnv@illithid>
 <yp5rnfroyllwzxnigmpofdtpycr6fakcytpp2jof2upemftn63@kcpoibftbp7w>
 <87frbvea8g.fsf@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="s6jl6b7eocqqtlsy"
Content-Disposition: inline
In-Reply-To: <87frbvea8g.fsf@gmail.com>


--s6jl6b7eocqqtlsy
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>, 
	Bjarni Ingi Gislason <bjarniig@simnet.is>, linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: groff build problem involving "ckd_mul" and "ckd_add"
Message-ID: <354kaidblgryvixec3l3fcs3vivg6i2xloyqiyzzrokp5cxlnl@d54fq3xdfep4>
References: <20250930194004.btcbo4xspyo3j3ua@illithid>
 <6zdtfxpuemava6k4zecq5pfzjnothtlqckm5wn5d2b2vam5xtt@dkzgvtc5vzf4>
 <20251004094243.avg4hvwwir7ink5u@illithid>
 <20251005134812.jvwyjjklabmnzejp@illithid>
 <66cvsf636zixy2o7inf7usaq4r56fiwaewfo7czjjbkv3hsqc2@vcxyruqmonxa>
 <20251006085149.oor3kddfih63yutt@illithid>
 <bfl4642gesg23ysveu3dfbkzd4orct75malbxnyg7biud4aln7@mzh34qxcd65p>
 <20251006104224.yw5dusvjjkw2ymnv@illithid>
 <yp5rnfroyllwzxnigmpofdtpycr6fakcytpp2jof2upemftn63@kcpoibftbp7w>
 <87frbvea8g.fsf@gmail.com>
MIME-Version: 1.0
In-Reply-To: <87frbvea8g.fsf@gmail.com>

Hi Collin,

On Mon, Oct 06, 2025 at 07:06:39PM -0700, Collin Funk wrote:
> > I can reproduce both on my server (Debian) and on my desktop (Devuan).
> > I'm using Sid, so that may have something to do (maybe I have a more
> > recent compiler that errors where yours doesn't?).
>=20
> This was discussed and fixed in Gnulib a few months ago [1]. I assume
> you are using g++ 15 and the others are not.

Yup, that sounds like it.  I'm using

	g++ (Debian 15.2.0-4) 15.2.0

> Here are the relevant commits:
>=20
>     $ git branch --contains=3D7ee6e40b6730c87e5c1323bb5c2564bcb6eff9e4
>     * master
>       stable-202507
>     $ git branch --contains=3De331531a771443edae4135e6bcd016282cf1a3aa
>     * master
>       stable-202507
>=20
> But groff is using a branch that does not contain them:
>=20
>     commit e3ff929ddea95e0fc9fe7ea3541d28665de42370
>     Author:     G. Branden Robinson <g.branden.robinson@gmail.com>
>     AuthorDate: Fri Mar 28 03:10:49 2025 -0500
>     Commit:     G. Branden Robinson <g.branden.robinson@gmail.com>
>     CommitDate: Sat Mar 29 22:27:32 2025 -0500
>    =20
>         gnulib: Update stable/2025-01 branch.
>        =20
>         ...to commit 3fbc2c7bb3, 3 March.
>=20
> Using the following command I can make ./bootstrap use the master branch
> from my local checkout to copy files:
>=20
>     $ env GNULIB_SRCDIR=3D$HOME/.local/src/gnulib ./bootstrap
>=20
> Allows me to build groff fine with g++ 15.

Thanks!

Branden, would you mind bumping the gnulib version sooner than later to
avoid using workarounds?  That would also allow us to use countof()
sooner.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--s6jl6b7eocqqtlsy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjk03YACgkQ64mZXMKQ
wqkk3RAAukvtR2lJzKa6xHb4X912CzXHnVCY7EvFS1RXvPuFaan5/cREC4t7Lxzz
cIVu3gDT0l7wmmWS+gR3XEkoxmlSB9RXLsftniP8GzuuYOvKzs7JrciYje8vjfcF
L9FmbUflZMTttCat0pcOK+RxEGYSjDHSd+D2R3iUhAnZd6WZ4npormpn41JNk2AU
il0juxGzj2yuUqNZYP/rA8FBIr7loW00R69H4zXrsYcligfs69UiEkWUuHO9MrhE
cQ/x1zTzPb8kP11m/erKU+ZxwYMQVLf9nTS7RT6psf/k78XZrArnsW/xjIoQSiKm
zIxywoW5aWL9HxsppIoJjydyaSzJsA0/VZhuJUFr+PLEB2LjHnMmdw++pw2dZSC4
GAPlOLZU9ClOm1pOe5JJDPxIIOVzGk0RYZXB8xpAhfiJ2Jlux4j+AVCHblR5+ctO
Qik+9WpQFxJtGX6SvE+Du1Wo/IaActFTfenJj9EqhQ4tCjTji5HyLvclW02tZcgI
KaLC8Hj4aNqup0WAg59R0XfVAdXvrCPWt4y10MSIBG9o2JFW2S4+EQtIunelPfsJ
EFqZK9McYmPGG2sDrfh+VVYEq2+xuNOk63Ww2jE0wmGG/jX5D0BJ42HQddgfMJE6
7oFp5F3+9iDLWXUKI9fzHBW+HBMN4PWBgAGLqN/JtaMkA8k6pYw=
=EJX0
-----END PGP SIGNATURE-----

--s6jl6b7eocqqtlsy--

