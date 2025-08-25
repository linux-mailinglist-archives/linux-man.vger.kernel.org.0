Return-Path: <linux-man+bounces-3725-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF42B34B0E
	for <lists+linux-man@lfdr.de>; Mon, 25 Aug 2025 21:41:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6B5F1188D23E
	for <lists+linux-man@lfdr.de>; Mon, 25 Aug 2025 19:42:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77087285053;
	Mon, 25 Aug 2025 19:41:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sod9Hxlp"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3475E2741DA
	for <linux-man@vger.kernel.org>; Mon, 25 Aug 2025 19:41:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756150904; cv=none; b=tqmuZEl5i+XFsk3xYGtHLdiIP0vkgM2J5ZlJvsFgz6k7V62JjEQVfFLAtSagwL7hVBSRwjDvfvIR/mMCSo1FoNiL5Zh/Kfdv8j+SwZSQzzIusGO4FUAr0o3tQdQWpTGHw6iA3fs5+aLR4tsAgcAOaOwswV68M/+jMdexuT84bB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756150904; c=relaxed/simple;
	bh=u8QoZnJ1nHiKqHnY0qj2/WjRVgDRWgWDuFnGvONLMi4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qiZ7hqbbUmsQtpJzxvpWKetOxvOg+ySWLXerGGTul9JqZ+rpxXNOXYEqON3GmUx/4rs/s77B2vhN1ayaAK8cnEv+IpRSdcKmwl5YsMV7SOJsgtb8LyUtNhwFr5ii4cFJNK2SYh1LiUv7FYYhF+y6YDne07wiZ2qfGtJR3loenEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sod9Hxlp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C5E25C4CEED;
	Mon, 25 Aug 2025 19:41:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756150901;
	bh=u8QoZnJ1nHiKqHnY0qj2/WjRVgDRWgWDuFnGvONLMi4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Sod9HxlpN+eCNMGLf926dnRI4XwPeddBG5LhNJlrYMHwUp/yuvnu5Cn4LfdwU99+6
	 KO5d4YvhMsnF//aHfIkMVupWvrRYp+1tkOuYnKDIMPW5GCUzCZGu89YGLQQ5sUDETP
	 RKuJgmMSf+SAWQkneVC9jw+xxSrbM4U1ADCjsYzzIlIwmHtU/0W6qZY+PPhEJsF4xP
	 Ieq3J0exLHbXyFsBBaON8jbtR4ZqVDjgd6E/hTUrf9IyuJTVsJSHLkZpFpjeH04wvS
	 tvl1AZlJZZKawCjHoegX0JMyVxW0Dx8V01z2ub0wcrkHCHKWMd/BqQL29j1RE2zOdS
	 02VmJAVliDL6A==
Date: Mon, 25 Aug 2025 21:41:36 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: Helge Kreutzmann <debian@helgefjell.de>, mario.blaettermann@gmail.com, 
	linux-man@vger.kernel.org
Subject: Re: Issue in man page PR_SET_SECUREBITS.2const
Message-ID: <j2ramfsczn2lparyohabohs5lslb2neyxgp73c23bq6vzqsn6w@t7hw5mdvt4q4>
References: <aKsmUDWxV2eeCmmT@meinfjell.helgefjelltest.de>
 <lnh4f63q5onlj54wt7qg76unbcvu5apinualih4byiatrfvjpv@5r53xpupbjws>
 <8ed88109-2dd4-4d26-ba5d-32bbf7cb2906@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="q6hqscn7d6n347dm"
Content-Disposition: inline
In-Reply-To: <8ed88109-2dd4-4d26-ba5d-32bbf7cb2906@redhat.com>


--q6hqscn7d6n347dm
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Carlos O'Donell <carlos@redhat.com>
Cc: Helge Kreutzmann <debian@helgefjell.de>, mario.blaettermann@gmail.com, 
	linux-man@vger.kernel.org
Subject: Re: Issue in man page PR_SET_SECUREBITS.2const
References: <aKsmUDWxV2eeCmmT@meinfjell.helgefjelltest.de>
 <lnh4f63q5onlj54wt7qg76unbcvu5apinualih4byiatrfvjpv@5r53xpupbjws>
 <8ed88109-2dd4-4d26-ba5d-32bbf7cb2906@redhat.com>
MIME-Version: 1.0
In-Reply-To: <8ed88109-2dd4-4d26-ba5d-32bbf7cb2906@redhat.com>

Hi Carlos,

On Mon, Aug 25, 2025 at 01:52:03PM -0400, Carlos O'Donell wrote:
> On 8/24/25 3:21 PM, Alejandro Colomar wrote:
> > Hi Helge,
> >=20
> > > Subject: Re: Issue in man page PR_SET_SECUREBITS.2const
> >=20
> > You probably meant PR_SET_THP_DISABLE.2const.  The text you quoted is
> > there:
> >=20
> > 	$ grep -rn THP.disable
> > 	man/man2const/PR_SET_THP_DISABLE.2const:9:set the state of the "THP di=
sable" flag for the calling thread
> > 	man/man2const/PR_SET_THP_DISABLE.2const:21:Set the state of the "THP d=
isable" flag for the calling thread.
> > 	man/man2const/PR_SET_THP_DISABLE.2const:32:The setting of the "THP dis=
able" flag is inherited by a child created via
> > 	man/man2const/PR_GET_THP_DISABLE.2const:9:get the state of the "THP di=
sable" flag for the calling thread
> > 	man/man2const/PR_GET_THP_DISABLE.2const:22:the "THP disable" flag for =
the calling thread:
> >=20
> > On Sun, Aug 24, 2025 at 02:48:48PM +0000, Helge Kreutzmann wrote:
> > > Without further ado, the following was found:
> > >=20
> > > Issue:    malloc =E2=86=92 B<malloc>(3) ?
> >=20
> > Maybe, but we should probably add a reference to malloc_hook(3) instead?
>=20
> In a modern system you care about malloc not malloc_hook.
>=20
> The hooks have been removed and glibc has directly integrated THP usage i=
n malloc instead.
>=20
> https://sourceware.org/glibc/manual/2.42/html_node/Memory-Allocation-Tuna=
bles.html

Thanks!  Do we need a more thorough rewrite of this page is needed?
Or just replace malloc by malloc(3)?


Have a lovely night!
Alex

>=20
> Tunable: glibc.malloc.hugetlb
>=20
> --=20
> Cheers,
> Carlos.
>=20

--=20
<https://www.alejandro-colomar.es/>

--q6hqscn7d6n347dm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmisvGoACgkQ64mZXMKQ
wqmENRAAt9zD2ErxFNbgLK4zzA/YpVLT5tf7wn6o/h6EowRn1SFSZqh3hHM3hPNj
ps3YQyMPx9jQVQCIGIy0ZVIpOn4uOpHZl8yN0MVzyaUK3Obx5OHEAs8u000Qjz1W
vDUcE5cU7qOzsS23wvP2/MpT9GMSNhkdFMVleD6/Ci9DsDuJyelArIlLPZDYs2W8
VbRXEWgURF6SU35/c2Lg7dERC8FzcF9SBbUbM6Dc9y+HSj2/do2AEOyal5wY1hQp
2eyxPkH6reYk5gkDKEBnUaHmxewvoRvj/ZbWDpMIsc1sN/HENEFK5CAjVD0vOy6k
0nYqouhaxx0el0/xBTKdVtU7nXlNiZC2//c5LHoyo89YkoZg1XSTZH7mj7VCXMmE
uxuiAnF07TDH5UQlsZt52YMPM/O/cvaZcklpcyjkDh6utQi7sJgu2d4ZIBBw3tEN
3BuTm1OxRsERsQw+GpLAx5h6Jv5uWp9rQ0emMJnv1TZ6l3qSg+0J5IQliKatRhV5
AFJyfZLt6BLC/5IUiGPAqq5UKS5ZAnz/rrK55eVXqOs/KcxAkrKGAduucRM2qTx4
b0fgFTtGQPD0Y7wNPKezJ+dV6nktPx/lpEzB64xE3pa4TArOX52wQv8+CGMkHlZM
Y0wqiqD3KC7DWWAJNiaCF+J6hX/MPY/sX5AqOnIO/gatI2EB85s=
=LFMV
-----END PGP SIGNATURE-----

--q6hqscn7d6n347dm--

