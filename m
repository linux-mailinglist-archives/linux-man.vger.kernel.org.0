Return-Path: <linux-man+bounces-5696-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id O5xSGKvcS2pibgEAu9opvQ
	(envelope-from <linux-man+bounces-5696-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 06 Jul 2026 18:49:47 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E73F713800
	for <lists+linux-man@lfdr.de>; Mon, 06 Jul 2026 18:49:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=jasonyundt.email header.s=mail header.b=k8lnettg;
	dmarc=pass (policy=quarantine) header.from=jasonyundt.email;
	spf=pass (mail.lfdr.de: domain of "linux-man+bounces-5696-lists+linux-man=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="linux-man+bounces-5696-lists+linux-man=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0BBA4372CA79
	for <lists+linux-man@lfdr.de>; Mon,  6 Jul 2026 14:35:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FD173A1D0C;
	Mon,  6 Jul 2026 14:34:40 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from box.jasonyundt.email (box.jasonyundt.email [104.248.224.157])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 958BE3A2540
	for <linux-man@vger.kernel.org>; Mon,  6 Jul 2026 14:34:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783348479; cv=none; b=q+BAjGVCI7nB+bY+/fu6xVNn94gwcTbaTYCizA0axlNuBuJpwWGZzvBx4gXA1c1Yt5z7xuu34Hm0vuspocP8p4xG2RKFCycM02GyE3eDeoh3qL1QV43GYCNLqW21r3JTx3H0M6ElKP69N2gw1O9nB1SQbmKjkfCpmdANDX8shOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783348479; c=relaxed/simple;
	bh=FR+0bS8dr4OvcJS4wJ/wk8XIPKYHIw/JWdT/wgrTqc4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=p+1ypc1fhvCNrh6hNOO8/wYp3aWTH23V0g/uG1prgesVdpcg/stG42rlPGkLxNJBlAAk7yVitU1Oscp9pdkpUtINAw3aRKeNmOx5SoZ62eq16fzLBQmnnuBdstOxZxD/Kxe3fxHZSQLihEt41bD8xJm97A+iw0BAD87PVxo8OWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=jasonyundt.email; spf=pass smtp.mailfrom=jasonyundt.email; dkim=pass (2048-bit key) header.d=jasonyundt.email header.i=@jasonyundt.email header.b=k8lnettg; arc=none smtp.client-ip=104.248.224.157
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=jasonyundt.email;
	s=mail; t=1783348088;
	bh=FR+0bS8dr4OvcJS4wJ/wk8XIPKYHIw/JWdT/wgrTqc4=;
	h=From:To:Cc:Subject:Date:From;
	b=k8lnettgAV2CptkrjfCciJs8utv081AivAP/3wfJ6/jQHIFxlInWfeN/loGMlzHrG
	 2fQ4/IlyhN2+uFr+8qf4aGDw0tHD31XtbJRg1E94LtLPkTPNpGn7/ndA57a+EsrGvp
	 6fMuXVEv4dacEJK+4BtQ6L0kJ9mvp1Z1ZrE2LG8VPcvgerQ5BB+sz1tGZxpv/RSDhM
	 JoIgwrm2IAuFpPe/U4PJ1VnSFDA0wUt0GAN9kEx7/zulrFLu+/3NarqaMuNNLIJ5nW
	 IR10dsC7A+3aTVC3fME/wJCgd+lsDwSBYOUIelenMyOCltO5R5dEw9T6V5fbrIr0+M
	 EC5cZAC2sT4Cg==
Received: from authenticated-user (box.jasonyundt.email [104.248.224.157])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by box.jasonyundt.email (Postfix) with ESMTPSA id 5EC847E369;
	Mon,  6 Jul 2026 10:28:08 -0400 (EDT)
From: Jason Yundt <jason@jasonyundt.email>
To: Alejandro Colomar <alx@kernel.org>
Cc: Jason Yundt <jason@jasonyundt.email>,
	linux-man@vger.kernel.org
Subject: [PATCH v1] man/man7/environ.7: Fix underspecification of "name=value" strings
Date: Mon,  6 Jul 2026 10:26:20 -0400
Message-ID: <d5b0d9b86029aaa7961edd2421e4a3ebdaedb1b9.1783339632.git.jason@jasonyundt.email>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[jasonyundt.email,quarantine];
	R_DKIM_ALLOW(-0.20)[jasonyundt.email:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5696-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:alx@kernel.org,m:jason@jasonyundt.email,m:linux-man@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[jason@jasonyundt.email,linux-man@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jason@jasonyundt.email,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[jasonyundt.email:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4E73F713800

Before this change, environ(7) said this:

> By convention, the strings in environ have the form "name=value".  The
> name is case-sensitive and may not contain the character "=".  The
> value can be anything that can be represented as a string.  The name
> and the value may not contain an embedded null byte ('\0'), since this
> is assumed to terminate the string.

That description has a few problems:

1. It talks about ‘the character "="’, but it doesn’t specify what
   character encoding would be used to represent that character.  Two
   different character encodings could represent that same “=” character
   using two different bytes (or even sequences of bytes).

2. It mentions that ‘The name is case-sensitive and may not contain the
   character "=".’  It doesn’t clearly say what what is allowed to be in
   a name.  It only says that those two things are explicitly
   disallowed.

This change fixes those two problems.  For the first problem, this
change makes it so that the description is all about bytes, not
characters.  Describing the format in terms of bytes allows us to
sidestep the question of character encoding entirely.  Additionally, it
is more accurate to describe strings in environ as being sequences of
bytes instead of sequences of characters.  Both the name and value of an
environment variable could be sequences of bytes that don’t contain any
characters at all.

For the second problem, this change clarifies that the name of an
environment variable can contain any byte except for 0x3D.  It also
clarifies that while it’s OK for environment variable values to be
empty, it’s not OK for environment variable names to be empty.

Additionally, this change replaces "=" with '='.  In the C programming
language, "=" refers to two bytes: one for the equals character plus one
for the terminating null byte.  In the C programming language, '='
refers to a single byte.  In this particular instance, we’re talking
about a single byte, so it’s better to use '='.  Using '=' also makes
environ(7) more internally consistent.  Before this change, environ(7)
used '\0' and "=".  This change makes it so that environ(7) uses '\0'
and '='.

I was able to obtain obtain the information that I needed in order to
create this change by writing a test program.  You can find the test
program here [1].  Additionally, I got the information about the setenv(3)
and unsetenv(3) functions from their man pages (specifically, the parts
of their man pages that talk about EINVAL).

[1]: <https://codeberg.org/JasonYundt/environ-format-example-program>

Signed-off-by: Jason Yundt <jason@jasonyundt.email>
---
 man/man7/environ.7 | 23 +++++++++++++++++------
 1 file changed, 17 insertions(+), 6 deletions(-)

diff --git a/man/man7/environ.7 b/man/man7/environ.7
index 31a69017cf75..bf5726e32429 100644
--- a/man/man7/environ.7
+++ b/man/man7/environ.7
@@ -28,12 +28,23 @@ .SH DESCRIPTION
 .I environ
 have the form
 .RI \[dq] name\f[B]=\f[]value \[dq].
-The name is case-sensitive and may not contain
-the character
-.RB \[dq] = \[dq].
-The value can be anything that can be represented as a string.
-The name and the value may not contain an embedded null byte (\[aq]\[rs]0\[aq]),
-since this is assumed to terminate the string.
+The name is case-sensitive
+and may contain any byte
+other than null (\[aq]\[rs]0\[aq]) and 0x3D (the
+.BR ascii (7)
+.RB \[aq] = \[aq]
+character).
+The name must be at least one byte long,
+or else programs will not be able to manipulate it using the
+.BR setenv (3)
+or
+.BR unsetenv (3)
+functions.
+Immediately after the name, there should be a 0x3D byte.
+Immediately after the 0x3D byte is the value.
+The value may contain any byte except for null.
+The value may be zero bytes long.
+Immediately after the value, there must be a terminating null byte.
 .P
 Environment variables may be placed in the shell's environment by the
 .I export

Range-diff against v0:
-:  ------------ > 1:  d5b0d9b86029 man/man7/environ.7: Fix underspecification of "name=value" strings
-- 
2.54.0


