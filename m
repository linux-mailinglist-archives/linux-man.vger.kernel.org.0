Return-Path: <linux-man+bounces-2308-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 11D1DA1DC98
	for <lists+linux-man@lfdr.de>; Mon, 27 Jan 2025 20:18:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 55D4D1887D3C
	for <lists+linux-man@lfdr.de>; Mon, 27 Jan 2025 19:18:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2055B18A6CE;
	Mon, 27 Jan 2025 19:18:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sNbGAB51"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4CD817B50A
	for <linux-man@vger.kernel.org>; Mon, 27 Jan 2025 19:18:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738005518; cv=none; b=u99E51pCKeY3iHi5oStdDPnbtwCi2xgZxk15icWBLS40WVjhDM3HdZh758E8kWMIP1IKb4gc9c4V6y8IygcqrrIvqcDMxhyJnwWT0lZCcLIAdVdvO7PcZUN7c0vDs2jV83A3j4umQi/xNWTYaQ5GnEWNNsPS7OrhYQ81Us1tx8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738005518; c=relaxed/simple;
	bh=kD5xvtCUKYQu69e0UGGApCSz3kpdv17qaxxmZJ9lZbE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=T3BMnUjyHEpWEKGGf7g84fx6F2qz1i6srgDe7SnvrnUoJedK/rq+klcesS0W0G6sLjYWUzD2RNT0wTSbEDKGCvRvBQfkV33O+YBkgocFjLXWS96ep6jCLfMIKZMj5j0jzvhZOd5pBy1Xcd9gsuudSD1KS5rKt8cv+YPsw12/2kM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sNbGAB51; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2B67AC4CED2;
	Mon, 27 Jan 2025 19:18:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738005518;
	bh=kD5xvtCUKYQu69e0UGGApCSz3kpdv17qaxxmZJ9lZbE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sNbGAB51xoorxyuhbWNrHHU4G/YpLNxyP1r+hYIEVwtBNH1MxJWx1wEKGUBw/uZj1
	 ts2Tzo4KdHHqilnB7pae4c9X1BR6oTJegI0zX4scC1XVlf3y1Cf/TV+X4nYPtlKGVF
	 UyDC4NIL7PBAUX3MJYcsGUgGw+xdvOkkcQHq9U/gdZ5IPFRIEHN/HEoo0GquaUqjAj
	 whszh/BJpyIdIpBenU0pab7Md10W8oormPqC6gT1MDKfsuyRNGYoDtNmuK14kWjOui
	 0s4Izv9JYd1CRbRM9Wx0LoswbHCgsCXVz7io8DW82LJfAjnPnzKPvFCC+t/tMCsG1N
	 4S5oFwkwdPGMA==
Date: Mon, 27 Jan 2025 20:18:55 +0100
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org, Jason Yundt <jason@jasonyundt.email>, 
	Florian Weimer <fweimer@redhat.com>, "G. Branden Robinson" <branden@debian.org>
Subject: Re: [PATCH v1] man/man7/pathname.7: Pathnames are opaque C strings
Message-ID: <bh3tnvrfrstilbj6x4j32ty5pgm6xvpexrideqm5ewweu7zdxy@erqxho76vamh>
References: <ru2mlbwytntlel3jwwjcumn4i3v65bishfymxemiwvqpeeddmt@tarta.nabijaczleweli.xyz>
 <b9f5079f6bdeb29594f8ac24bd2eb4289e562613.1738003465.git.alx@kernel.org>
 <6blf4yxrx7cyqubqdpkzbifqcnvpvobpicsinquhwcv5hcd666@tarta.nabijaczleweli.xyz>
 <sotummbpsajmtgakisnj6ppliot4pula67o7xbu3clsuhzrnkm@voadpeybyvct>
 <pc6puqvi23matgg5lhs7fat5pitbula3thlb2fiedzclk6z6sl@tarta.nabijaczleweli.xyz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="44mtwszdl5hsmv3m"
Content-Disposition: inline
In-Reply-To: <pc6puqvi23matgg5lhs7fat5pitbula3thlb2fiedzclk6z6sl@tarta.nabijaczleweli.xyz>


--44mtwszdl5hsmv3m
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Cc: linux-man@vger.kernel.org, Jason Yundt <jason@jasonyundt.email>, 
	Florian Weimer <fweimer@redhat.com>, "G. Branden Robinson" <branden@debian.org>
Subject: Re: [PATCH v1] man/man7/pathname.7: Pathnames are opaque C strings
References: <ru2mlbwytntlel3jwwjcumn4i3v65bishfymxemiwvqpeeddmt@tarta.nabijaczleweli.xyz>
 <b9f5079f6bdeb29594f8ac24bd2eb4289e562613.1738003465.git.alx@kernel.org>
 <6blf4yxrx7cyqubqdpkzbifqcnvpvobpicsinquhwcv5hcd666@tarta.nabijaczleweli.xyz>
 <sotummbpsajmtgakisnj6ppliot4pula67o7xbu3clsuhzrnkm@voadpeybyvct>
 <pc6puqvi23matgg5lhs7fat5pitbula3thlb2fiedzclk6z6sl@tarta.nabijaczleweli.xyz>
MIME-Version: 1.0
In-Reply-To: <pc6puqvi23matgg5lhs7fat5pitbula3thlb2fiedzclk6z6sl@tarta.nabijaczleweli.xyz>

On Mon, Jan 27, 2025 at 08:10:10PM +0100, =D0=BD=D0=B0=D0=B1 wrote:
> On Mon, Jan 27, 2025 at 08:05:13PM +0100, Alejandro Colomar wrote:
> > On Mon, Jan 27, 2025 at 07:58:02PM +0100, =D0=BD=D0=B0=D0=B1 wrote:
> > > On Mon, Jan 27, 2025 at 07:46:21PM +0100, Alejandro Colomar wrote:
> > > > Thanks for the detailed response.  I applied this patch based on it.
> > > > Does it sound good to you?  Please review.
> > > Can't really find the base file for this,
> > It's the contrib banch on my server:
> > <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git=
/log/?h=3Dcontrib>
> > <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git=
/commit/?h=3Dcontrib&id=3Db9f5079f6bdeb29594f8ac24bd2eb4289e562613>
> Looks sane;
> idk about "limits.h(0p)" (it's limits.h(7POSIX) for me),
> but there aren't other limits.h pages so whatever.

Debian moves the 0p pages to 7POSIX.  Upstream, they're in 0p.  :-)



--=20
<https://www.alejandro-colomar.es/>

--44mtwszdl5hsmv3m
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmeX3BYACgkQnowa+77/
2zIp5Q/+Lt+DgQHrNQ/CWR74qC4Zfn+OM0gtbpF7mazlYi3eJ+UIoy78Os4VCXP3
v4AuIexwWkuhM7TO87w2AZ8sGkaBb/+P7naanLU0PPup3n6NabHIGyk0aCbSZAO8
iPUcOZO1oluIpMcV02Shyj4Iel1vBPo2kZYhawNkzqPpEPOOEF5g4TO5BswKau2N
f+f9l02hPWDQDBiejRZr8bke/YzHi/QnpLARL2T0e0VM9DgS152TxhpG5SYqV04A
WIY/k/jhTeA4WrswpfkBV/dVzJhdQdGSWOwNPSYmpkIrqHO+0LvFOfYiYB63H8mR
73QXAARu8ROZiqgON/B9YhakVbEhub39+ZW5S+XqPjykOA1pY/0cakzuZBoxNulh
8ggxkjRLAR+oklGvd7ClGLCyqHusQb22TJsMlSwoRgS+r1CUt453xU9p/POY4dqP
dIhF5jvqwN3Rt0V1xp75CsIe/XpAkO/na0zFNbCy1o8LgjR8ZPVtyuwRftVaQUHp
KbVpQejGIcgv3pRCT1yEF+2/Ta4aG0yBospkOWSFb2F9k6bLsT2QYaU+/5TfHLWW
iCeHYKOkayoXX8KFuKJ57dZdyAVflaCa2ySRrGD71yq1p0il+djsKoqfGGmAL2cP
rG2PRa2C4fx7btmKg7ncJRbnIXb3Vj8sf8XT/TCDhiBB+vEpJSM=
=cBo7
-----END PGP SIGNATURE-----

--44mtwszdl5hsmv3m--

