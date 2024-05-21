Return-Path: <linux-man+bounces-968-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0382F8CAE04
	for <lists+linux-man@lfdr.de>; Tue, 21 May 2024 14:16:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AFDCD1F2389E
	for <lists+linux-man@lfdr.de>; Tue, 21 May 2024 12:16:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FB7076049;
	Tue, 21 May 2024 12:16:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vAX5aYZE"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C37B875817
	for <linux-man@vger.kernel.org>; Tue, 21 May 2024 12:16:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716293772; cv=none; b=gpk4jlbxNRr6ziSVNP7xnmRst6b5gJ1/ikpZTAPT8Vya3RjWpPzndjGP3iRmMuDDUMhqHiDoYzUparZilfqD9WZnASDxxoMmTE7mTu70lQrZWPlelAvGLjR0xVucZCuAeFOdF+kkvbugLEJGAn5Rp5XZ1LwZWR8SR5yX3LrWgIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716293772; c=relaxed/simple;
	bh=Sss+7mOa6/blVNTD4XDErskkVm7fuSO9mc+5a0wFE88=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GJkBniD8TtBaZzdg2Rubsw2sTcqbhWfzakMHGZ7VlZXy4GaQ191E38FRY3SPbAbAdZMvRe4000fp8TGJy7OjleLXKCgerwDvpyvkIXzch+LiTPzyiMQHm9h9xzW1iYLIvrSCWvR7i9ciZ22Iw7wVBqS/D6K6q7lDdEiLHkGvcS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vAX5aYZE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8584AC2BD11;
	Tue, 21 May 2024 12:16:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716293772;
	bh=Sss+7mOa6/blVNTD4XDErskkVm7fuSO9mc+5a0wFE88=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vAX5aYZEeEeeZumLLf5zijkO4JMIBOQmsbnf8vyU0tRRvsrH1D3T6VgIST/VmvqaR
	 UEW06G/kDdzIKs21STAIIdVCZgIOzL1JHjW5mQhJL33AVDIs6OWnf8ICtzAtsrP9KN
	 QrHeb2fctyDppL95/k9M7Pq3EOEsTK8mvHsNu5tjZRVhrvq4KCwgHhNvagMDtzNgai
	 D0g5U3aTWMA0x2LbYPpVBhhSawQr5HG2CkDoFcKA1SCXJH0/8CNhtyPmTFFk1LBpkc
	 T6xfjiJ3dSvREztL1DNUe9hMjWvKQBjVkjjR7ZyTZFl8kxGStQAbhFT6aeC91lb8pg
	 d89BIyFxdBSpQ==
Date: Tue, 21 May 2024 14:16:09 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Rodrigo Campos <rodrigo@sdfg.com.ar>
Cc: linux-man@vger.kernel.org, Elliott Hughes <enh@google.com>
Subject: Re: [PATCH] mount_setattr.2: Update supported file-systems
Message-ID: <qyn3hupk2sqn2bogy3zdlfc5mqndfu42uwxnfvb6z6l6ueiqcy@al4qxblxfj2o>
References: <20240409141046.124979-1-rodrigo@sdfg.com.ar>
 <Zh-6YjDhSBUNKmqP@debian>
 <b52c03a3-bc07-4358-aec4-9728f213d31e@sdfg.com.ar>
 <Zi93EAyeU4byltGB@debian>
 <60e07e4b-3cbf-497b-aecf-bd482bb4974f@sdfg.com.ar>
 <yjpaqj7tekvhazxklqnpxknwy5lyg7yp6m5cedbtiwks3ioxsb@ive3dxu6vqoc>
 <cb13f9fa-495f-4698-b3fc-f26388598e2f@sdfg.com.ar>
 <yvj2oqis7jzkghfkssgf4lpr65tx72eqwnc4qq7jjyyzznqq4g@r433igknppga>
 <17973283-7d86-41cc-b720-dca87a425f1c@sdfg.com.ar>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xdr6c3xah7zyge2n"
Content-Disposition: inline
In-Reply-To: <17973283-7d86-41cc-b720-dca87a425f1c@sdfg.com.ar>


--xdr6c3xah7zyge2n
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Rodrigo Campos <rodrigo@sdfg.com.ar>
Cc: linux-man@vger.kernel.org, Elliott Hughes <enh@google.com>
Subject: Re: [PATCH] mount_setattr.2: Update supported file-systems
References: <20240409141046.124979-1-rodrigo@sdfg.com.ar>
 <Zh-6YjDhSBUNKmqP@debian>
 <b52c03a3-bc07-4358-aec4-9728f213d31e@sdfg.com.ar>
 <Zi93EAyeU4byltGB@debian>
 <60e07e4b-3cbf-497b-aecf-bd482bb4974f@sdfg.com.ar>
 <yjpaqj7tekvhazxklqnpxknwy5lyg7yp6m5cedbtiwks3ioxsb@ive3dxu6vqoc>
 <cb13f9fa-495f-4698-b3fc-f26388598e2f@sdfg.com.ar>
 <yvj2oqis7jzkghfkssgf4lpr65tx72eqwnc4qq7jjyyzznqq4g@r433igknppga>
 <17973283-7d86-41cc-b720-dca87a425f1c@sdfg.com.ar>
MIME-Version: 1.0
In-Reply-To: <17973283-7d86-41cc-b720-dca87a425f1c@sdfg.com.ar>

[CC +=3D Elliott]

Hi Rodrigo,

On Tue, May 21, 2024 at 01:49:47PM GMT, Rodrigo Campos wrote:
> On 5/21/24 1:27 PM, Alejandro Colomar wrote:
> > Is then HTTP okay for you?  MY website works with HTTP just fine, and
>=20
> Not really. Lot of browsers switch to https, even if you don't redirect on
> the server.

Yep.

> > doesn't try to switch to HTTPS (but browsers these days got dumber and
> > may force HTTPS).  Or do you need something from me?  It wasn't clear to
> > me from your response.
>=20
> I prefer an HTML website (a 8mb pdf is not the best experience, specially=
 on
> mobile), and a fixed link that is kept updated with the latest info is wh=
at
> I'd love (doesn't matter if it is latest git or latest release, the fact
> that is periodically updated is what matter to me).

This has been asked in the past at least by a Google (bionic libc)
employee.  If any company is willing to put money in it, we could do
something; here are certainly programmers that could do it (I'm not just
thinking of setting up a website, but also of improving the tools that
generate the HTML from manual pages; that is, groff(1)).

> Something like man7.org or man.die.net would be great, if they were updat=
ed.

It seems man7.org gets updated eventually.  The period for those events
is unknown to me, though.  Not too often.  linux.die.net/man is frozen
in the past it seems.

> > I might be able to set up hardlinks in <kernel.org> with kup(1) to have
> > <.../man-pages-latest.pdf> if HTTP doesn't work for you.  I'd need to
> > manually update it at every release, though (but I guess it's not that
> > bad).
>=20
> Thanks a lot! But I'm not sure linking such a big PDF is nice, I think I'=
ll
> just mention to check the manpage.
>=20
> I'll let you know if I find a use case for the latest PDF, thanks! :)

You're welcome!  :-)

> Best,
> Rodrigo

Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--xdr6c3xah7zyge2n
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZMkIkACgkQnowa+77/
2zIINg/9H028fU4pCb7J1s+zZguaTOw2eTKD6zrm71txLZ+omYJ/vkLBg87GwVU3
dzhSnQ2R4QQiIkeZkxtiioB3PAE1TeNSndPfPcdLcrUaYjJpNRiT6COLrRNLiiZ5
66CwrkFO1klwnjt+zpQzjTG4h+lRech2pkHdvF1kTi8xFxnjAYLzuVdn4p37xes7
kKsrZfEo6k8lK6pQDppVw/IwuyEkPuA5C6BsmVVH7kzxYC7z+uDtqzCi2ObzeweY
dvjIMNOR1foRTMxfvWCQGDzC5J2sebiFfFJwJ3d6KZrh6oDPp4USIg20UkOY7gHZ
I5hjDesst7DvNXR8lPh7PmErrfaXcLpwWR4EsnMlyw0p4N8hGepSvV8gBYqD4g8z
inqybB09f5oKh5ZiodQnhQitmppWflkttVU9knNVhww4iyGW1c2CzyWOYNR4coQf
TCRO7lxb3kmnoH7WgBvtSDorWl6KRiB6SnWJ+TdcPt1axXILMafd22DRuShWWrTR
/leok+S82SBHNsRCrFivSuV/qGpMKNbwvKY+c1hxybzLv6laoJPe2mf76e3tmmTr
JldgfjzjSZar1vxWtGzFVo32JFGs0I5jPYssMPy+Nd6h7zLsZ8+CB3wqTDppGpfk
vo+NsbTcjXYyc5jvdYy1++g6xQJgL6zwA/ds5J32Qta45tDbP1o=
=QhnM
-----END PGP SIGNATURE-----

--xdr6c3xah7zyge2n--

