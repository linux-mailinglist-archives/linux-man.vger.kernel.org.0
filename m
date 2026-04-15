Return-Path: <linux-man+bounces-5336-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8NW7AGMF4Gn4bgAAu9opvQ
	(envelope-from <linux-man+bounces-5336-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 15 Apr 2026 23:38:43 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5244C408373
	for <lists+linux-man@lfdr.de>; Wed, 15 Apr 2026 23:38:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3301E300A608
	for <lists+linux-man@lfdr.de>; Wed, 15 Apr 2026 21:36:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEAAF3822AC;
	Wed, 15 Apr 2026 21:36:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NUcfdAOO"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7224830FC33
	for <linux-man@vger.kernel.org>; Wed, 15 Apr 2026 21:36:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776288992; cv=none; b=nTsx93TtYXmU1bFGzv8errqPRkIS74jZwlisIolq4XVxk0+OSUMHudl+ur+FTWhGiQJ4RJ4B5TU6JtfSJ0fa5Rm2qKXw3BV3OqAV3uxrKMU8cPPV5WQsEKk5YMnhRKFxT3KwytFdzbfUUx/nl4GwIvQ3VQ9J8I+7yEuHjbs8QpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776288992; c=relaxed/simple;
	bh=rEOo444VwCNCNINF4aWlUghgmsltRojo0ZIsFs++ogo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YyyKm6Tlr1shna1NjKUSqpeCfH+XNJVbN9rJIPQuY7Xc2jt5rflfUlorxqg/ClubcZWyJ9z4dvNXdu3sUI2h2jiDT4Bh644a5EgGfVNlMnC9J4hRqlqw8bkwaEaQUVV4gHlyAkwfrFL+oixcHyj9oHx1yNC6WpqmVCk0hTcXKRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NUcfdAOO; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2B64AC19424;
	Wed, 15 Apr 2026 21:36:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776288992;
	bh=rEOo444VwCNCNINF4aWlUghgmsltRojo0ZIsFs++ogo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NUcfdAOOAPdFdaXgbZCIAUblbecB1fPSOYfPmY8RLB4REW3/Q349qGHtDLumuL2hx
	 C4ph+zx549OnP+N0EeFz02QE8FrPPVxJAOuJ4bAKp+167Q4DfrH+WyyoQncn1j02QY
	 kSWWsGZjDv60ancr+Y6xcVmAgrFZQbmF1JzXNK5Nsmo1f3f7iD7dZzj2RGngl7iuRg
	 1TuWLAJygF5335tTMM1yCs86zPv9MH2oS+tRaFsFlzBkB3ZAN3O+eVndoho+NKfiCl
	 gss58Qx5HRKE/l/2MWPst58MAGLX4uj6+mzeM78Xf7y/HgcD0nBTf8Y0GFSBCOuP2D
	 UArNV7DfJNlrQ==
Date: Wed, 15 Apr 2026 23:36:28 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Dirk =?utf-8?Q?M=C3=BCller?= <dmueller@suse.com>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>, 
	linux-man@vger.kernel.org
Subject: Re: [BUG] typo in man2/readlink.2
Message-ID: <aeADVnt6NpZ8qC9E@devuan>
References: <CAN6Ha9b5Tujw=sB5MwhLhnt1XJodmH1TOfeZWJk_VWnWE_smzg@mail.gmail.com>
 <20260415182417.b6cvefbzk6ss3lmw@illithid>
 <CAN6Ha9YYK7jD6D-_eKhHQA0dT3kfkGZuka31Pg+ka=mzt+QtxA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zqnwa4vibb4v7gbi"
Content-Disposition: inline
In-Reply-To: <CAN6Ha9YYK7jD6D-_eKhHQA0dT3kfkGZuka31Pg+ka=mzt+QtxA@mail.gmail.com>
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5336-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 5244C408373
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--zqnwa4vibb4v7gbi
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Dirk =?utf-8?Q?M=C3=BCller?= <dmueller@suse.com>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>, 
	linux-man@vger.kernel.org
Subject: Re: [BUG] typo in man2/readlink.2
Message-ID: <aeADVnt6NpZ8qC9E@devuan>
References: <CAN6Ha9b5Tujw=sB5MwhLhnt1XJodmH1TOfeZWJk_VWnWE_smzg@mail.gmail.com>
 <20260415182417.b6cvefbzk6ss3lmw@illithid>
 <CAN6Ha9YYK7jD6D-_eKhHQA0dT3kfkGZuka31Pg+ka=mzt+QtxA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAN6Ha9YYK7jD6D-_eKhHQA0dT3kfkGZuka31Pg+ka=mzt+QtxA@mail.gmail.com>

Hi Dirk,

On 2026-04-15T22:00:52+0200, Dirk M=C3=BCller wrote:
> Hi Branden,
>=20
> On Wed, Apr 15, 2026 at 8:24=E2=80=AFPM G. Branden Robinson
> <g.branden.robinson@gmail.com> wrote:
>=20
> > >       ssize_t readlink(size_t bufsiz;
> > >                        const char *restrict path,
> > >                        char buf[restrict bufsiz], size_t bufsiz);
> > >
> > > I believe this is a typo and it should be:
> > >
> > >       ssize_t readlink(const char *restrict path,
> > >                        char buf[restrict bufsiz], size_t bufsiz);
> > This is something of a FAQ on this mailing list.
> > https://lore.kernel.org/linux-man/adupQhfJQ7kws17U@debian/
> > It's a GCC syntax extension.
> >
> > https://gcc.gnu.org/onlinedocs/gcc/Variable-Length.html

Look at the very bottom of that page.

>=20
> Oh, I understand that part.

I believe you didn't.

> let me try again. The Synpsis shows 4
> parameters to the readlink() call:
>=20
>   ssize_t readlink(size_t, const char*, char buf[], size_t);

That's not what readlink(2) documents.  readlink(2) has a semicolon (;)
after the fisrt 'size_t bufsiz'.  That means it's a forward declaration
of a function parameter, and not a real parameter declaration.

>=20
> I believe it should actually be 3 parameters instead:
>=20
>   ssize_t readlink(const char*, char buf[], size_t);
>=20
> with other words, the first argument is a pointer to the source link,
> not a repetition of bufsiz (which is at the end).
>=20
> This page has the, what I consider correct synposis:
>=20
> https://pubs.opengroup.org/onlinepubs/9699919799/functions/readlink.html
>=20
> ssize_t readlink(const char *restrict path, char *restrict buf,
>        size_t bufsize);

This synopsis is compatible with the one from readlink(2).  See by
yourself:

	alx@devuan:~/tmp$ cat rl.c=20
	#include <sys/types.h>

	ssize_t readlink(
	    const char *path, char *buf, size_t bufsiz);

	ssize_t readlink(size_t bufsiz;
	    const char *path, char buf[bufsiz], size_t bufsiz);
	alx@devuan:~/tmp$ gcc -Wall -Wextra -Wno-vla-parameter -S rl.c=20
	alx@devuan:~/tmp$=20

> Again, I'm only commenting on the number of parameters, not the
> variadic length expression on parameter two (three in the original).

Both prototypes have 3 parameters.


Have a lovely night!
Alex

>=20
> Thanks,
> Dirk
>=20

--=20
<https://www.alejandro-colomar.es>

--zqnwa4vibb4v7gbi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmngBNAACgkQ64mZXMKQ
wqn5Fg/6A8HJPHFxUEtpiG5bh9RLHWGIJnjQ056k8eIkE8lD/wP3i//nrY5hv8t8
8oCOpGIZXNKu4zpQ/JPtfadjwmcZBw5yvX0KdxCiKRUqT+9TKsjs/gq3mIBTWy5b
BZj1OO2q6wTiMj39dsS1m8Ul9SEef3Ol/35qRpOeAoR8heGIyLzdDxkjMYF5Fnj3
++XjQ7vSgY8MALcpNijoi1tyMO6BSTsSnFCqBJzA75Os6Ct3OF/fNhjirwXXUEZA
NeULzuDr5a/TJoTeGBTy3honsAkvK737WYetzsKVX2Wz93cqod6ImHPzEBg2XH4s
4BkwTDB89ibWLShqXV8dYU0BuX/nikCqpdBnhlPwVCt7gzkR7ngv07QoHLI1Vo/8
QikOeDChmahW028MjGgXH8rxyQc1t2VQdxqW+VmosRHmO6HIWWks5qGlOphJxps+
kBJ1OKMOdTh2/1vZeUqVgYznGBRyGZrwvUA7Voh+sXNHtWV45WRcxiVaQD8TnB3C
0oXe0n3NbWTWTLMcsDPfVOcw6rI8juzobkMJyTrkm6q8L5gTnsrDmpY3MICe5zzC
wf44iXSDd1qzAeeLQxLf0QA0AqIRQpvd/rU/P6qogj1jV1NS2wbMHS9Ld/+bF6tM
HsiyubjNQdP4uEBSWfE+ZUKV4xJP1r1gJ/+QLjovfYybkXsxgbs=
=YqrW
-----END PGP SIGNATURE-----

--zqnwa4vibb4v7gbi--

