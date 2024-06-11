Return-Path: <linux-man+bounces-1124-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A75A690423A
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 19:14:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 14C5328B659
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 17:14:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B8FC4503B;
	Tue, 11 Jun 2024 17:14:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fpmeXfzF"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF42F4D8BB
	for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 17:14:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718126058; cv=none; b=Q+JMe/jhKzlIVD4NLDnW6D6MRDD6CfxEvLne69xC9OBpiR+aTlMR3MOc/3uM0MdDwWyRgie2sa0I6v4xdP8aU6Cc3ccNSCW4OsHkODq6p0GNsxLZzJd8bgYOm/7PjRHvNCYR38rORWTbcp37S4nZUVDWPTdCoGX1hrspnZW+shI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718126058; c=relaxed/simple;
	bh=SOqIu1JkHze6tQj0ygCEYcUMUfK6dQY982ZCRyr8c+o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CkJhIIXxKIrfuOHf9LUshdOdDAUyzqliop4sr4v/+JrDmoBEdgxzgqM68MOMHozJDqjUue75kyHzfByY2rszO5d32oocyAAQqPRNe2dkApeO6oCnivjD9w3QCBt86U5aBMyp3JwGj+8dZnTQGFMmhQydzeAkBmgfFAGg4itl/Cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fpmeXfzF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D06FDC2BD10;
	Tue, 11 Jun 2024 17:14:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718126057;
	bh=SOqIu1JkHze6tQj0ygCEYcUMUfK6dQY982ZCRyr8c+o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fpmeXfzFSVgF8LL7vh+m/fBl71QBRVwt4Une6HS/6N8i06pWQaOBi4Ukwn+C+JDYG
	 F96wuiOlFleWViibQX6HBvcm7fmFwqlwVl5+k1dez3jddncj3xGMlFb0fCyBcl2xBx
	 t8KG3CMrsrwJTu1aUC6cWqxahLp1pghmZnyBqlIMPGYsHWJipMjlP6hip7SAh+YXge
	 CZ7GLcvHThN9veAwzDk7mhY2L0V47WReCABisij7xn5e+fk9P0veecCC7Nzoqnjffu
	 MghqpNVn+kcO0QPwQmkS4nEnGIDfSudbj4y/eSBtPN43CnhHJWh06olY9oYaVEIpPh
	 RhsqgXpmCLhug==
Date: Tue, 11 Jun 2024 19:14:14 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Joe Damato <jdamato@fastly.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/1] ioctl_epoll.2: New page describing epoll ioctl(2)
Message-ID: <umav7y7fezh4udzfx4hbd6mncoziieqof7ajj7vphldwerv5rv@77eyxtzd6jyy>
References: <20240610231206.1788738-1-jdamato@fastly.com>
 <20240610231206.1788738-2-jdamato@fastly.com>
 <wc5gyvvlsez7xnmpu564lhcm6ay4xlydtyp7jphib2x346twi7@4naqolg4fvml>
 <ZmeaUg_SsLfe_5V-@LQ3V64L9R2>
 <w6l72bmqi6vefojnzedbrpphbbvnofdplvb5ajz3isepvkt2gq@63s5rrseh5te>
 <Zmh8lQb3kHVbiRvj@LQ3V64L9R2>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="r3nomvn4xatvna2b"
Content-Disposition: inline
In-Reply-To: <Zmh8lQb3kHVbiRvj@LQ3V64L9R2>


--r3nomvn4xatvna2b
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Joe Damato <jdamato@fastly.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v2 1/1] ioctl_epoll.2: New page describing epoll ioctl(2)
References: <20240610231206.1788738-1-jdamato@fastly.com>
 <20240610231206.1788738-2-jdamato@fastly.com>
 <wc5gyvvlsez7xnmpu564lhcm6ay4xlydtyp7jphib2x346twi7@4naqolg4fvml>
 <ZmeaUg_SsLfe_5V-@LQ3V64L9R2>
 <w6l72bmqi6vefojnzedbrpphbbvnofdplvb5ajz3isepvkt2gq@63s5rrseh5te>
 <Zmh8lQb3kHVbiRvj@LQ3V64L9R2>
MIME-Version: 1.0
In-Reply-To: <Zmh8lQb3kHVbiRvj@LQ3V64L9R2>

Hi Joe,

On Tue, Jun 11, 2024 at 09:34:29AM GMT, Joe Damato wrote:
> No problem at all; I really do appreciate your work here keeping the
> man pages consistent and usable. Thanks for giving your time to help
> me get this man page setup properly.

:-}

> > Ahh, sure, and for the constants too.  We prefer glibc headers when
> > available.  I had the inertia that most ioctl(2)s do not have glibc
> > headers.
>=20
> Ah right forgot about the constants, so what I did instead was this, which
> includes the header only once:
>=20
> .SH SYNOPSIS
> .EX
> .BR "#include <sys/epoll.h>" "  /* Definition of " EPIOC* " constants */"
> .B "#include <sys/ioctl.h>"
> .P
> .BI "int ioctl(int " fd ", EPIOCSPARAMS, const struct epoll_params *" arg=
p );
> .BI "int ioctl(int " fd ", EPIOCGPARAMS, struct epoll_params *" argp );
> .P
> .B struct epoll_params {
> .BR "    uint32_t busy_poll_usecs;" "  /* Number of usecs to busy poll */"
> .BR "    uint16_t busy_poll_budget;" " /* Maximum number of packets to re=
trieve per poll */"
> .BR "    uint8_t prefer_busy_poll;" "  /* Boolean to enable or disable pr=
efer busy poll  */"
> \&
> .BR " " "   /* pad the struct to a multiple of 64bits */"
> .BR "    uint8_t __pad;"            "  /* Must be zero */"
> .B };
>=20
> Does that look OK?

Nah, that makes it unclear which header provides the type.  I'd add the
include again right before the struct definition.  Some other pages have
similar style (although I can't remember at the moment any example).

> > > Changed this to:
> > >=20
> > > retrieve on each poll attempt. This value cannot exceed
> > > .B NAPI_POLL_WEIGHT
> > > (which is 64 as of Linux 6.9), unless the process is run with
> > > .B CAP_NET_ADMIN.
> > >=20
> > > How is that?
> >=20
> > Much better.  (But still needs to use semantic newlines.)
>=20
> Hmm, I need to go back and re-read the semantic newline email because I m=
ade
> this section look like this:

You may want to also read this commit:

<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/man7/ma=
n-pages.7?id=3D6ff6f43d68164f99a8c3fb66f4525d145571310c>

It includes a quote from Brian W. Kernighan, which is a little bit more
detailed than man-pages(7) about it.

>=20
> .P
> .I argp.busy_poll_budget
> the maximum number of packets that the network stack will retrieve on eac=
h poll attempt.
> This value cannot exceed
> .B NAPI_POLL_WEIGHT
> (which is 64 as of Linux 6.9), unless the process is run with
> .B CAP_NET_ADMIN.
>=20
> But I get the feeling this is still incorrect.

Yep; it's incorrect.  We have a strict limit on column 80, so you'd need
to find a good break point in the middle.  I'd say

	s/retrieve on/retrieve\non/

(although there are other good break points, such as for example maybe
before 'retrieve').

and also break after the comma.

However, it was more correct than the previous, which continued the line
after a period, which is a no-no.  :)

> I tried to follow the discussion you and Branden had in the following ema=
ils. I
> apologize, but I don't think I quite follow what I should be using as a r=
esult
> of that conversation?
>=20
> \en=20
> \\n

TL;DR:

\\n is not appropriate, since it can be misinterpreted in some cases.
For example, in some cases, you'd need to double-escape: \\\\n.  Don't
use it.

\e is meh.  It means "write an escape character, whatever that is".
This is incorrect, since we want a backslash, not "whatever an escape
character is".  However, since the project has been using that for a
long time, you can use it in your patch.

\[rs] is the most appropriate, which means write a "reverse solidus"
(a.k.a., the backslash).  I'll prepare a churny patch for replacing \e
by \[rs] globally in the project.  If you feel like using it in your
patch, you're invited.  :)

Have a lovely day!
Alex

>=20
> or something else?
>=20
> Thanks,
> Joe
>=20

--=20
<https://www.alejandro-colomar.es/>

--r3nomvn4xatvna2b
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZoheAACgkQnowa+77/
2zKSGg/+Ko5O6cKIStlUGeSZD9t1NG0rCD5YfwH+TOMlrn03jCYERlp4xI+OHlxV
zvShX8og6053v6upa/FfHhdyOGaBfV7T6HBEYRGWfNmFWwm0+yhYyBTHI7Ebn+oy
piUnxqIda7qxWea+iPvTYvs5cTa5txkPdPPdFILB5y1ecAXhN3+o+k75XtTwSUF+
MDykUFRH43KPCiia8yIZha1NwJTqturhGBrtEvfIYHXhnA96/mezdwnhWy6pCKg1
HnkUt7mwyvZfhj9l3/2CvczwCM7uDXwcC7Iu7cCdMawq4M7rC6iu2X7Lc87p+oaJ
r9OI0HvJifjbbevjU/MF6TsY2SDjVj0u2WJ5H7h8mzNz8G5xcSdmf67SVDAUNDQc
n68WPrBFpRtpRBi3RMtGCfs7vQvT1EX7lCnAjlzxGX8TfpnATvjqAcwYb36ebd49
I76VGOAFWskZfU/4kku+xWj/NWPQi/aG4TcnOqS5+UzoFkehZ8CO2nJeB0nlGLM6
/0mY6jFrYmn/oRfNi9W0J+ycrjPpUrW3BjbvTK8cMYypvwz7PfB5MsKDVth+y2Wz
Kai6OVgVOGjsElIB3KOMdT5MuDKZZsIJM36A7BR/PNb4TkNadxjcMZY4FjfXtJqq
pnvg+Uo8FjcaOl/a/cfG/PLF4hrjSISzR+ylNzw2luNXw9b/qzg=
=38vW
-----END PGP SIGNATURE-----

--r3nomvn4xatvna2b--

