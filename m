Return-Path: <linux-man+bounces-1633-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C71A959F4B
	for <lists+linux-man@lfdr.de>; Wed, 21 Aug 2024 16:06:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E9DAE1F22D74
	for <lists+linux-man@lfdr.de>; Wed, 21 Aug 2024 14:06:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68DF11AD5CE;
	Wed, 21 Aug 2024 14:06:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VcCfE44g"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29EE419992E
	for <linux-man@vger.kernel.org>; Wed, 21 Aug 2024 14:06:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724249215; cv=none; b=WOSE5l5jkma3ScN+siIDbomuiKiRRNhi6cWRPP7U9k2Wr/uknZkYlXWkHS5wU90vOyppTMrlKEVKHeTa61w6e0DlDrk3IhbyXqO6G0aoa6wm0NmufRlV2ejwHHYhV6PJUH5ihdY2g1wlW8ztASEIyDfA1vJ3HZ05JICnKf5qWZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724249215; c=relaxed/simple;
	bh=9McynhdVt3kuh46wEUH0sIbbWg/xjzm6V6GQ+fYrRFI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EfHEFFrqDZiS7WWR5lRGXjtRYe/UJJnmuVgZ5Z3jeHuzhSxNVfyki+B4r2ApCLnu4fftM9ndAL7hIp3r50moSRgak+q0eXLa3p2xRN1azUjslpY6Qv74PCq1usv0FD8TS5VMgXTsr/8GucRW1CJ7IuVJpcnKUlaMW5il4Vfo6zI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VcCfE44g; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5AC1AC32781;
	Wed, 21 Aug 2024 14:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724249214;
	bh=9McynhdVt3kuh46wEUH0sIbbWg/xjzm6V6GQ+fYrRFI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VcCfE44gASYpn9qu+vfWJVyVeZ7qtAJqozYWF9NTcCATeq+tSoX4pIPikp+OJBGrj
	 YoA7xol17cg1ccHvGdLg+P7tV/OJD+WVfsMHBFkukYaStF2cuJqZznda+6pr6Rueno
	 lgRSq0c5ZsokuBxsAwiNe5fBuOtpn8MrthOlk6IRDxfORR6NInV3//fPo2owZpPXXH
	 yJG96v0g8MkuGXF+s0zNo0bXK+hg8BApelM/DN8XhiastWi7UGEb7izAd+y/YHZneX
	 YYwCpJ01NnYwPGlAqrW97K9f9u2QAAZGlRzH3yehrjQIXJ4O3nZByEyKijBdEoZXTx
	 nn1JANlBfrsWg==
Date: Wed, 21 Aug 2024 16:06:51 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "Konstantin Meskhidze (A)" <konstantin.meskhidze@huawei.com>
Cc: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>, 
	=?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, linux-man@vger.kernel.org, Artem Kuzin <artem.kuzin@huawei.com>, 
	yusongping <yusongping@huawei.com>
Subject: Re: [PATCH v3 2/2] landlock.7: Document Landlock ABI version 5
 (IOCTL)
Message-ID: <usnabic6hep6kfyijtjjfwykfs62ox4scamegddk3gv4pl3y2t@3aij6xe2um3w>
References: <20240723101917.90918-1-gnoack@google.com>
 <20240723101917.90918-3-gnoack@google.com>
 <lejbnx6uijbneira3l7wxvheurflymuzbxzpeoz7q6hxt6b7bj@7yrhpwxyccqy>
 <ZqoixhC_jvuiK0m4@google.com>
 <d06be80a-44ca-3eac-6b04-b5d2336309f0@huawei.com>
 <ZrSZRi5BPelnaq6X@google.com>
 <n53k7mnidikj4tj6mgxrxe4lvccdea7wfuezrjwc44kvyjbzyz@g6aoyti7mhtw>
 <d1cc0d28-43a4-b06d-8ef0-43f756bfd5f8@huawei.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nniwxharllnynx5q"
Content-Disposition: inline
In-Reply-To: <d1cc0d28-43a4-b06d-8ef0-43f756bfd5f8@huawei.com>


--nniwxharllnynx5q
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "Konstantin Meskhidze (A)" <konstantin.meskhidze@huawei.com>
Cc: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>, 
	=?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, linux-man@vger.kernel.org, Artem Kuzin <artem.kuzin@huawei.com>, 
	yusongping <yusongping@huawei.com>
Subject: Re: [PATCH v3 2/2] landlock.7: Document Landlock ABI version 5
 (IOCTL)
References: <20240723101917.90918-1-gnoack@google.com>
 <20240723101917.90918-3-gnoack@google.com>
 <lejbnx6uijbneira3l7wxvheurflymuzbxzpeoz7q6hxt6b7bj@7yrhpwxyccqy>
 <ZqoixhC_jvuiK0m4@google.com>
 <d06be80a-44ca-3eac-6b04-b5d2336309f0@huawei.com>
 <ZrSZRi5BPelnaq6X@google.com>
 <n53k7mnidikj4tj6mgxrxe4lvccdea7wfuezrjwc44kvyjbzyz@g6aoyti7mhtw>
 <d1cc0d28-43a4-b06d-8ef0-43f756bfd5f8@huawei.com>
MIME-Version: 1.0
In-Reply-To: <d1cc0d28-43a4-b06d-8ef0-43f756bfd5f8@huawei.com>

On Wed, Aug 21, 2024 at 04:26:43PM GMT, Konstantin Meskhidze (A) wrote:
> > I'll extend the wait until September.  I guess Konstantin's on vacation.
>=20
>  Hi Alex!!!

Hi Konstantin!

>  Thanks for waiting!!

:-)

>  Can you please explain the procedure for me? Do I need to resend the fir=
st
> patch with my "Co-developed-by" and "Signed-off-by" or you can sign-off it
> for me?

No.  The usual procedure is a reply to the patch to which you want the
tag applied, with the explicit tags on separate lines, so that they are
easy to parse.  If I were to send the tags, I'd add the following:

Co-developed-by: Alejandro Colomar <alx@kernel.org>
Signed-off-by: Alejandro Colomar <alx@kernel.org>


Have a lovely day!
Alex

> > > [1] https://www.kernel.org/doc/html/latest/process/submitting-patches=
=2Ehtml#when-to-use-acked-by-cc-and-co-developed-by

--=20
<https://www.alejandro-colomar.es/>

--nniwxharllnynx5q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmbF9HsACgkQnowa+77/
2zKYqA//RU5/gZnAlspVyGZrsWHgvwLFgPS6UmilPbnTujbR2YsoRVXeW4Vd67nS
nD+N/vp1543RJJOzBtrGfXh1FexX5UlYwlsIRR8711R+uzyQ+KTZmaKwjSlTGqxN
sK9uzDGj8VQYMwloekDBe03dTVKrcL4Wu6dYiRBXsT9w8RaEqzLX5Bj5kUrC9paZ
f8KLLx0CR1SvBoi6nOwfaQO9y1SIL+N9PblgUTELw0pxAVwxB6N3MJXUyAtdjO41
VXlBKAqjo63q7OkX0fX7I+RXLFwac0pXErYoBVNSPwgdp3pOj2Zxb52gqR3LKYvC
4NK4VegjrzZv7dxTnAs0LqB3dPD99d/NYTdTcLTC7+pr8a1hjyJNYgxtj4Qa7+oo
TcIn4HGEv1KBL6lef4NQMelGZt8hAAxM/ku7UpU9YRHBAyd5RwGrP5UflebvWBtT
swJIgAQ7thL7BvsEr9RsGwflu0wNUzfX3In18TgfChseo7tIXJcaRtbW0w6KIGaw
GPDxEW3aRybL+R+CoNUam1qcK/PMk1799b2qtJZt3hyFuje551zzE7w+1EYAI+xN
7io6lAwxdxsvgvzauiOr5Eo0Wu/Buw0glDjlXmU+ua0WnmlhjeqeBOPDwqRHB6yg
vs8Jz0O059QaK6n2xIFoHxYC+GRVUJFEqJeZLgQ5W0cfx1IMykg=
=jE4V
-----END PGP SIGNATURE-----

--nniwxharllnynx5q--

