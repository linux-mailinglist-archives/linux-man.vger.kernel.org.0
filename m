Return-Path: <linux-man+bounces-5747-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ZAOpGKFHVWqjmQAAu9opvQ
	(envelope-from <linux-man+bounces-5747-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 13 Jul 2026 22:16:33 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A9DB974F019
	for <lists+linux-man@lfdr.de>; Mon, 13 Jul 2026 22:16:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=gYLSomZZ;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5747-lists+linux-man=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="linux-man+bounces-5747-lists+linux-man=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6245E3041A2A
	for <lists+linux-man@lfdr.de>; Mon, 13 Jul 2026 20:16:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F155130C160;
	Mon, 13 Jul 2026 20:16:30 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B4F42773E5
	for <linux-man@vger.kernel.org>; Mon, 13 Jul 2026 20:16:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783973790; cv=none; b=s+/7wLwmQ7/fJc8G6lgQeZ8vRxQCrIsKI1iR63i0xMr7UAN35IfbuDkytrP06J9DcBxzBKhp+g5n3bL6UdSjfRRg8HBYXTehW4sweQMoe6zKcjD3E7UcOD8BPLqPpVyt027hg+h043OhfEK1kRPavsJHuQOqqy82VUU95DynZVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783973790; c=relaxed/simple;
	bh=TQ2VPijKU6LL3s+1ogheYYOq2huAucwWCuaZDizDS4A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=j1aLUcSrs4esQwed2H8kw8bnkmZn0QWIO/QxgB2lbkOlPlku3VwMVJr9MOMrgz4cMg23Tthkww0X9fxq9cTtgvru4A3qZEgAoZDFIMjGIfLleaYAkzfqBW3i3Eg7NxWEOVznEGS2N+jMzxcZQBduN0DmEsh6BfnaEhZfnvT3yPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gYLSomZZ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2DC911F000E9;
	Mon, 13 Jul 2026 20:16:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783973788;
	bh=gSQQdCkB6MFvXOn3dAMDg2Jit/uVlWGh4AOMGtz+ucE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=gYLSomZZkZ+Otk6BdDIx6MVajxLswGVWh+C2UWxsaEzltfYsso7FCyI1YSptf3yaw
	 eE2diqJKjQJXo+go0sxxRLF43c9JhVcHrhfg0cFP3nbtiteIuVhZe5l5Vng51VLmEz
	 O8B10Lsyi6LVvYFFBaM2vElaebl5qL7dj9O82WB5qtCcB9UdP11staqlJPh3BS5JwB
	 gwLJ3tRDpNZjz+2SHfCtz8S8P9BiWrh5qkZYZE+mSiK20ieF9dAQoddBos7xKciETq
	 /rsL40EpfxiordAc70YHMbvYPFcw1Pz1gBUKDrl22RgMrwLincLP32sFVtqQyij4tS
	 cBOi6euwdN3nw==
Date: Mon, 13 Jul 2026 22:16:25 +0200
From: Alejandro Colomar <alx@kernel.org>
To: DJ Delorie <dj@redhat.com>
Cc: linux-man@vger.kernel.org
Subject: Re: man/man8/ldconfig.8: document system-wide tunables
Message-ID: <alVCfr38jr38jIfT@devuan>
References: <alFWqYWKJkQQxtJ6@devuan>
 <xnjyqy97t8.fsf@greed.delorie.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cj73cjejwiaqfbb3"
Content-Disposition: inline
In-Reply-To: <xnjyqy97t8.fsf@greed.delorie.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.76 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:dj@redhat.com,m:linux-man@vger.kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWO(0.00)[2];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5747-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,devuan:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A9DB974F019


--cj73cjejwiaqfbb3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: DJ Delorie <dj@redhat.com>
Cc: linux-man@vger.kernel.org
Subject: Re: man/man8/ldconfig.8: document system-wide tunables
Message-ID: <alVCfr38jr38jIfT@devuan>
References: <alFWqYWKJkQQxtJ6@devuan>
 <xnjyqy97t8.fsf@greed.delorie.com>
MIME-Version: 1.0
In-Reply-To: <xnjyqy97t8.fsf@greed.delorie.com>

Hi DJ,

On 2026-07-13T12:24:19-0400, DJ Delorie wrote:
>=20
> How about this?

Please split into separate patches with commit messages, and send one
email per patch (the usual git-format-patch(1) + git-send-email(1) would
work).

> diff --git a/man/man5/ld.so.conf.5 b/man/man5/ld.so.conf.5
> index 481cf9152..aa27b73f6 100644
> --- a/man/man5/ld.so.conf.5
> +++ b/man/man5/ld.so.conf.5
> @@ -9,6 +9,14 @@ .SH DESCRIPTION
>  This file contains a list of directories,
>  one per line,
>  in which to search for libraries.

Let's start a new paragraph:

	.P

> +The file allows lines to start with the word
> +.I include
> +followed by a path wildcard,

What is a path wildcard?  We should specify it, since different programs
treat wildcards differently.  Is it a glob(7)?

> +and will include any files matching that wildcard.
> +The file is parsed by
> +.B \%ldconfig

=2EBR \%ldconfig (8)

> +and the results stored in
> +.IR /etc/ld.so.cache .
>  .SH FILES
>  .I /etc/ld.so.conf
>  .SH SEE ALSO
> diff --git a/man/man5/tunables.conf.5 b/man/man5/tunables.conf.5
> new file mode 100644
> index 000000000..d24eb0fa5
> --- /dev/null
> +++ b/man/man5/tunables.conf.5
> @@ -0,0 +1,86 @@
> +.TH tunables.conf 5 (date) "Linux man-pages (unreleased)"
> +.SH NAME
> +tunables.conf \- System-wide tunables configuration file

s/System/system/.  See man-pages(7):

     NAME   The name of this manual page.

            See man(7) for important details of the line(s) that should
            follow the .SH NAME command.  All words in this  line  (in=E2=
=80=90
            cluding  the word immediately following the "\-") should be
            in lowercase, except where English or technical terminolog=E2=
=80=90
            ical convention dictates otherwise.

However, I think 'system-wide' is unnecessary here: 'tunables
configuration file' should be enough.  By being in /etc/, it is known to
be system-wide.

> +.SH SYNOPSIS
> +.nf
> +.B /etc/tunables.conf
> +.fi
> +.SH DESCRIPTION
> +Each line in the file
> +.I /etc/tunables.conf
> +specifies a tunable,
> +which is a name and value separated by an equals sign.

	.P

> +For a list of valid tunables,
> +please consult the glibc manual.

	.P

> +The file allows lines to start with the word
> +.I include
> +followed by a path wildcard,
> +and will include any files matching that wildcard.

Again, a glob(7)?

And:
	.P

> +The file is parsed by
> +.B \%ldconfig

	.BR \%ldconfig (8)

> +and the results stored in
> +.IR /etc/ld.so.cache .
> +.P
> +Each line may include zero or more words or symbols at the beginning:
> +.TP
> +.B overridable
> +.TQ
> +.B +
> +Allow the tunable to be overridden by the environment variable
> +(this is the default).

Which environment variable?
Should we document an ENVIRONMENT section in ldconfig(8)?

> +.TP
> +.B nonoverridable
> +.TQ
> +.B \-
> +Do not allow the tunable to be overridden by the environment variable.
> +.TP
> +.B onlysecure
> +.TQ
> +.B @
> +The tunable only applies to AT_SECURE

	.B AT_SECURE

> +(such as setuid, or elevated capabilities)

Do you mean the system call setuid(2)?  Or a setuid program?

> +processes.
> +.TP
> +.B nonsecure
> +.TQ
> +.B $
> +The tunable only applies to non-AT_SECURE processes (this is the default=
).

	.RB non- AT_SECURE

> +.TP
> +.B anysecure
> +.TQ
> +.B *
> +The tunable only applies to both AT_SECURE and non-AT_SECURE processes.
> +.P
> +The file may also contain
> +.I filters ,

	.IR filters ,

> +which limit the tunables following it, up to the end of the file

Please break the line after the comma.

> +(or end of the included file, or start of a new included file)
> +or a line with only
> +.B []
> +on it.  The syntax is:

New sentence, new line.

> +.IP
> +.EX
> +.RI [ filter : pattern ]
> +.EE

You should indent this compared to the surrounding text:

	.IP
	.in +4n
	.EX
	.RI [ filter : pattern ]
	.EE
	.in

> +.TP
> +.B proc
> +The
> +.I proc
> +filter limits the following tunables to processes starting from the
> +file matching the pattern.

What do you mean by processes starting from the file?  Processes that
exec(3) the file and its children?

> +The file may be fully qualified or just the basename.

'fully qualified' isn't something we say of paths.  We should say an
absolute pathname.  Is it only absolute pathnames and basenames?  How
about relative pathnames?

> +.P
> +Example config file:
> +.IP
> +.EX
> +glibc.malloc.arenas_max=3D5
> +onlysecure glibc.malloc.arenas_max=3D1
> +-glibc.pthread.rseq=3D1

	\-

> +[proc:/bin/bad.program]
> +-glibc.pthread.rseq=3D0

	\-

> +.EE

Have a lovely night!
Alex

> +.SH FILES
> +.I /etc/ld.so.conf
> +.SH SEE ALSO
> +.BR ld.so (8),
> +.BR ldconfig (8)
> diff --git a/man/man8/ld.so.8 b/man/man8/ld.so.8
> index 5f3c22ef2..40f129b71 100644
> --- a/man/man8/ld.so.8
> +++ b/man/man8/ld.so.8
> @@ -792,7 +792,8 @@ .SH FILES
>  .TP
>  .I /etc/ld.so.cache
>  File containing a compiled list of directories in which to search for
> -shared objects and an ordered list of candidate shared objects.
> +shared objects and an ordered list of candidate shared objects,
> +and any system-wide tunables to be applied.
>  See
>  .BR ldconfig (8).
>  .TP
> diff --git a/man/man8/ldconfig.8 b/man/man8/ldconfig.8
> index 9ac146b44..234169504 100644
> --- a/man/man8/ldconfig.8
> +++ b/man/man8/ldconfig.8
> @@ -17,6 +17,8 @@ .SH SYNOPSIS
>  .IR conf ]
>  .RB [ \-r\~\c
>  .IR root ]
> +.RB [ \-t\~\c
> +.IR tunconf ]
>  .IR directory \~.\|.\|.
>  .YS
>  .SY /sbin/ldconfig
> @@ -85,6 +87,13 @@ .SH DESCRIPTION
>  .P
>  Failure to follow this pattern may result in compatibility issues
>  after an upgrade.
> +.P
> +If the file
> +.I /etc/tunables.conf
> +exists,
> +it contains tunables to be applied to all processes.
> +These tunables are stored
> +in the cache and applied to every process at its startup.
>  .SH OPTIONS
>  .TP
>  .BI \-\-format=3D fmt
> @@ -157,6 +166,12 @@ .SH OPTIONS
>  .I root
>  as the root directory.
>  .TP
> +.BI \-t\~ tunconf
> +Use
> +.I tunconf
> +instead of
> +.IR /etc/tunables.conf .
> +.TP
>  .B \-\-verbose
>  .TQ
>  .B \-v
> @@ -178,8 +193,6 @@ .SH OPTIONS
>  is also specified,
>  the cache is still rebuilt.
>  .SH FILES
> -.\" FIXME Since glibc-2.3.4, "include" directives are supported in ld.so=
=2Econf
> -.\"
>  .\" FIXME Since glibc-2.4, "hwcap" directives are supported in ld.so.conf
>  .PD 0
>  .TP
> @@ -190,11 +203,17 @@ .SH FILES
>  See
>  .BR ld.so.conf (5).
>  .TP
> +.I /etc/tunables.conf
> +See
> +.BR tunables.conf (5).
> +.TP
>  .I /etc/ld.so.cache
>  contains an ordered list of libraries found in the directories
>  specified in
>  .IR /etc/ld.so.conf ,
> -as well as those found in the trusted directories.
> +as well as those found in the trusted directories,
> +and any system-wide tunables listed in
> +.IR /etc/tunables.conf .
>  .PD
>  .SH SEE ALSO
>  .BR ldd (1),
>=20
>=20

--=20
<https://www.alejandro-colomar.es>

--cj73cjejwiaqfbb3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmpVR5MACgkQ64mZXMKQ
wqlTJg//cW+xTohtEGNS4pEO+LAvGARpE8h//pgTaOtTxjXk60/wJbJdjpr+0xlb
o+ikneE+bMlYG9mzx7AxbSXddLsfg1LRrts2aA5+pVwTkz8AKRRNeeBwXu4gkBCD
OmpdvJNqUUk3B5k62rmpjR9L/fCQOUGkmvp/k410va9FqjpQe1ik/843j9MVzMpB
0jCm2l4v14+bnV122/YQT7M+xhd1v31ZDzK7h13hb6fweKCmvxnVy9LgWcRWPas5
SSNe1As76BjpQ16px/DB2xg+eJQdcco4Z3ZZUFl1sM6ZFnl/Q+4RujcYb/kVsbij
yo4tbCU3HY2gHIYl5o9Aq4NC0Du2dSJpY4wFN7a6XM/0JvT18SyKEQRQR6kiZ8Gr
jJpoGIggvKietrnT3zhKFbKjR/8rWmr7NEoxHkDHlAFHhiPe4CS0Ht/aVatGa/wo
q+SlWGcGXPeYkQIoV8heX6gIWsSYvV7QdlVBMbi6i9hsBVmMFu3YGPheIeC8YxYu
T1mcRi9wtyXnoWYDHeWIPL39501F3cURmP7TlNn/OjtpJy76YMeEzuv9OvrPsvAf
QskoPmRkAniAKrvnrE9YmdQuDHFiwwS47PMIWTmhplRg+jLX88lRkNi7mvwNA0Go
EGODwRPg8OzyRK4nSOL/SFwizeE3nuMkisMYwW4P/2vflhCynZc=
=Pz8t
-----END PGP SIGNATURE-----

--cj73cjejwiaqfbb3--

