Return-Path: <linux-man+bounces-5675-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MMjtJLGeQ2oodgoAu9opvQ
	(envelope-from <linux-man+bounces-5675-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 30 Jun 2026 12:47:13 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D1E76E31C8
	for <lists+linux-man@lfdr.de>; Tue, 30 Jun 2026 12:47:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=UDUykSMv;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5675-lists+linux-man=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="linux-man+bounces-5675-lists+linux-man=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DBF87301FB8C
	for <lists+linux-man@lfdr.de>; Tue, 30 Jun 2026 10:39:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BABD3F5BC0;
	Tue, 30 Jun 2026 10:39:42 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 392803F58D9
	for <linux-man@vger.kernel.org>; Tue, 30 Jun 2026 10:39:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782815981; cv=none; b=K34XCvVrSBaLopwgQi5inZED1SrOilJyPX7whgtHHJIs2FI/v6MI3w8KyhmjQgP5Qb6ufDigbTZLEBUnGi7LKc9UA2Wpj/I9xWETWb15QscjGeENfulDTU0R0WESVSwmErH1HDWcQvGQhLo3UcXk163aGu5EwHOiZHj5+d7HQ1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782815981; c=relaxed/simple;
	bh=QRT+HgaX5QWP35+ReIDnLkVgDFPTZPa8Y7r4YkIH0Zc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=A9cFguyFahoDSbPGhQxGB7PzJ2E9eUU1k3AZo0rLJVlKcveSC0+X10EF3Ouoriw9lcGDrBog6uvX8TLzTGgNkFBvuRUPizXfLcyPf2CQ7dhswWJ0CsmBeFqYiFOePC/ZJKaYHmOEGU0/ykgs4lCIsBOCeClmKD54Io9zwt/+p84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UDUykSMv; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C29201F000E9;
	Tue, 30 Jun 2026 10:39:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782815977;
	bh=rpUqKQQWRoVz5zHcWzG/b+WBCq3E3QcRgE+wV+TUfmE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=UDUykSMv1Pw0Skv8t95J6qtlX1LgsIA3VDkg9XcL2nMFzZK1IoxFHLwIEKKcYABE8
	 SjUb6oCv7f+9LMRxqhoZxU07WMFssAzPlBdeAc7oaEHJ+MM4El8wnXcBRevUms6Dh8
	 Jcu4tLr+Z66rUONEEVNN5KvNDI9kv8UnD2LgU4CLwq16gSrJFZtWtHjEE24tiGIHOD
	 nHjzdtm7KEBmutiOJabMQohZBlvsfHubBYGAJoIavDsDO/Dy3hHJaS8iiFQnlcDk5A
	 80hse/WPoWTRh5Xl1eFlWKAmYUCLRRtTBdjyxbkiE29sNT8Rcc+R74/zhZfTHOsje6
	 vJGkUeszFXybw==
Date: Tue, 30 Jun 2026 12:39:34 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "H. Peter Anvin" <hpa@zytor.com>
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: [PATCH v2 1/4] man/man3*: document the glibc 2.42+ baud_t
 termios interface
Message-ID: <akOL9gQovBTRQ3VW@devuan>
References: <20260629135910.143781-1-hpa@zytor.com>
 <20260629135910.143781-2-hpa@zytor.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ns62ter5uhtl4le3"
Content-Disposition: inline
In-Reply-To: <20260629135910.143781-2-hpa@zytor.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.76 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5675-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_RECIPIENTS(0.00)[m:hpa@zytor.com,m:linux-man@vger.kernel.org,m:libc-alpha@sourceware.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,zytor.com:email,vger.kernel.org:from_smtp,devuan:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0D1E76E31C8


--ns62ter5uhtl4le3
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "H. Peter Anvin" <hpa@zytor.com>
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: [PATCH v2 1/4] man/man3*: document the glibc 2.42+ baud_t
 termios interface
Message-ID: <akOL9gQovBTRQ3VW@devuan>
References: <20260629135910.143781-1-hpa@zytor.com>
 <20260629135910.143781-2-hpa@zytor.com>
MIME-Version: 1.0
In-Reply-To: <20260629135910.143781-2-hpa@zytor.com>

Hi,

On 2026-06-29T06:59:05-0700, H. Peter Anvin wrote:
> glibc 2.42+ has a new set of interfaces to get and set arbitrary baud
> rates. Add them to the man pages.
>=20
> This removes from termios(3) some details about the baud rate
> constants: they are now an open set in glibc, simply defined to be
> equivalent to their numeric value (e.g. B300 =3D=3D 300). Thus, stating
> that certain architectures only support certain values is no longer
> correct.
>=20
> This also removes references from termios(3) about the interior of the
> ioctl interfaces: the statement about TCSETS2, for example, was always
> incorrect (TCSETS2 doesn't exist on all Linux architectures.) That
> kind of information belongs in ioctl_tty(2), anyway, especially since
> including <linux/termios.h> -> <asm/termbits.h> is not compatible with
> including <termios.h>.
>=20
> Signed-off-by: H. Peter Anvin (Intel) <hpa@zytor.com>
> ---
>  man/man3/termios.3        | 318 ++++++++++++++++++--------------------
>  man/man3type/baud_t.3type |   1 +
>  man/man3type/cc_t.3type   |  42 ++++-
>  3 files changed, 193 insertions(+), 168 deletions(-)
>  create mode 100644 man/man3type/baud_t.3type
>=20
> diff --git a/man/man3/termios.3 b/man/man3/termios.3
> index 0942cca8084e..cd3f9ce4d7c0 100644
> --- a/man/man3/termios.3
> +++ b/man/man3/termios.3
> @@ -7,7 +7,8 @@
>  .TH termios 3 (date) "Linux man-pages (unreleased)"
>  .SH NAME
>  termios, tcgetattr, tcsetattr, tcsendbreak, tcdrain, tcflush, tcflow,
> -cfmakeraw, cfgetospeed, cfgetispeed, cfsetispeed, cfsetospeed, cfsetspee=
d \-
> +cfmakeraw, cfgetispeed, cfgetospeed, cfsetispeed, cfsetospeed,
> +cfsetspeed, cfgetobaud, cfgetibaud, cfsetibaud, cfsetobaud, cfsetbaud \-
>  get and set terminal attributes, line control, get and set baud rate
>  .SH LIBRARY
>  Standard C library
> @@ -34,6 +35,13 @@ Standard C library
>  .BI "int cfsetispeed(struct termios *" termios_p ", speed_t " speed );
>  .BI "int cfsetospeed(struct termios *" termios_p ", speed_t " speed );
>  .BI "int cfsetspeed(struct termios *" termios_p ", speed_t " speed );
> +.P
> +.BI "baud_t cfgetibaud(const struct termios *" termios_p );
> +.BI "baud_t cfgetobaud(const struct termios *" termios_p );
> +.P
> +.BI "int cfsetibaud(struct termios *" termios_p ", baud_t " baud );
> +.BI "int cfsetobaud(struct termios *" termios_p ", baud_t " baud );
> +.BI "int cfsetbaud(struct termios *" termios_p ", baud_t " baud );
>  .fi
>  .P
>  .RS -4
> @@ -49,6 +57,16 @@ Feature Test Macro Requirements for glibc (see
>      glibc 2.19 and earlier:
>          _BSD_SOURCE
>  .fi
> +.P
> +.BR cfgetibaud (),
> +.BR cfgetobaud (),
> +.BR cfsetibaud (),
> +.BR cfsetobaud (),
> +.BR cfsetbaud ():
> +.nf
> +    Since glibc 2.42:
> +        _GNU_SOURCE
> +.fi
>  .SH DESCRIPTION
>  The termios functions describe a general terminal interface that is
>  provided to control asynchronous communications ports.
> @@ -305,30 +323,33 @@ flag constants:
>  .B _BSD_SOURCE
>  or
>  .BR _SVID_SOURCE ]
> -.TP
> -.B CBAUDEX

Hmmm, even with --diff-algorithm=3Dpatience it shows the diff too badly.
I've been trying, and --diff-algorithm=3Dhistogram shows a much nicer
diff.  I have the following in my gitconfig:

	[diff]
		algorithm =3D histogram

I suggest adding that to your gitconfig file.  It is implicitly also
used when you generate patches.  The histogram algorithm works quite
nicely (I've been using for a few years already).

> -(not in POSIX) Extra baud speed mask (1 bit), included in
> -.BR CBAUD .
> -[requires
> -.B _BSD_SOURCE
> -or
> -.BR _SVID_SOURCE ]
>  .IP
> -(POSIX says that the baud speed is stored in the
> -.I termios
> -structure without specifying where precisely, and provides
> -.BR cfgetispeed ()

Why is the above removed in this commit?  I think this belongs in
a separate commit.

> +This bitmask should only be used when invoking the kernel
> +.BR ioctl ()
> +interface directly.

ioctl() should be ioctl(2).

However, is there a specific ioctl that we should mention?  There are
manual pages for the specific ioctl's, so if it's a specific one, we
could refer to that instead.

> +.P
> +Instead, the
> +.BR cfgetospeed (),
> +.BR cfgetobaud (),
> +.BR cfsetospeed ()
>  and
> -.BR cfsetispeed ()
> -for getting at it.
> +.BR cfsetobaud ()
> +functions should be used in application code.

This sentence reads ambiguously; I'd rephrase it so say:

Instead,
application code should use the
=2EBR ...
functions.

> +.P
>  Some systems use bits selected by
>  .B CBAUD
>  in
>  .IR c_cflag ,
> -other systems use separate fields, for example,
> -.I sg_ispeed
> -and
> -.IR sg_ospeed .)
> +other systems use separate fields, Linux uses
> +.IR both .
> +.TP
> +.B CBAUDEX
> +(not in POSIX) Extra baud speed mask (1 bit), included in
> +.BR CBAUD .
> +[requires
> +.B _BSD_SOURCE
> +or
> +.BR _SVID_SOURCE ]
>  .TP
>  .B CSIZE
>  Character size mask.
> @@ -379,13 +400,17 @@ bits.
>  .B _BSD_SOURCE
>  or
>  .BR _SVID_SOURCE ]
> -(Not implemented in glibc, supported on Linux via

Does this removal mean that it's now implemented in glibc?

> -.BR TCGET *
> +This bitmask should only be used when invoking the kernel

'should' sounds like a recommendation.  If it's unsupported in libc,
then we should say something like

	This bitmask
	is only supported
	when invoking ...

> +.BR ioctl ()

I think this should probably refer to

	.BR TC { G , S } ET { A , S , S2 }(2const)

instead, right?

Also, I think this belongs in a separate preceding commit.

> +interface directly (see
> +.BR ioctl_tty (2)).
> +Instead, the
> +.BR cfgetispeed (),
> +.BR cfgetibaud (),
> +.BR cfsetispeed ()
>  and
> -.BR TCSET *
> -ioctls;
> -see
> -.BR ioctl_tty (2))
> +.BR cfsetibaud ()
> +functions should be used in application code.

Same rephrasing as above.

>  .TP
>  .B CMSPAR
>  (not in POSIX)
> @@ -1068,114 +1093,22 @@ until
>  .BR tcsetattr ()
>  is successfully called.
>  .P
> -Setting the speed to
> -.B B0
> +Setting the output speed to zero
>  instructs the modem to "hang up".
> -The actual bit rate corresponding to
> -.B B38400
> -may be altered with
> -.BR setserial (8).
>  .P
> -The input and output baud rates are stored in the
> -.I termios
> -structure.
> -.P
> -.BR cfgetospeed ()
> -returns the output baud rate stored in the
> -.I termios
> -structure
> -pointed to by
> -.IR termios_p .
> -.P
> -.BR cfsetospeed ()
> -sets the output baud rate stored in the
> -.I termios
> -structure
> -pointed to by
> -.I termios_p
> -to
> -.IR speed ,
> -which must be one of these constants:
> -.RS
> -.TP
> -.B B0
> -.TQ
> -.B B50
> -.TQ
> -.B B75
> -.TQ
> -.B B110
> -.TQ
> -.B B134
> -.TQ
> -.B B150
> -.TQ
> -.B B200
> -.TQ
> -.B B300
> -.TQ
> -.B B600
> -.TQ
> -.B B1200
> -.TQ
> -.B B1800
> -.TQ
> -.B B2400
> -.TQ
> -.B B4800
> -.TQ
> -.B B9600
> -.TQ
> -.B B19200
> -.TQ
> -.B B38400
> -.TQ
> -.B B57600
> -.TQ
> -.B B115200
> -.TQ
> -.B B230400
> -.TQ
> -.B B460800
> -.TQ
> -.B B500000
> -.TQ
> -.B B576000
> -.TQ
> -.B B921600
> -.TQ
> -.B B1000000
> -.TQ
> -.B B1152000
> -.TQ
> -.B B1500000
> -.TQ
> -.B B2000000
> -.RE

The removal of old documentation should be done in a separate commit.

> -.P
> -These constants are additionally supported on the SPARC architecture:
> -.RS
> -.TP
> -.B B76800
> -.TQ
> -.B B153600
> -.TQ
> -.B B307200
> -.TQ
> -.B B614400
> -.RE
> -.P
> -These constants are additionally supported on non-SPARC architectures:
> -.RS
> -.TP
> -.B B2500000
> -.TQ
> -.B B3000000
> -.TQ
> -.B B3500000
> -.TQ
> -.B B4000000
> -.RE
> +When using the
> +.I baud_t
> +.IR * baud()
> +functions, the baud rate is specified directly as a numeric value.
> +.P
> +When using the
> +.I speed_t
> +.IR * speed()
> +functions, the line rate needs to be specified as one of a set of an
> +enumerated macros defined in

There seems to be some wording inconsistency here.  It's hard to read.
Maybe:

	functions,
	the line rate needs to be specified
	as one of a set of enumerated macros
	defined in

That is, 'an' should be removed (and semantic newlines can be improved).

> +.I <termios.h>
> +of the form
> +.BI B nnn.
>  .P
>  Due to differences between architectures,
>  portable applications should check
> @@ -1183,67 +1116,94 @@ if a particular
>  .BI B nnn
>  constant is defined prior to using it.
>  .P
> +The actual bit rate corresponding to
> +.B B38400
> +may be altered with
> +.BR setserial (8).
> +.P
> +The input and output baud rates are stored in the
> +.I termios
> +structure.

This text isn't really being added.  The weirdness of this diff is in
part because of including too many changes in a single commit.  In this
case, it seems to be a movement of text from elsewhere.  Separating
commits would improve the diff significantly.


Have a lovely day!
Alex

> +.P
> +.BR cfgetospeed ()
> +and
> +.BR cfgetobaud ()
> +return the output baud rate stored in the
> +.I termios
> +structure
> +pointed to by
> +.IR termios_p .
> +.P
> +.BR cfsetospeed ()
> +and
> +.BR cfsetobaud ()
> +set the output baud rate stored in the
> +.I termios
> +structure pointed to by
> +.IR termios_p .
> +.P
>  The zero baud rate,
> -.BR B0 ,
> +.B B0
> +for
> +.BR cfsetospeed (),
>  is used to terminate the connection.
> -If
> -.B B0
> -is specified,
> +.P
> +If a baud rate of zero is specified,
>  the modem control lines shall no longer be asserted.
>  Normally,
>  this will disconnect the line.
> -.B CBAUDEX
> -is a mask
> -for the speeds beyond those defined in POSIX.1
> -(57600 and above).
> -Thus,
> -.BR B57600 " & " CBAUDEX
> -is nonzero.
> -.P
> -Setting the baud rate to a value other than those defined by
> -.BI B nnn
> -constants is possible via the
> -.B TCSETS2
> -ioctl;
> -see
> -.BR ioctl_tty (2).
>  .P
>  .BR cfgetispeed ()
> -returns the input baud rate stored in the
> +and
> +.BR cfgetobaud ()
> +return the input baud rate stored in the
>  .I termios
>  structure.
>  .P
>  .BR cfsetispeed ()
> +and
> +.BR cfsetibaud ()
>  sets the input baud rate stored in the
>  .I termios
> -structure to
> -.IR speed ,
> -which must be specified as one of the
> -.BI B nnn
> -constants listed above for
> -.BR cfsetospeed ().
> +structure.
> +.P
>  If the input baud rate is set to the literal constant
>  .B 0
>  (not the symbolic constant
> -.BR B0 ),
> -the input baud rate will be
> -equal to the output baud rate.
> +.B B0
> +even when using
> +.BR cfsetispeed ())
> +the input baud rate
> +will be equal to the output baud rate.
>  .P
>  .BR cfsetspeed ()
>  is a 4.4BSD extension.
>  It takes the same arguments as
>  .BR cfsetispeed (),
>  and sets both input and output speed.
> +.P
> +.BR cfsetbaud ()
> +is the equivalent function using the explicitly numeric
> +.I baud_t
> +interface.
>  .SH RETURN VALUE
>  .BR cfgetispeed ()
> -returns the input baud rate stored in the
> +and
> +.BR cfgetobaud ()
> +return the input baud rate stored in the
>  .I termios
> -structure.
> +structure as a
> +.I speed_t
> +enumeration value or a numeric value, respectively.
>  .P
>  .BR cfgetospeed ()
> -returns the output baud rate stored in the
> +and
> +.BR cfgetobaud ()
> +return the output baud rate stored in the
>  .I termios
> -structure.
> +structure as a
> +.I speed_t
> +enumeration value or a numeric value, respectively.
>  .P
>  All other functions return:
>  .TP
> @@ -1289,7 +1249,12 @@ T{
>  .BR cfgetospeed (),
>  .BR cfsetispeed (),
>  .BR cfsetospeed (),
> -.BR cfsetspeed ()
> +.BR cfsetspeed (),
> +.BR cfgetibaud (),
> +.BR cfgetobaud (),
> +.BR cfsetibaud (),
> +.BR cfsetobaud (),
> +.BR cfsetbaud ()
>  T}	Thread safety	MT-Safe
>  .TE
>  .\" FIXME: The markings are different from that in the glibc manual.
> @@ -1328,6 +1293,17 @@ POSIX.1-2008.
>  .TQ
>  .BR cfsetspeed ()
>  BSD.
> +.TP
> +.BR cfgetibaud ()
> +.TQ
> +.BR cfgetobaud ()
> +.TQ
> +.BR cfsetibaud ()
> +.TQ
> +.BR cfsetobaud ()
> +.TQ
> +.BR cfsetbaud ()
> +GNU.
>  .SH HISTORY
>  .TP
>  .BR tcgetattr ()
> @@ -1355,6 +1331,17 @@ POSIX.1-2001.
>  .TQ
>  .BR cfsetspeed ()
>  BSD.
> +.TP
> +.BR cfgetibaud ()
> +.TQ
> +.BR cfgetobaud ()
> +.TQ
> +.BR cfsetibaud ()
> +.TQ
> +.BR cfsetobaud ()
> +.TQ
> +.BR cfsetbaud ()
> +glibc 2.42.
>  .SH NOTES
>  UNIX\ V7 and several later systems have a list of baud rates
>  where after the values
> @@ -1414,6 +1401,7 @@ mask).
>  .BR tty (1),
>  .BR ioctl_console (2),
>  .BR ioctl_tty (2),
> +.BR baud_t (3type),
>  .BR cc_t (3type),
>  .BR speed_t (3type),
>  .BR tcflag_t (3type),
> diff --git a/man/man3type/baud_t.3type b/man/man3type/baud_t.3type
> new file mode 100644
> index 000000000000..26cfd017180e
> --- /dev/null
> +++ b/man/man3type/baud_t.3type
> @@ -0,0 +1 @@
> +.so man3type/cc_t.3type
> diff --git a/man/man3type/cc_t.3type b/man/man3type/cc_t.3type
> index 31c2dbcf8dbe..fa16e4cc3915 100644
> --- a/man/man3type/cc_t.3type
> +++ b/man/man3type/cc_t.3type
> @@ -5,7 +5,8 @@
>  .\"
>  .TH cc_t 3type (date) "Linux man-pages (unreleased)"
>  .SH NAME
> -cc_t, speed_t, tcflag_t \- terminal special characters, baud rates, modes
> +cc_t, baud_t, speed_t, tcflag_t \- terminal special characters, baud
> +rates, modes
>  .SH LIBRARY
>  Standard C library
>  .RI ( libc )
> @@ -13,6 +14,7 @@ Standard C library
>  .nf
>  .B #include <termios.h>
>  .P
> +.BR typedef " /* ... */ " baud_t;
>  .BR typedef " /* ... */ " cc_t;
>  .BR typedef " /* ... */ " speed_t;
>  .BR typedef " /* ... */ " tcflag_t;
> @@ -21,14 +23,48 @@ Standard C library
>  .I cc_t
>  is used for terminal special characters,
>  .I speed_t
> -for baud rates, and
> +for baud rates using
> +.BI B nnn
> +enumerated constants defined in
> +.IR <termios.h> ,
> +.I baud_t
> +for baud rates explicitly defined as numbers, and
>  .I tcflag_t
>  for modes.
>  .P
> -All are unsigned integer types.
> +.IR cc_t ,
> +.IR speed_t ,
> +and
> +.I tcflag_t
> +are all unsigned integer types.
> +.P
> +.I baud_t
> +is a numeric type.
> +.P
> +It is currently the same as
> +.IR speed_t ,
> +but it is not guaranteed to remain so in the future.
>  .SH STANDARDS
> +.TP
> +.I cc_t
> +.TQ
> +.I speed_t
> +.TQ
> +.I tcflag_t
>  POSIX.1-2024.
> +.TP
> +.I baud_t
> +GNU.
>  .SH HISTORY
> +.TP
> +.I cc_t
> +.TQ
> +.I speed_t
> +.TQ
> +.I tcflag_t
>  POSIX.1-1988.
> +.TP
> +.I baud_t
> +glibc 2.42.
>  .SH SEE ALSO
>  .BR termios (3)
> --=20
> 2.54.0
>=20
>=20

--=20
<https://www.alejandro-colomar.es>

--ns62ter5uhtl4le3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmpDnOAACgkQ64mZXMKQ
wqlfxhAAtNGLj18SGRbyohaHsZ88OnSxV6guYWkhkKaUz6UVG9nbRlFI54Et3KnQ
l9DmmNyT6VBWPmJko9HH4Hq04kuhCys6oW8+/k3dLuqKzsPDcwLytfASAmy415FZ
QAuf2bC6sJu63u7ohV9wIqt3CUh644qwnJe/3g23S7+qb4KHPvPp/5IPGEO9I3i1
IGm3yygGDX8+FdK3jwRZw47oFv121kb7nV+QoAi2m2SX2tIwRSFKMmIKLll+2VuE
8osDLraQJ+SR5cr6oQDhM+les+lNe97rX+55Y2WBDoXKLlhDEVzfay6RuiLbrIVs
CfzYrJ94WMAHCrJROb1EIHSPKesyr7lycq6xkNMFQrXPt/+lvmsQ1eVl89fhZXad
BszKuoR93kxWprTYXRU9cB8FlJI5+KsLhj8X/ZAYftJrz1HWcqyiezpCzge+8xF6
+6Y1xNR9qgEQgHHtYRho4mWVXt6uxApUUh99KzBXP6Zds7y85sxAfOZ/QZimkKOL
EReOysNN9tWUOTBxBuknz7em6yi5FYV3Zk5XmuKpTiZg8ytzP96nwuOHF0oUqSIt
ws1TDqCF27f+xk3HDWannyWaauXb+rftWfwveL054P8MPvnf9/b5tIFr3Sn3omt9
pJzyflfOg8TC9igEK16hhYksAfOY7HkY7mYQr8S33z4YZTrmGIk=
=bNDI
-----END PGP SIGNATURE-----

--ns62ter5uhtl4le3--

