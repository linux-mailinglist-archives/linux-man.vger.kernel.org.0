Return-Path: <linux-man+bounces-5012-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iHgeMN/Ze2nNIwIAu9opvQ
	(envelope-from <linux-man+bounces-5012-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 29 Jan 2026 23:06:23 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 32BFAB52DA
	for <lists+linux-man@lfdr.de>; Thu, 29 Jan 2026 23:06:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E363E30154B2
	for <lists+linux-man@lfdr.de>; Thu, 29 Jan 2026 22:06:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 976C5369227;
	Thu, 29 Jan 2026 22:06:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VDtPKr4A"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 586D136921C
	for <linux-man@vger.kernel.org>; Thu, 29 Jan 2026 22:06:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769724377; cv=none; b=vAy66axeXgTc8HT+9NK2GRRHirukRLBc8BcOYN7CGHm4IA4hjwetFZI5LTmg6UTwpp1XJ9lDEskuS8AHRo7Ly5AHIz46fRh04av1r6XMVaj2rMU+7HhSUtM5CPyE+4p19zhkW3/9Bzy2sYjtBSJYaRaGgaMPz0pvBze6qu2QBh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769724377; c=relaxed/simple;
	bh=b2ZMwW9jycqWm23w/3M3dxj0g/3detk6ySJbpo65fNw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=u5vWkX4ernD3hj/xYjXQhZ33H2tCj/MBfO0BC6e2kmFLEI8uEhzHWIKxtBBAcbSBkk4asyIB7e6Ymfwb8+LEg8yQvcjC4V+Zt5PWM4CCp7G5tPVSYVTj/L9uzydOkwS9GfuTYAxXBL4YO/I2/ugmL/U28YXjCQsfuXA59AhKvAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VDtPKr4A; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D21CCC4CEF7;
	Thu, 29 Jan 2026 22:06:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769724377;
	bh=b2ZMwW9jycqWm23w/3M3dxj0g/3detk6ySJbpo65fNw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VDtPKr4A9FV1zVRxh7bvq0d1munpanuGiI315t1iLd8QqvhpqPUJ/q3pU4LlHbQTv
	 yy1NWyyx2rmC3v4CIRaqxPnYEHOLivefC6fht/2f9NgvXBewccpCytkY2V38OsPVsz
	 GTxQhh+2TPISR60iBitC6DymYEs6Z309DB0YWKMioacwe8UCPNcqKID5ME/5xVbQEM
	 x41mRDBivnyMUSD2cvvZ4VY0DIGoddydX9pOy5FnNDaALmu7jQYbpoIGWKaIJ1tG4/
	 Jk+YgQJZY/BzOwsjKBBEAbNnM7/zhUhjMF0qzarJikwMZLCEG/rh2J/A1sKkEWHRmX
	 hdZrtI4ETa/3g==
Date: Thu, 29 Jan 2026 23:06:13 +0100
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org, 
	Douglas McIlroy <douglas.mcilroy@dartmouth.edu>, "G. Branden Robinson" <branden@debian.org>, 
	=?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Subject: Re: New PARAMETERS section in manual pages (was: [PATCH v2]
 src/bin/mansectf, man/man1/mansectf.1: Add program and manual page)
Message-ID: <aXvXmSe50hi6DMu-@devuan>
References: <cover.1769497513.git.sethmcmail@pm.me>
 <c5da437ce6c8a41c4e5c26ee969170254b49dcab.1769626502.git.alx@kernel.org>
 <aXr1G4Y2VZZO0t3N@McDaDebianPC>
 <aXtuXfFTn2VjD5z3@devuan>
 <20260129202457.vuvhcbjp6e3x5g4n@illithid>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vh7j6tyu2tbj5agl"
Content-Disposition: inline
In-Reply-To: <20260129202457.vuvhcbjp6e3x5g4n@illithid>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5012-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[alejandro-colomar.es:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,dartmouth.edu:url]
X-Rspamd-Queue-Id: 32BFAB52DA
X-Rspamd-Action: no action


--vh7j6tyu2tbj5agl
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc: Seth McDonald <sethmcmail@pm.me>, linux-man@vger.kernel.org, 
	Douglas McIlroy <douglas.mcilroy@dartmouth.edu>, "G. Branden Robinson" <branden@debian.org>, 
	=?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Subject: Re: New PARAMETERS section in manual pages (was: [PATCH v2]
 src/bin/mansectf, man/man1/mansectf.1: Add program and manual page)
Message-ID: <aXvXmSe50hi6DMu-@devuan>
References: <cover.1769497513.git.sethmcmail@pm.me>
 <c5da437ce6c8a41c4e5c26ee969170254b49dcab.1769626502.git.alx@kernel.org>
 <aXr1G4Y2VZZO0t3N@McDaDebianPC>
 <aXtuXfFTn2VjD5z3@devuan>
 <20260129202457.vuvhcbjp6e3x5g4n@illithid>
MIME-Version: 1.0
In-Reply-To: <20260129202457.vuvhcbjp6e3x5g4n@illithid>

Hi Branden,

On 2026-01-29T14:24:57-0600, G. Branden Robinson wrote:

[...]
> > I've been wanting to add this section for some time.  It would make
> > the pages more schematic, which I think improves readability.
>=20
> I'd like to propose making it a _subsection_ instead.  Subsections are
> under-used in man pages, and for no good reason I can see (apart from
> not being documented in the man(7) page of the Seventh Edition Unix
> manual that introduced the package to the world).

I think I prefer a section.  PARAMETERS would be closer to OPTIONS than
DESCRIPTION.

> > What I wonder is wether it should go before or after the description.
>=20
> By making it a subsection, it can go _within_ the description, as early
> or late as makes sense.  In many cases, if you need a "Parameters"
> subsection at all, it should appear as soon as you need it--but no
> sooner.

I think I'll leave it for below the DESCRIPTION.  A problem with a
subsection is that it would force using subsections below it, if we want
to continue with the description.

We might change later.

> I personally feel that at least one paragraph of description orienting
> the user to the overall purpose of the page is a superior approach to
> presenting parameteric details before the context within which those
> details apply has been presented to the reader.

Agree.

> That is also why, in section 1 and 8 (and, strictly, 6) man pages, I
> prefer to put an "Options" section well down the page, after a full
> "Description", because often, an option's description can only make
> sense once the capabilities of the command have been explored.[1]

Agree.

> I think it would also be fine to either


> (a) not ape FreeBSD in this respect or

Sorry; non-native speaker here.  What does ape mean as a verb?

> (b) restrict this "Parameters" subsection to section 2 man
> pages, as the Linux system call interface is indeed huge and complex.
> The Standard C library, by contrast, has remained fairly manageable,
> with bsearch() the fattest cardinal chirping in section 3.

I agree to start with chapter 2.  I can't promise not continuing later
with chapter 3, but I agree it has significantly less priority.

> ...as far as I know.  You are well placed to know better.

:-)

> Regards,
> Branden
>=20
> [1] I acknowledge two schools of thought that disagree with me (usually
>     stridently) and with each other on this point.
>=20
>     A.  Ingo Schwarze thinks man pages shouldn't have "Options" sections
>         at all.  I suppose this viewpoint descends from the Rob Pike
>         "anti-cat-v" school of thought, which holds roughly that because
>         a Unix command should do one thing and do it well (a principle
>         articulated by McIlroy), then if you need a command to do a
>         different thing, you introduce a new command.  (While this
>         principle risks exhausting the 676-element set of ideal Thompson
>         Unix command names juxtaposing 2 lowercase letters, McIlroy
>         reports that Thompson's own usage patterns--not to say needs--
>         were satisfied by only about 100 commands.[2])

I tend to be on this side, but not too radically.  Some options are
necessary.

>     B.  A generally anonymous horde of man page users feel that the
>         "Options" section should start on the first screenful of text
>         they see in their pager, no matter what the dimensions of their
>         terminal window.  (Presumably, pressing the space bar demands
>         too much of the impatient hacker.)

=2E.. or the slash.

>	  This requirement can be
>         difficult to satisfy, and tends to promote the creation of a
>         subsequent "Usage" section, which is simply a continuation of
>         "Description" split asunder to accommodate the horde.
>=20
> [2] "As the [Unix] system grew to encompass facilities beyond any
>     individual's ken*, the task of organizing an ever-growing manual for
>     printing became increasingly daunting.  ... * Ken's ken was probably
>     the last to saturate.  At the time of v5 [1974], shell accounting
>     once revealed that Thompson had used 102 distinctly named programs
>     in the course of a week.  Nobody else came close."
>=20
>     https://www.cs.dartmouth.edu/~doug/reader.pdf

:D


Have a lovely night!
Alex

--=20
<https://www.alejandro-colomar.es>

--vh7j6tyu2tbj5agl
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAml72c8ACgkQ64mZXMKQ
wqnEqg/9FgmuHwK5Ud7X3jyVLMIJH3L+qH87XGU8qTgDT6hcfLAj77cIMnhavaEW
PtAPEboYCTFJYDEkWmBPTCBKj/508L0PAW/nT/USHjLKLIM+odiXrrMAadwwmmeC
GR4iPgEM/HTFu3zjJIdZgDgxP6yByXM6pwG46GnBC5yQTieGEE85J8LwXYWbyNET
lfSGWzsXq7NUIcSA6OWutMcZLrPvJ2bQXOKgc/NAGm76jDfsyogK4SSucCMrkwY8
mA1Ayo2HzFwKk7Tp+HwVH/+rdR09wfC8UuYYDDjqK8cTNjdvaTtIQJHN8nV/5ERd
jIorf3+9C2O26R+qAbsDwnzdoY/Mfw4H/5YMrQMB7LEi44FJ2LbZquBI/zJkw7CQ
fA4VMMyGx3X6SI3I+Syewzbw8jb8aB4qlF9solXr6Jaf6kx+dkyU4yLKENyPa9HS
zf9Yym+gVwoUfYog1O/oC8EIJrUj0/DyRAxske9PH8fc9/d7pNfRsksyWeajh8pj
0ImHrUsx+j1NMLDucfV/di/gOzR2oJ5Ahy+S3GdzJRHHWKsQqY0ZYU8JOlvekBNO
+IMRAdN3Ezy4rJRtV6qLW8ZyerxGvLQY2ILMrFMyBFgfCFLXDxYVWDfJRldYY44g
dEJrGoGENKt7EtyPlkDTfJh3yieV6jdXhZbrqwYzrQX0qmy3Gj4=
=IeMi
-----END PGP SIGNATURE-----

--vh7j6tyu2tbj5agl--

