Return-Path: <linux-man+bounces-3174-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7059CAE064A
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 14:54:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F1EF9188AD4E
	for <lists+linux-man@lfdr.de>; Thu, 19 Jun 2025 12:54:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 678912417F2;
	Thu, 19 Jun 2025 12:53:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NJtkYtNM"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A3F23B628
	for <linux-man@vger.kernel.org>; Thu, 19 Jun 2025 12:53:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750337636; cv=none; b=O6n0lez1ql3h4jS6o0MrUaom4QzfXd/X3foJGE67eK+wzY4H5JPIgcMS3Vvu9lNmj04ut4oLkr6DzsQHZF6zG/JOQa8oU+TygLS2bZ6JwwcrfoKpyeTFI7sVk35SRkCBeYQNhWxQNU6PMk7Txcj4VW3/cDRZSz5ZGxfZBpd4NnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750337636; c=relaxed/simple;
	bh=qOLfnTW3BdMq2Vul1eUefCtNb3Z+x0BgONypf6tFdH8=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cJ9Tq5y9wdvU6OPYXXoSVeaILh97N6A0j2jn+cpUbfevkIXj8zhd3Z8jHOFcNIBWYieqRPM5v2Gs++tJbs/X61wonJdq6aZxahmfdeUo9D486svPef7qPAnTq1cmKeGSMMh8Ldb3BS+6ETO/dXkelpzn2OwpQS/ff2CxMcso6ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NJtkYtNM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C31CFC4CEF0;
	Thu, 19 Jun 2025 12:53:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750337635;
	bh=qOLfnTW3BdMq2Vul1eUefCtNb3Z+x0BgONypf6tFdH8=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=NJtkYtNMz9liBKYocAftDKFBtKCyueLxwhPT94AXYx2TezRhIdEWgPjg0xeGrL+vm
	 fiUvW9ES+ns31YvOraIRB6v0FdsWOQVUDPQJ528k3NDlWaPo0z2kAMB3buYDbl+/iz
	 AUZQm5VFHXj3VFYkPJ+ulkcYATj9/dAYelQzhT5LnqyTAq41xH/S5OSp6MdLKnz+Cn
	 GZJKNiJ3bLCll18kR/S5OL0uxUyVHjfIn+1hBwTBkltmFE12kYKz3P4Xp3YbrPo4E/
	 v8OyXJqyksBTcVW7UvZ0F2nUGuXk9ECipdu19BL5C3EhMvOUZ52aaJgnkzqU/haVA9
	 s4l6LRfmD4gjA==
Date: Thu, 19 Jun 2025 14:53:45 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Vincent Lefevre <vincent@vinc17.net>, Rich Felker <dalias@libc.org>, 
	linux-man@vger.kernel.org, musl@lists.openwall.com, libc-alpha@sourceware.org, 
	Paul Eggert <eggert@cs.ucla.edu>, Bruno Haible <bruno@clisp.org>, bug-gnulib@gnu.org
Subject: Re: [musl] malloc.3: Clarify realloc(3) standards conformance
Message-ID: <jf5jralawp5lmjqcdfqf2jblg2z43vjbkdx3eapjumjsccw6yv@pzm2cxgfnpw3>
References: <hndkzd4b5ajt2yvrflar36ddfdftc2irr5enprn5737spwarwf@mhs3xde6kruv>
 <20250619021510.GD1827@brightrain.aerifal.cx>
 <rn4grpehjs2z6ntam7dze32gugdfokwani2v7tuuc6camjdzy3@btjl3c4ff5i3>
 <20250619123613.GC2742@qaa.vinc17.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3fn4nk4wi54qlna5"
Content-Disposition: inline
In-Reply-To: <20250619123613.GC2742@qaa.vinc17.org>


--3fn4nk4wi54qlna5
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Vincent Lefevre <vincent@vinc17.net>, Rich Felker <dalias@libc.org>, 
	linux-man@vger.kernel.org, musl@lists.openwall.com, libc-alpha@sourceware.org, 
	Paul Eggert <eggert@cs.ucla.edu>, Bruno Haible <bruno@clisp.org>, bug-gnulib@gnu.org
Subject: Re: [musl] malloc.3: Clarify realloc(3) standards conformance
References: <hndkzd4b5ajt2yvrflar36ddfdftc2irr5enprn5737spwarwf@mhs3xde6kruv>
 <20250619021510.GD1827@brightrain.aerifal.cx>
 <rn4grpehjs2z6ntam7dze32gugdfokwani2v7tuuc6camjdzy3@btjl3c4ff5i3>
 <20250619123613.GC2742@qaa.vinc17.org>
MIME-Version: 1.0
In-Reply-To: <20250619123613.GC2742@qaa.vinc17.org>

Hi Vincent,

On Thu, Jun 19, 2025 at 02:36:13PM +0200, Vincent Lefevre wrote:
> On 2025-06-19 12:54:52 +0200, Alejandro Colomar wrote:
> > +BUGS
> > +       Programmers would naturally expect that realloc(p, n) is consis=
=E2=80=90
> > +       tent with free(p) and malloc(n).  This is not explicitly re=E2=
=80=90
> > +       quired by POSIX.1=E2=80=902024, but all conforming implementati=
ons are
> > +       consistent with that.
> > +
> > +       The glibc implementation of realloc() is not consistent with
> > +       that, and as a consequence, it is dangerous to call
> > +       realloc(p, 0) in glibc.
> > +
> > +       A trivial workaround for glibc is calling it as
> > +       realloc(p, n?:1).
>=20
> n?:1 is a GNU extension:
>=20
> warning: ISO C forbids omitting the middle term of a =E2=80=98?:=E2=80=99=
 expression [-Wpedantic]
>=20
> with gcc -pedantic -std=3Dc23, and such code should not be given in
> examples (as a workaround should still be valid for portable code).

Hmmm, I guess I can write it as n?n:1.

I'll write a proposal to standardize ?: in ISO C too.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--3fn4nk4wi54qlna5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmhUCFIACgkQ64mZXMKQ
wqkbzA/9FwUROIsnh3/qwlKRXQpazwN154dhFi0IP3JiumpTTJOFuUreV9p2ckYU
MtFgAbWLDyulAl7ev1z54b7Dd4RfQXpfybZdWG9osADXy0JWZ389UnfdmbJ0dlAE
ylsfvJ48S1KG4y7Z2paVD0scRCEdaFDQshqRfofglV/BtwNMe3xpvEz67InuWs8p
iPp0pwmf1eTIT8mEO8+B502bBXmomvo7vxNUIzRcsaH/D4B8WWVxczLcO7b3PGHW
5Pwms6XhAltLlGE10oG/fbZBIOiNFktW/GxXz66Z1xV6sf+sLiyl0hnLdSdbVyB4
24ZrdbkU8rdXSwfBluZeFZ6sK99YypC+r9CFmU5k8QkdJY73r6xnFjiCrfII0dlM
8YKFYL3wg65TfOnAYMzTtkiShZm36sAHWBBX4FlkZLkiglNLqg+6t2X4nTii9wMT
OwPgSJtyI4niccuIM60zhLloO4U/E3OsfSIYF5js591p6CTyDBM9jI4Dq1cRKpx/
4Bo4scQsPoQOVEGOpCsSOR8FpGOASDtPMDrTGT2bGjivhRXy1cOpR3RrJj+MKfRx
9eYcPgGXEyaXsuf5rwbNdO1BTMEsAcu2LtjgKSaeEp38X3BFD96fXOscWq70vBWR
saN7AufiYyLvQoIZxV8Jn4tbgFBV0+lR9NYiguI2IECE+eQEkyQ=
=gpoq
-----END PGP SIGNATURE-----

--3fn4nk4wi54qlna5--

