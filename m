Return-Path: <linux-man+bounces-5729-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YzauKFv8UGo+9gIAu9opvQ
	(envelope-from <linux-man+bounces-5729-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 10 Jul 2026 16:06:19 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B61773B981
	for <lists+linux-man@lfdr.de>; Fri, 10 Jul 2026 16:06:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=COHUgDuB;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5729-lists+linux-man=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="linux-man+bounces-5729-lists+linux-man=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F2F0A303F65C
	for <lists+linux-man@lfdr.de>; Fri, 10 Jul 2026 13:55:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93F3024A044;
	Fri, 10 Jul 2026 13:55:36 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8F9245005
	for <linux-man@vger.kernel.org>; Fri, 10 Jul 2026 13:55:34 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783691736; cv=none; b=W4OKl9lubFXlfA9MtdH9N1a5YpNUFFc4qgFq6GzLh/rMzEShOBfSpiL3T2UNSgofL1aM8Y63LGqyyX14BS2dryszfzznuaH6Lz1RAtkVvl7z/2xnQ4fi36waN3TJOLoIdM0joRCT13kZZxe6Q300YUyMRFMg9GE8SolU8iLnBjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783691736; c=relaxed/simple;
	bh=VOxGwxdd3cQsQBfe9BwUfUfuXXmQOC52hlNaB3rQ6I4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=I7bukLhgGPa4JnIPEtGayJ1nLQJFhDJnSdRCc0eOEodL+NrJcvgdXd8pKrtNI1YbyomDXUexLdxQD5FoMmVPI+HtVwF1OfJP+4Gkls+N3Y/istj1nBonvGK+a3mb8SaQht+QkjBUwDTO3qDgQKSQYTfcjEtJQmEYRP68RhaIKZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=COHUgDuB; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 38BAA1F00A3A;
	Fri, 10 Jul 2026 13:55:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783691734;
	bh=tTp3Md0NM0xCx5vUQXnpCXZRn403JCJaTPKe+K+YIto=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=COHUgDuB+2XCOG7AppSRUFt3DLgT/0ENcJKz+1gjac2UI66Aj2J5uNibRuKTEQo8q
	 VuaZuy9TFYHw1dCwh4I5DFZBn+lAv7BeTnA85+bxdw7PFIdEkXOJXMpqDg0m5NH1G4
	 ye7QNUX9UDyfzl7LDLUZn0JgN8MTnXNYGCHKRg4iGQHdiUBVBJHZrxqCPdkPFze7SN
	 TMKUgYe6XemqNk0TXrMW3KgCsm7CFfo1rWHsvI+Rlk7StIQPDvcpc/gYBrK1RUtZDq
	 wqh+1uqR/VoueE9UULBfYqk6JIjE/fxmV9W4vzpfHnJJGyLrawfBD+rBCiYu5badVo
	 VmImZ4og9113A==
Date: Fri, 10 Jul 2026 15:55:30 +0200
From: Alejandro Colomar <alx@kernel.org>
To: Jan Engelhardt <ej@inai.de>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 3/4] console_codes.4: mention caveats for xterm's ESC ]
 50 command
Message-ID: <alD15mDndM01rrNu@devuan>
References: <20260708121458.46465-1-jengelh@inai.de>
 <20260708121458.46465-3-jengelh@inai.de>
 <ak5sM16sSOxLmWZo@devuan>
 <4qn8ns3s-44n1-r357-q351-r5p6pr15oq90@vanv.qr>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xxqjl5nt4ax2wjuh"
Content-Disposition: inline
In-Reply-To: <4qn8ns3s-44n1-r357-q351-r5p6pr15oq90@vanv.qr>
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
	FORGED_RECIPIENTS(0.00)[m:ej@inai.de,m:linux-man@vger.kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWO(0.00)[2];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5729-lists,linux-man=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0B61773B981


--xxqjl5nt4ax2wjuh
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
From: Alejandro Colomar <alx@kernel.org>
To: Jan Engelhardt <ej@inai.de>
Cc: linux-man@vger.kernel.org
Subject: Re: [PATCH 3/4] console_codes.4: mention caveats for xterm's ESC ]
 50 command
Message-ID: <alD15mDndM01rrNu@devuan>
References: <20260708121458.46465-1-jengelh@inai.de>
 <20260708121458.46465-3-jengelh@inai.de>
 <ak5sM16sSOxLmWZo@devuan>
 <4qn8ns3s-44n1-r357-q351-r5p6pr15oq90@vanv.qr>
MIME-Version: 1.0
In-Reply-To: <4qn8ns3s-44n1-r357-q351-r5p6pr15oq90@vanv.qr>

Hi Jan,

On 2026-07-08T21:03:01+0200, Jan Engelhardt wrote:
>=20
> On Wednesday 2026-07-08 17:29, Alejandro Colomar wrote:
> >>
> >> -ESC ] 50 ; \f[I]fn\f[] ST	Set font to \f[I]fn\f[].
> >> +ESC ] 50 ; \f[I]fn\f[] ST	T{
> >> +Set font to \f[I]fn\f[] (normally disabled; cf. the "allowFontOps" re=
source)
> >
> >Please replace "cf." by English words.
>=20
> But I was just following precedent:
>=20
> man-pages$ git grep '\be\.g\.'|wc -l
> 481
> $ git grep '\bi\.e\.'|wc -l
> 516
> $ git grep '\bcf\.'|wc -l
> 10
> $ git grep '\bN\.?B\.'|wc -l
> 0

There are still some uses, but we're trying to reduce them (and
especially, not add more).  See man-pages(7):

$ MANWIDTH=3D72 man man-pages | awk '/Use of e.g.,/,/^$/'
   Use of e.g., i.e., etc., a.k.a., and similar
     In  general,  the  use  of  abbreviations  such as "e.g.", "i.e.",
     "etc.", "cf.", and "a.k.a." should be avoided, in favor  of  suit=E2=
=80=90
     able  full  wordings ("for example", "that is", "and so on", "com=E2=
=80=90
     pare to", "also known as").

Compare the numbers with:

$ grep -rio for.example man/ | wc -l
585
$ grep -rio that.is man/ | wc -l
808
$ grep -rio compare.to | wc -l
2

> and the Linux kernel source for completeness:
>=20
> $ git grep '\be\.g\.'|wc -l
> 9582
> $ git grep '\bi\.e\.'|wc -l
> 7397
> $ git grep '\bN\.?B\.'|wc -l
> 235
> $ git grep '\bcf\.'|wc -l
> 165
>=20
>=20
> >Also, where is "allowFontOps" documented?
>=20
> The console_codes.4 manpage section that is being edited talks
> extensively about *xterm*, so it felt obvious that, if a term was
> unclear, the reader need look no further than into the xterm manpage
> to resolve his quest.

Hmmm, I'd append something like "in xterm(1)".  It's not much text, and
helps know where to search for its documentation.   wdyt?


Have a lovely day!
Alex

> In fact, the xterm manpage even declares what constitutes "dynamic"
> colors (now that I happen to look for that term which tripped me up
> earlier).
>=20
> Does that sound reasonable?
>=20

--=20
<https://www.alejandro-colomar.es>

--xxqjl5nt4ax2wjuh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEES7Jt9u9GbmlWADAi64mZXMKQwqkFAmpQ+dIACgkQ64mZXMKQ
wql2BA/9FMYn/5RcRkswVk0mpNlDH1hvfGL7UIhRJXsVEkVDPXtJGLCK3QoE3FwT
rsXAArv2c3XdMtiRcfv8FNako+U8VS9RYOu1Y5uHEOpFP302plKAXB5BAz2FowNL
J8tP9atEPLkSRjQb0ZRdMtBEbx6uKINzHkpQtcyZb7S6G7rMs2nyIWavyO4mVii5
ehfKOjoS0re74Lgm02KzLLVRi490ytfGcdTz4ndcaFLu6QmqvIwK2AzVyYLNSPmk
XNtGT9nOTdum2FnaStJEnw756bhDx1NvMtTDhLaPzBbze9n9xIHWDhed5UXebDSk
RAgD4K5/Z9j4cM7SrdEkAWbMzYhPL/ofhffsG4ir9Ce9dIL25lT6ZSOBYTxzM7/g
yvKym/CpJ+4VReY5R7GjYp+Y1wHeb3TIjLV7IRzmnaWjmYOBtVLOWub4UyztIPl7
4RRJciGoOiUZkW2Ns+8OImeKn6bo8a4CiaQG9FGkJ7A31wLFpV60dW4gCzvBZ+xs
6y4PnipDloahf+Lqs4RsXCN3UWsyqGLxDgEFItZl8qc/lR30cMR0mopbW3cqtJ4b
vemGBezz8Di1QP1mbF4a/viXVzVU03FwF97qbjNQTfUhOJC9UFQYlpprDsadFuRU
t6nWpBMXRhxwG/ShagiU4qrSxp4e+bwY5mcAJAuPxXTgUVE57ag=
=2k4M
-----END PGP SIGNATURE-----

--xxqjl5nt4ax2wjuh--

