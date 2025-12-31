Return-Path: <linux-man+bounces-4600-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EA873CEC35A
	for <lists+linux-man@lfdr.de>; Wed, 31 Dec 2025 17:00:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 117DF300C5D2
	for <lists+linux-man@lfdr.de>; Wed, 31 Dec 2025 16:00:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D4A61C2324;
	Wed, 31 Dec 2025 16:00:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D74wRPFg"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D1231D6BB
	for <linux-man@vger.kernel.org>; Wed, 31 Dec 2025 16:00:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767196827; cv=none; b=KfjbqfFrs9eALbx5xJj20qeMXfmnvunsSEEDVNmCRRPc0PC4tZrXX53fvJlI4b6tezN5P74XPvDQJ5yznVgMRsaWwRSMZKggd4gvs/Yq9jdQWEEkIZ43PiUtOOeuPzvyt2Jvjs7TDKRgMfk1nQIN1uv66IS7W0UComO0G4RUnUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767196827; c=relaxed/simple;
	bh=t7lNgHxAKZBwHRXhhOheq1ojdqWST4gZGe0ZObGTKbs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=l6Qowv7yeFRZLHxoQRssM9lJQAKpFhjsQUvurtNHrKFerkk1RfQLG9fKg66kUc5nQXIX1OvybYOyyr+0SEFp5Qnn7DmGWMDjHEjvjDEg2TlYfLUxEM4eu4k7RPJ/uWY3rs8KyXNedfkxDo/xCe2KXvsol/iX4Of1DpXbU7XVf+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D74wRPFg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CDE8DC113D0;
	Wed, 31 Dec 2025 16:00:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767196826;
	bh=t7lNgHxAKZBwHRXhhOheq1ojdqWST4gZGe0ZObGTKbs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=D74wRPFgxEHmDQGB4cOEcJWPN0eeNYop+Wqk5GuieDSpxdCQAnEqAE9XRbAy7Unof
	 40nzp7UuT5ndVGLnvExeLKoEOlof7r3cjLXJXf4dDuZL3lRBApWZeE9w1PYp3mK9ZN
	 TT6zzz88awyQ5HmJ3SncdVyYvIi5tQqMyhYTHf7IBvPoStKx5Oljetj5VmtfSrmu/0
	 TDGHc2Yr/e/xRjKS2QAsk+iOwsSG2mXLNAgkLVZgg26gvajes9eqLznskpYkuhS/bZ
	 NquqLgZE8Z8A7gJSldevyeZlOJsqCM3uRao3YDyU1VNQpUKTw75PvwQhXkyCxVrn6Q
	 Waw1S6V9EJALg==
Date: Wed, 31 Dec 2025 17:00:23 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Craig Gallek <kraig@google.com>
Cc: Vincent Bernat <vincent@bernat.ch>, linux-man@vger.kernel.org, 
	Martin KaFai Lau <kafai@fb.com>
Subject: Re: [PATCH v3] man/man7/socket.7: fix documentation for
 SO_ATTACH_REUSEPORT_EBPF
Message-ID: <aVVH5RBYHnDb1s5E@devuan>
References: <20251027131711.186482-1-vincent@bernat.ch>
 <20251201195726.3669864-1-vincent@bernat.ch>
 <CAEfhGiwbaAuvZ=aVQoRw8+ZQPmMQnwp3WFO5ELCMPJOOa3FnWQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ta54i55kqgggrrqc"
Content-Disposition: inline
In-Reply-To: <CAEfhGiwbaAuvZ=aVQoRw8+ZQPmMQnwp3WFO5ELCMPJOOa3FnWQ@mail.gmail.com>


--ta54i55kqgggrrqc
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Craig Gallek <kraig@google.com>
Cc: Vincent Bernat <vincent@bernat.ch>, linux-man@vger.kernel.org, 
	Martin KaFai Lau <kafai@fb.com>
Subject: Re: [PATCH v3] man/man7/socket.7: fix documentation for
 SO_ATTACH_REUSEPORT_EBPF
Message-ID: <aVVH5RBYHnDb1s5E@devuan>
References: <20251027131711.186482-1-vincent@bernat.ch>
 <20251201195726.3669864-1-vincent@bernat.ch>
 <CAEfhGiwbaAuvZ=aVQoRw8+ZQPmMQnwp3WFO5ELCMPJOOa3FnWQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAEfhGiwbaAuvZ=aVQoRw8+ZQPmMQnwp3WFO5ELCMPJOOa3FnWQ@mail.gmail.com>

Hi Vincent, Craig,

On Tue, Dec 02, 2025 at 10:49:03AM -0500, Craig Gallek wrote:
> On Mon, Dec 1, 2025 at 2:57=E2=80=AFPM Vincent Bernat <vincent@bernat.ch>=
 wrote:
> >
> > When using eBPF, there are two possible cases depending on the program
> > type. Only the first case was described. In the second case, the program
> > should not return an index, but a decision (SK_PASS/SK_DROP). The socket
> > should be selected using the sk_select_reuseport helper.
> >
> > Cc: Craig Gallek <kraig@google.com>
> > Signed-off-by: Vincent Bernat <vincent@bernat.ch>
> > ---

I have applied the patch, with some important reorganization of the
text.
<https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=3D4=
1788bdd42312828532c4ddbadc0a4d28426d4fd>

> >  man/man7/socket.7 | 23 ++++++++++++++++++++---
> >  1 file changed, 20 insertions(+), 3 deletions(-)
> >
> > diff --git a/man/man7/socket.7 b/man/man7/socket.7
> > index b4d58a23d5da..e4e85dc9345d 100644
> > --- a/man/man7/socket.7
> > +++ b/man/man7/socket.7
> > @@ -354,20 +354,34 @@ the sockets in the reuseport group (that is, all =
sockets which have
> >  .B SO_REUSEPORT
> >  set and are using the same local address to receive packets).
> >  .IP
> > -The BPF program must return an index between 0 and N\-1 representing
> > +The classic BPF program must return an index between 0 and N\-1 repres=
enting
> >  the socket which should receive the packet
> >  (where N is the number of sockets in the group).
> >  If the BPF program returns an invalid index,
> >  socket selection will fall back to the plain
> >  .B SO_REUSEPORT
> >  mechanism.
> > -.IP
> >  Sockets are numbered in the order in which they are added to the group
> >  (that is, the order of
> >  .BR bind (2)
> >  calls for UDP sockets or the order of
> >  .BR listen (2)
> >  calls for TCP sockets).
> > +.IP
> > +The extended BPF program can be of two types:
> > +.B BPF_PROG_TYPE_SOCKET_FILTER
> > +or
> > +.BR BPF_PROG_TYPE_SK_REUSEPORT .
> > +In the first case, the extended BPF program must return an index betwe=
en 0 and N\-1,
> > +like a classic BPF program.
> > +In the second case, it must return an action
> > +.RB ( SK_PASS
> > +or
> > +.BR SK_DROP )
> > +and the
> > +.B bpf_sk_select_reuseport
> > +helper can be used to select the socket which should receive the packe=
t.
> > +.IP
> >  New sockets added to a reuseport group will inherit the BPF program.
> >  When a socket is removed from a reuseport group (via
> >  .BR close (2)),
> > @@ -386,7 +400,10 @@ takes the same argument type as
> >  .BR SO_ATTACH_BPF .
> >  .IP
> >  UDP support for this feature is available since Linux 4.5;
> > -TCP support is available since Linux 4.6.
> > +TCP support is available since Linux 4.6;
> > +support for
> > +.B BPF_PROG_TYPE_SK_REUSEPORT
> > +program type is available since Linux 4.19.
> >  .TP
> >  .B SO_BINDTODEVICE
> >  Bind this socket to a particular device like \[lq]eth0\[rq],
> > --
> > 2.51.0
>=20
> Looks good to me, thank you for the clean up!

Thanks!  I took this as an Acked-by.  (I prefer them to be explicitly
stated, though.)


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>

--ta54i55kqgggrrqc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmlVSJcACgkQ64mZXMKQ
wqkClRAApby/2rEIGKSqnuyiI44iwBPiICNhI4bSTUTsbEfu5+TLaiVQoNbhoEBK
Kn8NAonlHc71UaypntXma4qd+r0CQwOolhuunVTbbSMTsyGbxZKiolaALNuCfQLl
xkjBV8watZMYGgd1f5VaNt9M7zxgrjh9+JO1hEOcYxEgP12ZW14e4Z7AP/xPDp9L
MwncxiINuU6GMrZ2lokekLOuSE7le/4Ar9JmsvNTmS3JznbG6iWUZB1FjhepahjF
EkC1cll4u30CzSjcAd4vdo6RHy15s0VA7qz2MdLP6u5F57/XGYixsfBOBeIBAkwH
Qi5T1bRro3ATV1exLcCb7blKU1zJl5VbrMLDjiDhawT74iqOaxODFGhZZVuF/BzV
e051AnmMyNBLpj6uM2DS7fb8cIUlRxskgntRjgYLXVG48mEM88zYbdL2fTkHXrN+
pOogvkEx087/Fcl0p/j/B2mvCa0xPsHJ7L/a5+osyjJzBDZ8ZznCsorv63pnfP/F
X8OfKp8hMskukH5Cx/09HQKdjU0G0k+h/2EqQAR7295UbFJQQGjyF7datmI8M3uI
u4yVf8GHQTBLO5IWDTdcdyMDs/rrGBzItu1/NVre+LLoP7Z1KibNRBo5Q0JfKruQ
z6q83RABO4sPpIgwthq2HdEPF6kSZ4Vr0b7So0x0KnmI6NtCKGs=
=W6YY
-----END PGP SIGNATURE-----

--ta54i55kqgggrrqc--

