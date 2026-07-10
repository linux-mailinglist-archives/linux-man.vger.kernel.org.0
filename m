Return-Path: <linux-man+bounces-5736-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 00lKABdRUWoUCQMAu9opvQ
	(envelope-from <linux-man+bounces-5736-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 10 Jul 2026 22:07:51 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C9C673E02B
	for <lists+linux-man@lfdr.de>; Fri, 10 Jul 2026 22:07:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=h+iY4c9Z;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5736-lists+linux-man=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="linux-man+bounces-5736-lists+linux-man=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D7C7C3013789
	for <lists+linux-man@lfdr.de>; Fri, 10 Jul 2026 20:07:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99FFF379C21;
	Fri, 10 Jul 2026 20:07:01 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1838C3290A5
	for <linux-man@vger.kernel.org>; Fri, 10 Jul 2026 20:07:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783714021; cv=none; b=Y1M7znViEGf6cxHgj4hZLgNYCHQelXczwJP3xpnilKyRQrEtY1eiXDVx6LTC65lO9+awRBUAfCVwDWwqJxGJbqRbfp+doBRDmhnYkJEUosgZQ2Wqwv2E7JJN9u82v79J5pvWRRR3lMPyBokOOSUPjN3TKk+uf4YbSjJbJcsJhfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783714021; c=relaxed/simple;
	bh=kufsDLUZ4w/BW6hBxsYyMrIBJxxy/i76oUeW4dT5crs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jRfZLC8DGo4eoYwnNSoqWKZBNjeiZyKeD8LF0gbQYaoYcP/ITXxCbtiP/eriiW8XFb6yElXz92TdRI9z3tDSD2c+Ieo7742205iHGz/Lrd9Xqg/EbC2t7Iddjxmv4bd6K+n4SO1Mk5cn28q8rFLk0L+BMX6MvHZenSxiOboaRiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h+iY4c9Z; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 582741F000E9;
	Fri, 10 Jul 2026 20:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783714020;
	bh=WpJQy7mku31dDoWhAEs7EEk80mK1B8jbadaAurQKXpw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=h+iY4c9ZrplWJBrPVHpM9/gyfXZAjB4zeZ6RQzLATUvp19CnXmCSTqfgTxlLk4fvV
	 joXnCNJRj3iFvp+AS3F6lKwF5FfqiAoroy/2HuzK+e0dw0PrLFuAcysgAGXtH3u+4g
	 4DFEyINC5JXgCuxujQWRIarPu0uhoBw2b78MV/ZZiYoyRFxEDOsMPbh2Nkr9jHrFr+
	 rMA7as+EeSNRjTUe/5vxBLa5u7IbXpRCyqXyUhwJx+yTpTJrvrHywbPL8tgPBcy500
	 2PSNvaf0T5x6z+4VJ9X7qA+0QoU2l1UqbVeSEST4BJVJi6msHDXEmYr3lFuAwdD7vm
	 GItbcokwq7Ntw==
Date: Fri, 10 Jul 2026 22:06:55 +0200
From: Alejandro Colomar <alx@kernel.org>
To: DJ Delorie <dj@redhat.com>
Cc: linux-man@vger.kernel.org
Subject: Re: man/man8/ldconfig.8: document system-wide tunables
Message-ID: <alFL4juvzxVkx25G@devuan>
References: <alEAgbFxQi9oHME3@devuan>
 <xnse5q90jp.fsf@greed.delorie.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jdvbk66brnrpw6vl"
Content-Disposition: inline
In-Reply-To: <xnse5q90jp.fsf@greed.delorie.com>
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
	TAGGED_FROM(0.00)[bounces-5736-lists,linux-man=lfdr.de];
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
X-Rspamd-Queue-Id: 3C9C673E02B


--jdvbk66brnrpw6vl
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: DJ Delorie <dj@redhat.com>
Cc: linux-man@vger.kernel.org
Subject: Re: man/man8/ldconfig.8: document system-wide tunables
Message-ID: <alFL4juvzxVkx25G@devuan>
References: <alEAgbFxQi9oHME3@devuan>
 <xnse5q90jp.fsf@greed.delorie.com>
MIME-Version: 1.0
In-Reply-To: <xnse5q90jp.fsf@greed.delorie.com>

Hi DJ,

On 2026-07-10T14:12:10-0400, DJ Delorie wrote:
> Alejandro Colomar <alx@kernel.org> writes:
> > 	mandoc: .tmp/man/man8/ldconfig.8:212:85: STYLE: input text line longer=
 than 80 bytes: Allow the tunable to...
>=20
> Fixed.
>=20
> > 	mandoc: .tmp/man/man8/ldconfig.8:250:2: WARNING: skipping paragraph ma=
cro: PP empty
> > 	mandoc: .tmp/man/man8/ldconfig.8:270:2: WARNING: skipping paragraph ma=
cro: PP empty
>=20
> Fixed.  I think.  We need a better language for this ;-)
>=20
> > 	lint-man-poems: .tmp/man/man8/ldconfig.8: Use semantic newlines (see m=
an-pages(7)):
> > 	    222:	The tunable only applies to AT_SECURE (i.e. setuid, or elevat=
ed
>=20
> Maybe fixed?  Better at least.  The linter still complains despite me
> splitting it up:
>=20
> .B @
> The tunable only applies to AT_SECURE
> (i.e. setuid, or elevated capabilities)
> processes.

You need to use a dummy character to tell this linter that you really
meant a dot followed by one space which doesn't terminate the sentence.

	(i.e.\& setuid, or elevated capabilities)

Other than that, it's better.

Also, man-pages(7) recommends using 'that is,' instead of 'i.e.,'.

$ MANWIDTH=3D72 man man-pages | awk '/Use of e.g.,/,/^$/'
   Use of e.g., i.e., etc., a.k.a., and similar
     In  general,  the  use  of  abbreviations  such as "e.g.", "i.e.",
     "etc.", "cf.", and "a.k.a." should be avoided, in favor  of  suit=E2=
=80=90
     able  full  wordings ("for example", "that is", "and so on", "com=E2=
=80=90
     pare to", "also known as").

> > 	an.tmac:.tmp/man/man8/ldconfig.8:92: style: .IR expects at least 2 arg=
uments, got 1
> > 	an.tmac:.tmp/man/man8/ldconfig.8:195: style: .IR expects at least 2 ar=
guments, got 1
> > 	an.tmac:.tmp/man/man8/ldconfig.8:197: style: .IR expects at least 2 ar=
guments, got 1
>=20
> Fixed.
>=20
> >> +.SH INCLUDES
> >
> > I think this section belongs in new manual pages, ld.so.conf(5) and
> > tuinables.conf(5), which would describe the formats of those files.
> >> +.SH TUNABLES
> >
> > Same here; I think this belongs in tunables.conf(5).
>=20
> I looked for ld.so.conf.5 but didn't see one (which kinda surprised me,
> but a lot of ldconfig isn't documented either in the man pages or in the
> glibc manual) so went with "what was there".  I have a slight preference
> for "get this change in quickly" as glibc is releasing with the new
> funcionality soon(ish) but if you want me to split these two out, I can
> do that too.  Or do it later.

I would very much prefer to split these out.

An incomplete ld.so.conf.5 page would be fine; we don't need to make it
perfect.  But the separate manual page would help keep this
documentation reasonably organized.

I can help to get this quickly in.

> >> +The files
> >> +.IR /etc/ld.so.conf
> >
> > 	s/IR/I/
>=20
> Really, really, want a better language for this... ;-)

For remembering these, IR is for alternating italics and roman, and I
is for fully italics.

>=20
> diff --git a/man/man8/ldconfig.8 b/man/man8/ldconfig.8
> index ee024b8f6..19f1ddf43 100644
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

LGTM.

> @@ -85,6 +87,11 @@ .SH DESCRIPTION
>  .P
>  Failure to follow this pattern may result in compatibility issues
>  after an upgrade.
> +.P
> +If the file
> +.I /etc/tunables.conf
> +exists, it contains one tunable per line.  These tunables are stored

After period, always start a new line.  After the comma, it's more a
matter of taste, but in general encouraged.  (semantic newlines)

	.P
	If the file
	.I /etc/tunables.conf
	exists,
	it contains one tunable per line.
	These tunables are stored in the cache
	and applied to every process at its startup.

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

LGTM.

> @@ -177,9 +190,85 @@ .SH OPTIONS
>  .B \-N
>  is also specified,
>  the cache is still rebuilt.
> +.SH INCLUDES
> +The files
> +.I /etc/ld.so.conf
> +and
> +.I /etc/tunables.conf
> +allow lines to start with the word
> +.I include
> +followed by a path wildcard,
> +and will include any files matching that wildcard.
> +.SH TUNABLES
> +Each line in the file
> +.I /etc/tunables.conf
> +specifies a tunable,
> +which is a name and value separated by an equals sign.
> +Each line may include zero or more words or symbols at the beginning:
> +.TP
> +.B overridable
> +.TQ
> +.B +
> +Allow the tunable to be overridden by the environment variable
> +(this is the default).
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
> +(i.e. setuid, or elevated capabilities)
> +processes.
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
> +which limit the tunables following it, up to the end of the file
> +(or end of the included file, or start of a new included file)
> +or a line with only
> +.B []
> +on it.  The syntax is:
> +.RS
> +.P

You probably mean .IP, which means indented paragraph.

> +[
> +.I filter
> +:
> +.I pattern
> +]
> +.RE

For examples, we use .EX/.EE sections.  These ensure a monospaced font
in PDF or HTML.  See man-pages(7):

$ MANWIDTH=3D72 man man-pages | sed -n '/Indentation/,+18p'
   Indentation of structure definitions, shell session logs, and so on
     When  structure definitions, shell session logs, and so on are in=E2=
=80=90
     cluded in running text, indent them by 4 spaces (i.e., a block en=E2=
=80=90
     closed by .in +4n and .in), format them  using  the  .EX  and  .EE
     macros,  and surround them with suitable paragraph markers (either
     .P or .IP).  For example:

         .P
         .in +4n
         .EX
         int
         main(int argc, char *argv[])
         {
             return 0;
         }
         .EE
         .in
         .P

Is the white space intended?  I'd write one of these, depending on what
you actually mean (if I understood your intention correctly):

	.IP
	.in +4n
	.EX
	.RI [ filter : pattern ]
	.EE
	.in
or
	.IP
	.in +4n
	.EX
	.RI [\~ filter \~:\~ pattern \~]
	.EE
	.in

> +.TP
> +.B proc
> +The
> +.I proc

proc should consistently be in italics or bold, I think.  If it's a
literal value that users should type as is, it should be bold.

> +filter limits the following tunables to processes starting from the
> +file matching the pattern.
> +The file may be fully qualified or just the basename.
> +.P

For continuing the indentation of TP, you probably want IP.

BTW, you can check the effects of your patch as a diff with the
diffman-git(1) script.  It's already provided in some distros, and you
can also find in the repository of this project if your distro hasn't
packaged it yet.  It is a simple shell script, which you can find in
src/bin/diffman-git.  Its documentation is as usual under man/man1/.

Here's how it works:

	$ diffman-git HEAD^^
	--- HEAD^^^:man/man4/console_codes.4
	+++ HEAD^^:man/man4/console_codes.4
	@@ -439,7 +439,7 @@ DESCRIPTION
				       to txt.
	      ESC ] 1 ; txt ST         Set icon name to txt.
	      ESC ] 2 ; txt ST         Set window title to txt.
	-     ESC ] 4 ; num ; txt ST   Set ANSI color num to txt.
	+     ESC ] 4 ; num ; txt ST   Set color num (0=E2=80=90255) to txt.
	      ESC ] 10 ; txt ST        Set dynamic text color to txt.
	      ESC ] 46 ; name ST       Change log file to name (nor=E2=80=90
				       mally disabled by a compile=E2=80=90

If you don't specify a commit, it shows the diff of the changes not
staged.

> +Example config file:
> +.P
> +.RS
> +.nf

You probably want monospace, and not just no-fill.  .EX/.EE sections
achieve this (EXample, Example End).

> +glibc.malloc.arenas_max=3D5
> +onlysecure glibc.malloc.arenas_max=3D1
> +-glibc.pthread.rseq=3D1

Hyphen-minus must be escaped as \-, otherwise, they're interpreted as
hyphens (not the thing you want).


Have a lovely night!
Alex

> +[proc:/bin/bad.program]
> +-glibc.pthread.rseq=3D0
> +.fi
> +.RE
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

--=20
<https://www.alejandro-colomar.es>

--jdvbk66brnrpw6vl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmpRUNkACgkQ64mZXMKQ
wqkqFg/+JBKw4gHFIQIze5Vx9uGi6BJCXAXUIlMYXMnP675aVRRiZxD03WxmaAFm
9IrEI/xU9iPDFjfas4DpzjK8+WTU4vVeCKVo8MpNORSHV8dls/dabFi1RUw3Y8ZM
xbEXE7nGuznm5IR+fLlYvNg41PW1bWBsslqMn7KpG+AXvEsrGAmb44IBoq54dGY+
ZawzP3P9KQKfWFMEr8svnHCUR4gmOeJopPFjKOf15c+Oys0FZK39iYUyieu6W8Du
8nBVJFxns8DOEPNY6yupJBphLhwRJBNphKWVAxBp1L00NM6967NXl//VO6TnWuN5
GmNgGMnPxf6PtOZ9yZNVz7Z2M0IlmmrBONctNta0hIVzmo72lvhMEN8DCCQxdqao
kQuWIfuiQBUpBmTTWBryXGBuyA/qPazodpTqikzrorQBnjAupgvij9yMUjUnkdNI
78jhk0CFG69FSX0kExLgLl579KHogAUBnRJBee9iK7Gx/4f1KYTGZ+bxrlTKz0me
79193JPXil1dwtiYLyzD2SkpsD2L8RPLaOiyUoJihGYXDESdKNrr9Y5QM02LQoP/
fgLzU76tJKYF/3aFvKmjjnJyQqDMXoNs2GnkdM1ox8ux/VsbBdvXS8AcdzEkQIhX
CfWKBeiV+2mU+unvHz8YIbKwZN/CZE99NJYrLldQxeh8o+/jmLE=
=gY6U
-----END PGP SIGNATURE-----

--jdvbk66brnrpw6vl--

