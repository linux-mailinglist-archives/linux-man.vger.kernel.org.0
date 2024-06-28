Return-Path: <linux-man+bounces-1291-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C29C91BCF3
	for <lists+linux-man@lfdr.de>; Fri, 28 Jun 2024 13:02:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 55C2F28401A
	for <lists+linux-man@lfdr.de>; Fri, 28 Jun 2024 11:02:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36D7C1527A0;
	Fri, 28 Jun 2024 11:02:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EJo9Rx3m"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB4232139A8
	for <linux-man@vger.kernel.org>; Fri, 28 Jun 2024 11:02:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719572538; cv=none; b=QmA55vbRN3zY+xaUFGZTX4A2hTksXr4QoLcBjhUlDg+5wuv9L8pd3kOcPRkzy1VSrHkRywTu5nao2GoPOmJKalHLTT9wS6VTEYsvbylf56PKcDybYElK7vQ4HcFbhpXjqsAP2LmhMwrM5aICigVWoWxQlg1+KpMzNatE+ByAN3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719572538; c=relaxed/simple;
	bh=OEzo4bmI97l8lBFDWzvlgpNY4YbHM3+4qevOa4nowUY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=laKKLI1fzJWu7syu0L1FCnTeSCEidxVLOMhlt/mIhBoHe9gFE9Wq7FeIGEZcqF9uROCv1QNRNWwakI+dRFBz2JZ/8XGcs+qmOI57H7v6I6TRXW+dXUqyO2s74VOlOuEbbRlALojj9ltAFiUjzgwlT8gojUuDCy7NN3VAFlrqKDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EJo9Rx3m; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9EADC116B1;
	Fri, 28 Jun 2024 11:02:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719572537;
	bh=OEzo4bmI97l8lBFDWzvlgpNY4YbHM3+4qevOa4nowUY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EJo9Rx3mxOBSUoVlXK5lRRJkaJtl7Rh1Kr7NZZGKV0oTSAuwuWg4Q+ab102QTCnwy
	 s201At9srjOP0x8+YBySTaVXrhnUMxyxI0Uo7Zl/tAZkCevmCEhCwQugnpizY+34ue
	 qf89QLIKgTcgoFTYwbfG9jMNtteJ87wmVhWxUqawwiku4qoMIDWvwlA/J/RjC7QCK2
	 1XPL/lquN5a51lnJ7CWkv76H48S9LmonmUdjn77ycqJoe63SShFQNXVz7Uf1T4sUWW
	 TkVFH+nIrHJkUlkfyu1Si6TY3fOLPPilDrzFVxVEVYm1WF7x5gjCVsdqP9D44PTs9I
	 OOB3+9E/Mq1jg==
Date: Fri, 28 Jun 2024 13:02:14 +0200
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?TWlrb8WCYWogS2/FgmVr?= <kolek.mikolaj@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] perf_event_open.2: document combining inherit and cpus =
 -1 preventing the use of mmap
Message-ID: <2s5drc4ywno4tpk3kvej4op7qpfe4ivpf275fxvo2hpckfozgw@lsn4ete4vihl>
References: <CAHGiy68VeGHMazCershVY0f2acq5PifiG=j7suXJ7dfMufcPJA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="m2uarm5resmzzre6"
Content-Disposition: inline
In-Reply-To: <CAHGiy68VeGHMazCershVY0f2acq5PifiG=j7suXJ7dfMufcPJA@mail.gmail.com>


--m2uarm5resmzzre6
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: =?utf-8?B?TWlrb8WCYWogS2/FgmVr?= <kolek.mikolaj@gmail.com>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH] perf_event_open.2: document combining inherit and cpus =
 -1 preventing the use of mmap
References: <CAHGiy68VeGHMazCershVY0f2acq5PifiG=j7suXJ7dfMufcPJA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAHGiy68VeGHMazCershVY0f2acq5PifiG=j7suXJ7dfMufcPJA@mail.gmail.com>

Hi Miko=C5=82aj,

On Sun, Jun 23, 2024 at 02:02:36AM GMT, Miko=C5=82aj Ko=C5=82ek wrote:
> After calling perf_event_open() with cpus =3D=3D -1 and the inherit bit,
> using mmap on the perf file descriptor to create a ring-buffer fails
> with EINVAL. This behavior wasn't previously documented in the man
> page and is caused by the following lines in the perf_mmap function in
> kernel/events/core.c:
> /*
> * Don't allow mmap() of inherited per-task counters. This would
> * create a performance issue due to all children writing to the
> * same rb.
> */
> if (event->cpu =3D=3D -1 && event->attr.inherit)
>         return -EINVAL;

Thanks for the detailed commit message!

> Signed-off-by: Miko=C5=82aj Ko=C5=82ek <kolek.mikolaj@gmail.com>
> ---
> man/man2/perf_event_open.2 | 4 ++++
> 1 file changed, 4 insertions(+)
>=20
> diff --git a/man/man2/perf_event_open.2 b/man/man2/perf_event_open.2
> index 2f345ff5b..15a5972d0 100644
> --- a/man/man2/perf_event_open.2
> +++ b/man/man2/perf_event_open.2
> @@ -1025,6 +1025,10 @@ .SS Arguments
> .I read_format

Applying: perf_event_open.2: document combining inherit and cpus =3D -1 pre=
venting the use of mmap
error: corrupt patch at line 10
Patch failed at 0001 perf_event_open.2: document combining inherit and cpus=
 =3D -1 preventing the use of mmap
hint: Use 'git am --show-current-patch=3Ddiff' to see the failed patch
hint: When you have resolved this problem, run "git am --continue".
hint: If you prefer to skip this patch, run "git am --skip" instead.
hint: To restore the original branch and stop patching, run "git am --abort=
".
hint: Disable this message with "git config advice.mergeConflict false"
Press any key to continue...

The patch seems to be corrupt.  Context lines should begin with a space.
Can you fix that on your end?  Otherwise, I'll manually apply the patch.

> values, such as
> .BR PERF_FORMAT_GROUP .
> +Additionally, using it together with
> +.BR "cpu =3D=3D -1"

Please make this

=2EI cpu =3D=3D \-1

> +prevents the creation of the mmap ring-buffer used for
> +logging asynchronous events in sampled mode.
> .TP
> .I pinned
> The
> --
> 2.45.2

Have a lovely day!
Alex

>=20

--=20
<https://www.alejandro-colomar.es/>

--m2uarm5resmzzre6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE6jqH8KTroDDkXfJAnowa+77/2zIFAmZ+mDYACgkQnowa+77/
2zLLOhAAlXDIzTRgNaQqznn0AInctCvEpCZ1XLWIYpT+0rUinhwOvyndr1dFEw02
tbEanVOArCZVfNheLSJJN1pz6C31LkWb6JOT99NPQjxOn6EFoEK/nOsy3doG6O3O
VqI6py0Ohylg4sJwZlLwsGRLN0ghNDO/k5hXF0zIGVKy5eFPCqz3NtY1nvTeUFEO
lTdHFNUS3tXbUAUXkQ0AeQUufNIlWhlAc+Ojzmxn1yZ3mOmdpeL99FKDbwGqi2rh
uLGfCc+/qWyWRAwwmi6dU9jqkGZaLyqJOO31VEjhKB6SZqWEdG9blApLEgOjQ0Fv
M1v5FjTRbJ4nceqPypXIAv7ApldfAJ255eq3bXCciYmuyzFGWKIcq+fyCO7Tx4Tf
pBtMn9Oql1ObBXaxic2TxfbNnXFJ+ZlGUSp8Z0OQiTfjsPYWjBgfJ6U0WTuyZo2l
cOSgmp8nXBQEKkDJz+H6nkbTTSgU87LBs0M0Nmz6GYMeMbGmDnm7jElUav3ddRNR
UX5bTbMGQDAEyO7KRkzww8msMorBzlnEH3Fy4EFM4G4LAPl6daJcjIbF4JZn9X7Q
jjVceLDxktLoPFwzCJb7RWbKNPRs4VUOTkM/zaU2kcQXIQe5uBgGopCjU46stMEk
qL6xNXCFgcdKZY+BjWxCg1b1ZmfN9ggFkuG54r3jCSpTOH/9ado=
=SIAf
-----END PGP SIGNATURE-----

--m2uarm5resmzzre6--

