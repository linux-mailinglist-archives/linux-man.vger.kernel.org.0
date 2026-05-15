Return-Path: <linux-man+bounces-5509-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2M3CFAbyBmohpQIAu9opvQ
	(envelope-from <linux-man+bounces-5509-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 15 May 2026 12:14:30 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B827054D1E9
	for <lists+linux-man@lfdr.de>; Fri, 15 May 2026 12:14:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9608831A0C7F
	for <lists+linux-man@lfdr.de>; Fri, 15 May 2026 09:58:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1ECD43E9F9;
	Fri, 15 May 2026 09:56:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="anxSemQo"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84ACF4266A8
	for <linux-man@vger.kernel.org>; Fri, 15 May 2026 09:56:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778838999; cv=none; b=Z+Tfr7VoLddpXGu7cmzYmjyBMhCE7haIbzfCKWV/b0tM7tPE7Iw9KQ6oHy/CiANa6Q4J6Osy2hDNlreTS0arLxfps0u6qGealkBYBkLBmw1FTnttab4ucExs5/XC9TF1fwzNfZjvR3q20a5bVH5s5iRnw/xuO9CanQdYPzOuaTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778838999; c=relaxed/simple;
	bh=tZll6bIPmbFKwYKoS+lUU6SKo3ZXPCtHgqIrxQiV4q8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SKEuq71+clWPhnMAjhm9zKsAunLv96o3mE6PA2Kytxh/lFAnP4djfZHywj73GQK7X8SXqk9ARbqtWLohWdQvmbVzzftotFDsnhxSIDj78P8bL19XMdx7uoDc6HtisV//3E1aGyzcBv4n9i/GkvsrJmw8sCDQYpAxYQ47rHYQAOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=anxSemQo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D2599C2BCB0;
	Fri, 15 May 2026 09:56:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778838999;
	bh=tZll6bIPmbFKwYKoS+lUU6SKo3ZXPCtHgqIrxQiV4q8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=anxSemQo0KX2aAVghSJbqw9W2oe5MKLrXh7U4dh+Ql4/J9GnH92ajjg9uva7Yb54z
	 +ErxoUThgbw3gCa0CJan/bxJeVsnf4iubs0nvkQVYS7RUcOgJumK1ZcR8Vy2PXpY4x
	 UcO9jw1LtCNjnnaYOCRgBhCk+kBWFz6U6DWK8OV20/1aSerzugp4VD9IctiohBB+UW
	 SIDQIzfx5kxscwVl0V/LOvVdwU36zPb5fYDBL9HCOdKugJvY5JWdejuFjpgMrD5H5s
	 8ox3Wbqt+sibZ568nrs0DZsF0pKEY1Pr2EvrpnbOsIqzqWErKL56a6BGpNKcXDLwIY
	 izZqtE5GSaehw==
Date: Fri, 15 May 2026 11:56:35 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Walter Harms <wharms@bfs.de>
Cc: Bruno Haible <bruno@clisp.org>, 
	"linux-man@vger.kernel.org" <linux-man@vger.kernel.org>, Martin Uecker <uecker@tugraz.at>
Subject: Re: AW: clumsy cast in dlopen.3
Message-ID: <agbsgTSLbKb-jz-p@devuan>
References: <21436742.Yz81rIOvuz@nimes>
 <agWw2-7U82vIKSWI@devuan>
 <face5848c7aa40ba94d37f25ccbd62e9@bfs.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hf5zs4rykeiikskq"
Content-Disposition: inline
In-Reply-To: <face5848c7aa40ba94d37f25ccbd62e9@bfs.de>
X-Rspamd-Queue-Id: B827054D1E9
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5509-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
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
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action


--hf5zs4rykeiikskq
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Walter Harms <wharms@bfs.de>
Cc: Bruno Haible <bruno@clisp.org>, 
	"linux-man@vger.kernel.org" <linux-man@vger.kernel.org>, Martin Uecker <uecker@tugraz.at>
Subject: Re: AW: clumsy cast in dlopen.3
Message-ID: <agbsgTSLbKb-jz-p@devuan>
References: <21436742.Yz81rIOvuz@nimes>
 <agWw2-7U82vIKSWI@devuan>
 <face5848c7aa40ba94d37f25ccbd62e9@bfs.de>
MIME-Version: 1.0
In-Reply-To: <face5848c7aa40ba94d37f25ccbd62e9@bfs.de>

Hi Walter,

On 2026-05-15T08:35:49+0000, Walter Harms wrote:
> Hello,
> I agree the cast is not nice, (someone for a extension of C standard ?)
> but i have to admit that i have never seen the trick with the union.
> But it needs some explaination. The comment in the example is already hug=
e,
> i would ask for a comment subsektion for this behavier here.

The thing about unions is that the only two ways for type punning that
are blessed by ISO C are unions and memcpy(3).  Everything else isn't
allowed.

Perfectly valid:

	static_assert(sizeof(int) =3D=3D sizeof(float));

	union u {int i; float f;};

	float    f;
	union u  u;

	u.i =3D 42;
	f =3D u.f;

Perfectly valid:

	static_assert(sizeof(int) =3D=3D sizeof(float));

	int    i;
	float  f;

	i =3D 42;
	memcpy(&f, &i, sizeof(float));

UB:

	static_assert(sizeof(int) =3D=3D sizeof(float));

	int    i;
	float  f;

	i =3D 42;
	f =3D *(float *) &i;


Have a lovely day!
Alex

> btw: the original code in the example looks like this ...
> cosine =3D (typeof(double (double)) *) dlsym(handle, "cos");
>=20
> my2c
>  wh
>=20
> ________________________________________
> Von: Alejandro Colomar <alx@kernel.org>
> Gesendet: Donnerstag, 14. Mai 2026 13:29:20
> An: Bruno Haible
> Cc: linux-man@vger.kernel.org; Martin Uecker
> Betreff: Re: clumsy cast in dlopen.3
>=20
> Hi Bruno,
>=20
> On 2026-05-14T12:56:55+0200, Bruno Haible wrote:
> > The dlopen.3 man page contains this text:
> >
> >                   *(void **) &cosine =3D dlsym(handle, "cos");
> >
> >               This (clumsy) cast conforms with the ISO C standard and w=
ill
> >               avoid any compiler warnings.
> >
> > However, such a cast violates the strict aliasing rules of ISO C, no?
>=20
> I think I agree.  Dereferencing the pointer &cosine with a type
> different than the type of the object is not allowed.  I've CCed Martin,
> who might be able to confirm.
>=20
> >
> > The proper workaround is to use a union:
> >
> >   union { double (*cosine) (double); void *pointer; } u;
> >
> >   u.pointer =3D dlsym(handle, "cos");
> >   ...
> >   printf("%f\n", u.cosine(2.0));
>=20
> This is seems much better, indeed.
>=20
>=20
> Have a lovely day!
> Alex
>=20
> >
> > Bruno
> >
> >
> >
> >
>=20
> --
> <https://www.alejandro-colomar.es>

--=20
<https://www.alejandro-colomar.es>

--hf5zs4rykeiikskq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmoG7dMACgkQ64mZXMKQ
wqkX/w/8CoJR0yuorbEOW2k7/RBluCp6iZ86Z8eVlkR7Hj68saY0vNr4V8lcPo/5
YVhtNscgXYqyzSgaNr9YXQiZB6hnb6xfWSs0Qy9chOCACXS/+kFWKQubjjHqDajT
3hpSokvV7LZ4vAFaAP9bAkP6oo9VLRGaOK7XQU62ldgnOcyBfcktGmhP6Klnt+EN
Db5rezHVN8YLcZL+w6SpnFzD7DZhPkbRpbzV3wwIUlwLVZ6B33MQAMQ7jM+HDlnm
y3SLiXciOxbcImseRh3m9URwZnV65gmdg0ty+XevcyOJtNYMt6FtwS5vv31y2oPz
c9gy6TxV3yQh9rjL6wOpaPSJP2o9qHz3SIehoSVzcoNyp7LpJrAM+bpjFWmD3xzW
/u8waYTd2RG/zPj5CQc9imRE53xopJVCZhbO/W9jgghVVF6reoxQiAQeUAhNqVad
v4OZQEMgwHKN2+7LcBocLxffX95NR9rx4cpyYs97ZkgS7JUCnTCzRqTYrH03uJQc
jKuPQxlUPO7rvN5IgO4BSYfvhJ+RV8pHfEnyt7e6KzJU2kMqCgL1hwBVFom1L7gN
7IEL8/p+ul8FdoNNUgRH17asIqNPhGhbfx4jSuhX2a1HZF2EWdS9WPpO3Fy3KFpV
jLThQkMxbOBkmDl/uqdfv2gE+ETynz5zXr9iPEpa/TQJzLmhc7o=
=Rj1p
-----END PGP SIGNATURE-----

--hf5zs4rykeiikskq--

