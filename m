Return-Path: <linux-man+bounces-1611-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E6ED950F30
	for <lists+linux-man@lfdr.de>; Tue, 13 Aug 2024 23:35:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CD9091C219B5
	for <lists+linux-man@lfdr.de>; Tue, 13 Aug 2024 21:35:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29022176FCF;
	Tue, 13 Aug 2024 21:35:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="bb9n8jdb"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 150E717CC
	for <linux-man@vger.kernel.org>; Tue, 13 Aug 2024 21:35:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723584926; cv=none; b=eLvi/6UNmpPxDMsPilzW9fn6fBFqtLR+B6wh9vidRdd9NQKnHoP3v+duUEhlq34a7on1Fk4H3CAEe3IFVoFmh078cpTF1kjjk56xFbKPgGJq3hu6Ng9m7VGxxIII5bzfMG/yHdIpV+g8OOl1oO5IEBT2QmZdMP50m2MHXal3hco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723584926; c=relaxed/simple;
	bh=aX7M6wtSQowwuvdafvQtbPjlqdq8ZEgizpQbPJa/N1g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VC4GBVC9N0FS1LhZqDhHWzpqGILN9QemwncJLQDxY7hd6SNRdmWq31c7TQgRcGRyau3tNRi5T+bUAUiZJnAANgEbnCQXtYCLhhDKhAF4VuuqdRGwesvMR/6Wv/nn/k5fzUv0K5/S/xrhn8ATqtKdizTs3tIXtxAX2Q76xBnp2+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=bb9n8jdb; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202405; t=1723584919;
	bh=aX7M6wtSQowwuvdafvQtbPjlqdq8ZEgizpQbPJa/N1g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bb9n8jdbKq/oH18I/qQNfsaVpY/lKsTY3x0CSzrP3bCfwv/1mVp7ElCYZFhpq81tU
	 b03nMO5WcpqHrGl9bXZXU2ZV7l4s7jeYrNGUhS0CLm+3d6lKJvtoZ+NP7pENrSjbh+
	 bhvyKQv2JD/vgoltpXw7g4PUKwqh/kqKGNstezxx3G01sg95htqvWPONiu7ojvXjcp
	 Ahv90olRABnC0wVrho7YAJFx3RR9gthU/TCwNaISRkysb4+XDyce4/5sc686BCNfwF
	 XCVCm6wbJr4hbyNtJmoGblPT4OS5A2pOKXBsibRoq9TGYIUwPbv9SXLkgZvZ127j7l
	 hkaT+U8SuiJYw==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id EE49CB0F8;
	Tue, 13 Aug 2024 23:35:18 +0200 (CEST)
Date: Tue, 13 Aug 2024 23:35:18 +0200
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: Dirk Gouders <dirk@gouders.net>, linux-man@vger.kernel.org
Subject: Re: [PATCH] regex.3: *preg is initialized with regcomp() -- not
 regexec()
Message-ID: <ly7rseyazxeytofif56yc6fubgbxdfndkmhostuk7uxhtzshkp@tarta.nabijaczleweli.xyz>
References: <20240813185011.3806-1-dirk@gouders.net>
 <377we5k7jw27rhffcu65lbzf7i7o6zl5jwvguj4sidhiiccctj@tarta.nabijaczleweli.xyz>
 <t2jfwyamniddi3j6hzi6kws22i4toakswjcugvfl7mm7e3h3k3@6y5uqu27g66a>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fvnsw3jky3igbi4w"
Content-Disposition: inline
In-Reply-To: <t2jfwyamniddi3j6hzi6kws22i4toakswjcugvfl7mm7e3h3k3@6y5uqu27g66a>
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--fvnsw3jky3igbi4w
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 13, 2024 at 11:29:42PM +0200, Alejandro Colomar wrote:
> On Tue, Aug 13, 2024 at 09:07:55PM GMT, =D0=BD=D0=B0=D0=B1 wrote:
> > On Tue, Aug 13, 2024 at 08:49:51PM +0200, Dirk Gouders wrote:
> > > Fixes: 1838a55edd6c47cb ("regex.3: Desoupify regexec() description")
> > > Cc: =D0=BD=D0=B0=D0=B1 <nabijaczleweli@nabijaczleweli.xyz>
> > > Signed-off-by: Dirk Gouders <dirk@gouders.net>
> > yep, my b
> Is that a Reviewed-By?  :)
yeah, sure

--fvnsw3jky3igbi4w
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAma70ZQACgkQvP0LAY0m
WPH4jw//cUK7vtyhBeOI/g4/tIT1pgoLMhzOAmIZjm7dcgP/fyGNgcpjcbxyFWyY
D6LLZcBqKT5Vx+bHfn7+3Xlq3m1SmKibBJrkWVLI0f/YjIlqMW1tqsiTq1uIdect
UpuNs8NtJwqrv/o3vkhpx8z71TNqx4iDGMkTmqqiat/CoeP9m6D/rK/5rds4Km35
aPwLxsE02XzTYwtZPim2mSW6bINeCdma9xTXIZQzkhis3Oj/r7iSAF7IL6tZ1Pl4
P5Ir6NDC70LVt7HDOKFC7WxzBHtAuXEwCcaCf5eRq9YH10g1/GXlFJ4++4t7qd9T
eQzhBP6vE936wdImqiaGi1PWAT2EGh9kj1EMndqmtxsMpwC1oEdursnrMXmgZN5G
cMwmCo2SaP7atFgWbX1uuhjnXrpj+BPeSa8i0wjHmJsA2zDBzpfgwikdNMLsZgEc
KqWjb+tPTYvjK8qoSUIXBXPab3CjJXbPALDDCz369v0P7FbUmbOzWzvsec49qTIj
Ks6DLgkcD3WFn3T5gQDeQyGMbTYIaUajX//cc2jSjp3AxQ7XdIOLo1P5KNhdmNwT
b9GIKf5EPLtpvau+c9rXlycxzKwZaWcHK9Ylnhk72AbRxirBnGAmZjmCaXNU0jVZ
zf1rNGQ2th/K7LkAL/OPjXafuQAw7m3Z5jqdznnof38Jf9O0QJ0=
=nD4r
-----END PGP SIGNATURE-----

--fvnsw3jky3igbi4w--

