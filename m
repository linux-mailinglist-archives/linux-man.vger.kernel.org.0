Return-Path: <linux-man+bounces-3157-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C96ADFA6A
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 02:58:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 496AB178B0E
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 00:58:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03C92166F0C;
	Thu, 19 Jun 2025 00:58:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C2Zq5mWR"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6F091487D1
	for <linux-man@vger.kernel.org>; Thu, 19 Jun 2025 00:57:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750294679; cv=none; b=SexL3J9OtAJR+cKaTlsZIeraW/anBAUVz1NGJNpllxx3hU58qEpWy6d01KZ70FRxB3WVXyJwUdDzbKqmY65umZDRN8dPztm5fGru9t5iNckdihefAVK6QhBGeGyMJMbMUi/L0T9SYKyTuZ6NOumMwFIf1RKUxn2C8CoEzlSWTcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750294679; c=relaxed/simple;
	bh=vkE+uzEgi/9X9xpwjEyfWAWtN/kAo8b0fZ8RPemrDAw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UE2A9foXWJvsyJ4bQRAiYGe9+0XfN094ZlqQkAsH+zCtUhKu5wxHB8G5Ciuk4GpKCbAexLzYslpUidZO07XHSpi75PywER6Yh4EJMYiGKkKkaAr6WJsHdFDEDAgv7YhHtW1OSxDa35kGEpkX45aOqfCUwVi5HWO1rK9GZRfdJ3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C2Zq5mWR; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9C211C4CEE7;
	Thu, 19 Jun 2025 00:57:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750294679;
	bh=vkE+uzEgi/9X9xpwjEyfWAWtN/kAo8b0fZ8RPemrDAw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=C2Zq5mWRaE34NR6d351tqjQ9/uUdEfZ1ksNYPtb/zUeSxtjw6TVi0F6ObTTP/NpdF
	 atzl5jth6bzTb1PY4tDQAqJYYig6D555vnwrHMkHXQ9Xdbai+8byCoCejHXNMh4B8z
	 LyOUJ9sTZ3TVOb/ioJtv1F9T/1lST1iEDlon37beIvQiXaMJb4iPAM0+RJdCyoLCZl
	 h+qRL+D0C7PSvAesa2Gp5LWEeN5A04GHmKnX8m4vhDLp10d1s56gS8BW+yggaeHAcz
	 JU8Kh7T2SbPBFftW3+RSrd9hLcN0oEEIQEs8ibUHFpCgdUYpWR43CStzrt9kYXZLdG
	 pG1LMuIiJN4IQ==
Date: Thu, 19 Jun 2025 02:57:49 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: linux-man@vger.kernel.org, musl@lists.openwall.com, 
	libc-alpha@sourceware.org, Paul Eggert <eggert@cs.ucla.edu>, Bruno Haible <bruno@clisp.org>, 
	bug-gnulib@gnu.org
Subject: Re: malloc.3: Clarify realloc(3) standards conformance
Message-ID: <3bq7x4qi35ahpturyepnr6xvey5ksiszz5p5m6b3mepsiqdehg@qi4dxskwig2q>
References: <hndkzd4b5ajt2yvrflar36ddfdftc2irr5enprn5737spwarwf@mhs3xde6kruv>
 <87sejwd07s.fsf@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rliiulfg5h5fjwhz"
Content-Disposition: inline
In-Reply-To: <87sejwd07s.fsf@gmail.com>


--rliiulfg5h5fjwhz
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Collin Funk <collin.funk1@gmail.com>
Cc: linux-man@vger.kernel.org, musl@lists.openwall.com, 
	libc-alpha@sourceware.org, Paul Eggert <eggert@cs.ucla.edu>, Bruno Haible <bruno@clisp.org>, 
	bug-gnulib@gnu.org
Subject: Re: malloc.3: Clarify realloc(3) standards conformance
References: <hndkzd4b5ajt2yvrflar36ddfdftc2irr5enprn5737spwarwf@mhs3xde6kruv>
 <87sejwd07s.fsf@gmail.com>
MIME-Version: 1.0
In-Reply-To: <87sejwd07s.fsf@gmail.com>

Hi Paul,

On Wed, Jun 18, 2025 at 05:49:43PM -0700, Collin Funk wrote:
> Alejandro Colomar <alx@kernel.org> writes:
>=20
> > BTW, Paul, Bruno, does gnulib also wrap reallocarray(3)?  If not, it
> > should.
>=20
> Yep, Gnulib has had it since 2017 after it was added to glibc.

Thanks!  Yep, now I revised the patch that fixed the gnulib behavior,
and it is mentioned in the changelog

<https://gitweb.git.savannah.gnu.org/gitweb/?p=3Dgnulib.git;a=3Dpatch;h=3Dd=
884e6fc4a609dda5428fa84d19cb656d7e317f8>


Have a lovely day!
Alex

>=20
> Collin



--=20
<https://www.alejandro-colomar.es/>

--rliiulfg5h5fjwhz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhTYIYACgkQ64mZXMKQ
wqnwnA//SrjyTxjyR0LBGVZSiCcv1WIhIgCp/UummEMPdaqJeNflhs0Jm4tenvxz
iP7M4Y8a37WU2ZulLMEDA7o0CbJkFStHrT0QtrfykABmaCNKSvs6saPyqWNM105D
FFCRmPLhZYdjBltwWrcnDROGqZsl3od2CyMvJVYklhRDUbZJHXdnOSXDwPYH+FBc
254lHHQmZZtm1elGUD50qLto2crCgYF//tjXNliH3ojug6iImCIkwLBtd0pslqAA
3KHlbZMVuTjUZkZfyM4tOKBNTkIEpP1oShaF26g+/R6wmN1P0EX6cbrSalnpTV5Y
ycJBRJx2LTYPM4Fn5S3kC8XalJQGTtRcu3qjpZPQgBCyvDoErsvC3kBlDTSBnprQ
nzCs8BGUGqX3NGoBZ/1/DDpvubDa3tQnYdRShroFW3jRt4wTXoPmWO6dNBndfsU0
xiYwtpIOeBuGdI1RNstwWNi1x7Ure/LmtgARGat5Z4EGW+jkXt/EvnXRdSAcYbWT
/bjjc823D8cgt3QFyiSpO1IVtpdr6oH2dQPk35nKh8lPCDajM2E2SL/zdZWIHw3O
TV8Zsl3VUCrt47xh57I3YhaFg3cCz+rSRI4vpv7Oppt9tINgeZUhMeUzPmIC5LJi
31GukQPDeF3ouSuDJsFXkKHIXEyq+24YM12PlApJCI8R1a104Lg=
=Wj5S
-----END PGP SIGNATURE-----

--rliiulfg5h5fjwhz--

