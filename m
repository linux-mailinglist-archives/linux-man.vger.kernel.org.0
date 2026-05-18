Return-Path: <linux-man+bounces-5549-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UAyEOIAFC2rd/QQAu9opvQ
	(envelope-from <linux-man+bounces-5549-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 18 May 2026 14:26:40 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 67D0B56C9C1
	for <lists+linux-man@lfdr.de>; Mon, 18 May 2026 14:26:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 97F6E30AB87B
	for <lists+linux-man@lfdr.de>; Mon, 18 May 2026 12:16:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 424DD3FF1C1;
	Mon, 18 May 2026 12:16:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pVzQQ2p4"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 065DA31714B
	for <linux-man@vger.kernel.org>; Mon, 18 May 2026 12:16:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779106580; cv=none; b=c+8HLJMNrS4Tcvsz9I/lDsgNRY1G8vDYuM0ub8Yk9ezvlSLScFjR57+mvAzDqrIE28BNsLxSgmn79syp9Rz4oM6a7j1oOdalVKozVE0qzJHtY91UFVF+kihOW19ZnIHAGGSDQjVrDPVbIOFizemW5x+rNU6EBLzHJJdIAAYIdjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779106580; c=relaxed/simple;
	bh=w0gGxv4MQhZE5pQ22Zxi4QSxeYfYrKeU8wsNr3c8udA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aAvB8mCP9OFWIBlIxDC0weg91lgu/VbepdVW6qbE8LjC/4jledd8M8SpBXMsCAXevzuNCwmK54+kxuGnbawc5SfYR4SIW4OnImYN+wcEQ41UrPXml/ohwHVnmayNHmzRmmceIRD7eUyfWUfke0otmehPLkqJ91/NktrXdGJuTS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pVzQQ2p4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 16FF2C2BCB7;
	Mon, 18 May 2026 12:16:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779106579;
	bh=w0gGxv4MQhZE5pQ22Zxi4QSxeYfYrKeU8wsNr3c8udA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pVzQQ2p4QL/ljT/L+k86xcVtFD8c6fnQZM0z7QnfI4nf/n2q0ZMSATyVKheg3yBZK
	 Z0aEa8ScubR5rYsmO9BLwMThtpVn0ec72V5XPJg/dgwAKvNackBRSQ+XEG19yhvnzH
	 LVyF5pircm796aLjw+S+wS8QKZNyE8CJy1Ow+CxFfxro4sz1O9qoVK9tIBXvxJQu4H
	 ZrYZRRm8McRVT+u/LBib6cTObPcw10W98XD49bU2/fPBB+3UDcJZBSiI+o5+oVKq5p
	 Lt58Hjv5NTAQ57mUzpfZ/QZAOUhBqXR5Las9sS0dT+ftV8zhs2U/qzVRG1/4y2jqUd
	 xnmScCRN9GyGw==
Date: Mon, 18 May 2026 14:16:15 +0200
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: weird but successful *roff comment syntax (was: [PATCH]
 man/man2/seccomp_unotify.2: Document SECCOMP_IOCTL_NOTIF_SET_FLAGS and
 SECCOMP_USER_NOTIF_FD_SYNC_WAKE_UP)
Message-ID: <agsC51hLxQF21sP1@devuan>
References: <agqooRyZy65sjFtl@nix-mail>
 <agrlIOYqEMDSdIFK@devuan>
 <20260518112419.32vn34flgttpcba4@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="i42bbsfsfbxmf4ir"
Content-Disposition: inline
In-Reply-To: <20260518112419.32vn34flgttpcba4@illithid>
X-Rspamd-Queue-Id: 67D0B56C9C1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5549-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
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
X-Rspamd-Action: no action


--i42bbsfsfbxmf4ir
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: linux-man@vger.kernel.org, groff@gnu.org
Subject: Re: weird but successful *roff comment syntax (was: [PATCH]
 man/man2/seccomp_unotify.2: Document SECCOMP_IOCTL_NOTIF_SET_FLAGS and
 SECCOMP_USER_NOTIF_FD_SYNC_WAKE_UP)
Message-ID: <agsC51hLxQF21sP1@devuan>
References: <agqooRyZy65sjFtl@nix-mail>
 <agrlIOYqEMDSdIFK@devuan>
 <20260518112419.32vn34flgttpcba4@illithid>
MIME-Version: 1.0
In-Reply-To: <20260518112419.32vn34flgttpcba4@illithid>

Hi Branden,

On 2026-05-18T06:24:19-0500, G. Branden Robinson wrote:
> [looping in groff list]
>=20
> Hi Alex,
>=20
> At 2026-05-18T12:24:25+0200, Alejandro Colomar wrote:
> > > +.\"
> > > +.SS SECCOMP_IOCTL_NOTIF_SET_FLAGS
> > > +The
> > > +.B SECCOMP_IOCTL_NOTIF_SET_FLAGS
> > > +operation (available since Linux 6.6)
> > > +\." commit 48a1084a8b7423642b5f17ca6202f6f277c5392b
> >=20
> > Typo; you meant .\"
> > It's also repeated below.
> >=20
> > Interestingly, this seems to also hide it as a comment, although
> > troff(1) prints a warning saying that something is wrong:
> >=20
> > 	alx@devuan:~/tmp$ cat comment.man=20
> > 	.TH comment 7 2026-05-18 experiments
> > 	.SH Name
> > 	comment \- trying different comments
> > 	.SH Description
> > 	Here goes one comment:
> > 	.\" foo
> > 	Comment ended.
> > 	.P
> > 	Here goes another comment?
> > 	\." bar
> > 	Comment ended.
> > 	alx@devuan:~/tmp$ groff -Tutf8 -man -rCHECKSTYLE=3D3 -rLL=3D64n -ww co=
mment.man=20
> > 	troff:comment.man:10: warning: name '"' not defined
> > 	comment(7)      Miscellaneous Information Manual      comment(7)
> >=20
> > 	Name
> > 	     comment - trying different comments
> >=20
> > 	Description
> > 	     Here goes one comment: Comment ended.
> >=20
> > 	     Here goes another comment?  Comment ended.
> >=20
> > 	experiments                2026=E2=80=9005=E2=80=9018                 =
comment(7)
> >=20
> > I'm curious about what happens in the roff(7) language for this to
> > work as a comment.
>=20
> Strictly, that input line is not treated as a comment.  The formatter
> treats the line
>=20
>   \." commit 48a1084a8b7423642b5f17ca6202f6f277c5392b
>=20
> as a call of an undefined macro named '"'.  Yes, just the double quote.
> In *roff, any printable character is valid in an identifier.
>=20
> https://www.gnu.org/software/groff/manual/groff.html.node/Identifiers.html
>=20
> (Using the *roff escape character in an identifier name requires a trick
> or two, though.)
>=20
> Arguments to undefined macros are discarded.  To be Hermes Conrad-grade
> correct, not by the formatter itself, but by the automatically created
> empty macro definition that does nothing with them.
>=20
> https://www.gnu.org/software/groff/manual/groff.html.node/Writing-Macros.=
html
>=20
> The input therefore operates much like the following.
>=20
>   ."
>=20
> Why didn't the leading backslash break this?
>=20
> 5.24.2 Copy Mode
> ----------------
>=20
> ...
>  -- Escape sequence: \.
>      '\.' quotes the control character.  It is used to permit nested
>      macro definitions to end without a named macro call to conclude
>      them.  Without a syntax for quoting the control character, this
>      would not be possible.
>=20
>           .de m1
>           foo
>           .  de m2
>           bar
>           \\..
>           ..
>           .m1
>           .m2
>               =3D> foo bar
> ...
>=20
> https://www.gnu.org/software/groff/manual/groff.html.node/Copy-Mode.html
>=20
> (If you attempt a nested macro definition in a man(7) document, I cannot
> offer any guarantee of your safety when Ingo Schwarze finds out.)
>=20
> Because I endeavor always to reach greater heights of explanatory
> precision, I must acknowledge that `\.` is not a true escape sequence.
> It is _quotation_ syntax.  In a grammar that possesses context,
> "escaping" and "quoting" move in opposite directions through nested
> contextual scopes.  The founders of Unix pulled a sly trick on us all by
> routinely using the same item of punctuation for both operations, like a
> gear selector for an automatic transmission that uses the same position
> for "drive" and "reverse".
>=20
> But that's okay.  If you get something wrong while driving the PDP-11
> Unixmobile, your car will either explode, stop, or an electrical relay
> will loudly clunk and a giant amber "?" will appear on your otherwise
> instrument-free dashboard.
>=20
> In any case your journey is over.
>=20
> In the patch you quoted, the line
>=20
>   \." commit 48a1084a8b7423642b5f17ca6202f6f277c5392b
>=20
> did _not_ occur in a copy mode context, so the formatter quietly
> discarded the backslash and interpreted '.' as the control character
> just as it does in "interpretation mode".
>=20
> Should this discard be so quiet?  I think not.
>=20
> I spitballed a relevant idea in Savannah #62776.[1]  In comment #27,
> Dave Kemper helpfully summarized several that I had, some of which are
> now at risk of being lost since the ticket is closed.  (Some have since
> been implemented and are expected in 1.25.)
>=20
> We see the following.
>=20
>   `\.` encountered in interpretation mode (comment #17)
>=20
> In fact, in *roff there are so many ways to "do nothing" that in 1970s
> Bell Labs CSRC documents, and on into the next decade before groff
> showed up, you'll find a variety of approaches to commenting.
>=20
> You can see another once-popular approach to commenting in rn(1).
>=20
> https://www.tuhs.org/cgi-bin/utree.pl?file=3D4.3BSD-Tahoe/usr/src/new/rn/=
rn.1
>=20
> GNU troff, especially with warnings dialed up, is much more critical of
> its input.
>=20
> Regards,
> Branden
>=20
> [1] https://savannah.gnu.org/bugs/?62776

Thanks!  :-)


Cheers,
Alex

--=20
<https://www.alejandro-colomar.es>

--i42bbsfsfbxmf4ir
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmoLAwkACgkQ64mZXMKQ
wqncNxAAjjaZ0WB8zHRhh79DtAfRg054mitlwcZ3zIArH20w15zKMdyEQHj798g/
tevKmKInr3s+TwpuU+WKO+rrYRS9U23zLGyt40umgeonBbvJpCAWvnwSMhUHhKf/
ZKP0Lm0OkcReTbPiysiU138e2eMt2MxFER2MFjXaj2cWqzEU6Qa7lkW2GR8UVrIP
UVNZRVB9rcQ6owbqv9mPh+1aRQ/GTx4zCDmCHOw+qKaq/F3NUfESJYtQ2vcmCoJk
svUXpI/IEI+vypaMxIMAmg6E+LJG3LPV7oxig5MkPVe+5fCdeXwZXkweo6oDi9aF
axCV5rp3rddFvqqIoJFUeKbNaexZxx/dr+Oub/dTAjkBQ4cF2ygUF9PnKWDpqnJT
Q6NS+lzJC70ZinC46bpzK16sZjeZhDayZB8ohn1ThwFG9nP7LVI4S8d3/PN6kQEZ
1a/Z4VCK0G1bYATpGAh375xP7CN2qogs93Im4L8I8VGn+Gb6QmVSS0JylqquneE4
B/5PJmdgOOGci4xJE3PLR0LquTGVFiMkJEJYzJSSpTnBf027NkEuYGpes9Cza36+
sig5qy2gD8XbbyabML9koncItuMnKJnxpm60MzXmJQWlqpXvan49FQ9RSH43KxrQ
41uKV+zcBml58FiXtwCl1TnG09GdjQ8HIA5efk6rB189Lj0nrqQ=
=QbGd
-----END PGP SIGNATURE-----

--i42bbsfsfbxmf4ir--

