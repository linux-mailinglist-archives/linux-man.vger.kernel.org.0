Return-Path: <linux-man+bounces-1521-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2556493B2AF
	for <lists+linux-man@lfdr.de>; Wed, 24 Jul 2024 16:31:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9BC831F2307E
	for <lists+linux-man@lfdr.de>; Wed, 24 Jul 2024 14:31:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66BC05336B;
	Wed, 24 Jul 2024 14:31:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u4m5bY94"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E864C6D
	for <linux-man@vger.kernel.org>; Wed, 24 Jul 2024 14:31:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721831485; cv=none; b=cgxTk7kunOf9AOav3BZDjvDBmdwdUgLBXJUmK+5NstKdt+vWE6SQiR/53C5qkW6RkTtYVs9Dxfo/Co1My+9UU4+xIhWhQwR9/LVXck4EclBQMp4mQ7ASs98Xd0IUa4I+bUKy2Gtki3/iok0SorA2dLXdhyf5HMCoPUS/uzMW1p0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721831485; c=relaxed/simple;
	bh=pAHHKXwxnqnT8PQvsyE8h93X4HiQtsUZQv5d/QY3aCY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aQvLIoyzhAawTvEBn5Yc119sNxU9yNbHp9hFSwzLwNnDUemXq8wqAHR+2RZefTMYOC2p8CmG75BuIasI+HNLTGMo1NHNRgOrCtxhh8lKSxl2t1aN/cLGIHjds61vuAZc6PercH9BM6FhnXJ785CkbdzuaUCw1SAfWuiGAFBDwrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u4m5bY94; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C567DC32781;
	Wed, 24 Jul 2024 14:31:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721831484;
	bh=pAHHKXwxnqnT8PQvsyE8h93X4HiQtsUZQv5d/QY3aCY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=u4m5bY94q9KwZRzLKVIFfYQUCWrZ2p4bmR/+c26n7nN6g6Eetoje0OXfY6KRD6DX8
	 CrmiSchaohfQHxLMeVwjMc/gDZk6xeUG6+vLEmxTkillihIFevvuDJu4yajPNdvHjN
	 LDoH+FWKiRgIv7EF2UhdMPb+RKi24z2VunS4hspzBXgECnQxj6DKIMSuxHLDWhJC6U
	 3M+LkQf8M94u+I5q/1XV9DXeOAE8L2nKyNwug2BDfhrD63fhK7wq1gtjug8ao+Ulrf
	 7jPazIonXwkor+Z7jyNFmu7AQ6XqffB6IFKPaJiaoQLlTGh5gR/jBEJb7LnGk7Pc+g
	 KSOHjwrVZ3eJw==
Date: Wed, 24 Jul 2024 16:31:21 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	Konstantin Meskhidze <konstantin.meskhidze@huawei.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v3 1/2] landlock.7, landlock_*.2: Document Landlock ABI
 version 4
Message-ID: <4pnwtxlxnaa4j7ldpj3nquophl7ac6gpio5esuqlxjep6hjznw@5oopxwhkyiyr>
References: <20240723101917.90918-1-gnoack@google.com>
 <20240723101917.90918-2-gnoack@google.com>
 <f2lafh7vylh6rxxnmliap5fneawwlh4aepkffeqwejfn3tlrir@fzm3hucyrocc>
 <ZqENZk7VcbBeaXFG@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ichphkb6domxsf5n"
Content-Disposition: inline
In-Reply-To: <ZqENZk7VcbBeaXFG@google.com>


--ichphkb6domxsf5n
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?Q?G=C3=BCnther?= Noack <gnoack@google.com>
Cc: =?utf-8?Q?Micka=C3=ABl_Sala=C3=BCn?= <mic@digikod.net>, 
	Konstantin Meskhidze <konstantin.meskhidze@huawei.com>, linux-man@vger.kernel.org
Subject: Re: [PATCH v3 1/2] landlock.7, landlock_*.2: Document Landlock ABI
 version 4
References: <20240723101917.90918-1-gnoack@google.com>
 <20240723101917.90918-2-gnoack@google.com>
 <f2lafh7vylh6rxxnmliap5fneawwlh4aepkffeqwejfn3tlrir@fzm3hucyrocc>
 <ZqENZk7VcbBeaXFG@google.com>
MIME-Version: 1.0
In-Reply-To: <ZqENZk7VcbBeaXFG@google.com>

Hi G=C3=BCnther!

On Wed, Jul 24, 2024 at 04:19:18PM GMT, G=C3=BCnther Noack wrote:
> Hello Alejandro!
>=20
> On Tue, Jul 23, 2024 at 03:03:13PM +0200, Alejandro Colomar wrote:
> > On Tue, Jul 23, 2024 at 10:19:16AM GMT, G=C3=BCnther Noack wrote:
> > > +.EX
> > > +struct landlock_net_port_attr {
> > > +    __u64 allowed_access;
> > > +    __u64 port;
> > > +};
> > > +.EE
> > > +.in
> > > +.IP
> > > +.i allowed_access
> >=20
> > s/i/I/
>=20
> Thanks, fixed. o_O
>=20
>=20
> > > +contains a bitmask of allowed network actions,
> > > +which can be applied on the given port.
> > > +.IP
> > > +.i port
>=20
> Same here
>=20
>=20
> > > +is the network port in host endianness.
> > > +.IP
> > > +It should be noted that port 0 passed to
> > > +.BR bind (2)
> > > +will bind to an available port from the ephemeral port range.
> > > +This can be configured in the
> > > +.I /proc/sys/net/ipv4/ip_local_port_range
> > > +sysctl (also used for IPv6).
> > > +.IP
> > > +A Landlock rule with port 0
> > > +and the
> > > +.B LANDLOCK_ACCESS_NET_BIND_TCP
> > > +right means that requesting to bind on port 0 is allowed
> > > +and it will automatically translate to binding on the related port r=
ange.
> > >  .P
> > >  .I flags
> > >  must be 0.
> > > @@ -89,6 +132,12 @@ is set to indicate the error.
> > >  .BR landlock_add_rule ()
> > >  can fail for the following reasons:
> > >  .TP
> > > +.B EAFNOSUPPORT
> > > +.I rule_type
> > > +is
> > > +.BR LANDLOCK_RULE_NET_PORT ,
> > > +but TCP is not supported by the running kernel.
> > > +.TP
> > >  .B EOPNOTSUPP
> > >  Landlock is supported by the kernel but disabled at boot time.
> > >  .TP
> > > @@ -111,6 +160,11 @@ are only applicable to directories, but
> > >  .I \%rule_attr\->parent_fd
> > >  does not refer to a directory).
> > >  .TP
> > > +.B EINVAL
> > > +In
> > > +.IR \%struct\~landlock_net_port_attr ,
> > > +the port number is greater than 65535.
> > > +.TP
> > >  .B ENOMSG
> > >  Empty accesses (i.e.,
> > >  .I rule_attr\->allowed_access
> > > diff --git a/man/man2/landlock_create_ruleset.2 b/man/man2/landlock_c=
reate_ruleset.2
> > > index 105e9b062..ca635ddbc 100644
> > > --- a/man/man2/landlock_create_ruleset.2
> > > +++ b/man/man2/landlock_create_ruleset.2
> > > @@ -41,6 +41,7 @@ It points to the following structure:
> > >  .EX
> > >  struct landlock_ruleset_attr {
> > >      __u64 handled_access_fs;
> > > +    __u64 handled_access_net;
> > >  };
> > >  .EE
> > >  .in
> > > @@ -52,6 +53,13 @@ is a bitmask of handled filesystem actions
> > >  in
> > >  .BR landlock (7)).
> > >  .IP
> > > +.I handled_access_net
> > > +is a bitmask of handled network actions
> > > +(see
> > > +.B Network actions
> > > +in
> > > +.BR landlock (7)).
> > > +.IP
> > >  This structure defines a set of
> > >  .IR "handled access rights" ,
> > >  a set of actions on different object types,
> > > @@ -143,8 +151,8 @@ was not a valid address.
> > >  .TP
> > >  .B ENOMSG
> > >  Empty accesses (i.e.,
> > > -.I attr\->handled_access_fs
> > > -is 0).
> > > +.I attr
> > > +did not specify any access rights to restrict).
> >=20
> > This looks like a wording fix, isn't it?  If so, it might be worth a
> > separate patch.

Ping.

> >=20
> > >  .SH STANDARDS
> > >  Linux.
> > >  .SH HISTORY
> > > diff --git a/man/man7/landlock.7 b/man/man7/landlock.7
> > > index 652054f15..52876a3de 100644
> > > --- a/man/man7/landlock.7
> > > +++ b/man/man7/landlock.7
> > > @@ -189,6 +189,19 @@ If multiple requirements are not met, the
> > >  error code takes precedence over
> > >  .BR EXDEV .
> > >  .\"
> > > +.SS Network flags
> > > +These flags enable to restrict a sandboxed process
> > > +to a set of network actions.
> > > +This is supported since the Landlock ABI version 4.
> > > +.P
> > > +The following access rights apply to TCP port numbers:
> > > +.TP
> > > +.B LANDLOCK_ACCESS_NET_BIND_TCP
> > > +Bind a TCP socket to a local port.
> > > +.TP
> > > +.B LANDLOCK_ACCESS_NET_CONNECT_TCP
> > > +Connect an active TCP socket to a remote port.
> > > +.\"
> > >  .SS Layers of file path access rights
> > >  Each time a thread enforces a ruleset on itself,
> > >  it updates its Landlock domain with a new layer of policy.
> > > @@ -339,6 +352,9 @@ _	_	_
> > >  2	5.19	LANDLOCK_ACCESS_FS_REFER
> > >  _	_	_
> > >  3	6.2	LANDLOCK_ACCESS_FS_TRUNCATE
> > > +_	_	_
> > > +4	6.7	LANDLOCK_ACCESS_NET_BIND_TCP
> > > +\^	\^	LANDLOCK_ACCESS_NET_CONNECT_TCP
> >=20
> > Did you actually want \[ha]?
>=20
> I believe \[ha] would show the caret character in the document?
> What I want is different, as documented in tbl(1):
>=20
>   On any row but the first, a table entry of \^
>   causes the entry above it to span down into the current one.

Ahhh, sorry.  I forgot about that thing.  You can guess that I don't use
tbl(1) often.  :)

>=20
> The table cell should render like this:
>=20
>   +---+-----+---------------------------------+
>   | 4 | 6.7 | LANDLOCK_ACCESS_NET_BIND_TCP    |
>   |   |     | LANDLOCK_ACCESS_NET_CONNECT_TCP |
>   +---+-----+---------------------------------+
>=20
> We are already using the same approach for the table cells further up in =
the
> table.  IIRC, the tbl(1) preprocessor wanted *something* there, and \^ is=
 the
> placeholder that you can put if you don't have text to put in that place?
>=20
> Assuming that I'm right about the \^, do you want a separate patch set fo=
r the
> .i/.I change?

It depends on your answer to the pinged question above.

Have a lovely day!
Alex

>=20
> =E2=80=94G=C3=BCnther

--=20
<https://www.alejandro-colomar.es/>

--ichphkb6domxsf5n
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmahEDkACgkQnowa+77/
2zLjsw/+MYnp7TvoYsjqh4uvCT4q0mdzuP2JzY6QgBrmMQiQ3JnbJzOm3jVDxClC
GPxPpRlOEpOVtmQEfuPAVqvViexz173/ts9XFQpU208N7kZPIb1Q1hy2h+TZNgm4
clFkw+H7Ln4KnZT3k4vv1hKovV+b1E/9anAt5mrjYoO+kZkLz8OIruG6NoGLgREN
KmGA2rvMMVoQN3PgVKR34MRVR+sReJ069S8tz9nfn/J3gxxaBIgUZi4cISP8o5Ih
FfK99JgGKmtGj1+8nqyeWBNAtUYNR33ZXlUrraRxB7nVx9ertPFHcCTgcdfccUpp
8+vycq0+pP29o+aKiCKNNIwKw32Ir/rDYxwN5ydKwHm9YR5F5lxZUYTiJMnVP4++
SillsNvkB3eKiKbsqjBsY+fxzdRXjUv7TOAF0NE5cKRm3KQ53PbnX/b0IslFUQRS
Sd8Duh2uJgYu2gV62eOGg/UxfpGOzASWLcg0opQXVcSEauC29SZxnjy4EZ0qFeBZ
pccReuMH5kbwCZDdkrxpFNlXCu3o2dRuzcCUX4f2ShJ3+T5bU8giqpyNTGSL1RVK
khxtUO+XyU7n7tA54o3L1gC001op+Learqb0oFqcM6i+oSIhZoQ1V2zEcgrEkh+v
kLoCstDsOVgQY0Es2xRMIo6y377giilhaIxVq2QO5v8BmUJbl+M=
=fgIm
-----END PGP SIGNATURE-----

--ichphkb6domxsf5n--

