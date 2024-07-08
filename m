Return-Path: <linux-man+bounces-1372-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E45392AA6D
	for <lists+linux-man@lfdr.de>; Mon,  8 Jul 2024 22:18:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 76E6A1C217DB
	for <lists+linux-man@lfdr.de>; Mon,  8 Jul 2024 20:17:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AF3D3BBCE;
	Mon,  8 Jul 2024 20:17:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jXdr/5+n"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDCBF2E851
	for <linux-man@vger.kernel.org>; Mon,  8 Jul 2024 20:17:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720469875; cv=none; b=rW1B86Rp+mTnscB0ABRTAsIglk/9KPKYEh2IxbiLiALP4pGIoC7woqGIuJ0GP9Kf2EogJBsQ/tfahHroocupTDnguK5G2m/tmcZpjIqXEwtNojRyLcHfcuuon5oWFs9TmTIywsdhuddM9LvCbhMaQRhrinQeExaIt7RAW96ruMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720469875; c=relaxed/simple;
	bh=XI/hswTXYafw7Bphh0CYu9YoKwBKVaR1Zride/rSkVU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=d65n89/eePel8LGA+NPNBOwRqWK51T3sfnWGpS2Ca021BvhFMEdKdIALo3hLs05uRa87pKB1SBvkuNfb77mRH+d1o/1dpBRKWCSEGRiFwEfxSA4iECs38iQ5BQc166Us+g+iin0Ob7svSsUR3AeDT8gzieQZAg5T/a/+4LlIohc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jXdr/5+n; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C2509C116B1;
	Mon,  8 Jul 2024 20:17:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720469875;
	bh=XI/hswTXYafw7Bphh0CYu9YoKwBKVaR1Zride/rSkVU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jXdr/5+nnENHnZC8k4n1wGaM05dKqdtYPSCsh3qDffNptsnnf+H+WecadGiNVyqQT
	 Xxi/KVcf6DtzcPE9oumJ6coBTcFu2qWJiBLw7xIjk9IJB/XX+B4n0a4/Wf2AeOJvxD
	 gtpu9NUtUC6EhOP8afeCs6jrZ3dl/2AXtpwFmrfbd1wYyiIkZB3foY389PJToCN5SY
	 5sAYimySEisf84F1eqXv8OaA4RnE43daO1bDsfxVcIMettZ+cMF93wIdYDYUW//D8k
	 J+MHvM/elUszP1FQzzXtbndlzqcm08gdSrhsBrioGMPoXYK263hdfCZxlsWyocA4jq
	 g0bgDA9ihJCPQ==
Date: Mon, 8 Jul 2024 22:17:50 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Martin Uecker <muecker@gwdg.de>
Cc: David Malcolm <dmalcolm@redhat.com>, Paul Eggert <eggert@cs.ucla.edu>, 
	gcc@gcc.gnu.org, linux-man@vger.kernel.org, xry111@xry111.site, jakub@redhat.com, 
	lh_mouse@126.com, jwakely.gcc@gmail.com, Richard.Earnshaw@arm.com, sam@gentoo.org, 
	ben.boeckel@kitware.com, heiko.eissfeldt@siemens.com, libc-alpha@sourceware.org
Subject: Re: WG14 paper for removing restrict from nptr in strtol(3)
Message-ID: <yfzhg4mfjxf3bpvgamsgibaqj3npwofon33dorkgs643ttgxks@ujcklvwsph4v>
References: <20240705130249.14116-2-alx@kernel.org>
 <xjoazfkcloggmceefxusjusbksfslgpdpoph4ixdtp4kbu4kua@vdh73ba7k2zq>
 <37a1f7fa-eac5-440a-a3e9-08125ee7ec81@cs.ucla.edu>
 <tuosvljyewh6oxpjqwgc6jbs7caknva572zij2u6hr4xwphlt2@kxz4xcdghaxl>
 <e2d7b36d5716f1799ba43d1373a0a2d65cc7cb16.camel@redhat.com>
 <flrf5shec7kc466bze35ohi5u2r7svf3nky5dvpnih2djcybo3@f5yvxiwfivos>
 <c0a781689d776e49076344e2d7572ce4806667cb.camel@gwdg.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3ydqmbpf3dutnuzy"
Content-Disposition: inline
In-Reply-To: <c0a781689d776e49076344e2d7572ce4806667cb.camel@gwdg.de>


--3ydqmbpf3dutnuzy
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Martin Uecker <muecker@gwdg.de>
Cc: David Malcolm <dmalcolm@redhat.com>, Paul Eggert <eggert@cs.ucla.edu>, 
	gcc@gcc.gnu.org, linux-man@vger.kernel.org, xry111@xry111.site, jakub@redhat.com, 
	lh_mouse@126.com, jwakely.gcc@gmail.com, Richard.Earnshaw@arm.com, sam@gentoo.org, 
	ben.boeckel@kitware.com, heiko.eissfeldt@siemens.com, libc-alpha@sourceware.org
Subject: Re: WG14 paper for removing restrict from nptr in strtol(3)
References: <20240705130249.14116-2-alx@kernel.org>
 <xjoazfkcloggmceefxusjusbksfslgpdpoph4ixdtp4kbu4kua@vdh73ba7k2zq>
 <37a1f7fa-eac5-440a-a3e9-08125ee7ec81@cs.ucla.edu>
 <tuosvljyewh6oxpjqwgc6jbs7caknva572zij2u6hr4xwphlt2@kxz4xcdghaxl>
 <e2d7b36d5716f1799ba43d1373a0a2d65cc7cb16.camel@redhat.com>
 <flrf5shec7kc466bze35ohi5u2r7svf3nky5dvpnih2djcybo3@f5yvxiwfivos>
 <c0a781689d776e49076344e2d7572ce4806667cb.camel@gwdg.de>
MIME-Version: 1.0
In-Reply-To: <c0a781689d776e49076344e2d7572ce4806667cb.camel@gwdg.de>

Hi Martin,

On Mon, Jul 08, 2024 at 06:05:08PM GMT, Martin Uecker wrote:
> Am Montag, dem 08.07.2024 um 17:01 +0200 schrieb Alejandro Colomar:
> > On Mon, Jul 08, 2024 at 10:30:48AM GMT, David Malcolm wrote:
>=20
> ...
> > And then have it mean something strict, such as: The object pointed to
> > by the pointer is not pointed to by any other pointer; period.
> >=20
> > This definition is already what -Wrestrict seems to understand.
>=20
> One of the main uses of restrict is scientific computing. In this
> context such a definition of "restrict" would not work for many=C2=A0
> important use cases. But I agree that for warning purposes the
> definition of "restrict" in ISO C is not helpful.

Do you have some examples of functions where this matters and is
important?  I'm curious to see them.  Maybe we find some alternative.

> > > Has the C standard clarified the meaning of 'restrict' since that
> > > discussion?  Without that, I wasn't planning to touch 'restrict' in
> > > GCC's -fanalyzer.
> >=20
> > Meh; no they didn't. =C2=A0
>=20
> There were examples added in C23 and there are now several papers
> being under discussion.

Hmm, yeah, the examples help with the formal definition.  I was thinking
of the definition itself, which I still find quite confusing.  :-)

Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--3ydqmbpf3dutnuzy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmaMSW4ACgkQnowa+77/
2zIWRBAAk59t+GkIOL3vFYEAj3WajPX8x3lAIkv3EtdtsMLHT5zegokrUfFr6A7P
98UPBz94DXAKot0ry7edtRbKqrB5j8z8rRdlw5JSb9SnaDTWRduDBIdLNcfHyz57
HxTJuZV6ftWbYlxdEPNci11RGZBrpULMMxAkvriWq5l7SRqivS7nku0yLbUpltjP
mCVFp6Iv4BC9KFS6ogNi+N/fjbZrwgXt5l5pnp2A7cww/E7orZsN8hyygJvcS3Ga
Kv1BQY9lES3OogtSadUBR8FtNW+eanJ6IrC1aG3w/vYaaaxv9+ejV2t4/1EGJWwB
C/cU9ni/DMKpzqICnFtZhSdekEMkTbrYI230hjErqZlPs/2KIhKoq48sfsjsbVN+
zL/6g27QnwJtGRJEBfXrypMjMIqKR9Ufa0eig+GTD1+3VKqvHTJrYakF5KJpiWf8
PsEW1c23ZQn8UMbtfXn62XUKz4B3jHUHB2HPhKJ5eDeek3ZPafxi9HlN7CleeiM8
jYuqeaTMtgl61kReOYDAwXpjlNY1maiMIlSARNxMCg0f+RlYIpuO51wpaKcsh7ZE
qMTJmgO/5G3gVy8e6KyaZrAH9xOEcO+q0wfvBSccFEm+VyXBKLi/wN4dWaFrb/Ji
5uGRhP7kQdv6W9CJGCj9dH77VntZFgjhKlJ1v9ycjWP96C5M0kI=
=uowX
-----END PGP SIGNATURE-----

--3ydqmbpf3dutnuzy--

