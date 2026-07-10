Return-Path: <linux-man+bounces-5730-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9IKUGREEUWru9wIAu9opvQ
	(envelope-from <linux-man+bounces-5730-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 10 Jul 2026 16:39:13 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B034F73BD08
	for <lists+linux-man@lfdr.de>; Fri, 10 Jul 2026 16:39:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=XTraUded;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5730-lists+linux-man=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="linux-man+bounces-5730-lists+linux-man=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AB4933014940
	for <lists+linux-man@lfdr.de>; Fri, 10 Jul 2026 14:31:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D3E234CFD1;
	Fri, 10 Jul 2026 14:31:23 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D516D24677B
	for <linux-man@vger.kernel.org>; Fri, 10 Jul 2026 14:31:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783693883; cv=none; b=iDS8guSn+AHFNOomkoHd7myl1vYFH18e5IwrXEOCekeAuqoq5IHj2KeMSjI4fkwSowt2E1yZF+0eiZkLztkYcmNgHkaVfXlsyXAem/DFvqncWkh3K7hGlbXQLMlNi2cSd9P8cJQGOlTAhpaK6WhSvGxXZR2LIJ+FUWQiRolzcY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783693883; c=relaxed/simple;
	bh=yQ4SCBsjpV6rv/Nwo/EyfNk4iPwZH5aRwIHZdJTZfJM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sDfkAZ3w7ps82y80bVYrG3q1XxFsxpSsuJKRut4l0YCvMB/0yOsQK0bypr0JwWgzfa3ny1EiXRsx9vArK4KmOpb5L0rhce4CmWW5flqklDWSVcS44uTQkY4go5YbyonZl7nxjJXg+ua5UNCtmYQr2ERbFZHalYw5mSZGx8V5VOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XTraUded; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9B8B1F000E9;
	Fri, 10 Jul 2026 14:31:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783693881;
	bh=BZTONhxmDszOETrDJG65T/qtvsoJzM958fKT1wjVxPM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=XTraUdedtXzedwVkNehMpzU1X+qppv1QnBpm9RHq83c9RsV3GLx70Ae6zRh1Ts97H
	 K/JXXwjlV528oN4Di+7M1CVN/jW32sWrjPH9FFwRBbAbFLChCSPm1hB+M001c6Y748
	 lZrEGMob5AtwmBiz/qQ0YR8qS1ZB7Cj9Z60zNkJrQaN8xCwqJzaXWb6IQ2EeDi+ljd
	 E0WH84J09fZtOBHRUEuLS2ry4vbFcgStG5d3r7fO3vUH2BW1zCWJi0JPOBnTDgiY3B
	 BaxmkZeWfgxIf2g5u9HHwgv8ijrOXUIzSYDDUsP/en3C+SrWXXex/4aGGsAlqYk1H1
	 tFicoVlIwlXSg==
Date: Fri, 10 Jul 2026 16:31:18 +0200
From: Alejandro Colomar <alx@kernel.org>
To: DJ Delorie <dj@redhat.com>
Cc: linux-man@vger.kernel.org
Subject: Re: man/man8/ldconfig.8: document system-wide tunables
Message-ID: <alEAgbFxQi9oHME3@devuan>
References: <xny0fk806i.fsf@greed.delorie.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vyj6qiafxv6vpy5k"
Content-Disposition: inline
In-Reply-To: <xny0fk806i.fsf@greed.delorie.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.76 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
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
	TAGGED_FROM(0.00)[bounces-5730-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B034F73BD08


--vyj6qiafxv6vpy5k
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: DJ Delorie <dj@redhat.com>
Cc: linux-man@vger.kernel.org
Subject: Re: man/man8/ldconfig.8: document system-wide tunables
Message-ID: <alEAgbFxQi9oHME3@devuan>
References: <xny0fk806i.fsf@greed.delorie.com>
MIME-Version: 1.0
In-Reply-To: <xny0fk806i.fsf@greed.delorie.com>

Hi DJ,

On 2026-07-09T14:53:09-0400, DJ Delorie wrote:
>=20
> diff --git a/man/man8/ldconfig.8 b/man/man8/ldconfig.8

I see some diagnostics after applying this patch:

	$ make lint-man build-catman -R -k
	make: warning: undefined variable 'GNUMAKEFLAGS'
	MANDOC		.tmp/man/man8/ldconfig.8.lint-man.mandoc.touch
	mandoc: .tmp/man/man8/ldconfig.8:212:85: STYLE: input text line longer tha=
n 80 bytes: Allow the tunable to...
	mandoc: .tmp/man/man8/ldconfig.8:250:2: WARNING: skipping paragraph macro:=
 PP empty
	mandoc: .tmp/man/man8/ldconfig.8:270:2: WARNING: skipping paragraph macro:=
 PP empty
	make: *** [/srv/alx/src/linux/man-pages/man-pages/contrib/share/mk/lint/ma=
n/mandoc.mk:30: .tmp/man/man8/ldconfig.8.lint-man.mandoc.touch] Error 1
	PCRE2GREP	.tmp/man/man8/ldconfig.8.lint-man.poems.touch
	lint-man-poems: .tmp/man/man8/ldconfig.8: Use semantic newlines (see man-p=
ages(7)):
	    222:	The tunable only applies to AT_SECURE (i.e. setuid, or elevated
	make: *** [/srv/alx/src/linux/man-pages/man-pages/contrib/share/mk/lint/ma=
n/poems.mk:30: .tmp/man/man8/ldconfig.8.lint-man.poems.touch] Error 1
	make: Target 'lint-man' not remade because of errors.
	TROFF		.tmp/man/man8/ldconfig.8.cat.set
	an.tmac:.tmp/man/man8/ldconfig.8:92: style: .IR expects at least 2 argumen=
ts, got 1
	an.tmac:.tmp/man/man8/ldconfig.8:195: style: .IR expects at least 2 argume=
nts, got 1
	an.tmac:.tmp/man/man8/ldconfig.8:197: style: .IR expects at least 2 argume=
nts, got 1
	make: *** [/srv/alx/src/linux/man-pages/man-pages/contrib/share/mk/build/c=
atman/troff.mk:33: .tmp/man/man8/ldconfig.8.cat.set] Error 1
	make: *** Deleting file '.tmp/man/man8/ldconfig.8.cat.set'
	make: Target 'build-catman' not remade because of errors.

> index ee024b8f6..8574eae24 100644
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
> @@ -85,6 +87,11 @@ .SH DESCRIPTION
>  .P
>  Failure to follow this pattern may result in compatibility issues
>  after an upgrade.
> +.P
> +If the file
> +.IR /etc/tunables.conf

	s/IR/I/

> +exists, it contains one tunable per line.  These tunables are stored

Please use semantic newlines.  See man-pages(7):

$ MANWIDTH=3D72 man man-pages | awk '/Use semantic newlines/,/^$/'
   Use semantic newlines
     In the source of a manual page, new sentences should be started on
     new lines, long sentences should be split  into  lines  at  clause
     breaks  (commas,  semicolons, colons, and so on), and long clauses
     should be split at phrase boundaries.  This convention,  sometimes
     known as "semantic newlines", makes it easier to see the effect of
     patches, which often operate at the level of individual sentences,
     clauses, or phrases.

> +in the cache and applied to every process at its startup.
>  .SH OPTIONS
>  .TP
>  .BI \-\-format=3D fmt
> @@ -157,6 +164,12 @@ .SH OPTIONS
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
> @@ -177,9 +190,85 @@ .SH OPTIONS
>  .B \-N
>  is also specified,
>  the cache is still rebuilt.
> +.SH INCLUDES

I think this section belongs in new manual pages, ld.so.conf(5) and
tuinables.conf(5), which would describe the formats of those files.

> +The files
> +.IR /etc/ld.so.conf

	s/IR/I/

> +and
> +.IR /etc/tunables.conf

	s/IR/I/

> +allow lines to start with the word
> +.I include
> +followed by a path wildcard, and will include any files matching that
> +wildcard.

Please use semantic newlines.

> +.SH TUNABLES

Same here; I think this belongs in tunables.conf(5).


Have a lovely day!
Alex

> +Each line in the file
> +.I /etc/tunables.conf
> +specifies a tunable, which is a name and value
> +separated by an equals sign.
> +Each line may include zero or more words or symbols at the beginning:
> +.TP
> +.B overridable
> +.TQ
> +.B +
> +Allow the tunable to be overridden by the environment variable (this is =
the default).
> +.TP
> +.B nonoverridable
> +.TQ
> +.B \-
> +Do not allow the tunable to be overridden by the environment variable.
> +.TP
> +.B onlysecure
> +.TQ
> +.B @
> +The tunable only applies to AT_SECURE (i.e. setuid, or elevated
> +capabilities) processes.
> +.TP
> +.B nonsecure
> +.TQ
> +.B $
> +The tunable only applies to non-AT_SECURE processes (this is the default=
).
> +.TP
> +.B anysecure
> +.TQ
> +.B *
> +The tunable only applies to both AT_SECURE and non-AT_SECURE processes.
> +.P
> +The file may also contain
> +.I filters ,
> +which limit the tunables following it, up to the end of the file (or
> +end of the included file, or start of a new included file) or a line
> +with only
> +.B []
> +on it.  The syntax is:
> +.RS
> +.P
> +[
> +.I filter
> +:
> +.I pattern
> +]
> +.RE
> +.P
> +.TP
> +.B proc
> +The
> +.I proc
> +filter limits the following tunables to processes starting from the
> +file matching the pattern.  The file may be fully qualified or just
> +the basename.
> +.P
> +Example config file:
> +.P
> +.RS
> +.nf
> +glibc.malloc.arenas_max=3D5
> +onlysecure glibc.malloc.arenas_max=3D1
> +-glibc.pthread.rseq=3D1
> +[proc:/bin/bad.program]
> +-glibc.pthread.rseq=3D0
> +.fi
> +.RE
> +.P
>  .SH FILES
> -.\" FIXME Since glibc-2.3.4, "include" directives are supported in ld.so=
=2Econf
> -.\"
>  .\" FIXME Since glibc-2.4, "hwcap" directives are supported in ld.so.conf
>  .PD 0
>  .TP
> @@ -191,6 +280,11 @@ .SH FILES
>  one per line,
>  in which to search for libraries.
>  .TP
> +.I /etc/tunables.conf
> +contains a list of tunables,
> +one per line,
> +to apply to all newly created processes.
> +.TP
>  .I /etc/ld.so.cache
>  contains an ordered list of libraries found in the directories
>  specified in
>=20
>=20

--=20
<https://www.alejandro-colomar.es>

--vyj6qiafxv6vpy5k
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmpRAiYACgkQ64mZXMKQ
wqlxfhAAqLXKO7DgoUURwzIcW2Ol9WmUY5Se5mGDfKNioIM2/ozAOhkMbsdlIhnc
XMOiFUYJ843CYIsA/nwNPdvmh02OHwuukbApw/jVIhkMQUo+Bogmprn04iL+rwbA
XCH+M7BMsBI2DyRh8+bY3OivclNPxotlHLJu47fZGr1N1H4h+um2ZoG+1NXUXDJh
72ef+wdH/TzT41YihLIuXocCzmqejfUp0GqodhrDBmq2TzkdWBTJIhqlhJdVvOeH
moEooAM47hm9usEUZ04QUp+Y9jsXj2kpVFeX1TB0QQWdI5byKsU7vY5K8ZoLO1te
RIPWFICdk+Ls1pcf5zxAk5BelXAXjX0aU9rUaMKG+x2i48yUTxibDe710AUcqe2l
ifVA5awNnsl97BDmbMALWEcseqJWdSwEdJUAuUVgXvw1Sox4atczOSy7iv4pLTjc
ocrDD3Ul6Ytl4UIcySGrLtD5zPn8IjoDGq83fILWtnzP4us6q4fwIqaDoqyssjZ1
86RJDDENsSbunW7175etZfxEYHatC7l5xEZAgCs0Yx5v+yggCxXwFGa9UbH078n9
YYdV13WjZUV69gTC5pozH/kG3TfISIweMO5zxuBmGMzJh8QCEqfApetugyWwwgix
Fj3VaeUGefVMewZ9NzQpYexrroJtif3A2O9BkQivyPzzBiTVjYU=
=fyW/
-----END PGP SIGNATURE-----

--vyj6qiafxv6vpy5k--

