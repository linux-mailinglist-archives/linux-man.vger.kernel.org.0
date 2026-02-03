Return-Path: <linux-man+bounces-5023-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GFJcEdhZgmliSwMAu9opvQ
	(envelope-from <linux-man+bounces-5023-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Tue, 03 Feb 2026 21:26:00 +0100
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E631DE77F
	for <lists+linux-man@lfdr.de>; Tue, 03 Feb 2026 21:25:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 577E33087DF7
	for <lists+linux-man@lfdr.de>; Tue,  3 Feb 2026 20:25:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2F0736B062;
	Tue,  3 Feb 2026 20:25:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SDS/5mOu"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8655722CBD9;
	Tue,  3 Feb 2026 20:25:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770150356; cv=none; b=OA0HdjncZW35WMAZOz0aW6WhOVmubpmISyPgBEGrRaCuqWD2Jt5wXWOohNJDv7yhlzpB09p/yyuURSCvjxJMT+IAzG6n/Eq1SykBgRkNeM8Kl8AGqqo9SWy7nU/lljSVgtS4ydybKqOXSz1uMPrWsy5MLl57EG7HJqq0WHYxWQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770150356; c=relaxed/simple;
	bh=A/REPJ6gRMLhpqdOtZcY5dcZi5VIC3gsxUtuglHLENw=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=eFS4+Q3HSrRhemV/ZeJEZHjumbsSn2h6jd0UhnKaTAgohjejEiwgEhbSyLcXEIV26i33ltXyY3UYKkjZXsuSMZ9K6ItBpPUL/c/5mx6zlt0Ui7d/2w/iJI3vyYPm4udc2woPCrLJAS3hTDxJoc6+PGHhgkbsO//2RrCwf3SXCpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SDS/5mOu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A740C116D0;
	Tue,  3 Feb 2026 20:25:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770150356;
	bh=A/REPJ6gRMLhpqdOtZcY5dcZi5VIC3gsxUtuglHLENw=;
	h=Date:From:To:Cc:Subject:From;
	b=SDS/5mOuHFsD5Aq/3MdthwYmEMR0Jqb9nAMonDBKg2X5B3DCoMaR6yxCmYYHv6rEk
	 AB3AwGdIZczsaEuUlEKz7OFpP1aC6SkDoFfHrr0h9cQqY1/wmWZCvJthe3YdFxEVdX
	 oly1rWPabM3WEMRXYB4rZq4DbpR1ZM7Kw/57L5DEk5kS8NwcRELAwc5DWbfPA+RxHd
	 T3jy+MmWrI0Q+sh6Gc24wyJb+hjIcktrL5VUEYMxSLzbJ2AcbVNF6kPdgGglVZrptK
	 4laITHCoqKwVL5e2URb6pJUmHxkc7n1MXPKI7JpzFP5yW4B8Eb+l+tgsVHsMhXdbvz
	 NX/kmAuJpJPng==
Date: Tue, 3 Feb 2026 21:25:53 +0100
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>, linux-kernel@vger.kernel.org, 
	Alyssa Ross <hi@alyssa.is>, Greg KH <greg@kroah.com>
Subject: [PATCH] CONTRIBUTING.d/: Document format of 'Fixes:' trailer fields
Message-ID: <3a656e90329f26d743d0904f56ae847951c852c7.1770150003.git.alx@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-5023-lists,linux-man=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alx@kernel.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 9E631DE77F
X-Rspamd-Action: no action

Signed-off-by: Alejandro Colomar <alx@kernel.org>
---

Hi!

I hadn't yet documented how to produce the Fixes: trailer fields in the
Linux man-pages project.  We require the commit-date to disambiguate
possible hash (and subject) collisions.  This documents how to produce
them easily.

I hope this will be useful to other projects.  I've been using this
format for some time, and it has some nice properties: it shows at first
glance the date of a commit (which itself gives an idea of how many
stable versions would need to be fixed).  It can also be parsed by a
machine, by having a consistent and simple (unambiguous) format.


Have a lovely night!
Alex

 CONTRIBUTING.d/git                 | 16 ++++++++++++++++
 CONTRIBUTING.d/patches/description | 11 +++++++++++
 2 files changed, 27 insertions(+)

diff --git a/CONTRIBUTING.d/git b/CONTRIBUTING.d/git
index 4b7a95472..3f944a23c 100644
--- a/CONTRIBUTING.d/git
+++ b/CONTRIBUTING.d/git
@@ -43,6 +43,22 @@ Description
 		$ git config --global \
 			sendemail.sendmailcmd 'mutt -H - && true';
 
+    Commit references
+	'Fixes:' trailer fields should have the following format.
+
+		Fixes: 12-char-hash ([author-date,] commit-date; "subject")
+
+	where the author date is optional, and only included if it's
+	somehow important.  The commit date is often more important, as
+	it's sorted, and thus can be used to find (with a binary search)
+	a commit whose hash and subject may have collisions.  To produce
+	such fields, the following git aliases are useful.
+
+		$ git config --global alias.ref \
+			"show --no-patch --abbrev=12 --date=short --format=tformat:'%C(auto)%h%C(reset) %C(dim white)(%cd%x3B \"%C(reset)%C(auto)%s%C(reset)%C(dim white)\")%C(reset)'"
+		$ git config --global alias.ref2 \
+			"show --no-patch --abbrev=12 --date=short --format=tformat:'%C(auto)%h%C(reset) %C(dim white)(%ad, %cd%x3B \"%C(reset)%C(auto)%s%C(reset)%C(dim white)\")%C(reset)'"
+
 See also
 	git-config(1)
 	git-diff(1)
diff --git a/CONTRIBUTING.d/patches/description b/CONTRIBUTING.d/patches/description
index 73b603bf3..09ee35ec8 100644
--- a/CONTRIBUTING.d/patches/description
+++ b/CONTRIBUTING.d/patches/description
@@ -55,3 +55,14 @@ Description
 	"Co-developed-by:".  Example:
 
 		Signed-off-by: Alejandro Colomar <alx@kernel.org>
+
+	Add 'Fixes:' tags as necessary.  See <CONTRIBUTING.d/git> for
+	how to configure the alias.ref and alias.ref2 git aliases.  The
+	commit references can be produced with them.
+
+		$ git ref bb509e6fc
+		bb509e6fcbae (2020-10-16; "kernel_lockdown.7: New page documenting the Kernel Lockdown feature")
+
+	which then can be used as
+
+		Fixes: bb509e6fcbae (2020-10-16; "kernel_lockdown.7: New page documenting the Kernel Lockdown feature")

Range-diff:
-:  --------- > 1:  3a656e903 CONTRIBUTING.d/: Document format of 'Fixes:' trailer fields

base-commit: be29e611a386b754fd5ce9f9d1ef421d15319ec1
-- 
2.51.0


