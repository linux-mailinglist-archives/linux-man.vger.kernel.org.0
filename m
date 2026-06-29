Return-Path: <linux-man+bounces-5666-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id oHUuC9dBQmpz2wkAu9opvQ
	(envelope-from <linux-man+bounces-5666-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 29 Jun 2026 11:58:47 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 90A3B6D88A4
	for <lists+linux-man@lfdr.de>; Mon, 29 Jun 2026 11:58:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=X27vhmGm;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5666-lists+linux-man=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="linux-man+bounces-5666-lists+linux-man=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0CB7A3042912
	for <lists+linux-man@lfdr.de>; Mon, 29 Jun 2026 09:52:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF6D63FAE08;
	Mon, 29 Jun 2026 09:52:02 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 002FF3F9298
	for <linux-man@vger.kernel.org>; Mon, 29 Jun 2026 09:52:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782726722; cv=none; b=t5aA+ZF53w+MzhkU5UnPPAKBf+uj1ZGKYBnvt/PDlgMzqfiko/3Z+qTLTsoJFhrrLXIGx/pRf9H9whZZbiTx6QRmCVE7Pp8Q6SFWhVvV0nfrmWmvQfQG1DfwSwT6fWJZZaY2JlnXB0f6jUF2l/mSMJbvRec/qR6A5vnudy5SL4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782726722; c=relaxed/simple;
	bh=1QG9UiNFDYYCaJ2ZgUzTwXV64SEjeh4Sz89OqXsuEUY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EONrV0tE+LjW+qdSfAK77zejUVtW2SaN67OgOaPotprMw7A21ArSS+RSPxwcdrea3kKRnEwO2XDDkHou1RF6sAiJ9Rw0+mvXaTV+QKnRZm6LpEiz7mtHWKzQstJKFJZQX/OOg6DlUs6toONCJW194D5FkyFJtDm6bWUcueSpE4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X27vhmGm; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C79131F000E9;
	Mon, 29 Jun 2026 09:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782726720;
	bh=KIYX10b8ilM8cyN+tWWNd1OGogKSYcbC7KrNrNRxYac=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=X27vhmGmCucE+qoCN8rvXM/pE+ZNLFJjq1O1+Ol+ff97ED32TiTar73IE7Wfd11JR
	 +N9kmNtmCAPX52PYiwdbj6vD1t8JuJHa7qR/5v/Ju8L3DDl95SD+npZbx0/Vqa75f6
	 U4DPR965XjCi0mUzm9u2W5TJgF9RaBG7ZEsJj1RnfjN8WbX2CKR0k6yU939zsOyrCw
	 U4E2LboRc/+YE6c0vLf7cMkBei9BLcUo5fOvJmitYPyED6hXi/2DnEWhaPHvfFmw41
	 uPpaUkQgJJK2gS7jdyVOY48BrhqpHMfzj8Z3EnjTBSRj7+Irl+jzFQbyBQi/OJdCKy
	 vmsGQ5BRq1tRw==
Date: Mon, 29 Jun 2026 11:51:57 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "H. Peter Anvin" <hpa@zytor.com>
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: [PATCH 1/1] man/man3*: document the glibc 2.42+ baud_t termios
 interface
Message-ID: <akI8eeMSCh_l8rYr@devuan>
References: <20260629060227.26535-1-hpa@zytor.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="72zwehsujimso6pf"
Content-Disposition: inline
In-Reply-To: <20260629060227.26535-1-hpa@zytor.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.76 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5666-lists,linux-man=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,port70.net:url,zytor.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 90A3B6D88A4


--72zwehsujimso6pf
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "H. Peter Anvin" <hpa@zytor.com>
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: [PATCH 1/1] man/man3*: document the glibc 2.42+ baud_t termios
 interface
Message-ID: <akI8eeMSCh_l8rYr@devuan>
References: <20260629060227.26535-1-hpa@zytor.com>
MIME-Version: 1.0
In-Reply-To: <20260629060227.26535-1-hpa@zytor.com>

Hi H. Peter,

On 2026-06-28T23:02:26-0700, H. Peter Anvin wrote:
> glibc 2.42+ has a new set of interfaces to get and set arbitrary baud
> rates as numbers rather than strange enumeration constants. Add them
> to the man pages.
>=20
> This also removes the specific list of Bxxx constants, as they no
> longer match the list of constants supported by glibc, which is now an
> open set anyway.
>=20
> [ I was the developer of that interface. ]
>=20
> Signed-off-by: H. Peter Anvin (Intel) <hpa@zytor.com>

Thanks!

> ---
>  man/man3/termios.3        | 307 +++++++++++++++++++-------------------
>  man/man3type/baud_t.3type |   1 +
>  man/man3type/cc_t.3type   |  42 +++++-
>  3 files changed, 190 insertions(+), 160 deletions(-)
>  create mode 100644 man/man3type/baud_t.3type
>=20
> diff --git a/man/man3/termios.3 b/man/man3/termios.3
> index 0942cca8084e..7aa29b39ea73 100644
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
> @@ -305,6 +323,25 @@ flag constants:
>  .B _BSD_SOURCE
>  or
>  .BR _SVID_SOURCE ]
> +.IP
> +This bitmask should only be used when invoking the kernel
> +.BR ioctl ()
> +interface directly.
> +.P
> +The
> +.BR cfgetospeed (),
> +.BR cfgetobaud (),
> +.BR cfsetospeed ()
> +and
> +.BR cfsetobaud ()
> +functions should instead.
> +.P
> +Some systems use bits selected by
> +.B CBAUD
> +in
> +.IR c_cflag ,
> +other systems use separate fields, Linux uses
> +.IR both .
>  .TP
>  .B CBAUDEX
>  (not in POSIX) Extra baud speed mask (1 bit), included in
> @@ -313,22 +350,6 @@ or
>  .B _BSD_SOURCE
>  or
>  .BR _SVID_SOURCE ]
> -.IP
> -(POSIX says that the baud speed is stored in the
> -.I termios
> -structure without specifying where precisely, and provides
> -.BR cfgetispeed ()
> -and
> -.BR cfsetispeed ()
> -for getting at it.
> -Some systems use bits selected by
> -.B CBAUD
> -in
> -.IR c_cflag ,
> -other systems use separate fields, for example,
> -.I sg_ispeed
> -and
> -.IR sg_ospeed .)
>  .TP
>  .B CSIZE
>  Character size mask.
> @@ -379,13 +400,17 @@ bits.
>  .B _BSD_SOURCE
>  or
>  .BR _SVID_SOURCE ]
> -(Not implemented in glibc, supported on Linux via
> -.BR TCGET *
> +This bitmask should only be used when invoking the kernel
> +.BR ioctl ()
> +interface directly (see
> +.BR ioctl_tty (2)).
> +The
> +.BR cfgetispeed (),
> +.BR cfgetibaud (),
> +.BR cfsetispeed ()
>  and
> -.BR TCSET *
> -ioctls;
> -see
> -.BR ioctl_tty (2))
> +.BR cfsetibaud ()
> +functions should instead.
>  .TP
>  .B CMSPAR
>  (not in POSIX)
> @@ -1068,182 +1093,122 @@ until
>  .BR tcsetattr ()
>  is successfully called.
>  .P
> -Setting the speed to
> -.B B0
> -instructs the modem to "hang up".
> +Setting the output speed to zero instructs the modem to "hang up".
> +.P
> +If a certain device does not support different input and output
> +speeds, the output speed takes precedence if the user tries to set
> +them to different values.
> +.P
> +When using the
> +.I baud_t
> +.BR -baud ()

Maybe

	.IR * baud()

The '*' is more common for denoting an arbitrary set of characters (as
in globs).  Also, since this is not an actual function name, it should
not be in bold.  And since * is a variable part, it should be in
italics.

> +functions, the baud rate is specified directly as a numeric value.
> +.P
> +When using the
> +.I speed_t
> +.BR -speed ()

Same here.

> +functions, the line rate needs to be specified as one of a set of an
> +enumerated macros defined in
> +.I <termios.h>
> +of the form
> +.BI B nnn.

Are Bnnn macros considered deprecated, or are they still intended for
new code?

> +.P
> +Due to differences between architectures,
> +portable applications should check
> +if a particular
> +.BI B nnn
> +constant is defined prior to using it.
> +.P
>  The actual bit rate corresponding to
>  .B B38400
>  may be altered with
> -.BR setserial (8).
> +.BR setserial (8);
> +doing so is however discouraged as it may break other applications
> +later trying to use the same serial port.
>  .P
>  The input and output baud rates are stored in the
>  .I termios
>  structure.
>  .P
>  .BR cfgetospeed ()
> -returns the output baud rate stored in the
> +and
> +.BR cfgetobaud ()
> +return the output baud rate stored in the
>  .I termios
>  structure
>  pointed to by
>  .IR termios_p .
>  .P
>  .BR cfsetospeed ()
> -sets the output baud rate stored in the
> +and
> +.BR cfsetobaud ()
> +set the output baud rate stored in the
>  .I termios
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
> -.P
> -Due to differences between architectures,
> -portable applications should check
> -if a particular
> -.BI B nnn
> -constant is defined prior to using it.
> +structure pointed to by
> +.IR termios_p .
>  .P
>  The zero baud rate,
> -.BR B0 ,
> -is used to terminate the connection.
> -If
>  .B B0
> -is specified,
> -the modem control lines shall no longer be asserted.
> -Normally,
> -this will disconnect the line.
> -.B CBAUDEX
> -is a mask
> -for the speeds beyond those defined in POSIX.1
> -(57600 and above).
> -Thus,
> -.BR B57600 " & " CBAUDEX
> -is nonzero.
> +for
> +.BR cfsetospeed (),
> +is used to terminate the connection.
>  .P
> -Setting the baud rate to a value other than those defined by
> -.BI B nnn
> -constants is possible via the
> -.B TCSETS2
> -ioctl;
> -see
> -.BR ioctl_tty (2).
> +If a baud rate of zero is specified,
> +the modem control lines shall no longer be asserted.

I wonder if you can pass --diff-algorithm=3Dpatience to
git-format-patch(1) when generating the patch.  The diff seems to
include text that hasn't really changed.

> +Normally, this will disconnect the line.

Please don't change the whitespace unnecessarily; this complicates the
diff unnecessarily.

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
> +the input baud rate will be equal to the output baud rate.
> +.P
> +POSIX.1-2024 considers this functionality deprecated.

Text talking about deprecation should be in a different commit than one
that adds new interfaces.  Please consider breaking this commit in two
or more commits that do just one thing.

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
> @@ -1289,7 +1254,12 @@ T{
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
> @@ -1328,6 +1298,17 @@ POSIX.1-2008.
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
> @@ -1355,6 +1336,17 @@ POSIX.1-2001.
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
> @@ -1414,6 +1406,7 @@ mask).
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

'all' is superfluous here.  Less text will be easier to read.  Thus,
s/all//

> +.P
> +.I baud_t
> +is a numeric type.

By numeric you mean that it might be a floating type?  If not, then it
should be specified as an integer type.  If you really mean that it
might be a float/double, then the standard term is 'arithmetic types'
(see <https://port70.net/~nsz/c/c11/n1570.html#6.2.5p18>).


Have a lovely day!
Alex

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

--=20
<https://www.alejandro-colomar.es>

--72zwehsujimso6pf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmpCQDcACgkQ64mZXMKQ
wqkbRQ//Z86AWcjQy6fiKS0BofecXAth8Mi+y5AKakMDZk0+oppQmFFs1ixbsWkL
yeeZ+83KKiKM70M9lcIQ9V1OYMMukJNqg/DS0AYgRnP9vqJkN7lbc1tyI4CHH8dl
NuKFxpXdP1plGy+Ac5ZQK+YIWO/nR/K67Fzw2Ny6ub+xHKiQOvZTKIACo56XoNL2
9DjAiJ0E5yHe61u4Lo4Qa2EeJv0BYaE8axIqFM6rwYR7MfjgQwaM7lvCcplHLwnf
djduoArYRXx2T3ugLghxqIKGrm6K6OZa5cTRJWm6qEuRXDq/TiCCAX8OaCQw9Zcz
/nuhN31ntexTuZj9ivlWlM+IQg0XnOIuZerUlb9LSuaX+DOuxuSXWuVIay4aDP9u
+rMu5kNT72BVOeRdt4MK2fMVKtA+eXVUhyx5OOK5445XCGq5s9AliOkP4p0UWLxu
ZNrgtEdBnhq9H/vauUPXGnMlNidx5PRNCY8GeP12lkHS6KDlWp1BH2MCaxMefQ2N
cPptkOOMtgBmjp4UPZ4FMYuRMuS61tGamHCcYL+mCNYgYhMc6GDgGRplFcA9WFbQ
RgGzDJtko2+XYZ1mDS3x8CGsuAGF4+WY2fwdOIAbsIJVUPhff7Ch2sTwRlibYyik
1mJ705k6jY4fUfSWkxXOERzN6GD9NlG3xZf5KoExWii+6aIMlrc=
=/DFU
-----END PGP SIGNATURE-----

--72zwehsujimso6pf--

