Return-Path: <linux-man+bounces-518-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 464F787069F
	for <lists+linux-man@lfdr.de>; Mon,  4 Mar 2024 17:10:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0076528C5CB
	for <lists+linux-man@lfdr.de>; Mon,  4 Mar 2024 16:10:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE15A482FF;
	Mon,  4 Mar 2024 16:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MX7goHA5"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F20A482ED
	for <linux-man@vger.kernel.org>; Mon,  4 Mar 2024 16:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709568633; cv=none; b=fNdOOnyh+BVN9EXN5K7o3jdHEO6c4RcvVqZ6ye0MzaQuAe2Qlpt+ptMzkfvZiPcjC1ubdX5hpDfVdhfLBAzyTYXg7nBo1K/9GzMkGWT+7SMTWC/dEjZpG9bdhFNYwUNw5ycWURg9gb8q2/NLckoD+FqVi5TNbecayqBBqZR5m8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709568633; c=relaxed/simple;
	bh=txxo6Pa1ateCxgZUU75xWhIJ8iUpHY0Yf5g0Do46DYM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QVknQUXCkWIt91Wg2lcoTizZ4yFPun2xKUFKUAUDIBqHVo6MdYEVs8LMi7PdYjNqRwaUcBgUypXl3Ay2VI3jjfEF6A8FGDQYHp3UYfTcd5CQrCbSAqIqmz0kwd2+8iM7bhV144w0bj8G0Eb/ZnvzSPpHePXxzPLfQLJnhP3w0+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MX7goHA5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F232C433C7;
	Mon,  4 Mar 2024 16:10:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709568633;
	bh=txxo6Pa1ateCxgZUU75xWhIJ8iUpHY0Yf5g0Do46DYM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MX7goHA5+RrRrfzw9XTms+RhZhzojM2S5UfKqJQX5z62UJsmvmO45Zr7P9aiksRmj
	 yUBWoentgE0vxxYaQT50HgG2+52gHO+VE/86n9aw2tgfBXAzn987um6pk2u1JsBjHs
	 qvSM5DjFYPg5Zc1hanBUFJFhJGvkUpQEve3VXnkwSlGnzUc/8Cr75bPw8GVYPaY367
	 dvr2G7ThpZ/xl0/LZZdozDH/V8/GW9x4zAR72g6IzEb1D3I2hD4AO5QqvlyPkC/9/K
	 5hKeRNnm+lfP9m5oD7mD2/JFC+6zxeIZKuggyn2dqE3Ym9dc3QtWFCI3CQUHFBnkf7
	 u/kiRMxt8p5AA==
Date: Mon, 4 Mar 2024 17:10:29 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Alexander Ofitserov <oficerovas@altlinux.org>
Cc: dutyrok@altlinux.org, kovalev@altlinux.org, linux-man@vger.kernel.org
Subject: Re: man page for syscall delete_module is outdated
Message-ID: <ZeXydUsKkZnW8Lpg@debian>
References: <08125e65-52ed-a846-2b38-c7f63071c898@basealt.ru>
 <ZdNCCy_Yx4Ekx4Mj@debian>
 <32e90728-a746-f6f3-ab9d-27dcf4fc468c@basealt.ru>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="IAW1cVEi7lx1Pdeo"
Content-Disposition: inline
In-Reply-To: <32e90728-a746-f6f3-ab9d-27dcf4fc468c@basealt.ru>


--IAW1cVEi7lx1Pdeo
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Date: Mon, 4 Mar 2024 17:10:29 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Alexander Ofitserov <oficerovas@altlinux.org>
Cc: dutyrok@altlinux.org, kovalev@altlinux.org, linux-man@vger.kernel.org
Subject: Re: man page for syscall delete_module is outdated

Hi Alexander,

On Mon, Feb 19, 2024 at 07:11:24PM +0300, Alexander Ofitserov wrote:
>=20
>=20
> On 19.02.2024 14:56, Alejandro Colomar wrote:
> > Hi,
> >=20
> > On Mon, Feb 19, 2024 at 11:17:29AM +0300, =D0=90=D0=BB=D0=B5=D0=BA=D1=
=81=D0=B0=D0=BD=D0=B4=D1=80 =D0=9E=D1=84=D0=B8=D1=86=D0=B5=D1=80=D0=BE=D0=
=B2 wrote:
> > > Found out that man page for delete_module syscall is outdated.
> > > The behaviour described there doesn't match to code, specifically for
> > > unloading module if its have no refcnt. Parameter O_NONBLOCK describe=
d in
> > > man doesn't exist anymore in kernel versions 3.13+, which is quite ol=
d, only
> > > O_TRUNC parameter present for actual kernel version, O_NONBLOCK does
> > > nothing.
> > > I've also opened an issue on bugzilla:
> > > https://bugzilla.kernel.org/show_bug.cgi?id=3D218489
> >=20
> > Would you mind suggesting a patch?  Also, would you mind showing your
> > findings in the kernel code?
> >=20
> > See also:
> > <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTR=
IBUTING>
> > <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTR=
IBUTING.d/bugs>
> > <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTR=
IBUTING.d/patches>
> > <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tree/CONTR=
IBUTING.d/mail>
> >=20
> > Have a lovely day!
> > Alex
> >=20
>=20
> Sure!
> O_NONBLOCK used in "try_stop_module" function, which is invoked by syscall
> delete_module, here is the code of this function for kernel version 3.12.=
74:
> https://elixir.bootlin.com/linux/v3.12.74/source/kernel/module.c#L775
>=20
> However, in later kernels, this parameter disappeared.
> Also, here is the code for 3.13:
> https://elixir.bootlin.com/linux/v3.13/source/kernel/module.c#L767
>=20
> In recent kernels, 6.7.5 for example, this parameter also absent:
> https://elixir.bootlin.com/linux/v6.7.5/source/kernel/module/main.c#L637
>=20
> I'll make patch for man tomorrow.

Please include this in the commit message.

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>
Looking for a remote C programming job at the moment.

--IAW1cVEi7lx1Pdeo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmXl8nUACgkQnowa+77/
2zKZvQ//SxCdjYCfvIP4i573yJkcpNscnsvFVNWBfUEcgOszsUdWwNGnnKpMISrz
YQrX+R9ekqC+nU3F5vi8cbDjrXrS5KHtayREW+yxhYNUFcLpR+AfP4/jKSjM4mD1
rMQE3wKafINSFizLEqTaI1WxO9k3IqIk7rEb01nG5SP6juP9QjibtUyfP15/MosI
7ZRqvIO3ZYd8CBHhQ5p3ktjBsiuAunWXdalZiW+tCS5T06xK/PfA3jMwPWX+ppc3
EQRNSGUHdzOAuW0ERppFE9BjZep35CqLuwdYUVgKH6oaRHeTnK+dIaaNde5HDghN
m+PSyTRy+kJCRghDfWgCDo70DJfOf4DH8U2a4LCwoiYugubPsyYYfEImYgGTSuXv
gfR7V3UTzHpEw28disAV8Ly+qbSrGTm7zU5XWaO57oi8ocOCNGQMBLO7knCeeAcq
Wvt0pQ2Z6dQmfgWLOWFnNjRk1kcLwkPADxZATVXFrAPmiQu89dCrwlGhBiMjz7qC
/6uWjMSTC/Bi20PRZ56T0VpRYWPgpaTx/s8QyVD8dl099uGbnmh9/4+c9ANgvgWN
YPDuLicl8MK00x+AekJD+fXMHLUUYcxqvVKlwy8ojCaozalwnKIxA078zgAwzZ5Z
/dQiPavXVL6DZFAz7w+lEgv8vmvq0f1y290uGYfyFRMQ7SivW48=
=5/Lf
-----END PGP SIGNATURE-----

--IAW1cVEi7lx1Pdeo--

