Return-Path: <linux-man+bounces-3359-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B255EB1C81F
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 17:03:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0F0CD18C3D14
	for <lists+linux-man@lfdr.de>; Wed,  6 Aug 2025 15:03:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66E6A259CA1;
	Wed,  6 Aug 2025 15:02:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LCz/1R0z"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2758718024
	for <linux-man@vger.kernel.org>; Wed,  6 Aug 2025 15:02:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754492569; cv=none; b=FQa59eFmCitVSUa3bKIiv0u0fWTD2IGUL5GJRgZ4u/y460pSxUjPrwxNgr4pzzoyvCe+OQ9NePytMTLp/vaszm+IpKW6a8JwCC1OOryyEozhwIM+ZuxvlvS7uZ75pGJffCfeCgNjs9IDDpv5JUXKZ2AbvNYxrgF2NAG0gjiugKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754492569; c=relaxed/simple;
	bh=ALJEpcBBg48XV54o9GdpHgNlYHaeDqhUAHLcRb0++Qo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=e1rSubQxaQBtdbCawJw7k8YT+Irv0b0ilvGbk7XJzccq9wydIcYFxRZw4aXAkjwIFhPE2VQbRuqtXYPeYlBOSAFI5ySI9Q8p2bwlq9hLTYuTuhqh6eq5NDNvUrh3qblMJrITk8HLY4+NWgLvv6HtrGyf3WNNyftNic8Ch5IAP5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LCz/1R0z; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC1BEC4CEE7;
	Wed,  6 Aug 2025 15:02:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754492568;
	bh=ALJEpcBBg48XV54o9GdpHgNlYHaeDqhUAHLcRb0++Qo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LCz/1R0zKri4jvTMyTD+H8XYwX6tOUb1NQ1Nh7XdnDnKIDh2WlEsCF03kwdHa86p9
	 Z3hsWeZGxB88HQNVfj0EabAWaiG4hk58Zx1TQc5vbAxtZN4pTr5DUXjOf6XEuhJ8Zf
	 DLG5eY1UmwBFjp7vmqeo9uQrfdJxRHNMEib7xARSdsxfLmX3wGBGZF+IVLeexsqD4X
	 0BPvyJhqVK82/FtonNxvGL7FibXzmi3I/QUGb8HXkc5RLG9as0DYn3565mrdbK0R4z
	 4MaXDSN0J+XixEZnP2trIsSQGQlbJyZMxe8GDhuDhaFMsKnL+jPRPGd+iDb212vZJI
	 3Hf2jg8w/W8SA==
Date: Wed, 6 Aug 2025 17:02:39 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Askar Safin <safinaskar@zohomail.com>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>, 
	Aleksa Sarai <cyphar@cyphar.com>, brauner <brauner@kernel.org>, dhowells <dhowells@redhat.com>, 
	jack <jack@suse.cz>, linux-man <linux-man@vger.kernel.org>, 
	"mtk.manpages" <mtk.manpages@gmail.com>, viro <viro@zeniv.linux.org.uk>
Subject: Re: How and when to control hyphenation (was: [PATCH 05/10]
 fsconfig.2: document 'new' mount api)
Message-ID: <nrs5g7ftfyft5oxyywxpfvqfzp2pz7aevpp2j3s2rlohg2cedi@ahriex4sfjbk>
References: <20250806-new-mount-api-v1-5-8678f56c6ee0@cyphar.com>
 <20250806074619.59685-1-safinaskar@zohomail.com>
 <20250806075021.ndodyx44xsyzxcu6@illithid>
 <2025-08-06.1754469395-mega-bleep-potent-sharpie-prepaid-quiz-2a9Vy3@cyphar.com>
 <20250806091157.ldpnbcbtik4eudjh@illithid>
 <k34wjawrqcq2aqohsovkca2kad3ba3kmg57zwvrzw4wujq62dg@rittgebtd6ev>
 <1987fc9ace9.ad1bf95b21215.9089923989658816796@zohomail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lgghusjgosdelgqd"
Content-Disposition: inline
In-Reply-To: <1987fc9ace9.ad1bf95b21215.9089923989658816796@zohomail.com>


--lgghusjgosdelgqd
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Askar Safin <safinaskar@zohomail.com>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>, 
	Aleksa Sarai <cyphar@cyphar.com>, brauner <brauner@kernel.org>, dhowells <dhowells@redhat.com>, 
	jack <jack@suse.cz>, linux-man <linux-man@vger.kernel.org>, 
	"mtk.manpages" <mtk.manpages@gmail.com>, viro <viro@zeniv.linux.org.uk>
Subject: Re: How and when to control hyphenation (was: [PATCH 05/10]
 fsconfig.2: document 'new' mount api)
References: <20250806-new-mount-api-v1-5-8678f56c6ee0@cyphar.com>
 <20250806074619.59685-1-safinaskar@zohomail.com>
 <20250806075021.ndodyx44xsyzxcu6@illithid>
 <2025-08-06.1754469395-mega-bleep-potent-sharpie-prepaid-quiz-2a9Vy3@cyphar.com>
 <20250806091157.ldpnbcbtik4eudjh@illithid>
 <k34wjawrqcq2aqohsovkca2kad3ba3kmg57zwvrzw4wujq62dg@rittgebtd6ev>
 <1987fc9ace9.ad1bf95b21215.9089923989658816796@zohomail.com>
MIME-Version: 1.0
In-Reply-To: <1987fc9ace9.ad1bf95b21215.9089923989658816796@zohomail.com>

Hi Askar,

On Wed, Aug 06, 2025 at 06:29:40PM +0400, Askar Safin wrote:
>  ---- On Wed, 06 Aug 2025 15:45:46 +0400  Alejandro Colomar <alx@kernel.o=
rg> wrote ---=20
> > I personally never use it, unless I read the page and find some line
> > break ugly.  And *never* use it in manual page references (BR), with the
> > rationale being that we'll eventually replace them with MR, which does
> > that for us.
>=20
> Aaaaaaah! I hate all these quirks. I hate all these roff quirks, mentione=
d in this thread.
>=20
> It seems we did not get manpages for "new" mount API earlier, because Bra=
uner gave up on roff.
> He said: "Years of writing groff have made me tired" here: https://github=
=2Ecom/brauner/man-pages-md .
>=20
> So I propose to convert manpages to some other format. For example, to re=
StructuredText.
> This is what kernel uses. This will help attract kernel developers. So, p=
lease, convert.
> At least mans in man2. reStructuredText can be converted to roff: https:/=
/docutils.sourceforge.io/docs/user/manpage.html .

No, I will not change from man(7) to RST.

Does rst have no quircks at all?  It probably has them too, somewhere.
What I can do for you is try to make the existing source more
consistent, so that someone can easily write new quality man(7) code
just by imitation.  This is what I've been doing in the last 5 years.

I've also worked on a build system that will help you with diagnostics
if you make mistakes.  Please run 'make -R help' to see what it has to
offer.  'make -R lint-man' is the most obvious thing one should run to
verify their manual-page patches.


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es/>

--lgghusjgosdelgqd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmiTbo8ACgkQ64mZXMKQ
wqktnhAAp2spHupig+gybQHgMC1jg2WyCImqw0EIs5TrJrTIhOZ8Hkie1P7zUaWW
X1qw9EaDaugukrkPy/DI1oggEXuqrEfPxvLYEdY0ZePmKuX/HaYaXMeKKQCg+kXL
9gHg2EwRAqoPyKWDGGvU2qfem34wgV93+RdXZApl7x96RcBuyCIehbVCGps2V+/5
AOZIhIgIo3WFsUTL7hvc8PedssMpzmpnESPGSG9IE+9otVhPqO0dH7vtON+RPhSe
Q33rdUoFlSwE91YQ6+OLIHXDTlAVE3pTvY5hOb7s0LvFstlaVnVhmrHtI2apI1XJ
rZvWA99q3jxXTD5JihAHTwmL0KS6Hw8zzVW9+ZXNsRhK90H5+sVaBiRJSPwMGZRS
cS9pgE+bHnYHsFnw/64klLftSBhSUtp9Lugt0fqom6Vnojk34Vpq75N9/4l2Dv1+
LZqv1EpIqsscndZZf6OIJkacER55PuW7nD5w9bpehNs7biYTXfv1W3Q1ifRNVQ35
yONSF5qnhjOt0rBqX1t9zZduuGA1qVFKoDqFP9hXHTzG26egJ2EIzspk2S6BxcOt
R+ko/92iU8a7+G/T7NTdATSyBhvWMGP+TtkZL4UUDPl4h3mhL2r+9+mqPBghORM9
MEm1Q0DT0Lfv/KaFab8q9HxIWKjXNUInkNhSJOdOpYW8jr0xXxY=
=OCyV
-----END PGP SIGNATURE-----

--lgghusjgosdelgqd--

