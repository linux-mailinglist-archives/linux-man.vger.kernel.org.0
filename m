Return-Path: <linux-man+bounces-2323-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B8D07A24E14
	for <lists+linux-man@lfdr.de>; Sun,  2 Feb 2025 13:52:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 36A84163DA5
	for <lists+linux-man@lfdr.de>; Sun,  2 Feb 2025 12:52:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A04891D7E4C;
	Sun,  2 Feb 2025 12:51:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xh1nHj7X"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 575251D514A;
	Sun,  2 Feb 2025 12:51:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738500718; cv=none; b=IxJu3l0FW8AhjbKEyEplgtnT677iP8j/KQGJmoQfK8QXpU/Tc6qP1g2Gfy0DBR6Q/fgvsBaHony9lActY7IqbqMqVONGin6ePjTo5Zj8LlHLD1dwmQdUMcWvoihtGucGmsXanJVRcXzsclxMI4T9VrJDUZfpksArNyVv6j+hmMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738500718; c=relaxed/simple;
	bh=kt9T+CakiobIyIASlhCXRcQekzRSmS1sWACCX2SPCeo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sUD3S0PgUK1ZJHZDmqtKhcR8OitXxxeHopfcUz4/yYSMJYrjZxuhuQ2nhpPWONcvAmWJA3HJQSP/AL6r089iZUoDYAlsVRmVZ8sSuMp+h/1XsXFwMJHzI0RvkwdGvKhbBOSTY5Kw1LXA28bjKYLjZ6Bx5PaFe3NpcWbJ0nSHds4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xh1nHj7X; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57617C4CED1;
	Sun,  2 Feb 2025 12:51:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738500717;
	bh=kt9T+CakiobIyIASlhCXRcQekzRSmS1sWACCX2SPCeo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Xh1nHj7XRsVc0MRlQJNU5kv1Dh9daq42RFVa4eVWbhJoxs+ESvQnZSbGMLC6Yx2+S
	 80rxrsDzzfV+CRZt0ZeP3wn7jgfjTQEzEg33+nekQz6eUUtnUNHuF6PUVtefqc+IcV
	 Qn19y46olstzLwpp/LF24WHBbcIqf1z/X23PDex4DXhZJTLBYK8U54+GwYzcpwvxH8
	 P83kidsA3GiIuOclCXdeH+hZ+/9zpSUlQ3LX7CRMZUb/5PyYhI/AtWUfFa5kHF/hcm
	 XzBbJmn3+MEOVAhEX+5znBDbvjhfAbO87qa+eVSKEl0DMPRUblt9k5tFTSvlkre+d0
	 Ch1jGdRSz3w1A==
Date: Sun, 2 Feb 2025 13:51:54 +0100
From: Alejandro Colomar <alx@kernel.org>
To: G??nther Noack <gnoack@google.com>
Cc: linux-security-module@vger.kernel.org, 
	Micka??l Sala??n <mic@digikod.net>, Tahera Fahimi <fahimitahera@gmail.com>, 
	Tanya Agarwal <tanyaagarwal25699@gmail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH 2/2] landlock: Clarify IPC scoping documentation
Message-ID: <erjborzfvlvlczeahjt7esghr4v3slgxdht6efftekofxljhiq@mkw2ibzvpvsx>
References: <20250124154445.162841-1-gnoack@google.com>
 <20250124154445.162841-2-gnoack@google.com>
 <Z5O44dxg8y-QZV62@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lpev2x5vd6vzcdfc"
Content-Disposition: inline
In-Reply-To: <Z5O44dxg8y-QZV62@google.com>


--lpev2x5vd6vzcdfc
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: G??nther Noack <gnoack@google.com>
Cc: linux-security-module@vger.kernel.org, 
	Micka??l Sala??n <mic@digikod.net>, Tahera Fahimi <fahimitahera@gmail.com>, 
	Tanya Agarwal <tanyaagarwal25699@gmail.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH 2/2] landlock: Clarify IPC scoping documentation
References: <20250124154445.162841-1-gnoack@google.com>
 <20250124154445.162841-2-gnoack@google.com>
 <Z5O44dxg8y-QZV62@google.com>
MIME-Version: 1.0
In-Reply-To: <Z5O44dxg8y-QZV62@google.com>

Hi Guenther!

On Fri, Jan 24, 2025 at 04:59:29PM +0100, G??nther Noack wrote:
> Hi!
>=20
> This is an attempt to clarify the kernel documentation for Landlock's IPC
> scoping support before I send the same wording to the man page list in tr=
off
> format.
>=20
> (Adding Alejandro and the man-page list to get an early review on wording=
 and
> clarity.)

Sorry for not replying before.  I had fever last week.  :)

> On Fri, Jan 24, 2025 at 03:44:45PM +0000, G??nther Noack wrote:
> > -IPC scoping does not support exceptions, so if a domain is scoped, no =
rules can
> > -be added to allow access to resources or processes outside of the scop=
e.
> > +interactions between sandboxes.  Therefore, at ruleset creation time, =
each
> > +Landlock domain can restrict the scope for certain operations, so that=
 these
> > +operations can only reach out to processes within the same Landlock do=
main or in
> > +a nested Landlock domain (the "scope").
> > +
> > +The operations which can be scoped are:
> > +
> > +``LANDLOCK_SCOPE_SIGNAL``
> > +    When set,

Do we need to say when set?  I'd say that's redundant (of course if you
don't set a flag, its effects don't apply).

> > this limits the sending of signals to target processes which run
> > +    within the same or a nested Landlock domain.
> > +
> > +``LANDLOCK_SCOPE_ABSTRACT_UNIX_SOCKET``
> > +    When set, this limits the set of abstract :manpage:`unix(7)` socke=
ts we can
> > +    :manpage:`connect(2)` to to socket addresses which were created by=
 a process
> > +    in the same or a nested Landlock domain.
> > +
> > +    A :manpage:`send(2)` on a non-connected datagram socket is treated=
 like an
> > +    implicit :manpage:`connect(2)` and will be blocked when the remote=
 end does

I think *if* would be more appropriate than *when* here.

> > +    not stem from the same or a nested Landlock domain.

This could be read such that send(2) is replaced by connect(2) on a
non-connected datagram socket.  But you want to say that a connect(2)
is implicitly executed before the actual send(2) (which is still
executed, if connect(2) succeeds).

How about this wording?

	If send(2) is used on a non-connected datagram socket, an
	implicit connect(2) is executed first, and will be blocked when
	the remote end does not ....


Have a lovely day!
Alex

> > +    A :manpage:`send(2)` on a socket which was previously connected wi=
ll work.
> > +    This works for both datagram and stream sockets.
> > +
> > +IPC scoping does not support exceptions via :manpage:`landlock_add_rul=
e(2)`.
> > +If an operation is scoped within a domain, no rules can be added to al=
low access
> > +to resources or processes outside of the scope.
> > =20
> >  Truncating files
> >  ----------------
> > --=20
> > 2.48.1.262.g85cc9f2d1e-goog
> >=20
>=20
> ???G??nther

--=20
<https://www.alejandro-colomar.es/>

--lpev2x5vd6vzcdfc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmefamMACgkQnowa+77/
2zJedQ//ctV5jFx9r4HzCh4D3jCN8VIDXXXs3hMfS6jUbEY1a/FEpOe/UITZ6oin
P8HdJZSF77jmOVCwHu9/9T801VKiZgXkI4dYgyLrBVaBwek1smZUD2kzB+vEb6qz
AJUPSFBy6auEQJKDAVp5kkGmsPgbyVEwy/FpkuJMOi2qGE+1BIlBy26ATpUuls7u
9AXNPd9jmymIR45K3FMcpVeqZDb4/7eIS9NrtOLeOGjyoRfeSQZ0l5S+y/5e5chX
lV4znIUURmz6k4A0PqyX5deBBg7WrEeHvHZ+/unGEOzJfz7/dYLD8R998xq+sOW1
Vi6j2gacAOE5YicMY0Ql+JblGNHvHUZBqPYNgvOHR7OlFLf1JK0+Uv46a9Qv87u6
Ly6KFWPYWUcq5duZIZJv/uazpnGE4+AnPlewm6G/DEn7UrrejJL8/Dl+oCI2/ZFu
y0feu6canTfByoBW/ZOFsCh+MQT68x2t3QgusmFBlFHbFLbdUVlCzwmp3aGsBn4E
82Y+gNeQsX/N03kJ09w/k8/qP6jlEG5vDooRIXsomgpYMEm/8Yr88WQr9BtOphly
CoSnuotbA3WV3sGd3enqhgHovO4cXdvUf283ZiLTY5ci2XU2sokX+15SMFrcsruR
ZtGYA6MlD0z3GLI/1LRqUeGzTqzZNN2gYQYVdhQZ4Sopy2vadAI=
=3Ibg
-----END PGP SIGNATURE-----

--lpev2x5vd6vzcdfc--

