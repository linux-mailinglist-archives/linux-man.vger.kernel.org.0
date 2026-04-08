Return-Path: <linux-man+bounces-5305-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0MuLFGkd1mluBAgAu9opvQ
	(envelope-from <linux-man+bounces-5305-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Wed, 08 Apr 2026 11:18:33 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B9743B9C0B
	for <lists+linux-man@lfdr.de>; Wed, 08 Apr 2026 11:18:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5A351300988F
	for <lists+linux-man@lfdr.de>; Wed,  8 Apr 2026 09:18:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10708390220;
	Wed,  8 Apr 2026 09:18:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oI8IPQUl"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6DB4396B8B
	for <linux-man@vger.kernel.org>; Wed,  8 Apr 2026 09:18:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775639908; cv=none; b=eD6C0SGax8rAEaRutN1Rg4bX/+Ur96Nwd/YYDhdmIfYxLXqw09diVY92c94JpWukGaXdU5mA36ou2fRz5jONf75p7DUE6+vE44FknyhEcn49yhRfuH8oenTvsTtWrF/TXNYId+e+hkHN5R7fIKqpocIr8Jewqnks8tkg3YE0Kx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775639908; c=relaxed/simple;
	bh=fQZ+bcjSAMW5rCdEwkLKzqXYQaTvM7b3prkFlhzCnFk=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=mB5w4fX1Ts2uqC9h+OjRq+nTIkQAON0cEuWs/bya+I5ncA1flEe2hEOmg0ec+iv1io4ZZ5fvKbS1B6zsiSdq8SjfePN1rUlP1Wo2H0Wi9kzsNmO1rFQDqDIEcOjUYmQN9cVUTG9V5aAQbX5uuk+rINCVxb20JUja3bm9jrpOX14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oI8IPQUl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C32FEC19421;
	Wed,  8 Apr 2026 09:18:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775639908;
	bh=fQZ+bcjSAMW5rCdEwkLKzqXYQaTvM7b3prkFlhzCnFk=;
	h=Date:From:To:Cc:Subject:From;
	b=oI8IPQUl0h/vZthz59SKgrmSvployuQrN+ZIbjjMI9CZ9+u+dE1oBiAa02E0NA7iK
	 cq12yryq53CDOinCf/Py6U/LSHD91RTKrXRehAodjbJOkiHcitidQhia2NA+AETAjF
	 HZgbitgjr2OQcoFjUjWvTQk5PCXPVvmimfQAK7bhxl61QT0Dkxc7hJ8drf/vDq1cDt
	 fbVM6dKJEUqJm6aNzqWODs95Um2Fe7pVY60cOi35jC12WbFj40F41Nh8F+5j0qk/aW
	 MotAXh3XaJ6oOaOpk5EgZuBbpi3ur/G+B82mackdXMoQoZ1EprSTiZXME68JUsx28P
	 4cmd20t2Kok/g==
Date: Wed, 8 Apr 2026 11:18:24 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, Guillem Jover <guillem@debian.org>, 
	linux-aio@kvack.org
Subject: [PATCH v1 0/6] Split io_setup(3) from io_setup.2.
Message-ID: <cover.1775639353.git.alx@kernel.org>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5305-lists,linux-man=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 2B9743B9C0B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi!

I plan to split documentation of io_* system calls from their libaio
wrapper (which will be moved to io_*(3), as they're library functions).
I'm CCing linux-aio@, just so they're aware, and Guillem, which seems to
be the maintainer of the Debian package.

If you (libaio) want to get ownership of the man3 manual pages I'm
creating, feel free to steal them.  If you prefer that I keep them in
this repo, that's fine too; I'm happy to keep them.

I have made sure to not duplicate information, so for example
io_setup(3)'s ERRORS refers to io_setup(2).  I don't care too much
whether io_setup(3) should refer to io_setup(2) or vice versa, so for
now I've made io_setup(3) defer to the system call (as that's the real
source of truth).  If you have a preference, please let me know.

I have left ctx_idp undocumented in the libaio wrapper, because other
than having a different type (which is visible in the synopsis), I don't
know anything about it.  I can see that the system call documentation
doesn't apply, because by being a pointer to an incomplete structure,
users can't bzero(3) it.  So clearly, the documentation that applies to
the system call doesn't apply to the wrapper (one of the strong reasons
to split the manual page).

This sample patch set only touches io_setup(2/3), but I may/will do this
with other io_*(2) APIs implemented by libaio.  I'm even considering it
for some pages that document significant differences between system
calls and glibc wrappers.

Any comments?


Have a lovely day!
Alex

Alejandro Colomar (6):
  man/man2/io_setup.2: Reduce parameter name
  man/man2/io_setup.2: Update reference (proc(5) => proc_sys_fs(5))
  man/man2/io_setup.2: ERRORS: Split EINVAL
  man/man2/io_setup.2: ERRORS: It is *ctx_idp that must be initialized
  man/man2/io_setup.2: Use syscall(2) in the SYNOPSIS
  man/man*/io_setup.[23]: Split io_setup(3) from io_setup.2

 man/man2/io_setup.2 | 84 ++++++++++++++++-----------------------------
 man/man3/io_setup.3 | 40 +++++++++++++++++++++
 2 files changed, 70 insertions(+), 54 deletions(-)
 create mode 100644 man/man3/io_setup.3

Range-diff against v0:
-:  -------- > 1:  6e23fd87 man/man2/io_setup.2: Reduce parameter name
-:  -------- > 2:  978c3109 man/man2/io_setup.2: Update reference (proc(5) => proc_sys_fs(5))
-:  -------- > 3:  28e8dc04 man/man2/io_setup.2: ERRORS: Split EINVAL
-:  -------- > 4:  31b6dec8 man/man2/io_setup.2: ERRORS: It is *ctx_idp that must be initialized
-:  -------- > 5:  7811fd45 man/man2/io_setup.2: Use syscall(2) in the SYNOPSIS
-:  -------- > 6:  c6fcae43 man/man*/io_setup.[23]: Split io_setup(3) from io_setup.2
-- 
2.53.0


