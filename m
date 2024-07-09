Return-Path: <linux-man+bounces-1425-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E44592C3F3
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 21:36:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B85E51F22F26
	for <lists+linux-man@lfdr.de>; Tue,  9 Jul 2024 19:36:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73D0817B022;
	Tue,  9 Jul 2024 19:36:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b="WHqa/gYB"
X-Original-To: linux-man@vger.kernel.org
Received: from tarta.nabijaczleweli.xyz (tarta.nabijaczleweli.xyz [139.28.40.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29CA11B86DE
	for <linux-man@vger.kernel.org>; Tue,  9 Jul 2024 19:36:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=139.28.40.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720553801; cv=none; b=WPanU3gCLLC4HdEfzPfD91o0zko2R0/owV31TzU9ch/KYcQZ+54xAPTZKAmtr+DPu+4Cyd0nrXxEh55NWHxLcYt13hCFp7pz8+WsoGMsu3CnsOBLue5Ku5OPUeKGzguFtKsiUpD+IxSe5w8LqYHt7q+8KzFHL56OlcrWCCYfE1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720553801; c=relaxed/simple;
	bh=p9B2+CHAH68dMGnEF0tmzn+isFwGPRUmrQ4n2g/e7ck=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pYnnH5p0YlRSUvhJBQkA7eWag9b3sPnCQRshiRMmw0Ka3p7A+HeTpBbjCt/3+I8gWTr5CCHFxGxCnV4IeyIn5FwE6gW24Evhpd98frCVix+dSLdAifrKpjFym9digcdpynTpPRDJCU4IuKCGNKixEB5TNLHf6RANbtbr4XTYuwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz; spf=pass smtp.mailfrom=nabijaczleweli.xyz; dkim=pass (2048-bit key) header.d=nabijaczleweli.xyz header.i=@nabijaczleweli.xyz header.b=WHqa/gYB; arc=none smtp.client-ip=139.28.40.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nabijaczleweli.xyz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabijaczleweli.xyz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nabijaczleweli.xyz;
	s=202405; t=1720553794;
	bh=p9B2+CHAH68dMGnEF0tmzn+isFwGPRUmrQ4n2g/e7ck=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WHqa/gYBB+3yV00GisafvXuHx546tD7R8OULsfPsx2qQD5luKvuhJHhxBu4awcJj+
	 LQGdrS9Hqeg6dH8ADmObP5dLvu5KBM31FgSaNmqn358UDXxSFSbojwNB3QxTHsaSZa
	 V8F94PChT/Tik8DdzJR+8J8QSiVhJ+2RdifXeyM9Y9Hkvez2c0WWGOvsLGt/idHHci
	 MWeno3QAOUew2dDLbx30sZUGPx0oNa3jcf73rW7PyulXWHtbPyJ8pW27ZZvB6CFp+0
	 /Dzaxe/71clmvjWQO/wk6Y0Inwt/Hy10KaSfPeDt0pkn2Luwa1qAbyRiQWVbmRWt7E
	 3jUmTZB5fxzbw==
Received: from tarta.nabijaczleweli.xyz (unknown [192.168.1.250])
	by tarta.nabijaczleweli.xyz (Postfix) with ESMTPSA id 8E0668658;
	Tue,  9 Jul 2024 21:36:34 +0200 (CEST)
Date: Tue, 9 Jul 2024 21:36:34 +0200
From: =?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] sigaction.2: setitimer(2)/alarm(2) timers yield
 si_code=SI_TIMER too
Message-ID: <5ydleo2v2m4nxi2w4tiqysq2hmoxnq7o3sc7767xbkgcsmdoyy@tarta.nabijaczleweli.xyz>
References: <xnwurjcbcwr3nrdpeqtt3afnafem7pbvlkiula5vvnb2mummw6@tarta.nabijaczleweli.xyz>
 <l6nvhqqcvytn4kgx6fnh4kalip6sqhvh2m75q5ee32n7k4vy2d@razgfd4n2zn3>
 <5j5iwu7spgp3jxwiiiup5fxo2cldim4vaexgcnmzwzpe5gtwnc@tarta.nabijaczleweli.xyz>
 <bgvpjt2rb7lkzphzxix7htcuyp2kfgxfzndfhwzr7i6ll2klxy@kuj35deb4dfh>
 <i2mpm6u2p2jphzecto6oltr4wmjqcnvqxjawtztyrl6mm6f675@tarta.nabijaczleweli.xyz>
 <eimffawrhk22n7hx6wcc3c3lqmukwkzxfjyglnzgau3cbvue3d@njs4kcjerncp>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6evooa3hgkuwzncp"
Content-Disposition: inline
In-Reply-To: <eimffawrhk22n7hx6wcc3c3lqmukwkzxfjyglnzgau3cbvue3d@njs4kcjerncp>
User-Agent: NeoMutt/20231221-2-4202cf-dirty


--6evooa3hgkuwzncp
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 09, 2024 at 09:20:28PM +0200, Alejandro Colomar wrote:
> On Tue, Jul 09, 2024 at 08:43:40PM GMT, =D0=BD=D0=B0=D0=B1 wrote:
> > On Tue, Jul 09, 2024 at 08:42:14PM +0200, Alejandro Colomar wrote:
> > > On Tue, Jul 09, 2024 at 07:53:34PM GMT, =D0=BD=D0=B0=D0=B1 wrote:
> > > > On Tue, Jul 09, 2024 at 06:38:42PM +0200, Alejandro Colomar wrote:
> > > > > On Mon, Jul 08, 2024 at 04:03:40AM GMT, =D0=BD=D0=B0=D0=B1 wrote:
> > > > > > Applies to Linux and NetBSD.
> > > > > Is this non-standard behavior?
> > > > In the case of setitimer(): "obviously yes" because the interface is
> > > > not part of the standard.
> > > The POSIX.1-2008 standard specifies setitimer(3p).
> > But the current standard (-2024) doesn't.
> Hmmm, do you want to send a patch for that?
absolutely not, even the subset I have for voreutils was hell

> Anyway, for 2008, was it non-standard behavior?
It wasn't "non-standard" so much as it was left up to the implementation
(still is), except for timer_create().

All implementations agree here, so there's no point in splitting hair IMO

Best,

--6evooa3hgkuwzncp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEfWlHToQCjFzAxEFjvP0LAY0mWPEFAmaNkUAACgkQvP0LAY0m
WPEsCw//ZbPTFz308HQa2LZgWZ5Y2ttlYj1uwEB4aA7dYBR+xSyzMMG3ornaoUlX
8/D9YvCqGO7mrIVxddn6Ag7hpW21At8H1tpQaH0g4HpuY6s2UYzV82kc++N87Sa/
eEY4Y5f2xqMqAJCfbpavlYCGC018o+EGnhczSFRjxaaXhVa5Kxle8f2OiNhbOzyC
9qjlKeIh76WW60OlTFSMV6mDfpCJFzet7CjC3fc3Mvp8eBMwfl3Jv/TgA/PwU/Mw
4zw1Dt7XW8uoGvp8jB+LQcY40g+TC2zP0Rie0kOLtgEIg9t3HJExl40dF2BSWwpG
Nm3IBT0KvhZpmkwJF8DxxzF49cuJj5Gi1eEGhTCrrpQGKQq/IVecemfUsu1UeoH5
qXXbFGvBnocjd9A4mbMtwldG3a34Opm4oVvSzN3H9WJhx3JMU3zu2HypOGpITCHE
tv/aKLI+1+hq3BviaYLqesSQ6iTXW0ZHdna+4korcw4/OcjpwJtyp/5HXQlVKHpG
QZFtSeezslx4XT7fA3tNfgkLS+eyrT7WRjUP05nANA8fGv2WbYRVrGbAO6A49oTD
9TTLcaSocX+wfhzdvtUZLYRwsTtPIKbCChrdV3wXqPwp+XhoTS11jUBGvg9UovdI
wu1r2gqrup/KQ5Jr9ASMjH8aH6BfGhZG5ESfRsMC2rV+AA57MLE=
=VFsc
-----END PGP SIGNATURE-----

--6evooa3hgkuwzncp--

