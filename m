Return-Path: <linux-man+bounces-5758-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wBNsJrWBV2o6TgAAu9opvQ
	(envelope-from <linux-man+bounces-5758-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 15 Jul 2026 14:48:53 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E97E275E54F
	for <lists+linux-man@lfdr.de>; Wed, 15 Jul 2026 14:48:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=SmfkHeHH;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5758-lists+linux-man=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="linux-man+bounces-5758-lists+linux-man=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 64C903008759
	for <lists+linux-man@lfdr.de>; Wed, 15 Jul 2026 12:47:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C30747AF4B;
	Wed, 15 Jul 2026 12:47:42 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504D03F4112
	for <linux-man@vger.kernel.org>; Wed, 15 Jul 2026 12:47:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784119660; cv=none; b=hfQrDf1HT1RfhsisciRMjkX3Y8R1V4x/71CktuyUxdIM4FDjOcldC0pgF2yRFkaV7kq0+uAdJRZgcs4KdYKPwc9nGH3CnBk1P2wAzqyS6SKZ7OZyeYi81ZOyVvJC77CuzThLYQI4zIIVxRfF6TRdmGCXG4SWeAEk1THpebnKYqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784119660; c=relaxed/simple;
	bh=WMZE+Ag8ElbCfPy5X2vXSNjTE7ILtEnTtJ77k+BDsGc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CGSyre5gPES62G/5EVuK64bTB+VEoUYFASrbklUk9xTTJcZnoIg6LAqS2maysJv48VvROcWGZwh54zfM6mi/0ImP2r3uBtnG8zkKX0YVH4lvvk92BqPZiTNNAG6C6ZrqVEKJ/pqsvJ0cuwdSxkh6SbZQO8hbdD6hx+597bmh3bU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SmfkHeHH; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A9A0A1F000E9;
	Wed, 15 Jul 2026 12:47:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784119649;
	bh=7+MT9DZCiuU1u59yM64JNv+wxK6WJvOIOd7C3iiITzk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=SmfkHeHHRjMy4PFSgcgYpGfc9NZhMOCta1H8nyzDYIjJQfp9Y/iqCiSOyIIxSzew+
	 ZluHoyVRAQ2ut3Gia1MXeKTdczlBJ47j8g7rAUcLdbIxyEaM7Mqhw1j/WTHc5i2MqO
	 3K4IxMSVlNRggOSY1e7R87JrzcAh4mA1/uKCAnhjU8bvrSUl5fA97/AZLgH3gKGrlN
	 sqeuCDEyebom4NbFx5leGNXJmAzjamwx7m0H2AJcg5IQh93IZ3Nx4rawNJf3sBFXaJ
	 JYWOfxMsedLFjsJBORXwc0mdQ7xAV13GbVi39QNTJYY+39GqMYbumqPGvFFcbskNyJ
	 UGR2IDX30jCsw==
Date: Wed, 15 Jul 2026 14:47:25 +0200
From: Alejandro Colomar <alx@kernel.org>
To: DJ Delorie <dj@redhat.com>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>, 
	linux-man@vger.kernel.org
Subject: Re: man/man8/ldconfig.8: document system-wide tunables
Message-ID: <aldxiBVva99diG5t@devuan>
References: <20260714065637.gzccx2gluxfa2cen@illithid>
 <xnzezt6kwo.fsf@greed.delorie.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="giguvegqnvqapqs6"
Content-Disposition: inline
In-Reply-To: <xnzezt6kwo.fsf@greed.delorie.com>
X-Spamd-Result: default: False [-6.76 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5758-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_RECIPIENTS(0.00)[m:dj@redhat.com,m:g.branden.robinson@gmail.com,m:linux-man@vger.kernel.org,m:gbrandenrobinson@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devuan:mid,alejandro-colomar.es:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E97E275E54F
X-Rspamd-Action: no action


--giguvegqnvqapqs6
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: DJ Delorie <dj@redhat.com>
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>, 
	linux-man@vger.kernel.org
Subject: Re: man/man8/ldconfig.8: document system-wide tunables
Message-ID: <aldxiBVva99diG5t@devuan>
References: <20260714065637.gzccx2gluxfa2cen@illithid>
 <xnzezt6kwo.fsf@greed.delorie.com>
MIME-Version: 1.0
In-Reply-To: <xnzezt6kwo.fsf@greed.delorie.com>

Hi DJ,

On 2026-07-14T22:34:15-0400, DJ Delorie wrote:
> "G. Branden Robinson" <g.branden.robinson@gmail.com> writes:
> > That link remains a good pr=C3=A9cis of the problem.  One could show up=
 my
> > man(7) composition abilities and earn my gratitude by solving that
> > constraint problem using only macros from the package.  :)
>=20
> We already process all the raw files to fill in the date and version.

The TH line is already special, so filling the date and version is
relatively easy.  It's in the file "share/mk/build/man/nonso.mk":

$(_NONSO): $(_MANDIR)/%: $(MANDIR)/% $(MK) | $$(@D)/
	$(info	$(INFO_)SED		$@)
	<$< \
	$(SED) "/^\.TH /s/(date)/$$($(MANPAGEDATECMD))/" \
	| $(SED) '/^\.TH /s/(unreleased)/$(DISTVERSION)/' \
	| $(SED) '/^\.Dd /s/$$Mdocdate$$'"/$$($(MANPAGEDATECMD))/" \
	| $(SED) '/^\.Os /s/(unreleased)/$(DISTVERSION)/' \
	>$@

> Add the .in macros around .EX there?

But we'd need to know where to add them.  There are cases of EX/EE that
don't need to be surrounded by '.in' (otfen, those that take an entire
section, but also those in SYNOPSIS).  Maybe we could have a full list
of exceptions and write a stripy for that, but...

Also, the manual pages should be readable in the form they exist in the
repository (and match as much as possible how it will render when
installed).  That makes it easy to see if a change works, by running
man(1) on the source code.  If we had to build the pages before being
able to read them, it would add some friction to contributors reading
what they write.

> There are 1528 .EX's in the tree, but a short perl script should be able
> to fix them all up.  Note: there are 336 .EX's that do not have the .in,

I guess those are all (or most) in EXAMPLES and SYNOPSIS.

> and two .EX's that do not have a closing .EE.

Hmmm, indeed:

	$ diff -u \
		<(find man/ -type f \
			| sort \
			| xargs grep '^\.EX$' \
			| sed 's/\.EX/.EE/') \
		<(find man/ -type f \
			| sort \
			| xargs grep '^\.EE$');
	--- /dev/fd/63	2026-07-15 13:39:48.230169833 +0200
	+++ /dev/fd/62	2026-07-15 13:39:48.230169833 +0200
	@@ -140,7 +140,6 @@
	 man/man2/io_submit.2:.EE
	 man/man2/io_submit.2:.EE
	 man/man2/ioctl_eventpoll.2:.EE
	-man/man2/ioctl_eventpoll.2:.EE
	 man/man2/ioctl_fsmap.2:.EE
	 man/man2/ioctl_kd.2:.EE
	 man/man2/ioctl_kd.2:.EE
	@@ -1460,7 +1459,6 @@
	 man/man7/string_copying.7:.EE
	 man/man7/string_copying.7:.EE
	 man/man7/string_copying.7:.EE
	-man/man7/string_copying.7:.EE
	 man/man7/string_copying.7:.EE
	 man/man7/string_copying.7:.EE
	 man/man7/string_copying.7:.EE

Hmmm, this sounds like a good linter that I should add to the build
system.  I can make it general for all macros that must always come in
pairs.

BTW, Branden, I expect this would have been diagnosed by either groff(1)
or mandoc(1).  Why isn't it?

I've pushed a fix for EX/EE pairs.

	commit 4d872e2747885ee2ae6139b9bc78cc3123392b72
	Author: Alejandro Colomar <alx@kernel.org>
	Date:   2026-07-15 13:42:14 +0200

	    man/: srcfix
	   =20
	    Add missing closing EE for EX.
	   =20
	    Reported-by: DJ Delorie <dj@redhat.com>
	    Signed-off-by: Alejandro Colomar <alx@kernel.org>

I've checked that no other pairs of man(7) macros are not balanced.

	$ find man -type f | xargs src/bin/lintman-pairs=20
	--- /dev/fd/63	2026-07-15 14:42:44.957949101 +0200
	+++ /dev/fd/62	2026-07-15 14:42:44.957949101 +0200
	@@ -668,7 +668,6 @@
	 man/man7/string_copying.7:.EE
	 man/man7/string_copying.7:.EE
	 man/man7/string_copying.7:.EE
	-man/man7/string_copying.7:.EE
	 man/man7/user_namespaces.7:.EE
	 man/man7/user_namespaces.7:.EE
	 man/man7/user_namespaces.7:.EE
	@@ -1313,7 +1312,6 @@
	 man/man2/epoll_wait.2:.EE
	 man/man2/epoll_wait.2:.EE
	 man/man2/ioctl_eventpoll.2:.EE
	-man/man2/ioctl_eventpoll.2:.EE
	 man/man2/landlock_restrict_self.2:.EE
	 man/man2/sendmmsg.2:.EE
	 man/man2/sendmmsg.2:.EE

Where the script is:

	$ cat src/bin/lintman-pairs=20
	#!/bin/bash
	#
	# Copyright, the authors of the Linux man-pages project
	# SPDX-License-Identifier: GPL-3.0-or-later

	set -Eefuo pipefail;


	err()
	{
		>&2 printf '%s\n' "$(basename "$0"): error: $*";
		exit 2;
	}


	if test $# -lt 1; then
		err "Missing files.";
	fi;
	files=3D"$@";


	check_pair()
	{
		diff -u \
			<(grep "^\.$1\>" /dev/null $files | sed "/\.$1\>/s/:.*/:.$2/") \
			<(grep "^\.$2\>" /dev/null $files | sed "/\.$2\>/s/:.*/:.$2/");
	}


	check_pair 'EX' 'EE';
	check_pair 'MT' 'ME';
	check_pair 'RS' 'RE';
	check_pair 'SY' 'YS';
	check_pair 'UR' 'UE';


> Turns out Gemini is good at perl.

Please don't use LLMs for contributing to this project.  The file
"CONTRIBUTING.d/ai" contains our guidelines for their use, which
essentially says it's not allowed.

> Anyway, doing this as a postprocessor would let us purge the hacks and
> make .EX/.EE properly semantic again, while retaining our desired
> appearance.  It's also one more bit of folklore new authors won't need
> to learn ;-)


Have a lovely day!
Alex

--=20
<https://www.alejandro-colomar.es>

--giguvegqnvqapqs6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmpXgVcACgkQ64mZXMKQ
wqkCGRAApuDrz9nJfxHd4uxURhxphDewEYxFcToxJUF9c+nE8XD9snZsAeGy9LnR
fx//ZjKAAiOUkN+FmxsUMSAwog1FknknO7X4p5Cu9VdlZAIG/JJXMacMhANCgZPn
iJHxnOHXuOdDRiLsAE/LicZn6B97vXCQezCeoZcsTg7Mkj+wBMjGfLGu8Fy/JEcM
aZna1LmPjDq0fORFm6w4sXiXU+4dxG/2EkxVgTvEcUMnumJn5NIcX1j83eRLO1t7
ez1cmEQSokub0brMI7n5Nb+0acT76ao4LnHqw1chsNsJjOisPyASm/MJfX3HVuFz
AI9FoJgy9ilCgi2Igjf1sF8rrrftmjOXSJCEQwnqtPcIs62f89eUsj3b4MNyElsF
MRd5WPtArBMWF/o6mjvKQytlGV8D24w1f9yt+D2lkUk440fvHonv1pa803lmHseY
Q8p6FFQgq4p1kUQ1OGBWphOs/LLKJmLW9kkBWn2ILNj+1cUUELctvOjHooEYGmL4
KnzqevhDDRcFY1OjQ4tWmISU8JwlbOoBd3J70ZHL3wUekmRXsN3/FGylyHiDntJb
Ny1LfsOBKxVly+5waAY4b1v7rWeMVNMBhrMY2j3obOGLvJf/Kw7f6h7WJI8LZ6ru
Dn46ahocAcy6uJ6cFg+Rvk0ZjfnXx/30xo1Q5jmk7fODM3CnWys=
=DU2s
-----END PGP SIGNATURE-----

--giguvegqnvqapqs6--

