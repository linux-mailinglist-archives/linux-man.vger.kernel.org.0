Return-Path: <linux-man+bounces-1133-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E05459045D4
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 22:37:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4C9022839C7
	for <lists+linux-man@lfdr.de>; Tue, 11 Jun 2024 20:37:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC9801514DA;
	Tue, 11 Jun 2024 20:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sQPRWGBP"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C58512E61
	for <linux-man@vger.kernel.org>; Tue, 11 Jun 2024 20:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718138243; cv=none; b=KCZ09bNKMCA51DLm4yjSQTYqKVjKfmb1La0KZANRJcr0rhS7UQI8uKOo9oUdBWYybR3DSJD7lGJuUN0fXocNDKKzhyMD/Izz81v+I/hgm+MbJUGX+W9KJrP2BKqnk8lpnnHWHCbwetjmKSuerUWrjB+Fb+DgFHmpJZUjl4REsTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718138243; c=relaxed/simple;
	bh=+kOwFv7EXzJP4t0IyL6PWwGj+YXo9++jiigqLYLLM7U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WokbK/MLcIeMpNozRYK6c2cNIZ/faBSEI7lr4foBCUlapHf0XA9fGQO0iLQXq6EHMmUAcE/uq7+T/+RuFi/ZvGZagfYVjuoSOeMJB126VkhuMP3ztCTJBbfQ4MUopUFdZh/8AXkV9KnlyEdO1NcAgMSbBWuPEmXWNJiGN83Yzgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sQPRWGBP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5321DC2BD10;
	Tue, 11 Jun 2024 20:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718138243;
	bh=+kOwFv7EXzJP4t0IyL6PWwGj+YXo9++jiigqLYLLM7U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sQPRWGBPWTAyEsqO3PexqQUoeuYg3IZRuqjcU2NTO0WmqDbewKjeETvbudRTUnyjP
	 Ae69dxw/h3Wv2YdEjGmM+RjM8q+QwdJMZOy2N57re5/G3dj9NgdawteYpBmqG8jihC
	 3CfjaFlmsdfw9we9IS6IY6rObylohAM/zyqgpPicB7zJrDEd4T/CM36olLTvnqSg3V
	 0fBoU0FNiplmlxGgkx6PaHZbPbTmkK7+KcXxnze6d5712CO9CpgeHaBHsih5rwA0Ge
	 qpiGpv3V06/EA9a7FVp8w93ScWIru0RAyptF1hezqziD8FHlTRCrR8PaRzpHK3BDnZ
	 G1mZZYhD8hUow==
Date: Tue, 11 Jun 2024 22:37:20 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Joe Damato <jdamato@fastly.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v3 1/1] ioctl_eventpoll.2: New page describing epoll
 ioctl(2)
Message-ID: <7fimwlnnzrkmrercgiiwmc5brbzrlgafbzlxij5dhg3rpctva5@hjh5ablva365>
References: <20240611191257.1790908-2-jdamato@fastly.com>
 <20240611191257.1790908-1-jdamato@fastly.com>
 <kkxoopzhhdbapv6hh6nmtyan4dqz5czdhercselzinibff3yvq@eouskurlfciv>
 <ZmizvqOQbYkKcwME@LQ3V64L9R2>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xrjxlrxwtoh4l77k"
Content-Disposition: inline
In-Reply-To: <ZmizvqOQbYkKcwME@LQ3V64L9R2>


--xrjxlrxwtoh4l77k
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Joe Damato <jdamato@fastly.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH v3 1/1] ioctl_eventpoll.2: New page describing epoll
 ioctl(2)
References: <20240611191257.1790908-2-jdamato@fastly.com>
 <20240611191257.1790908-1-jdamato@fastly.com>
 <kkxoopzhhdbapv6hh6nmtyan4dqz5czdhercselzinibff3yvq@eouskurlfciv>
 <ZmizvqOQbYkKcwME@LQ3V64L9R2>
MIME-Version: 1.0
In-Reply-To: <ZmizvqOQbYkKcwME@LQ3V64L9R2>

Hi Joe,

On Tue, Jun 11, 2024 at 01:29:50PM GMT, Joe Damato wrote:
> > > diff --git a/man/man2/ioctl_eventpoll.2 b/man/man2/ioctl_eventpoll.2
> > > new file mode 100644
> > > index 000000000..0fe03d6d4
> > > --- /dev/null
> > > +++ b/man/man2/ioctl_eventpoll.2
> > > @@ -0,0 +1,173 @@
> > > +.\" Copyright (c) 2024, Joe Damato
> >=20
> > 1d
>=20
> My apologies, but I am not sure what you mean by this. What does 1d
> mean?

I meant `sed -i 1d`.  This line was redundant with line 2.

> > > +.\" Copyright 2024, Joe Damato <jdamato@fastly.com>
> > > +.\"
> > > +.\" SPDX-License-Identifier: Linux-man-pages-copyleft
> > > +.\"

[...]

> > Also, I'd like to align the member names according to
> > <https://nginx.org/en/docs/dev/development_guide.html#code_style_variab=
les>.
> > That is, 2 spaces of minimum alignment, plus the necessary to make them
> > all aligned (so 3 on the last).
> >=20
> > I'd like also 2 spaces minimum before the comments, instead of just 1.
>=20
> OK, based on the link you sent, I've aligned the start of each of
> the types and then aligned the start of the field names. Lastly,
> I've aligned the start of the comments for the first 3 fields, but
> left the comment for the __pad just two spaces after the field name.
>=20
> Did you want the comment for __pad to be aligned to the comments for
> the in-use fields above?
>=20
> This is what I have now, but I can insert space to move the pad comment o=
ver if
> you like.
>=20
> .EX
> .B struct epoll_params {
> .BR "  uint32_t busy_poll_usecs;" "   /* Number of usecs to busy poll */"
> .BR "  uint16_t busy_poll_budget;" "  /* Max packets per poll */"
> .BR "  uint8_t  prefer_busy_poll;" "  /* Boolean preference  */"
> \&
> .BR " " "/* pad the struct to a multiple of 64bits */"
> .BR "  uint8_t  __pad;" "  /* Must be zero */"
> .B };
> .EE

LGTM.

[...]

> > Please also add a STANDARDS section, which just says "Linux."
>=20
> OK added STANDARDS (in the order above) which just says Linux:
>=20
> .SH STANDARDS
> .P

=2EP after .SH is redundant.

> Linux.
> .SH HISTORY
>=20
> > Regarding semantic newlines, it looks great.  Thanks!
>=20
> Great!

Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es/>

--xrjxlrxwtoh4l77k
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZotX8ACgkQnowa+77/
2zJPJQ//TtxfG5ROcajoMMPWU5fPs6U9EdBcPrm6chJo6GGLEbXmFd0MWZEMEjQ5
+/a4lv1a5B/c9BPVVjYuOCB+D8qSXzeNWRKlzAYC2kRz5QUk+VGo+h+R3g5178k9
5sommzKnfNczhilZbyw55CCy3L+hkqUnTRoEzjziNDFBh6eyw3knwE9TP2pEgkSP
WSsqLm7mIS0L6/gZPNte5H3v8Ub+CFl6b6/GaHQOLRmoJEKUodF+uQ33Eb0Hdh1g
J/ZnIwyMskMKNhilXRbBiNeDrJqjmbieY3XJKLswenkXbx0OC6A1kp0+9XqJOu/T
bux9xqhsKzMCNmZwDn4eUhouAi88/iC42BHIZPJ3FcX6R5ECuBwKyfSWEHY6mHol
ydFGwn9buZBvci2cFWSKeaasXrkQr7JW3zcYD6tdihK2nkBcYbmBFu0qNIclxVlP
13Llw0ineKjtNnG6KLuddCdJlVAjeLxhVIBj2/nS7uu9LsIQ9lJSifReJgIu8BfU
yaPp5uhSeNlbG6SLC8+WtANS1pw1E9j5SAeCViEZyhX78TcRbGZm6z9gaR+We2Cf
F3HnNSGx9MhyfCfSCPm2t3JNlTDEqCsoTqlmP872KgpaOSvesPqrxZNbt0YV70by
CFYNk1Ow+zvF3P0kPlF+8BfKsVNJpVl0fYkv2tSkLS1//3chiao=
=V5fB
-----END PGP SIGNATURE-----

--xrjxlrxwtoh4l77k--

