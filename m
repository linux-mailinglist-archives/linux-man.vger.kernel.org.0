Return-Path: <linux-man+bounces-4987-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2KQCCNEiemmv2wEAu9opvQ
	(envelope-from <linux-man+bounces-4987-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 15:53:05 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 70D50A343F
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 15:53:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4778130B549C
	for <lists+linux-man@lfdr.de>; Wed, 28 Jan 2026 14:47:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E172361DB8;
	Wed, 28 Jan 2026 14:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ODf1ULSL"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3414034A797
	for <linux-man@vger.kernel.org>; Wed, 28 Jan 2026 14:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769611629; cv=none; b=dFylrbw6v4eFG5nJArNSXPO096ehwmHSQEXMKETW6AgNNLro5LzasMT8UZ3Yekc2tqJ1HGfcM5FITqcWG5fKl1BlSkAE1BmOmb3v7tmzGlP0goQ177muZMP7UM8ejlXdfvyCqkDgc9pF/x9CFXld0pNRuzSH9u+9nuGaiEDO35Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769611629; c=relaxed/simple;
	bh=2AirEJvtOqKt9U3/kYSwHT4so9mZ2ODuSbWiTxo6Jck=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LxZrB5mKR2qgm1vO5Ylba7rnJC5v7uH2na77r1lbjiARCPnl8EA4qW/hKy8xCl4nHG8mu3fPV9NOYGxmF4quu5EKmhJC4nH2xwnOdY98X6bEHEHten9FY5CK7AbAQxmITzjYzIolOOgcr7gWECytNvwOSh6db0x+pS2ZAE6I/d8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ODf1ULSL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 87E73C4CEF1;
	Wed, 28 Jan 2026 14:47:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769611628;
	bh=2AirEJvtOqKt9U3/kYSwHT4so9mZ2ODuSbWiTxo6Jck=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ODf1ULSLjueGzYESa2pyyLL6g2ughhOxrW4g/tQ2ejEjrPHWcW88ygZ5rLQljeDh3
	 jln6PNh/fMyGHQyggkXQaPC2TH0+RAw3L9xIog8Lf3ATiXIqovsEXyEPh3v5T9/xix
	 +uqWCjYoSapbkPlOyXV90hNZPbYYK07+m2S4aVemLC7mjqCBWt2ntTN8TSF6oYE5/n
	 GWUpTS3AzpT/m56RRxpImlQ65qpMSKVKz9Y6s18ScCMZ5GCHWpou9f4MSN2et8Yfkc
	 RoCNUtIIq3oYAagmjtmQSiAkaqj9zGwYtDOKO+enNNu65tfdfjad4CSxOw1OFg1K5e
	 Oa+QLGcL5RFBw==
Date: Wed, 28 Jan 2026 15:47:05 +0100
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org, 
	Douglas McIlroy <douglas.mcilroy@dartmouth.edu>, "G. Branden Robinson" <branden@debian.org>, 
	=?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Subject: Re: [RFC PATCH v1 0/2] New sman(1) script
Message-ID: <aXoe53s-QgwEjQ37@devuan>
References: <cover.1769497513.git.sethmcmail@pm.me>
 <aXixqbsZcY-tbCJ4@devuan>
 <aXmUPal6Owzv8eDr@McDaDebianPC>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="p4jdl23ce6sdctlf"
Content-Disposition: inline
In-Reply-To: <aXmUPal6Owzv8eDr@McDaDebianPC>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-4987-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,alejandro-colomar.es:url]
X-Rspamd-Queue-Id: 70D50A343F
X-Rspamd-Action: no action


--p4jdl23ce6sdctlf
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org, 
	Douglas McIlroy <douglas.mcilroy@dartmouth.edu>, "G. Branden Robinson" <branden@debian.org>, 
	=?utf-8?B?0L3QsNCx?= <nabijaczleweli@nabijaczleweli.xyz>
Subject: Re: [RFC PATCH v1 0/2] New sman(1) script
Message-ID: <aXoe53s-QgwEjQ37@devuan>
References: <cover.1769497513.git.sethmcmail@pm.me>
 <aXixqbsZcY-tbCJ4@devuan>
 <aXmUPal6Owzv8eDr@McDaDebianPC>
MIME-Version: 1.0
In-Reply-To: <aXmUPal6Owzv8eDr@McDaDebianPC>

Hi Seth,

On 2026-01-28T04:44:53+0000, Seth McDonald wrote:

[...]
> > > As far as I can tell, no program in src/bin/ can currently do this.  =
The
> > > closest is mansect(1), but that outputs the source code rather than t=
he
> > > rendered page.
> >=20
> > You could use mansect(1) for that, and pipe it to man(1) (or groff(1)).
>=20
> I honestly have no idea how that never crossed my mind.  Seems so
> obvious in retrospect lol.

:-)

[...]
> > > As an example, the script currently re-renders the whole man page for
> > > each section in a for loop, rather than printing each section from the
> > > same rendered page, which would likely be more performant.
> >=20
> > I honestly can't read that script.  My ability to read other people's
> > bash(1) scripts is quite limited.  :)
>=20
> Very fair.  There's just something about shell scripts that make them
> particularly difficult to parse imo.

I think tend to have more issues reading scripts that use shell features
other than pipes.  Scripts that do 'foo|bar|baz|asd|fgh' tend to be
quite readable.

> > About the interface, I think I like more the interface of mansect(1),
> > which is
> >=20
> > 	mansect section [file ...]
> >=20
> > I think that's ideal.  We don't need an argument like man(1)'s -s,
> > because that would be more easily specified as
> >=20
> > 	mansectf LIBRARY printf.3;
> >=20
> > The .3 disambiguates without needing a separate argument.  However,
> > I don't think we want to do librarian work here, and think we should
> > entirely refrain from accepting manual page names like man(1).  I think
> > we should only accept file names.
>=20
> I modelled the interface after man(1) because I assumed that would be
> more familiar.  But I'd certainly be down for an interface like
> mansect(1)'s if that's preferable.

A benefit of mansect(1)'s interface is that it can be used on a
directory:

	mansect HISTORY man2/

And it works on all files under that directory.  I've found that to be
quite useful.

[...]
> > And then about the main work, it can be done by calling mansect(1) in
> > a pipeline.
> >=20
> > With that in mind, I've written my own approach, which I've called
> > mansectf.
> >=20
> > 	$ cat src/bin/mansectf;
> > 	#!/bin/bash
> > 	#
> > 	# Copyright, the authors of the Linux man-pages project
> > 	# SPDX-License-Identifier: GPL-3.0-or-later
> >=20
> > 	set -Eefuo pipefail;
> >=20
> > 	mansect "$@" \
> > 	| man /dev/stdin;
> >=20
> > Does this work for you?  I look at it and wonder if it's worth
> > a separate script, but then it might be useful for people who are less
> > experienced with man(1).  To be fair, few people know that man(1) can
> > accept stdin, and even if they know, sometimes convenience wrappers
> > improve readability: for example, printf(1) is unnecessary given that
> > fprintf(3) exists, yet it's thoroughly used and I find it essential.
> >=20
> > 	printf("foo");
> > 	fprintf(stdout, "foo");
> >=20
> > So, I think such a thin wrapper can have its place, as it's the main use
> > case of mansect(1).
>=20
> This would be perfectly suitable, at least for my use cases.  I also
> think mansectf is a *much* more apt name.

Nice!

> All in all, I also think the best option here is a thin wrapper over
> mansect(1).  The main benefit being that it would simplify many use
> cases of mansect(1) without adding an unreasonable amount of complexity.

Yup.

> Also, if we were to add mansectf, I would probably opt for adding it to
> mansect(1)'s man page, rather than giving it its own page.

I think I'll write a separate manual page.  I tend to dislike pages that
document more than one API, with few exceptions.  Exceptions are for
example modf/modff/modfl, where the only difference is the type.

> (P.S. While I'm nowhere near an expert on Unix shells, I honestly feel
> like I've learnt more about their use from these email exchanges than
> most other sources.  So thanks for that. :) )

You're welcome!  :-)

(FWIW, I also learnt to write good shell scripts in this mailing list;
 especially, preparing scripts for applying global changes to the manual
 pages, and for finding inconsistencies in manual pages.)


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>

--p4jdl23ce6sdctlf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAml6IWMACgkQ64mZXMKQ
wqmnbxAAnUpfdWRMTmpLqCiQ59WRrN+av2Nh0ZC+AVPB0iQHIdVf5rSE1Ugzt4r2
adSmrSP1rp+YPigWjdtpk8QbzLa4FH2qJo/XccCNIBuZRBsl5DnYyk4bdERWw7I9
qhhQRxH4wMNTdcvMKhXYfWG+rS3sFilEtY30OKjGk1EqkvGlEKF/j4dGGra0dV32
8sU0AfnzBnUQO9o/COt2gHxx55EZAYKy4GnrdFv2OsZnlDctRJYE2E0PbA/0FKD5
EmwdftGdPBvNSp6cxVQTCumCweT+kFP7xCarUPn4Cj/kp9MeJFejh6wDPmktiG5a
m0nlAeQKyvvdHW7CbfkaRmQyS8/E3x3qz/KT7mh6kmL+TVO2N297PHp9rMgGAKk7
Is10BO1j84Kc3wGMFHru4FPSXAwpAcyHhkS55NXvSVq79werGNjwOXKuUIIPRXzv
o7f90clmrKxyL6XkzM1OuXuRVh53E/jAy6ySAwaoWDzHThOURMt6bqWHSoSEfIaU
bFb2NjrBU55TjB0Lmr/tuGM5h3+r6ZGFK1+sJgYsOi/AcLtA3l+cy/ERH1KEJVbZ
LB6xGaZvsFdF8nLd6d3mv4U0o7QLV6Awu+fDxh99FV7ItvPfBVpmYftgrqXk4s7M
x/DY4SEoeZHyiwsXwUhxyDfaamBkM4uRRg0P1xf0qaDgD1cKqG8=
=NbC/
-----END PGP SIGNATURE-----

--p4jdl23ce6sdctlf--

