Return-Path: <linux-man+bounces-2778-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D900A90D5D
	for <lists+linux-man@lfdr.de>; Wed, 16 Apr 2025 22:45:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CE9731908388
	for <lists+linux-man@lfdr.de>; Wed, 16 Apr 2025 20:45:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 128D923BD00;
	Wed, 16 Apr 2025 20:43:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GuDl6WSE"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C699F233703
	for <linux-man@vger.kernel.org>; Wed, 16 Apr 2025 20:43:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744836230; cv=none; b=EjLfbUnQaJrPlDyEsjZ2/nySaCXFkb6X7qaCNpaujsX9MPHWXcw8pMS13XgMo6XPgcukFwYRObVUIbRnyf5dfIUMoz2n+ySlpcjExmN1lMqFD3bnIbywR3KdpWwBA5KIN1KwElIEHDU3Wu5QAJbVs/3WvhcJeQNHTAitV5RKiwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744836230; c=relaxed/simple;
	bh=IKGbzsqKZqOx+pWg9fX8u2ec/k9pDhQsviY+K8ovzG8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ByBXMfbvOMKUXE9vxOF6U1xQwjA0HVjT5VUiDwHRMU/G2OHOCwabLtQpnigT5sSMf/mKeJVncHVFw1LABX7zklt9vcIH2ac3FgGhs0jZoPcxoIIIcaJ771/YIyG8VGnDR1MiieGhKDWxCBpTnsdmB8lV0nKTbP5qM6UjYvSOLyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GuDl6WSE; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9CF8DC4CEE2;
	Wed, 16 Apr 2025 20:43:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744836230;
	bh=IKGbzsqKZqOx+pWg9fX8u2ec/k9pDhQsviY+K8ovzG8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GuDl6WSE5Djw8EJnQDNdEUumgBtEW8dqQO+nHVBXcdaVpK2yMKn4mEdO9HDJbc2Wc
	 VXzhgWtAABFWAfRXyZxsHnN5kreKn5lmtDHcfAga19IUlgjFs5uJ769yBSWCSv7ADl
	 cFrv3i8P18dCLXh++TNOY25zz3gAvlnZqDKjIzjgheUWCt87oY9Jnqz5gdZFt8bvSg
	 mWAFQxa1OoGO7SjAFJkIDC0rMiiRb9Z15bHyR/R3G76kyF4wtYdsnKC40gWfALqeST
	 BWneYLbQKoyYuHMq/avuZgPIpe4OBT/UZtoLPryIU9oRlIeEwhjrriDI42eDN4jsUZ
	 OlnlRSuRIY3oA==
Date: Wed, 16 Apr 2025 22:43:45 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Anton Zellerhoff <wg14@ascz.de>
Cc: linux-man@vger.kernel.org, 
	Lenard Mollenkopf <glibc@lenardmollenkopf.de>, Jakub Jelinek <jakub@redhat.com>
Subject: Re: [PATCH] man/man3/abs.3: Document u{,l,ll,imax}abs()
Message-ID: <jolaxbo3odckiuhte7km2zhsq2kbgdgoljzaxu6btyxrt5tgid@mujwelv5n3un>
References: <28a36070fe18707ab9fa26b91c88e6fd87a72097.1744566285.git.wg14@ascz.de>
 <g3dj7mhsl2mlaf3srsvz3oocjmfv2db4d6d2y2aartwz7t4mol@5vzkhothrry4>
 <b6978007-3408-4008-82d8-20a4713c42b7@ascz.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="n5xk72xtbpuwdntk"
Content-Disposition: inline
In-Reply-To: <b6978007-3408-4008-82d8-20a4713c42b7@ascz.de>


--n5xk72xtbpuwdntk
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Anton Zellerhoff <wg14@ascz.de>
Cc: linux-man@vger.kernel.org, 
	Lenard Mollenkopf <glibc@lenardmollenkopf.de>, Jakub Jelinek <jakub@redhat.com>
Subject: Re: [PATCH] man/man3/abs.3: Document u{,l,ll,imax}abs()
References: <28a36070fe18707ab9fa26b91c88e6fd87a72097.1744566285.git.wg14@ascz.de>
 <g3dj7mhsl2mlaf3srsvz3oocjmfv2db4d6d2y2aartwz7t4mol@5vzkhothrry4>
 <b6978007-3408-4008-82d8-20a4713c42b7@ascz.de>
MIME-Version: 1.0
In-Reply-To: <b6978007-3408-4008-82d8-20a4713c42b7@ascz.de>

Hi Anton,

On Wed, Apr 16, 2025 at 09:51:01PM +0200, Anton Zellerhoff wrote:
> Hi Alex,
>=20
> On Mon, 14 Apr 2025 09:51:03 +0200, Alejandro Colomar wrote:
> > Thanks!  I've applied the patch.  There are some things I don't like
> > about the layout of the page, but since they are pre-existing or based
> > on pre-existing text, I'll amend them myself afterwards.
>=20
> Thank you! :-)

:-)

> > >   For
> > >   .BR llabs ()
> > > @@ -121,6 +158,12 @@ .SH NOTES
> > >   .BR llabs ()
> > >   and
> > >   .BR imaxabs ()
> > > +and (since GCC 15.0)
> > > +.BR uabs (),
> > > +.BR ulabs (),
> > > +.BR \%ullabs (),
> > > +and
> > > +.BR \%uimaxabs ()
> >=20
> > Should I just remove this entire paragraph?  Who cares about it being
> > a built-in or not?  Of course GCC optimizes many library calls,
> > including memcpy(3), and we don't say so for each one.
>=20
> A quick grep yields that abs(3) was the only page that (still?) had
> information about GCC built in support.  I also do not see a need to
> document this.
>=20
> Have a lovely night!

Thanks!  I've applied those changes already.

Have a lovely night!
Alex

>=20
> Anton

--=20
<https://www.alejandro-colomar.es/>

--n5xk72xtbpuwdntk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmgAFnoACgkQ64mZXMKQ
wqmKIBAAlSgrOUeEbWYWxKbL/EWVYnrenYYUL1vVn8aLaRq8c5tOa+nA36hh9XvB
ZJsKFKOdLWh1WH5E3UVQCbBaWF7hIU+CPW9MLXQsVUOUIVb8t8dXLNT2zsXT/qpB
zGqwYVB7S4eD+Ft1y6viVRI27OwtQxYxnORkJRtWSt/uV/Nsxt99z6EQDE2rCDA9
nKFi5BAcG0Df7dzydisilZ7iBj8ivP5/98mT9YSEIAkSxxzG2MZLDpRIs5zhSEpx
rZQsXLDGsQAfsoqoUAciWWVMOZpfead695LMain+gTxJVCW9Pefy5HtYKctzGtoZ
9MBcF407he+aeNlW3fCMPyLQDliyB46vQbzBuWCGCgBZmaADSjxpDhbqA2L/EHeU
ID1uQmbyV4rZaHo7wHpsR83hklKWvwBu4ppk7I0wHLE1Fe3ulAN83KkzepbIQYX2
2b0L1BFhD5mMR4eYqIqBMOHEEg/jBqqsIOZTq8O149YNsLwRwisvshGuFpqq3kNY
CM90dgNqP2l2MEE9yx8QjZ8DqfmpK4XwD1xaRELa0ErPxY9FZVVT0FWYgGmdX/nz
yFQv3XhZXF8q9KNuqfAEeGJ6G1bQlop5H3CC4Su2A4tt0hYUkyLUNZPnMPOTrUTv
ej8Hvsq3NEwqpU2hxdTiQDYbWfCC6vWR7iXmIitjcuTJojHx2D4=
=I+gP
-----END PGP SIGNATURE-----

--n5xk72xtbpuwdntk--

