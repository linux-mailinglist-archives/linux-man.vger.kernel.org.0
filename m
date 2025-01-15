Return-Path: <linux-man+bounces-2244-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 785FEA12BF8
	for <lists+linux-man@lfdr.de>; Wed, 15 Jan 2025 20:47:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 126923A6AA5
	for <lists+linux-man@lfdr.de>; Wed, 15 Jan 2025 19:47:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6AE41CF28B;
	Wed, 15 Jan 2025 19:47:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oeDHT3KC"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 648D619E997
	for <linux-man@vger.kernel.org>; Wed, 15 Jan 2025 19:47:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736970469; cv=none; b=jHjAQyqUvBb+RnOETb2L0svg0JGTlPiC1U5o1wATrmxpfm3hiZscvK9u19LFdNExrQ9TuETh/E0YG8P9KI2WjGzTMqW4oASxtkXeTrgBKpRjKdvL+2queb9xxMHPToe4KWIivhH3aa0oc2YRSE5TTE2EchW0wZYSZ6/0OmVG3QY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736970469; c=relaxed/simple;
	bh=bd/C6C2LaGQ76i82Ssxn2Dpf4ISwPcUBJGC+Caj4F9g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jrqs9Km1dC/AnUk76vNZX5K5m5Jiz9qdZuq2m2rLo++O/l2YFgKiqkQG+sISOXs4NG8mzh4LaC7/XqLF65itxG3ulGOC/azXl66lXVUqEQZKFd8b0Sdr515gmG35aZfOJ3ZtJDrpXQevsAP45wDz/MCMbHoo8FPfF4fScIimcf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oeDHT3KC; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8B27C4CEE1;
	Wed, 15 Jan 2025 19:47:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736970468;
	bh=bd/C6C2LaGQ76i82Ssxn2Dpf4ISwPcUBJGC+Caj4F9g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oeDHT3KCKj1r9257DEUanhJO85eVXc8F68Xq5hwGQEYL+BAfbYuQlCC834DLTafmq
	 toQHODS96jh2t06VTqAKjYXWazhe5dMZXTE6Pw25rDDTS4PjQ+tzdn2+lJHFlCZ3k3
	 xsjUFKPfOfhhq3LbZlyojxWVwXcpq9BbrIdq6zlPO3dikb8AMNXIDalX0r2ycST47f
	 e0agl31DESFa92b7WCHoCVfVf38udcYkneTMEOjRfqhmYhuicc7VslXuefa9LzbNFa
	 tExtPyYM4qBotk45ndorruVS2FfzsWZVHbm5Yva62q6aE4klBBuMU8vCIPvS8V/jC4
	 g28cozffPtmUQ==
Date: Wed, 15 Jan 2025 20:47:57 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Jason Yundt <jason@jasonyundt.email>, 
	Florian Weimer <fweimer@redhat.com>
Subject: Re: A modest proposal regarding pathnames (was: [PATCH v4]
 man/man7/pathname.7: Add file documenting format of pathnames
Message-ID: <nbwhtkscwxko265segjkz2gftqfgltx6d4f5qlqetvjtd7c7fg@l2sgpfxi5bv4>
References: <20250113213301.410280-1-jason@jasonyundt.email>
 <20250115162052.131794-1-jason@jasonyundt.email>
 <amh6nfzqelqqarrvldjujgsx5l7drdiprxi3x34zinngrvppcc@wxreyfabxlgg>
 <20250115183724.b7mhx76zdqwca4yp@illithid>
 <ayj3k2xld4s4a6tscyupsluc7hthkqoi5apssnbcz6orrrbsqu@465ke2scsxln>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qyxaefdwbn7m3ndb"
Content-Disposition: inline
In-Reply-To: <ayj3k2xld4s4a6tscyupsluc7hthkqoi5apssnbcz6orrrbsqu@465ke2scsxln>


--qyxaefdwbn7m3ndb
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, Jason Yundt <jason@jasonyundt.email>, 
	Florian Weimer <fweimer@redhat.com>
Subject: Re: A modest proposal regarding pathnames (was: [PATCH v4]
 man/man7/pathname.7: Add file documenting format of pathnames
References: <20250113213301.410280-1-jason@jasonyundt.email>
 <20250115162052.131794-1-jason@jasonyundt.email>
 <amh6nfzqelqqarrvldjujgsx5l7drdiprxi3x34zinngrvppcc@wxreyfabxlgg>
 <20250115183724.b7mhx76zdqwca4yp@illithid>
 <ayj3k2xld4s4a6tscyupsluc7hthkqoi5apssnbcz6orrrbsqu@465ke2scsxln>
MIME-Version: 1.0
In-Reply-To: <ayj3k2xld4s4a6tscyupsluc7hthkqoi5apssnbcz6orrrbsqu@465ke2scsxln>

On Wed, Jan 15, 2025 at 08:25:36PM +0100, Alejandro Colomar wrote:
> A good example of what you're talking about is exec(3):
>=20
>      int execl(const char *pathname, const char *arg, ...
>                      /*, (char *) NULL */);
>      int execlp(const char *file, const char *arg, ...
>                      /*, (char *) NULL */);
>      int execle(const char *pathname, const char *arg, ...
>                      /*, (char *) NULL, char *const envp[] */);
>      int execv(const char *pathname, char *const argv[]);
>      int execvp(const char *file, char *const argv[]);
>      int execvpe(const char *file, char *const argv[], char *const envp[]=
);
>=20
> The p functions *require* a filename, while the non-p functions accept a
> pathname.  I would change that manual page for consistency into either
> pathname and filename, or path and file, but the current mix is bad.

I started The POSIXly Correct Reform.  :)
<https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/log=
/?h=3Dposixly>

Cheers,
Alex


--=20
<https://www.alejandro-colomar.es/>

--qyxaefdwbn7m3ndb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmeIEO0ACgkQnowa+77/
2zKH7xAAjD+rDTjZ24z4V+RnHXy0A3iBGJ+UdrJtvVDIcYMA0og00ZQzukeWzq3i
42tTwaLWnL1WFaIsz528yF5xC7zFniKhRKbmJPBfNlGmwCe7nTEBgmh0EdMYv6EU
aKnNr8L+Ngy9uqCrI97UeCt5Z1G60r8HjsRFS3xrRniHQDXgA/9o9f/R8l/IPnHe
XfFQzmvdTkdT22lxU5bPNge/l3MOY0ApGCSiBlSL9nr0OcacnovR/nZmBK/JTJDA
Oa2v9Qvep8qsVOKyHdcN53jJAdN9h7Hh9pqigLLlRIfLLvBH6Zp7rIFd8TJ867Yu
ezophmert7A7+eE6Yo23B7qSU+Sy27ZXDTFnW/DHqyK1I5nDYJZe0s5SRaGoFdAb
Yb/+1hLVu2eAYtQDDoVDpgGCX9Bcr08eOKjbWPS/J9oTUcm1Z6ojQJVkgRZXskah
cY+SccUOxEfWyoCAVdZiA2qQJcrzMrCnKwaItwo5QnpXqTPPkeXa95SYM2lPgLoe
6gslfUjIPHuldPCxoR1jU7ILmFhu1FdPNlJpwXP8ZGVNNaxMs3lkqSDy0tiYrpF6
4Vt4Dwh7RCfcci/2cLgKYXRyIj0cAzOhzFJnAPciCmFH/Jdq3aQSPBlEd4dRZpXd
O3UtOQuYxWqXxjMui/AAP+QZob1z/PDF6guEdZ+lWd/qGMZlhe8=
=5mfH
-----END PGP SIGNATURE-----

--qyxaefdwbn7m3ndb--

