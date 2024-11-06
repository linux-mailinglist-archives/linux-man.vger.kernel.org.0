Return-Path: <linux-man+bounces-1885-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 083E69BF4C2
	for <lists+linux-man@lfdr.de>; Wed,  6 Nov 2024 19:02:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AE9B01F2477F
	for <lists+linux-man@lfdr.de>; Wed,  6 Nov 2024 18:02:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 039162076C8;
	Wed,  6 Nov 2024 18:02:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="loTd9veq"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1DAD206948;
	Wed,  6 Nov 2024 18:02:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730916129; cv=none; b=E/DLu5+9s6uKvgF/K/8NuetoIaL218SFGRkdxNqO58DuNfcDe8y4ZJmB+JaXa9967PNk8gI/BScNelNwnLtHowKu6yNsdNcckXf9p2GGanUn4hNJrlKPlIeYDo7/+XcMtO1BPssV+XBcayHV6pMA3ArJigqBOLlWgEye62SoVGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730916129; c=relaxed/simple;
	bh=NOiutAFBJE3L8f8aMcj3+m4o6TkfsffJlByWapT0d+4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eF6sHPOHbdQYAy6lHmgUH0DNtiZgKgHg+6Cbh5W4aKO9m0+I1dxH4XNNibR5oV9LV3poYu2oVi0XxNTbBrPtVyug6AmBswdSBX/bAFyjP/S78MkyWRliEXkKDGrDbqPAonNAt5CkXurwHl4QxrFe/33GDeKLucdnuQg3e3G12e8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=loTd9veq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D3235C4CECC;
	Wed,  6 Nov 2024 18:02:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730916129;
	bh=NOiutAFBJE3L8f8aMcj3+m4o6TkfsffJlByWapT0d+4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=loTd9veqRx0xJ+jWWexN9QnKqejlwTrw6i63BA2Piqza0S9rxl9bl1cDNRRBwAmqd
	 4gXpd788mtk4DNuuGYtfY4dBoIHxnDMlsCYeq8MJKZFuC5tj3EGZvg0e8Y1ESwQBw6
	 1rX+48NOxn0IVJD2kLWVa6zzUTGRWduz2wK7YNKY5M6pm0H8ENLeuppckU31mdBOcW
	 9J7LQvigN0NbnKGE2ojKzOsoyfQpS2xQ+T0tNGgFOO4FiHFF6cR6kEAJ30v/01S8kU
	 w64KPb66qIqtKSoRv6gnkdmL2Tf/eKpaPxhb+fneyrGk2ls5+ALP3n1iAW4B31yQbN
	 3J4X/prJI4nuw==
Date: Wed, 6 Nov 2024 19:02:05 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Stephen Hemminger <stephen@networkplumber.org>, 
	Kuniyuki Iwashima <kuniyu@amazon.com>, alexhenrie24@gmail.com, branden@debian.org, 
	linux-man@vger.kernel.org, netdev@vger.kernel.org
Subject: Re: [PATCH] rtnetlink.7: Document struct ifa_cacheinfo
Message-ID: <r7gijupnoalg3z24fxjzhsmagndsmtn4uuhqfptnp2625g56fo@huucsmobulsu>
References: <20241105041507.1292595-1-alexhenrie24@gmail.com>
 <20241105055338.61082-1-kuniyu@amazon.com>
 <xfzcwmn6syhywvdcu6kn3mkuwqpo5usiwkssblvk6qrpoys5dp@hwgvspb43tdo>
 <20241106091801.3e021842@hermes.local>
 <20241106174531.crictruy4scop5q2@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="loaa3skyz24pnwmf"
Content-Disposition: inline
In-Reply-To: <20241106174531.crictruy4scop5q2@illithid>


--loaa3skyz24pnwmf
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Stephen Hemminger <stephen@networkplumber.org>, 
	Kuniyuki Iwashima <kuniyu@amazon.com>, alexhenrie24@gmail.com, branden@debian.org, 
	linux-man@vger.kernel.org, netdev@vger.kernel.org
Subject: Re: [PATCH] rtnetlink.7: Document struct ifa_cacheinfo
References: <20241105041507.1292595-1-alexhenrie24@gmail.com>
 <20241105055338.61082-1-kuniyu@amazon.com>
 <xfzcwmn6syhywvdcu6kn3mkuwqpo5usiwkssblvk6qrpoys5dp@hwgvspb43tdo>
 <20241106091801.3e021842@hermes.local>
 <20241106174531.crictruy4scop5q2@illithid>
MIME-Version: 1.0
In-Reply-To: <20241106174531.crictruy4scop5q2@illithid>

Hi Branden,

On Wed, Nov 06, 2024 at 11:45:31AM GMT, G. Branden Robinson wrote:
> You're not bringing any new information to the table, and you don't
> appear to understand why the two-space rule is in place for _typesetting
> software_.  I don't just mean *roff, but TeX as well.
>=20
> Neither of these is a WYSIWYG system.  Neither of them is Markdown.
>=20
> The rule is not there so that people can argue over how many space
> widths should separate sentences.  The rule is there so that the
> formatter knows where the boundaries between sentences _are_.

Actually, in this case it was about the use of intersentence space in a
commit message.  It was not about the contents of a manual page itself.

However, I think that loss of information is equally bad for a human
than for a type-setting system such as roff(1) or TeX.

> If you despise the use of two spaces between sentences in a *roff source
> document, there's an easy solution: use what Alex calls "semantic
> newlines".
>=20
> https://www.gnu.org/software/groff/manual/groff.html.node/Sentences.html#=
Sentences

[...]

> Arguing about the number of spaces between sentences in a discussion of
> "semantic newlines" (or whatever you want to call them) is
> counterproductive and wasteful of time.

Hmmm, you're right.  Using semantic newlines completely removes
intersentence spaces in manual pages; we shouldn't document that in
man-pages(7).  However, for commit messages I still want to enforce
two spaces, so we should probably document it in CONTRIBUTING.d/patches.

Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--loaa3skyz24pnwmf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmcrrxcACgkQnowa+77/
2zI8HRAAj9rGlymQ5PhjZpzpdSCExzGA8LvfFFUfkiNkJDXJFRDdoktO29tGTTo4
oWcUzqILr/E+tKvyywLQfOg67kghg87l5Z5/UDiUuhrpnR7oaX2KMtl1UUKYc+Td
Ahe/kurQYQXK9DmmBHpslUrpK3ltCrnulLLfmxH6ys5u21MHJfxT4EAzddTjhyiE
4egOEgLNCyZ1T7cLZbxMII3HMIA0HQZ4zfnAUdYD5u4ccgoza6CXnonqTZm38hUs
cSNgXFnIitzWQzTjMk2ohekGff/byoqX0oUZBdEF3wMzj3m25VDQQCVi+mWPrWo+
5TNUbsprBzGObPqLH4oLvZsdUow7EGK32REi4TD0FbsSseRl7K82UUagLXWRgoZh
qO0EhBk/BjvD4LTchXEJG1Ebn5E00IQu5Jttxpp9qxqNb3WaxRTAlC5Sszi9Uijl
nkbXluT+Cn2gpolSa7Ert3xdvWV/HD4AfhLavhnhpzzMO+fveQIYshWGWEtwMDa8
5A7aKw3LbL3EAvIGFUL23Gc1ohuU7UURaZ2ePJCOo7DswVTGnTr13wqGWHLci5s3
ZMlvSJHmT3A3U7pp+tUsOoVMavAnmlalXJpGNPoH3uLvXy/ED98+fQeWFntQRJLG
zMBWyvLtCTKw8rT7tj5vC8RgnMVjz/D3yDQpi3sSlIiEUTs9bx0=
=SEAh
-----END PGP SIGNATURE-----

--loaa3skyz24pnwmf--

