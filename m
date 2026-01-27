Return-Path: <linux-man+bounces-4963-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GDB0B8uDeGmqqgEAu9opvQ
	(envelope-from <linux-man+bounces-4963-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 27 Jan 2026 10:22:19 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 38CE791A0F
	for <lists+linux-man@lfdr.de>; Tue, 27 Jan 2026 10:22:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4C86F30329B3
	for <lists+linux-man@lfdr.de>; Tue, 27 Jan 2026 09:20:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 491812D5A01;
	Tue, 27 Jan 2026 09:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b="N7W3QmeI"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-4322.protonmail.ch (mail-4322.protonmail.ch [185.70.43.22])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC6526CE39
	for <linux-man@vger.kernel.org>; Tue, 27 Jan 2026 09:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.43.22
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769505635; cv=none; b=Mbo6j9pfFYuN7zuL2lv2Y4Tjc2VO/v08lKsM7S2ShNxbdoJvR9kOVZZfOVCfiI1YHuHzit4YwPOe8mPi0oZBjjZmCw0sC/OQc0xy7c950HGlxb8ffFGdkgNQ039YxMLk/U2GQ3T3BzSCV4jCaCz/TXW/GUwVXVZMUsyK1gjceuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769505635; c=relaxed/simple;
	bh=dooSGJraypkG0aZvw8+CEcIqak8UJqPHZ0Vboxv6iN0=;
	h=Date:To:From:Cc:Subject:Message-ID:MIME-Version:Content-Type; b=XS7xEjo/vkTwpULn9FqtIlBuHNXjxbn0ep7OgkXm2V8fg1nWbypZ+FEhb/OARs+u8Cp3NHogr3WTGzUnHM7pPE8gNzb/gTE1GhhmgdUAIvxVyUcC+kPy13Rg2O7IbbKj5UUnjL/aPiNt9DD4RylITwXl/D2qNuHUQYBu4+ciC/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=N7W3QmeI; arc=none smtp.client-ip=185.70.43.22
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1769505631; x=1769764831;
	bh=HgpJdxbpDEeL8CRH+cqP/t8B4NQ4MFe1KN/p/pFcZLE=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=N7W3QmeIShl3wBznVCunALbLh4nPNljlvcdQJDbPsqb2xm19u97KbELWx3wTv+lkt
	 l4xmXTr8GA1oxg9dxRq2UgrCSNxDHfQjO40i6E+FYjpIHvAmhPFlhrJvXDvJZ1G0et
	 FDDbgv0Nk1xbc8SODQddkm+sFMKtYXfdlfpFymMY0AFs8AOhpLAU8Lj+AU5TsqHqUb
	 jAhNXziux4TdeJzhsoBwwl9iTPvxp2ASXqbN8LOkJ3bMU38XHOm7X4JS7j2wj2eTSY
	 n4xR3sxDM/uqunbUwgVwi3SkoPBL3Wt+Ww4gUJmzyjcXdlSVhQdCIN1O2ePdzRtRIA
	 nGuH5t2mTqfdw==
Date: Tue, 27 Jan 2026 09:20:26 +0000
To: Alejandro Colomar <alx@kernel.org>
From: Seth McDonald <sethmcmail@pm.me>
Cc: linux-man@vger.kernel.org
Subject: [RFC PATCH v1 0/2] New sman(1) script
Message-ID: <cover.1769497513.git.sethmcmail@pm.me>
Feedback-ID: 171233811:user:proton
X-Pm-Message-ID: 54d13ab71c4ca784b0c6a99ece5f74f84c83888f
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pgp-signature"; micalg=pgp-sha256; boundary="------a27bf7b4e197f6e197486183a84cc32e0bc4aec9bda10cb48c4b93737f97a0d4"; charset=utf-8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[pm.me,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-4963-lists,linux-man=lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[pm.me:+];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sethmcmail@pm.me,linux-man@vger.kernel.org];
	HAS_ATTACHMENT(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pm.me:mid,pm.me:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 38CE791A0F
X-Rspamd-Action: no action

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--------a27bf7b4e197f6e197486183a84cc32e0bc4aec9bda10cb48c4b93737f97a0d4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [RFC PATCH v1 0/2] New sman(1) script
Date: Tue, 27 Jan 2026 19:20:16 +1000
Message-ID: <cover.1769497513.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0

G'day,

When parsing man pages, I've noticed I'm often only interested in a
particular set of sections within the page (e.g. SYNOPSIS, HISTORY).
And since skimming through the page to get to these sections can get
monotonous, I wrote up a small bash script to automate the process.

As far as I can tell, no program in src/bin/ can currently do this.  The
closest is mansect(1), but that outputs the source code rather than the
rendered page.  So I've improved the script somewhat and written a brief
man page for it, as included in this patch set.

The main advantage to this script as opposed to manually awk(1)ing or
sed(1)ing man pages is it can preserve the bold/italic formatting in a
rendered man page.  It currently does so by using sed(1) to locate the
section headers with regex which includes the relevant ANSI escape codes
dictating bold and regular text.

I would consider this script a WIP still, and likely shouldn't yet be
pushed without further edits.  The purpose of this patch set is to gauge
interest in and comments on this script, moreso than to be immediately
applied to the repo.

As an example, the script currently re-renders the whole man page for
each section in a for loop, rather than printing each section from the
same rendered page, which would likely be more performant.  I also named
the script sman(1) primarily because I can't think of a better name.

Feel free to give your thoughts!

Seth McDonald (2):
  src/bin/sman: Add script
  man/man1/sman.1: Add man page

 man/man1/sman.1 | 69 +++++++++++++++++++++++++++++++++++++++++++++++++
 src/bin/sman    | 54 ++++++++++++++++++++++++++++++++++++++
 2 files changed, 123 insertions(+)
 create mode 100644 man/man1/sman.1
 create mode 100755 src/bin/sman

Range-diff against v0:
-:  ------------ > 1:  d093a884e5fb src/bin/sman: Add script
-:  ------------ > 2:  e1849d315c95 man/man1/sman.1: Add man page

base-commit: 6754bd1a126ed1e9b7d9c2bc1d221681f5182bb3
--=20
2.47.3


--------a27bf7b4e197f6e197486183a84cc32e0bc4aec9bda10cb48c4b93737f97a0d4
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: ProtonMail

wqsEARYIAF0Fgml4g1kJkFg5atiSQ9NpNRQAAAAAABwAEHNhbHRAbm90YXRp
b25zLm9wZW5wZ3Bqcy5vcmdHxP2QrI8C4FwgO/1EdYWOFiEEIzbo0v6xUwBp
LGKpWDlq2JJD02kAABd4AP9nlKss68YTRgibvUGLcXNiOYwaS7JXioc9cYCa
4fpETAEAoxwME28MG5P1a2cHN6934EdBuHWEhykgzvVhIk9kyA8=
=Y0wi
-----END PGP SIGNATURE-----


--------a27bf7b4e197f6e197486183a84cc32e0bc4aec9bda10cb48c4b93737f97a0d4--


