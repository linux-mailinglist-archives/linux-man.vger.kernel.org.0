Return-Path: <linux-man+bounces-1226-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2A490BD5E
	for <lists+linux-man@lfdr.de>; Tue, 18 Jun 2024 00:12:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BECD31F22735
	for <lists+linux-man@lfdr.de>; Mon, 17 Jun 2024 22:12:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8661F1991AF;
	Mon, 17 Jun 2024 22:12:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XG4SpkF2"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C9B15ECDB;
	Mon, 17 Jun 2024 22:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718662355; cv=none; b=Xgp5P0a/LE9xYLqsS4m4j0aXDSoKrZh9aMkY4fJ4+IicTME9HYMNeafqXTt0vIxc+xw/CWk0WUMPCH1wXwsEhNTxi1wbBtU21FX5kqYdPgwSpE17iDTE56FcHW5NNXzopJLeACVD6V8T3ZM1TS12UqnM3L1uk46DoHx34nqQIzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718662355; c=relaxed/simple;
	bh=uhTdvcbc9s9DbbwTwLPzpKvx4Qy9vX3N1ppLhw8pIkk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=P9O0BBW1y+OeW5VOf6oPyxSxCtWuI5eN+tIIJgVhIMG88igmezNn+m8LE75LRyGxU6wTRtk5xox+ZxX2eB/e5WOg2eDHbnx7qO5Yh4b5WBQf9S8pgkrUxJFiiLueuHXGE6lmefYMZNkiZ2bGvH1xA8DGXWBCIJYpfzkNQgZZL70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XG4SpkF2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64A89C2BD10;
	Mon, 17 Jun 2024 22:12:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718662354;
	bh=uhTdvcbc9s9DbbwTwLPzpKvx4Qy9vX3N1ppLhw8pIkk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XG4SpkF2Ue34WyMoziqly9VBh+5WSZ9ZZb8Sm7J0GXEX6xLA1XlTjrtz6iSsUiTFB
	 JKBsILHYMXEaysZzo0Gpi3M9db/hogVJDBJHofYkzNA9cUC0RuZ5rYBQ9ESk2zmkqR
	 9H+2JvorWxvthKUaDxIOkvTV7t+sQXDp88SHJpLZTQ7YLNH/mwfay+vDP1ZvEaoH9X
	 hLJDq02veH1at/uuONr2YQFhXs6KKe9alwBjs2HbAqb6rlHpD5nR8YcwXHiAuISpNA
	 NOl9cUyys8EJU8ieLBPCr5MHqlITZ0MZJ8+dQFklAokshiwdcIq/d1YCCjR9yFhybA
	 pZe6/nYnDPozg==
Date: Tue, 18 Jun 2024 00:12:30 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, libc-alpha@sourceware.org, 
	andyrtr@archlinux.org, Luna Jernberg <droidbittin@gmail.com>, 
	"Dr. Tobias Quathamer" <toddy@debian.org>, Marcos Fouces <marcos@debian.org>, Sam James <sam@gentoo.org>, 
	Jonathan Corbet <corbet@lwn.net>, man-pages-maintainers@fedoraproject.org, 
	Petr Gajdos <pgajdos@suse.cz>
Subject: Re: man-pages-6.9.1 released
Message-ID: <v25al3xd6xkv5iu5u6msz4bdj5gpmqkctsyvexjvs57jgqow44@xycbebp4iqf5>
References: <cpolays26kcjvekvowwik3di3ut66puls47w3gvdfwep66uaul@ka4omfzltwcs>
 <dncnuuuqpf4pa3toado6hk3inupa6ntlqxdt4x4y4l63mubuoy@kyam5murveos>
 <vqexqoi4imi6e4sm3ddz3vicqslxip24shu42ut37ydanfqnlu@2hpc5rue2d6e>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oft7z5izhsy2ma26"
Content-Disposition: inline
In-Reply-To: <vqexqoi4imi6e4sm3ddz3vicqslxip24shu42ut37ydanfqnlu@2hpc5rue2d6e>


--oft7z5izhsy2ma26
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, libc-alpha@sourceware.org, 
	andyrtr@archlinux.org, Luna Jernberg <droidbittin@gmail.com>, 
	"Dr. Tobias Quathamer" <toddy@debian.org>, Marcos Fouces <marcos@debian.org>, Sam James <sam@gentoo.org>, 
	Jonathan Corbet <corbet@lwn.net>, man-pages-maintainers@fedoraproject.org, 
	Petr Gajdos <pgajdos@suse.cz>
Subject: Re: man-pages-6.9.1 released
References: <cpolays26kcjvekvowwik3di3ut66puls47w3gvdfwep66uaul@ka4omfzltwcs>
 <dncnuuuqpf4pa3toado6hk3inupa6ntlqxdt4x4y4l63mubuoy@kyam5murveos>
 <vqexqoi4imi6e4sm3ddz3vicqslxip24shu42ut37ydanfqnlu@2hpc5rue2d6e>
MIME-Version: 1.0
In-Reply-To: <vqexqoi4imi6e4sm3ddz3vicqslxip24shu42ut37ydanfqnlu@2hpc5rue2d6e>

On Mon, Jun 17, 2024 at 02:16:01PM GMT, Alejandro Colomar wrote:
> Hi,

Hi,

>=20
> On Mon, Jun 17, 2024 at 01:55:36PM GMT, Alejandro Colomar wrote:
> > man-pages-6.9 had a broken link page: FICLONERANGE.2 pointed to a
> > nonexistent page.  Thus, here's:
> >=20
> > 	man-pages-6.9.1 - manual pages for GNU/Linux
> >=20
> > Tarball download:
> > <https://www.kernel.org/pub/linux/docs/man-pages/>
> > Git repository:
> > <https://git.kernel.org/cgit/docs/man-pages/man-pages.git/>
> > Online PDF book:
> > <https://mirrors.edge.kernel.org/pub/linux/docs/man-pages/book/>
>=20
> Huh, kup(1) is reporting some problem, and I'm not being able to upload
> the files.

Problem solved.  I was issuing a wrong command.  The tarball and PDF
book are online.

Have a lovely night!
Alex


--=20
<https://www.alejandro-colomar.es/>

--oft7z5izhsy2ma26
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZwtM0ACgkQnowa+77/
2zJ9TQ//RqNrnl6AsnnU+Ko8UaV5bbLP+TJst/7Djc1fNP3xBPK6+9f/5VjluvdD
E/Squ4xjE0btwkRsE/8Z9XAKepHLTHcEeiJsHumlx0257CM35tE+KwagZU+G7ESr
45mFdKZSStd2xOqXodAxfI9MdA5wVXEeMof0AfGHLmtDsxRp92QUyavPwJd0UYAz
1RzO2KEcxd7ZctPkjpzfp8GSf7gH30bEGrJr3BZAxzAfCdS9TGp+hGip8OvLpzXO
Dz3w+jY/X6DfKJ4QioK+8bb4QHPnuP0r4rbMLE46I6mozR+CpzmOR2k8wfWUnqD7
WpvDzBKHoJG9jDH810soHNDEwZr4z+BBS+84rQ6smGJPNuE6D3d7vCYkKykRiVRJ
gvwfELeQ0McKzNSr/FS/CkkGdZkZlQ6AEesq2hT/TezsN8mN4Y5GniUrFhOfKQjW
G/6sgFjSuC3JH88AecCRmePnqhovFb2rwOlk9klasZrsei/RuY4dVOdc5k+ihi8o
O8vc/DHMaPEjmogPjvDaEYGMLPb7nzZ7XLQTEedyKgD8kBNBSmN5eW3iFlmekdZB
ytSJYqlHZAfwTJNisoosZp1z8lNP9wy6G9hpNefkvGulVbif/1fmNEF7MlJumSae
jGiD7c3Q5MuTzbFJ1nKMq/RJJDr9gTE8TDL8lXYofvTk7pDPGcQ=
=Geql
-----END PGP SIGNATURE-----

--oft7z5izhsy2ma26--

