Return-Path: <linux-man+bounces-3720-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 223A2B34AA9
	for <lists+linux-man@lfdr.de>; Mon, 25 Aug 2025 20:53:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 375611B22955
	for <lists+linux-man@lfdr.de>; Mon, 25 Aug 2025 18:53:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0504B27BF93;
	Mon, 25 Aug 2025 18:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rEWvAWl0"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B924727AC3E
	for <linux-man@vger.kernel.org>; Mon, 25 Aug 2025 18:53:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756148001; cv=none; b=Q+FEjHqHuK7B0KBnxwND11Q/CSxeUET3X9nCXN+U46jR4+GFB+bXUqNzPQ0LqhvuvWETbM5aQEt5NKhT1LZGWLc3rAsVGQEbSJ3XdGGu4DC53vH4nJKeR6vVfjyq12DcVHrfmnINCnAmF6Vm1CVCs9xAAODhdnKo6hNL+2Zesp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756148001; c=relaxed/simple;
	bh=54upvO85ChRZrAUKko15rue+GwmGYIMGGd7Y8PvxHaQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=vAchKImsW6qKdn306wIdyLscD/W2e6pe9rtXoBnK8zoa/LV6XMo+pAQ/MN17MMpWctv62kCp5BVCmX9yfzspyoYb8iDXJb/NhTQ8pCLREWo/ETrhpodpLdNgLzRv3OlJ16eF4IEBAE92G+DHBTtKTIdSjqPpfjkn7m8mMSH6GH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rEWvAWl0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 940B1C4CEED;
	Mon, 25 Aug 2025 18:53:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756148000;
	bh=54upvO85ChRZrAUKko15rue+GwmGYIMGGd7Y8PvxHaQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rEWvAWl08Y80KZs+os4QJ3EscdLHQiq10tgahQ1wxlF5rH2pjNTnoJNmt0CTb6VYH
	 c6cxXANO/4ZhTvt+0pegHyop59jwnp2uXCYXHt/jYlwgR/jMLgXV1DLUFaMSYMLRjl
	 hEUilmN1jQarINa9LiFJ9vwSFApbxmKt8RJc05T2h1RFDulyhjcfVI0iYLeRhb0A8c
	 s16cl+OnBzgJ+W5ptKFb+vN5B9H3k82tmZA2X6ph9m+LtuzhiWDDK79xAQ/22mZxx0
	 lB35/ieI+GWeRxM7f1J5RzpbRAhQI/q1iYfw2KUq/wKCrr02/JaN2+WkctR3/7qzoE
	 QSls+dG5DYqTw==
Date: Mon, 25 Aug 2025 20:53:15 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page pthread_attr_setschedpolicy.3
Message-ID: <7pe2qwvkqpd6drn5ql3xld5s7auq7d36thdu6b3oowpf646ppc@mvteqf4f7245>
References: <aKsmUGE8mAXnM917@meinfjell.helgefjelltest.de>
 <5n2mlo4l7kqloztcuruagrkglh23gkqfqckuqf6pajerx6qkwh@b6qqipttn4xy>
 <aKyI4KbJh6LJC_8r@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="76prczeqpukb4ogp"
Content-Disposition: inline
In-Reply-To: <aKyI4KbJh6LJC_8r@meinfjell.helgefjelltest.de>


--76prczeqpukb4ogp
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Helge Kreutzmann <debian@helgefjell.de>
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Re: Issue in man page pthread_attr_setschedpolicy.3
References: <aKsmUGE8mAXnM917@meinfjell.helgefjelltest.de>
 <5n2mlo4l7kqloztcuruagrkglh23gkqfqckuqf6pajerx6qkwh@b6qqipttn4xy>
 <aKyI4KbJh6LJC_8r@meinfjell.helgefjelltest.de>
MIME-Version: 1.0
In-Reply-To: <aKyI4KbJh6LJC_8r@meinfjell.helgefjelltest.de>

Hi Helge,

On Mon, Aug 25, 2025 at 04:01:36PM +0000, Helge Kreutzmann wrote:
> Hello Alejandro,
> Am Sun, Aug 24, 2025 at 09:15:28PM +0200 schrieb Alejandro Colomar:
> > On Sun, Aug 24, 2025 at 02:48:48PM +0000, Helge Kreutzmann wrote:
> > > Without further ado, the following was found:
> > >=20
> > > Issue:    inherit-scheduler =E2=86=92 inherit scheduler
> >=20
> > I think this is correct.
> >=20
> > I think it's this:
> > <https://www.grammar-monster.com/lessons/hyphens_in_compound_adjectives=
=2Ehtm>
>=20
> Thanks for the pointer. I'm not a native speaker, but "scheduler" is
> not a adjective, isn't it?

Yeah, it's not an adjective, but the rule is similar for this case even
with a noun.  I'm not sure how they call it; maybe compound noun?  I
don't know.  But since they modify attribute, and the go together, they
have a hyphen to denote that they go together, I think.

Someone native please help with the exact rules, if anyone native is
reading.  :)


Cheers,
Alex

> (In German, we would the hyphen between "schedule" and "attribute", so
> I stumbled about the hyphen betewen the attribute and the noun).
>=20
> > Cheers,
> > Alex
> >=20
> > > "In order for the policy setting made by B<pthread_attr_setschedpolic=
y>()  to "
> > > "have effect when calling B<pthread_create>(3), the caller must use "
> > > "B<pthread_attr_setinheritsched>(3)  to set the inherit-scheduler att=
ribute "
> > > "of the attributes object I<attr> to B<PTHREAD_EXPLICIT_SCHED>."
>=20
>=20
> Greetings
>=20
>          Helge
>=20
>=20
> --=20
>       Dr. Helge Kreutzmann                     debian@helgefjell.de
>            Dipl.-Phys.                   http://www.helgefjell.de/debian.=
php
>         64bit GNU powered                     gpg signed mail preferred
>            Help keep free software "libre": http://www.ffii.de/



--=20
<https://www.alejandro-colomar.es/>

--76prczeqpukb4ogp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmissRsACgkQ64mZXMKQ
wqma2g//XtAPQGUcHrt2MU2bz42EoN7345dNGO6IM8ZFeF6JYQcbh+i57FzikQDG
luQeylUMkgHBy01CIaU5OY00CQ2oP8tGe8hQBxFbqn5EO5qvWgzE2SSfdsDtEl9o
Y5IJQ/f5iF3m3YGnDkGit1bQBiMrSj7P5h9ZTIeE1jdM7sTU+fDNTR4hAGbTRQTD
9Y9K8jn8Dak9noZJlPxfgcJoWq35ngB0BgbvrIsqGw+aInoQM7W7hnv2Iv8Jz7mB
ncPumQtDomUfqDFxwT9fqbsn6u/ot01qm1jStCEBNO0W4XUj0iilzBViBGU008Ln
cwvgs279xv8zH9FN7Yjg3ovSznYe07z3KPNy/vz3iPNCGhKLaPTTZVnvXmvUI4FG
D9FVzsD6duY2k/EjFQTCsrqMYxgmlB/LQGvzLxIDYPQIoWHeAjw3RT+tRfOy5mg0
5ZBiJ6qUOyIvx7qeueIbyOR7KrEu2mZq1xgL22aT3wzvQBoBVB+AY94sBXwhDrlW
dhEy1ncg60yJUa+EDb8Kb5e/Vy3EfwsBl15nP1u3McW5ujwvJIFOrWqDLyNL+qOD
D6gnLlgKIPFGXfKjNCpHRZiFzqwAKzRW3qk/Fi0VhxR8Wqfv1MxOCoi6AJ9B4Na9
sKMtDR5JYH4FMQq+J713uiqdjxFtnq5Ei8kYNpeDe5sMmBeO2Ag=
=7TUD
-----END PGP SIGNATURE-----

--76prczeqpukb4ogp--

