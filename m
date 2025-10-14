Return-Path: <linux-man+bounces-4130-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 152CABDB9C4
	for <lists+linux-man@lfdr.de>; Wed, 15 Oct 2025 00:20:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B9C6A4EE70C
	for <lists+linux-man@lfdr.de>; Tue, 14 Oct 2025 22:20:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D465730CDBE;
	Tue, 14 Oct 2025 22:20:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n1roKLki"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8630B257AD3
	for <linux-man@vger.kernel.org>; Tue, 14 Oct 2025 22:20:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760480414; cv=none; b=hHXMZLYN8BDNk4QSGrO1oDzaQzoJrDjl/thoTJWfR9hcxtrUCpwL4hsfv+hsTQgAM8c0Rc1EQuU/xgKHA+DH9FqOVJiYvZwxRkRq/gCgJq7KhF8cIaiFYZx49sf7auvqS+bp+DCiE40riRgwY7NkLGac6Qab2Pj5g0TDtCa7rFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760480414; c=relaxed/simple;
	bh=uM1s3/4ViYBS+JGUEQRruOYj0ClB99rApLVkjmIXYmk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pdBiOlQzrmSyvgByRH6Ev7CQVEtDGaOPEHOEZugoOfqaymloMRGBPHrUma3wzo3a3vkTVqLC4VyFfpxms14qk5nQS4QKwNRd6CEZz4ghkIrXaAugBfSXn4F/QSjHz3yaS/k68wGZxQnG2vag1Nh5BnhsHO+R3T1z0CE4WASkaEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n1roKLki; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88BF8C4CEE7;
	Tue, 14 Oct 2025 22:20:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760480414;
	bh=uM1s3/4ViYBS+JGUEQRruOYj0ClB99rApLVkjmIXYmk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=n1roKLkiQ6wXCOAeJOEvwzUw0TgcDdBu/TO3xmSm4yNvTlk2op7JmwcCeuZqrzlcL
	 zH0NeeCM87rZ+g7uH3+n+vWeIT2vB127VIHv2Id4wFlXZDqLMQ+WsVZdJ7Ddxj6C1S
	 AhGCX5flmc6hpvZGZy02950IDXkdRfNNUHhrDHGm75wbtA7A20bXtTPP0X5A7YhZxf
	 HU+cAjqat3BQRYUdVxLAYIs2Vk6Y8PIs4bDGIzJO23buP228++Ma1uELK74P1Af46I
	 IboqeyPSjJlPEB9RnLXzdOId8T6nQzjp5AzeZv38nf+lZQ6K83efIsTRecGZ0XT1zx
	 iueB1tpZLzsPA==
Date: Wed, 15 Oct 2025 00:20:11 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: Collin Funk <collin.funk1@gmail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <l63iddwjzdy4mzjzgr3aosgpbetrgoozcm5nas3u2gcxvs36tz@zv3mzlafl2nc>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <877bwx6u48.fsf@gmail.com>
 <xcupkgdicaihwfxnggznr2wkks6d4axm23is6arlly6zyeftlb@xf2gci2joaeu>
 <0d2c1adb-ec94-4411-9ca3-d137feb076d9@redhat.com>
 <wcfg5wvv27thvhn2bc5wevuxotadj3xvuaf55hz5ctxryfuacr@mdjyx3p2sdut>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kferc27uuxyaoca6"
Content-Disposition: inline
In-Reply-To: <wcfg5wvv27thvhn2bc5wevuxotadj3xvuaf55hz5ctxryfuacr@mdjyx3p2sdut>


--kferc27uuxyaoca6
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: Collin Funk <collin.funk1@gmail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH] CONTRIBUTING.d/ai: Add guidelines banning AI for
 contributing
Message-ID: <l63iddwjzdy4mzjzgr3aosgpbetrgoozcm5nas3u2gcxvs36tz@zv3mzlafl2nc>
References: <d6d3123c7271c11fc403906ee3971b22c2fe8e4c.1760476615.git.alx@kernel.org>
 <877bwx6u48.fsf@gmail.com>
 <xcupkgdicaihwfxnggznr2wkks6d4axm23is6arlly6zyeftlb@xf2gci2joaeu>
 <0d2c1adb-ec94-4411-9ca3-d137feb076d9@redhat.com>
 <wcfg5wvv27thvhn2bc5wevuxotadj3xvuaf55hz5ctxryfuacr@mdjyx3p2sdut>
MIME-Version: 1.0
In-Reply-To: <wcfg5wvv27thvhn2bc5wevuxotadj3xvuaf55hz5ctxryfuacr@mdjyx3p2sdut>

On Wed, Oct 15, 2025 at 12:10:33AM +0200, Alejandro Colomar wrote:
> Hi Carlos,
>=20
> On Tue, Oct 14, 2025 at 06:03:12PM -0400, Carlos O'Donell wrote:
> > > 	if you believe your use of AI is necessary for a major reason,
> > > 	please disclose it and ask for an exception
> > >=20
> > > for covering some cases where health is involved (such as what Carlos
> > > mentioned).
> >=20
> > Requiring such disclosure of health issues may be illegal and discrimin=
atory
> > in many jurisdictions. I urge caution here and recommend we not go in t=
hat
> > direction.
>=20
> Hmmm, true.  Do you have any suggestions for the wording?

How about this?

	Name
		AI - using artificial intelligence for contributing

	Description
		Any use of AI for contributing to this project is unacceptable.

		AI is harmful for many reasons, including --but not limited to--
		copyright and/or licensing, quality, and harm to the
		environment.

	Caveats
		If you believe your use of AI is necessary for a major reason,
		please disclose the use of AI, and ask for an exception.




--=20
<https://www.alejandro-colomar.es>
Use port 80 (that is, <...:80/>).

--kferc27uuxyaoca6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmjuzJsACgkQ64mZXMKQ
wqk49w//XaOmSUwjfwUk5E9dvewtvwukq06sMyUfCsHCfzxzHLh66z6Ss1rnWJJ2
INOQmaF3McSPt3iolHlwHQekouey9znucxnXK3DWDc4bIDgIXEBJ0nCzuo/IQB3P
ogc1+R001Od4h8cXRoiYg19hu/Y3+1dAFxLifllbbChZg5v4CZi4jSCA5W9hY0J1
O0TKYh45HQtYy4siwP3z7sWLcbzYNC2/sy4xTG6HQ6JB+JH3U8tIG2fY+YeAffQn
iuJOeiNLdC5h5GD8h251YSeGDs7sazsD3rHu5E2QtmGYyfZ6IiEfWM5IvMCSV9w9
lVukB2ihiEReeC/VVFpRlRmtC/UqKkyTTEQ7LgyEROKumL57gs97TRPAouY64iGZ
p9AYvymdOVGLUpT9HA3BfiU22eSiW/pDqfiEAi3jUUHE8DFLk9yPMSZ2f/iLSMXh
uZvJBRZvoMTp6Q2OR87HQ0BUQB4rp3Rh3x/p4Y6+y5xXka+j17m/4KCWXFlzniYC
3pEjuJ9YwLalaWtvuMYiOJ+rSpQWXq26rTA3EH+nPHecWabW7LyuiYNTUaAlBfq+
5IVpLW8lIuy0wEOExhX3e29JsJUexZ6lAgPnfkc6VfkWHLi0JoENnZ7u/VP9MNQG
rlwA5CIBbYrQis/EGtB6Te9NQRWBmxuynTvWt1e/dw9BVaI4Ji4=
=JKf+
-----END PGP SIGNATURE-----

--kferc27uuxyaoca6--

