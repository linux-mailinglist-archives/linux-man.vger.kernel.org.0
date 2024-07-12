Return-Path: <linux-man+bounces-1451-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 74A1992FFB1
	for <lists+linux-man@lfdr.de>; Fri, 12 Jul 2024 19:23:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BA90EB233FE
	for <lists+linux-man@lfdr.de>; Fri, 12 Jul 2024 17:23:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3BA9171644;
	Fri, 12 Jul 2024 17:23:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz header.b="XZt9Qc8r";
	dkim=permerror (0-bit key) header.d=suse.cz header.i=@suse.cz header.b="GJCdjB4s";
	dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz header.b="XZt9Qc8r";
	dkim=permerror (0-bit key) header.d=suse.cz header.i=@suse.cz header.b="GJCdjB4s"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5D411EA90;
	Fri, 12 Jul 2024 17:22:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.135.223.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720804980; cv=none; b=XOEnfNpeXVMQPnoVMB9BG3NJXQivMej0X8zSfB50qeK31sB3UH3EupVOp7B4JshqjT5W0AUzG+Yt7WlFxUpxZvYY4CQeezWG5Rt5h7o4kAzhGi6hQx6woXFXSbPA8NweXcdtpDnaaGaqRgW3RyAKY3V+u1XII1lI0NcOM+gwNu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720804980; c=relaxed/simple;
	bh=Jy4zNMn+640I8B18ET7DiWae5w7NG3JadnEL6/SVgqc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=PkZOrhVzW7Y2xjBtQ9JiA1NcJJeFhbwZSL8K3MTWmhC3/Du9frd31tp23m+1XJV1mNVjm4ZAcNwS0ueuIJj66v8QRihX5UPHztPduZYcFkdAUf4fCUYrN/c1IBfeN3w2N6YcU/oTxg2ZtLSe4bPYwjy8LCarQRX4sJYfdAiPrMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=suse.cz; spf=pass smtp.mailfrom=suse.cz; dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz header.b=XZt9Qc8r; dkim=permerror (0-bit key) header.d=suse.cz header.i=@suse.cz header.b=GJCdjB4s; dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz header.b=XZt9Qc8r; dkim=permerror (0-bit key) header.d=suse.cz header.i=@suse.cz header.b=GJCdjB4s; arc=none smtp.client-ip=195.135.223.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=suse.cz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.cz
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id 13DCE219F5;
	Fri, 12 Jul 2024 17:22:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
	t=1720804977; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6TGD1CH9sGO7GUU7OWYjgv1b4Yi6HYf7UEkUIiKkNj4=;
	b=XZt9Qc8rDmMmnaDBBhqrUa0TJVwNCFBKeqAAvDf6bRYtzrdvhRG2CE0pV+bCYLIDFMjKad
	cosF1r2JWzMB8z8FsnuaQA2l8MEGAfrDAOsmXlJgx9mh0IXOKrloJmG4abpwbic4vNcvGQ
	qSp61C2aUede1bKOXezD2BlPcDf4tZA=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
	s=susede2_ed25519; t=1720804977;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6TGD1CH9sGO7GUU7OWYjgv1b4Yi6HYf7UEkUIiKkNj4=;
	b=GJCdjB4sKac1UKsZbkUBOpCoo1yoyNa79O1ne1Vw4Zp08hJE+mMOCbCj2Xr9NCWkwKznYQ
	QulHDAMIlljXUhBQ==
Authentication-Results: smtp-out1.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
	t=1720804977; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6TGD1CH9sGO7GUU7OWYjgv1b4Yi6HYf7UEkUIiKkNj4=;
	b=XZt9Qc8rDmMmnaDBBhqrUa0TJVwNCFBKeqAAvDf6bRYtzrdvhRG2CE0pV+bCYLIDFMjKad
	cosF1r2JWzMB8z8FsnuaQA2l8MEGAfrDAOsmXlJgx9mh0IXOKrloJmG4abpwbic4vNcvGQ
	qSp61C2aUede1bKOXezD2BlPcDf4tZA=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
	s=susede2_ed25519; t=1720804977;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6TGD1CH9sGO7GUU7OWYjgv1b4Yi6HYf7UEkUIiKkNj4=;
	b=GJCdjB4sKac1UKsZbkUBOpCoo1yoyNa79O1ne1Vw4Zp08hJE+mMOCbCj2Xr9NCWkwKznYQ
	QulHDAMIlljXUhBQ==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 89F4D137D2;
	Fri, 12 Jul 2024 17:22:56 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id kNZUHHBmkWbuLQAAD6G6ig
	(envelope-from <pvorel@suse.cz>); Fri, 12 Jul 2024 17:22:56 +0000
From: Petr Vorel <pvorel@suse.cz>
To: linux-man@vger.kernel.org
Cc: Petr Vorel <pvorel@suse.cz>,
	=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@linux.microsoft.com>,
	=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>,
	Alejandro Colomar <alx@kernel.org>,
	=?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack@google.com>,
	linux-security-module@vger.kernel.org
Subject: [PATCH v2 2/2] landlock: Mention -1 return code on failure
Date: Fri, 12 Jul 2024 19:22:46 +0200
Message-ID: <20240712172246.151258-2-pvorel@suse.cz>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240712172246.151258-1-pvorel@suse.cz>
References: <20240712172246.151258-1-pvorel@suse.cz>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Flag: NO
X-Spam-Score: -3.30
X-Spamd-Result: default: False [-3.30 / 50.00];
	REPLY(-4.00)[];
	MID_CONTAINS_FROM(1.00)[];
	NEURAL_HAM_SHORT(-0.20)[-0.999];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	ARC_NA(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
	FUZZY_BLOCKED(0.00)[rspamd.com];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	TO_DN_SOME(0.00)[]
X-Spam-Level: 

Mention -1 return code on failure for landlock_add_rule(),
landlock_create_ruleset() and landlock_restrict_self().

Although it's a common rule to return -1 on error, it's better to be
explicit (as the other man pages are).

Fixes: a01d04a69 ("landlock_add_rule.2: Document new syscall")
Fixes: ca5163697 ("landlock_create_ruleset.2: Document new syscall")
Fixes: 3f7e4f808 ("landlock_restrict_self.2: Document new syscall")
Reviewed-by: Günther Noack <gnoack@google.com>
Signed-off-by: Petr Vorel <pvorel@suse.cz>
---
changes v1->v2:
* s/the cause of //g

 man/man2/landlock_add_rule.2       | 4 ++++
 man/man2/landlock_create_ruleset.2 | 4 ++++
 man/man2/landlock_restrict_self.2  | 4 ++++
 3 files changed, 12 insertions(+)

diff --git a/man/man2/landlock_add_rule.2 b/man/man2/landlock_add_rule.2
index 4b95afb07..d4ae8f2f6 100644
--- a/man/man2/landlock_add_rule.2
+++ b/man/man2/landlock_add_rule.2
@@ -79,6 +79,10 @@ must be 0.
 On success,
 .BR landlock_add_rule ()
 returns 0.
+On error,
+\-1 is returned and
+.I errno
+is set to indicate the error.
 .SH ERRORS
 .BR landlock_add_rule ()
 can fail for the following reasons:
diff --git a/man/man2/landlock_create_ruleset.2 b/man/man2/landlock_create_ruleset.2
index e62a3f9b9..618d54f37 100644
--- a/man/man2/landlock_create_ruleset.2
+++ b/man/man2/landlock_create_ruleset.2
@@ -86,6 +86,10 @@ returns a new Landlock ruleset file descriptor,
 or a Landlock ABI version,
 according to
 .IR flags .
+On error,
+\-1 is returned and
+.I errno
+is set to indicate the error.
 .SH ERRORS
 .BR landlock_create_ruleset ()
 can fail for the following reasons:
diff --git a/man/man2/landlock_restrict_self.2 b/man/man2/landlock_restrict_self.2
index 43f15c932..d4e5e753c 100644
--- a/man/man2/landlock_restrict_self.2
+++ b/man/man2/landlock_restrict_self.2
@@ -72,6 +72,10 @@ must be 0.
 On success,
 .BR landlock_restrict_self ()
 returns 0.
+On error,
+\-1 is returned and
+.I errno
+is set to indicate the error.
 .SH ERRORS
 .BR landlock_restrict_self ()
 can fail for the following reasons:
-- 
2.45.2


