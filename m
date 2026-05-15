Return-Path: <linux-man+bounces-5511-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gC//Cl45B2ottwIAu9opvQ
	(envelope-from <linux-man+bounces-5511-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 15 May 2026 17:18:54 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9641155205D
	for <lists+linux-man@lfdr.de>; Fri, 15 May 2026 17:18:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8A62E3066342
	for <lists+linux-man@lfdr.de>; Fri, 15 May 2026 15:15:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 389D43C09F0;
	Fri, 15 May 2026 15:15:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TgcnlQiP"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F037148AE18
	for <linux-man@vger.kernel.org>; Fri, 15 May 2026 15:15:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778858108; cv=none; b=TNxCsZytIGJCOk+4lFOi4/5fzrA4n3ynBpC69H6uU87FSx1GW2SjhrZlUdyQwW3xC+RWRCbGNsPBc0MpKv2tq9CZQhf23KUjyd9qe3b1sH4WJfAvD7fpymDZk2XxrUO9Wv8+nqs9tMV9UBhGhWSkGgYxTkg+qQtUl92cBiQRFBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778858108; c=relaxed/simple;
	bh=QON8CHKGt+PdZ63Nnm7KvrETFCUDhB2v5jeA5WLXQMM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iY3mvl0HxITjyS7oMZObVGWVgDGa7boo/F8xYe4KTJMV/1qjHfwR7n6cGLv1cjdUNZlIj6Zmd4r805nJ8oFUrPH10GPIp/VAAKJ7tBvaZ6pixI/QY0zNCg6YuhJ/uH/mzI0LqUor9H7FJ0Zxinelri0PiuFUahSHJ6yrT/yyjVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TgcnlQiP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 587C0C2BCB7;
	Fri, 15 May 2026 15:15:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778858107;
	bh=QON8CHKGt+PdZ63Nnm7KvrETFCUDhB2v5jeA5WLXQMM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=TgcnlQiPzP1QTYbHaeXBiqTgntWSV4nu6om4xCMDgwhc2BmVsDW3CbKFOufvBBAML
	 I9xwljDsDi5c+2hImrp4kfqVMNPlouapHXt0F27Itjp8/QW4NHk6o0g3oJqlIiLo0h
	 o8djjFQOmAOTQFgcNHPZdPJ3yiH5jgN0Umek8+usA8w6qtj6LuF6OY7D6iuH7UuLji
	 Cxw+qbX87TSc1TJafKWwRcEy3BXiPcEjWIbjvF9dzevOc028RjpAI9oYAFHfD3E/2y
	 7kXuLy35IsRTZUPRnaDEmbl5ZNaKbXR5IEr3Ns4m35vfLpnbCtgIc6gdvLTFcRP4QW
	 z1JXJWbMIkj5g==
Date: Fri, 15 May 2026 17:15:03 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Martin Uecker <uecker@tugraz.at>
Cc: Walter Harms <wharms@bfs.de>, Bruno Haible <bruno@clisp.org>, 
	"linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: AW: clumsy cast in dlopen.3
Message-ID: <agc3u2sYC_DfeCQs@devuan>
References: <21436742.Yz81rIOvuz@nimes>
 <agWw2-7U82vIKSWI@devuan>
 <face5848c7aa40ba94d37f25ccbd62e9@bfs.de>
 <agbsgTSLbKb-jz-p@devuan>
 <b2eb99d1f9a5681a4e8bca3126f3743fed900243.camel@tugraz.at>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rorwtz72c2pmlsqk"
Content-Disposition: inline
In-Reply-To: <b2eb99d1f9a5681a4e8bca3126f3743fed900243.camel@tugraz.at>
X-Rspamd-Queue-Id: 9641155205D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5511-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Action: no action


--rorwtz72c2pmlsqk
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Martin Uecker <uecker@tugraz.at>
Cc: Walter Harms <wharms@bfs.de>, Bruno Haible <bruno@clisp.org>, 
	"linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: AW: clumsy cast in dlopen.3
Message-ID: <agc3u2sYC_DfeCQs@devuan>
References: <21436742.Yz81rIOvuz@nimes>
 <agWw2-7U82vIKSWI@devuan>
 <face5848c7aa40ba94d37f25ccbd62e9@bfs.de>
 <agbsgTSLbKb-jz-p@devuan>
 <b2eb99d1f9a5681a4e8bca3126f3743fed900243.camel@tugraz.at>
MIME-Version: 1.0
In-Reply-To: <b2eb99d1f9a5681a4e8bca3126f3743fed900243.camel@tugraz.at>

Hi Martin,

On 2026-05-15T16:05:24+0200, Martin Uecker wrote:
>=20
> There is no such thing needed here, you just do
>=20
> double (*cosine)(double);
>=20
> cosine =3D dlsym(handle, "cos");

Hmmmm, yes.  I don't know why the manual page uses a cast in the POSIX
version.

The above wouldn't be enough in ISO C, since void* isn't guaranteed to
work with function pointers.  However, any systems where dlsym(3) works
must support holding function pointers in void* (because otherwise,
dlsym(3) itself wouldn't work), so ISO C shouldn't be a concern at all.

Hmmm; I'll simplify the page.

Thanks!


Have a lovely day!
Alex

>=20
>=20
> Best,
> Martin
>=20
> Am Freitag, dem 15.05.2026 um 11:56 +0200 schrieb Alejandro Colomar:
> > Hi Walter,
> >=20
> > On 2026-05-15T08:35:49+0000, Walter Harms wrote:
> > > Hello,
> > > I agree the cast is not nice, (someone for a extension of C standard =
?)
> > > but i have to admit that i have never seen the trick with the union.
> > > But it needs some explaination. The comment in the example is already=
 huge,
> > > i would ask for a comment subsektion for this behavier here.
> >=20
> > The thing about unions is that the only two ways for type punning that
> > are blessed by ISO C are unions and memcpy(3).  Everything else isn't
> > allowed.
> >=20
> > Perfectly valid:
> >=20
> > 	static_assert(sizeof(int) =3D=3D sizeof(float));
> >=20
> > 	union u {int i; float f;};
> >=20
> > 	float    f;
> > 	union u  u;
> >=20
> > 	u.i =3D 42;
> > 	f =3D u.f;
> >=20
> > Perfectly valid:
> >=20
> > 	static_assert(sizeof(int) =3D=3D sizeof(float));
> >=20
> > 	int    i;
> > 	float  f;
> >=20
> > 	i =3D 42;
> > 	memcpy(&f, &i, sizeof(float));
> >=20
> > UB:
> >=20
> > 	static_assert(sizeof(int) =3D=3D sizeof(float));
> >=20
> > 	int    i;
> > 	float  f;
> >=20
> > 	i =3D 42;
> > 	f =3D *(float *) &i;
> >=20
> >=20
> > Have a lovely day!
> > Alex
> >=20
> > > btw: the original code in the example looks like this ...
> > > cosine =3D (typeof(double (double)) *) dlsym(handle, "cos");
> > >=20
> > > my2c
> > >  wh
> > >=20
> > > ________________________________________
> > > Von: Alejandro Colomar <alx@kernel.org>
> > > Gesendet: Donnerstag, 14. Mai 2026 13:29:20
> > > An: Bruno Haible
> > > Cc: linux-man@vger.kernel.org; Martin Uecker
> > > Betreff: Re: clumsy cast in dlopen.3
> > >=20
> > > Hi Bruno,
> > >=20
> > > On 2026-05-14T12:56:55+0200, Bruno Haible wrote:
> > > > The dlopen.3 man page contains this text:
> > > >=20
> > > >                   *(void **) &cosine =3D dlsym(handle, "cos");
> > > >=20
> > > >               This (clumsy) cast conforms with the ISO C standard a=
nd will
> > > >               avoid any compiler warnings.
> > > >=20
> > > > However, such a cast violates the strict aliasing rules of ISO C, n=
o?
> > >=20
> > > I think I agree.  Dereferencing the pointer &cosine with a type
> > > different than the type of the object is not allowed.  I've CCed Mart=
in,
> > > who might be able to confirm.
> > >=20
> > > >=20
> > > > The proper workaround is to use a union:
> > > >=20
> > > >   union { double (*cosine) (double); void *pointer; } u;
> > > >=20
> > > >   u.pointer =3D dlsym(handle, "cos");
> > > >   ...
> > > >   printf("%f\n", u.cosine(2.0));
> > >=20
> > > This is seems much better, indeed.
> > >=20
> > >=20
> > > Have a lovely day!
> > > Alex
> > >=20
> > > >=20
> > > > Bruno
> > > >=20
> > > >=20
> > > >=20
> > > >=20
> > >=20
> > > --
> > > <https://www.alejandro-colomar.es>

--=20
<https://www.alejandro-colomar.es>

--rorwtz72c2pmlsqk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmoHOHcACgkQ64mZXMKQ
wql26hAAkxjHFbpVwDT8CIjVwZfPr02YGsbys9jh+w5A6yShtF8iPSXsCyzvB1jW
WdKYzXuhcW9CszyNupbni7V9Zw1aRVJcHjRKP7P1uxazGHT9Dh0hOn6RsI0fdSbL
TcbIBUfFMlR+TXMntiGq5yuTXQUxPnjTMTscWla1Q2+gKlcYkYc3nER6pjK1b+xd
ePvszI97Bn8xlhIUcvc7zuu1Y9fucNhHVyEz3MG+EZqbBfK9n9jzss5jI4omrZr7
iP+x/TBfTP19U2CvQ1BjxHlau271rkIQ8+VBdw63Kbx/jEelS8EgHRULKvUynOsd
4qJYSHG+1gelszrxqUzSerJ91RIetaZAq5J+NKKkMrOd5PKMAYNJ8oRWHZhseKE4
XMUshbbIB1dNSLXlxdA7i+Sgmo1Sr3dzX1rDgBySO5Plg0wpfdgERM12KzK+3hR2
HuStE1sR8PJ8vL0zMLOFZpjL0tJ6P0t4gjKp06fQFnVO47zNntlWBovMbMIYhg30
RT3dkKqw/7ThXctdtGa8X/b/1EQ0nUeeLaOGdePmlHr1teIGA8v0hzzWvru6lI68
oiAsbWuL3gXhvghjnYj2FsAoT8h7S5DCLlGuvcZuGp4lM9HP+W8lEBtqMJ/MqAtl
eenE/CsgL38eKSw/bkQYIRd3GrrZYgXSLYHJJf4QqeD7HKYyFXE=
=scPt
-----END PGP SIGNATURE-----

--rorwtz72c2pmlsqk--

