Return-Path: <linux-man+bounces-1443-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B88D92FAEA
	for <lists+linux-man@lfdr.de>; Fri, 12 Jul 2024 15:09:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0578F1C20F9C
	for <lists+linux-man@lfdr.de>; Fri, 12 Jul 2024 13:09:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4A7816EBEA;
	Fri, 12 Jul 2024 13:09:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz header.b="cTs4BSJn";
	dkim=permerror (0-bit key) header.d=suse.cz header.i=@suse.cz header.b="AphytT9X";
	dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz header.b="cTs4BSJn";
	dkim=permerror (0-bit key) header.d=suse.cz header.i=@suse.cz header.b="AphytT9X"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.223.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E01616D324;
	Fri, 12 Jul 2024 13:09:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.135.223.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720789752; cv=none; b=CiOeoSOhOMalhojj4GUV3RHS+KGb8ZTfDp4lC0szY4dYiIzEvz91Np0Eia55dVlb0cdacsdUttGQjfm6xLLGnhZsuWLUEEwAfEuVOkOioWGd1Mm9KPUOwBRygXZKHJ6v8L0Qg7PrxTT6U8HoV/mOSeG1RxwtEK8kLpHWdC47ie8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720789752; c=relaxed/simple;
	bh=w519+6kp2nEluYL9GrK3MMhPqsE6dxfNbsJk68EOYHg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Z+feKZE53w4u4OcXf4EK1CJqU1iztQgCcl9VxjMZqD/iHOgq4U/ffp/0zfSw+2LN1G5iVInWoc89kI4RL42mqibcQcZWoxqGw2QE0lTvrbdw0dh3qnHuzcwFNyKI4V81beHnPnAtXtmAFmRcR46MPTBLMkMpZzqIwKX/kvryF24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=suse.cz; spf=pass smtp.mailfrom=suse.cz; dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz header.b=cTs4BSJn; dkim=permerror (0-bit key) header.d=suse.cz header.i=@suse.cz header.b=AphytT9X; dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz header.b=cTs4BSJn; dkim=permerror (0-bit key) header.d=suse.cz header.i=@suse.cz header.b=AphytT9X; arc=none smtp.client-ip=195.135.223.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=suse.cz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.cz
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id A05A11FB81;
	Fri, 12 Jul 2024 13:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
	t=1720789748; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:  content-transfer-encoding:content-transfer-encoding;
	bh=0a5dSflEVJabFOXF1XSgx8edydh/4ubO5V6SoF96HjU=;
	b=cTs4BSJnK3FOVAX3FYU/zaGqn9W/zXYRTx6/qkPxTKKHBBiQONCHorlNFKPDTMVDLvu2d+
	jgpfUsSxrcb04EM+eQr3+Eg9EwE8Lqxl96ppP+A5zxkramOr32LQAzZceNnNynYus5JgcP
	XbJY74cOAVJ4AqC5uN4OrffhNR6enaU=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
	s=susede2_ed25519; t=1720789748;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:  content-transfer-encoding:content-transfer-encoding;
	bh=0a5dSflEVJabFOXF1XSgx8edydh/4ubO5V6SoF96HjU=;
	b=AphytT9X7ewOCHHhJNDP5V0Bt9RBRFfwoipsOEtUFMNOqoFMLXhy2XNlYOxflWGM+aAh2U
	EFJKD8y1C9cJH6DQ==
Authentication-Results: smtp-out2.suse.de;
	dkim=pass header.d=suse.cz header.s=susede2_rsa header.b=cTs4BSJn;
	dkim=pass header.d=suse.cz header.s=susede2_ed25519 header.b=AphytT9X
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
	t=1720789748; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:  content-transfer-encoding:content-transfer-encoding;
	bh=0a5dSflEVJabFOXF1XSgx8edydh/4ubO5V6SoF96HjU=;
	b=cTs4BSJnK3FOVAX3FYU/zaGqn9W/zXYRTx6/qkPxTKKHBBiQONCHorlNFKPDTMVDLvu2d+
	jgpfUsSxrcb04EM+eQr3+Eg9EwE8Lqxl96ppP+A5zxkramOr32LQAzZceNnNynYus5JgcP
	XbJY74cOAVJ4AqC5uN4OrffhNR6enaU=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
	s=susede2_ed25519; t=1720789748;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:  content-transfer-encoding:content-transfer-encoding;
	bh=0a5dSflEVJabFOXF1XSgx8edydh/4ubO5V6SoF96HjU=;
	b=AphytT9X7ewOCHHhJNDP5V0Bt9RBRFfwoipsOEtUFMNOqoFMLXhy2XNlYOxflWGM+aAh2U
	EFJKD8y1C9cJH6DQ==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 5302A13686;
	Fri, 12 Jul 2024 13:09:08 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id pq6xEfQqkWY4YAAAD6G6ig
	(envelope-from <pvorel@suse.cz>); Fri, 12 Jul 2024 13:09:08 +0000
From: Petr Vorel <pvorel@suse.cz>
To: linux-man@vger.kernel.org
Cc: Petr Vorel <pvorel@suse.cz>,
	=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@linux.microsoft.com>,
	=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>,
	Alejandro Colomar <alx@kernel.org>,
	=?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack@google.com>,
	linux-security-module@vger.kernel.org
Subject: [PATCH 1/1] landlock: Mention -1 return code on failure
Date: Fri, 12 Jul 2024 15:09:04 +0200
Message-ID: <20240712130904.145010-1-pvorel@suse.cz>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: A05A11FB81
X-Spam-Flag: NO
X-Spam-Score: 0.99
X-Rspamd-Action: no action
X-Rspamd-Server: rspamd2.dmz-prg2.suse.org
X-Spamd-Result: default: False [0.99 / 50.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
	NEURAL_HAM_SHORT(-0.20)[-1.000];
	MIME_GOOD(-0.10)[text/plain];
	MX_GOOD(-0.01)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:106:10:150:64:167:received];
	DBL_BLOCKED_OPENRESOLVER(0.00)[imap1.dmz-prg2.suse.org:helo,imap1.dmz-prg2.suse.org:rdns];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FUZZY_BLOCKED(0.00)[rspamd.com];
	RCPT_COUNT_SEVEN(0.00)[7];
	TO_DN_SOME(0.00)[];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_ALL(0.00)[];
	DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[suse.cz:+]
X-Spam-Level: 
X-Spamd-Bar: /

Mention -1 return code on failure for landlock_add_rule(),
landlock_create_ruleset() and landlock_restrict_self().

Although it's a common rule to return -1 on error, it's better to be
explicit (as the other man pages are).

Fixes: a01d04a69 ("landlock_add_rule.2: Document new syscall")
Fixes: ca5163697 ("landlock_create_ruleset.2: Document new syscall")
Fixes: 3f7e4f808 ("landlock_restrict_self.2: Document new syscall")
Signed-off-by: Petr Vorel <pvorel@suse.cz>
---
FYI we test return codes in LTP.

https://lore.kernel.org/ltp/20240711-landlock-v3-0-c7b0e9edf9b0@suse.com/
https://lore.kernel.org/ltp/20240711201306.98519-1-pvorel@suse.cz/

Kind regards,
Petr

 man/man2/landlock_add_rule.2       | 4 ++++
 man/man2/landlock_create_ruleset.2 | 4 ++++
 man/man2/landlock_restrict_self.2  | 4 ++++
 3 files changed, 12 insertions(+)

diff --git a/man/man2/landlock_add_rule.2 b/man/man2/landlock_add_rule.2
index 4b95afb07..6fdc2f896 100644
--- a/man/man2/landlock_add_rule.2
+++ b/man/man2/landlock_add_rule.2
@@ -79,6 +79,10 @@ must be 0.
 On success,
 .BR landlock_add_rule ()
 returns 0.
+On error,
+\-1 is returned and
+.I errno
+is set to indicate the cause of the error.
 .SH ERRORS
 .BR landlock_add_rule ()
 can fail for the following reasons:
diff --git a/man/man2/landlock_create_ruleset.2 b/man/man2/landlock_create_ruleset.2
index e62a3f9b9..4f638e85c 100644
--- a/man/man2/landlock_create_ruleset.2
+++ b/man/man2/landlock_create_ruleset.2
@@ -86,6 +86,10 @@ returns a new Landlock ruleset file descriptor,
 or a Landlock ABI version,
 according to
 .IR flags .
+On error,
+\-1 is returned and
+.I errno
+is set to indicate the cause of the error.
 .SH ERRORS
 .BR landlock_create_ruleset ()
 can fail for the following reasons:
diff --git a/man/man2/landlock_restrict_self.2 b/man/man2/landlock_restrict_self.2
index 43f15c932..88850ddfb 100644
--- a/man/man2/landlock_restrict_self.2
+++ b/man/man2/landlock_restrict_self.2
@@ -72,6 +72,10 @@ must be 0.
 On success,
 .BR landlock_restrict_self ()
 returns 0.
+On error,
+\-1 is returned and
+.I errno
+is set to indicate the cause of the error.
 .SH ERRORS
 .BR landlock_restrict_self ()
 can fail for the following reasons:
-- 
2.45.2


