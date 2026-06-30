Return-Path: <linux-man+bounces-5678-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Vw59LVsyRGq3qQoAu9opvQ
	(envelope-from <linux-man+bounces-5678-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 30 Jun 2026 23:17:15 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B1D9C6E8138
	for <lists+linux-man@lfdr.de>; Tue, 30 Jun 2026 23:17:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=QPXnCAtj;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5678-lists+linux-man=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="linux-man+bounces-5678-lists+linux-man=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C769B300E16B
	for <lists+linux-man@lfdr.de>; Tue, 30 Jun 2026 21:17:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA15D2D1916;
	Tue, 30 Jun 2026 21:17:08 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B9801DDC37
	for <linux-man@vger.kernel.org>; Tue, 30 Jun 2026 21:17:07 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782854228; cv=none; b=L2AayzA78EkIg3Gsx99ZPIM+EVcM1FHqZMfhEa2U6BidyT/qxboYG03gBhAkUaUlJ6uevdXSyHi7e6SsqheVbGyO1EQ812K4bZ19YYOHIobMAjbOg8tU2SBxroddccNTstb0YhYHIgulehQCjieSPQWZJ4OtMJB/FphK2k5jqfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782854228; c=relaxed/simple;
	bh=xi+PsrFeuOBhZNPcEe0phdM38+3T6o+tEmEXMP4omTk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=V4s6gp4wu0odbjYy/ScwdU6EgFh6qpjzoWf/CsFk1IXAWskJUr2N0lSt6p4NhqfKkCD/IzqQ6209mZC0fVeQPaPgKmO8tr9REqnT3hZHh3S1maZfIb9JlL8XxXHkv1hzTKQ7Hs5uGJPE8JcSlY16Pyqh6HdNue8QLtPju0pDvb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QPXnCAtj; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 476131F000E9;
	Tue, 30 Jun 2026 21:17:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782854227;
	bh=jD9vA5RXqmD+o2LqXTDsKgO8lNBdDH8Uo7CJMOzrTq8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=QPXnCAtjUTzTaX1I6aitWDktetx6mVtcoXzr6xLsdYJqjaLl47dhrMKftBEHpdUm1
	 5/GshpPUlyRhLcTaUgkPJ4jGT3bjQjoFwjnYYeL2EsB1yDBO6FEv6nhfWD9LxfbpRQ
	 e6PZRZuOrJUtF+ahweC1eLnLI0SFWuvlDl6ry5EpAz5678lgI/temO7mr1bMVI0e1v
	 t1ioJYgUZsO6gpivZHJh9UbVdhYPEuIxQ+SxzsEDxVeV3wH7fgi3j5humaunWTvVwA
	 PZ81YhhuWGEQrIw6dgLFIjI1VPs9CThD8wqeCY3PG1+kEkWg/nxKUc6GvjFzSJG1ER
	 TO5eY7qGhUgjA==
Date: Tue, 30 Jun 2026 23:17:03 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "H. Peter Anvin" <hpa@zytor.com>
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: [PATCH v2 1/4] man/man3*: document the glibc 2.42+ baud_t
 termios interface
Message-ID: <akQw0mjXu4yTzofX@devuan>
References: <20260629135910.143781-1-hpa@zytor.com>
 <20260629135910.143781-2-hpa@zytor.com>
 <akOL9gQovBTRQ3VW@devuan>
 <da42ba8e-782c-4b42-bcd7-ed089780acb1@zytor.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4csndvtksashpadl"
Content-Disposition: inline
In-Reply-To: <da42ba8e-782c-4b42-bcd7-ed089780acb1@zytor.com>
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
	TAGGED_FROM(0.00)[bounces-5678-lists,linux-man=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,devuan:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B1D9C6E8138


--4csndvtksashpadl
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "H. Peter Anvin" <hpa@zytor.com>
Cc: linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: Re: [PATCH v2 1/4] man/man3*: document the glibc 2.42+ baud_t
 termios interface
Message-ID: <akQw0mjXu4yTzofX@devuan>
References: <20260629135910.143781-1-hpa@zytor.com>
 <20260629135910.143781-2-hpa@zytor.com>
 <akOL9gQovBTRQ3VW@devuan>
 <da42ba8e-782c-4b42-bcd7-ed089780acb1@zytor.com>
MIME-Version: 1.0
In-Reply-To: <da42ba8e-782c-4b42-bcd7-ed089780acb1@zytor.com>

Hi H. Peter,

On 2026-06-30T13:37:25-0700, H. Peter Anvin wrote:
> On 2026-06-30 03:39, Alejandro Colomar wrote:
> >=20
> >> +.BR ioctl ()
> >=20
> > I think this should probably refer to
> >=20
> > 	.BR TC { G , S } ET { A , S , S2 }(2const)
> >=20
> > instead, right?
> >=20
> > Also, I think this belongs in a separate preceding commit.
> >=20
>=20
> Yes, I didn't think that belonged in this page though. I have to say I th=
ink
> it *really* doesn't belong in termios(3); it just continues the confusion
> behind the fact that these are entirely different interfaces. If someone =
wants
> to know the details of the ioctl interface, they should look in ioctl_tty=
(2).
>=20
> >> +interface directly (see
> >> +.BR ioctl_tty (2)).
>=20
> ... which is why I added this cross-reference.

Ahh, okay.  I got very confused by the diff.  :)

[...]
> > This text isn't really being added.  The weirdness of this diff is in
> > part because of including too many changes in a single commit.  In this
> > case, it seems to be a movement of text from elsewhere.  Separating
> > commits would improve the diff significantly.=20
>=20
> I'm having some challenges with the structure of this man page in general=
; I
> feel it contains way too much for a single Unix man page and it makes it =
hard
> to read. I almost thinking it should be rewritten entirely and refactored.
> Perhaps termios(3type), tc*attr(3), cf*speed(3), cf*baud(3), cfmakeraw(3),
> with the remaining tc*() functions either kept together or broken up. Som=
e of
> the underlying concepts may want to go either into something like tty(7).
>=20
> However, doing that using the broken-up diffs that you want would be very
> difficult at least for me, as I'm neither particularly comfortable with t=
roff
> nor a good technical writer, plus that this is a "spare time" project for=
 me.
> I would be willing to try to submit such a rewrite, but if that means
> refactoring it into small diffs it isn't going to happen.

I can break the page myself.  I can use the break points that you told
me above.

Do you prefer that I break the page in small bits and then you apply
your patches on top of that?  Or would that be inconvenient for you?

> In fact, I *did* rewrite and restructure significant chunks of the termios
> chapter of the glibc texinfo manual during this work partly due to the sh=
eer
> number of errors that had collected over the years, partly because the cl=
arity
> was muffled by unclear language caused by wanting to pretend that the tty
> interface is anything other than an emulation of an RS232 interface.
> Explaining it as an *abstraction* of an RS232 interface that may be real =
or
> virtual really clarifies a whole lot of things.
>=20
> As such, I would be very very interested in what you think of the formula=
tions
> I used in that document. Perhaps we could use some of them if you think t=
hat
> such a rewrite would be worthwhile.
>=20
> I *very* strongly believe, however, that the ioctl_tty(2) interface needs=
 to
> be kept separate and that we shouldn't muddle that into the termios(3) man
> page. It's possible that we should be factoring out the termios parts of =
the
> kernel interface into ioctl_termios(2), as the rest of the tty ioctls
> generally coexist just fine with the termios(3) interface and thus fall i=
nto a
> separate class.

Okay; I'll try to do that, and send the patches to you for a review of
the overall break points.  When I'm finished, you can rewrite the text
as you wish.  Does that sound good?

>=20
> Speaking of ioctl_tty(2)...
>=20
> One thing I have wondered about is that in ioctl_tty(2) you state to use
> <asm/termbits.h> as the include, but in practice applications use
> <linux/termios.h>.

IIRC, we weren't sure which header was preferred, so I put one that
looked correct.  I never used these interfaces myself, so it's probably
good to change it.  Feel free to send patches for that.

> There are considerable subtleties in using the kernel
> termios interfaces, as they are architecture-specific *AND* mutually excl=
usive
> from the glibc one (neither the types nor the constants necessarily match=
 up.)
> On PowerPC, for historical reasons, the ioctl values in <sys/ioctl.h> for
> TC[GS]ETS* don't even match the kernel ones and are intercepted in glibc =
and
> redirected to the *glibc* tc[gs]etattr() functions, expecting the glibc
> structure which I do believe is different in that it has a different numb=
er of
> reserved special character slots which also pushes out the c_ispeed and
> c_ospeed members.
>=20
> Let me know what you think.

I mostly agree with everything, I think.  There's too much to be
specific, so maybe I should split the page, and then we can discuss more
concrete patches.

I'll wait for your confirmation to start breaking the page into many
bits.


Have a lovely night!
Alex

>=20
> 	-hpa
>=20

--=20
<https://www.alejandro-colomar.es>

--4csndvtksashpadl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmpEMk8ACgkQ64mZXMKQ
wqkU3w//VroZDNPOmSufJirlWzqr8xy11gWbhXoH2ydlOuaiN6igUtkQki6+v1w9
61T6zeWPruxqOl1xIsEQF7RoUt/7xdxPule2rHlNOC5OimpO5lgU3I3+ndUZ/inY
TI1Kg8iTbC/InvKQlY8C1r5l2cOYPh5++t+A3VTWBexd76Kqz1MUqUzaLEQNBWbg
nZKU6dhiHuXSYuMwoJUsQy5ZOKqriZ5+bLxfWXaAaLzbDCV8mjCC/IZENM/IyOTd
zgKlfjK6e0suNl1r4CqF9CmQLAuHoYM0Gcm3NJ/d5xar/xvHobVcpqoApQJlbg0N
AANvqdcDegpvZyQF+H8QQAOj+ewF39+Vo3kifTexyfufiI1sazS6/sUPtop16L9B
rnWhilpGBwDciH9tXB198E+hMaM3L2QKaQYLQMSYVXTqcLtwrKjalCrR9VLmwQYq
aWArTd6JW54vuMKhDGnb8++ToAyZT7fBELLm72maHaCR66svejYzC8HDYwvbdb1A
t7u0uyHO1gEvSsh9aS5YAscm5k8UOztCgwxu6Rpp4vHVVqHGO3CcFrtE4hKiD+d3
sWXzNXcKjS6YofDtQoQTZR/zIcX6wTBcSEHfzYKlySIKZ3sCXTXWT4DqqSPYFjh+
2fkLgT8/CzxDzZ2yqEgHmgdRJBFVDqRj3uTB99PYtRujxzt3BAo=
=EZFr
-----END PGP SIGNATURE-----

--4csndvtksashpadl--

