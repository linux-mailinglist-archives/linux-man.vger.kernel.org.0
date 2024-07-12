Return-Path: <linux-man+bounces-1450-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C96892FFAF
	for <lists+linux-man@lfdr.de>; Fri, 12 Jul 2024 19:23:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B0DD4B21E0D
	for <lists+linux-man@lfdr.de>; Fri, 12 Jul 2024 17:23:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E27C5338D;
	Fri, 12 Jul 2024 17:23:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz header.b="NLpxPif4";
	dkim=permerror (0-bit key) header.d=suse.cz header.i=@suse.cz header.b="5j0q6qIj";
	dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz header.b="NLpxPif4";
	dkim=permerror (0-bit key) header.d=suse.cz header.i=@suse.cz header.b="5j0q6qIj"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.223.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED2F1DFE1;
	Fri, 12 Jul 2024 17:22:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.135.223.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720804980; cv=none; b=ug3TS4CprivVm+6oNM4nOoIfQH+ZLehEAsr69AV4MFnwf8cVC7KAD7gJeE9bdGFPFQQdDFxVCAdzy8bHPi+YouL2F2fiG/sOw0XdVxxx4EGuGGR5RS+2osgQJHhkX0IkN5W5qxa+4lEA+tKpcgJZCgZr0qzsNXe4hM/vD5CeT5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720804980; c=relaxed/simple;
	bh=uVE2UiNa7DePMRseBr+bl8aWLcGPijv0qhaMwcCky2E=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=RMHtO5AXYiryCsxP1/bI0QyH2et8VB2mIrP4Rowu0z1BLh1x7VXinI2xRQUVg/Ck1t7uOw68A/m73sHoddrJNs/PIN8HRAkMSVvFe8qdKCTTpBS0LYcGiac9b5TDoiElZdMhOX27AjWfQrU/9aWnav+9k9+vN1/0Q6osWFwIyXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=suse.cz; spf=pass smtp.mailfrom=suse.cz; dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz header.b=NLpxPif4; dkim=permerror (0-bit key) header.d=suse.cz header.i=@suse.cz header.b=5j0q6qIj; dkim=pass (1024-bit key) header.d=suse.cz header.i=@suse.cz header.b=NLpxPif4; dkim=permerror (0-bit key) header.d=suse.cz header.i=@suse.cz header.b=5j0q6qIj; arc=none smtp.client-ip=195.135.223.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=suse.cz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.cz
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 653E21FB90;
	Fri, 12 Jul 2024 17:22:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
	t=1720804976; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:  content-transfer-encoding:content-transfer-encoding;
	bh=pZOdEKIeBY3qz3MDqg0aj09Mf4HrF01PKXMeBP1Gjl8=;
	b=NLpxPif4Ku18lTB8K/VONIaoaFsnRDawylbLMxfMN6VtcITAr8eIoFzd8RMOAiYcSlWxZS
	CMZ5K9I1DkuY8YIk1iaNlWSXusvTeADDJ4DonYG6chmrozoM46hl4kRZmwMgkJ118U4VWM
	DcIv/HNn3fJlRqDpHGn+UhOBPKviKFc=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
	s=susede2_ed25519; t=1720804976;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:  content-transfer-encoding:content-transfer-encoding;
	bh=pZOdEKIeBY3qz3MDqg0aj09Mf4HrF01PKXMeBP1Gjl8=;
	b=5j0q6qIjRzuuJ1z8qW7MaUmyCv8Wd8Oy6B0uiwUNzfQwY61WLpei4E2w2iK0Hf4UW079ks
	OCGOpKu9cBCg2aAQ==
Authentication-Results: smtp-out2.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
	t=1720804976; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:  content-transfer-encoding:content-transfer-encoding;
	bh=pZOdEKIeBY3qz3MDqg0aj09Mf4HrF01PKXMeBP1Gjl8=;
	b=NLpxPif4Ku18lTB8K/VONIaoaFsnRDawylbLMxfMN6VtcITAr8eIoFzd8RMOAiYcSlWxZS
	CMZ5K9I1DkuY8YIk1iaNlWSXusvTeADDJ4DonYG6chmrozoM46hl4kRZmwMgkJ118U4VWM
	DcIv/HNn3fJlRqDpHGn+UhOBPKviKFc=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
	s=susede2_ed25519; t=1720804976;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:  content-transfer-encoding:content-transfer-encoding;
	bh=pZOdEKIeBY3qz3MDqg0aj09Mf4HrF01PKXMeBP1Gjl8=;
	b=5j0q6qIjRzuuJ1z8qW7MaUmyCv8Wd8Oy6B0uiwUNzfQwY61WLpei4E2w2iK0Hf4UW079ks
	OCGOpKu9cBCg2aAQ==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 3E76E13686;
	Fri, 12 Jul 2024 17:22:55 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id Ui6hBW9mkWbuLQAAD6G6ig
	(envelope-from <pvorel@suse.cz>); Fri, 12 Jul 2024 17:22:55 +0000
From: Petr Vorel <pvorel@suse.cz>
To: linux-man@vger.kernel.org
Cc: Petr Vorel <pvorel@suse.cz>,
	=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@linux.microsoft.com>,
	=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>,
	Alejandro Colomar <alx@kernel.org>,
	=?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack@google.com>,
	linux-security-module@vger.kernel.org
Subject: [PATCH v2 1/2] Unify error wording
Date: Fri, 12 Jul 2024 19:22:45 +0200
Message-ID: <20240712172246.151258-1-pvorel@suse.cz>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-2.80 / 50.00];
	BAYES_HAM(-3.00)[100.00%];
	MID_CONTAINS_FROM(1.00)[];
	NEURAL_HAM_LONG(-1.00)[-1.000];
	R_MISSING_CHARSET(0.50)[];
	NEURAL_HAM_SHORT(-0.20)[-0.999];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_SEVEN(0.00)[7];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
	FUZZY_BLOCKED(0.00)[rspamd.com];
	URIBL_BLOCKED(0.00)[imap1.dmz-prg2.suse.org:helo,suse.cz:email];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	TO_MATCH_ENVRCPT_ALL(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_ALL(0.00)[]
X-Spam-Flag: NO
X-Spam-Score: -2.80
X-Spam-Level: 

Follow the pattern to replace "to indicate the cause of the error"
with "to indicate the error".

Suggested-by: Alejandro Colomar <alx@kernel.org>
Signed-off-by: Petr Vorel <pvorel@suse.cz>
---
changes v1->v2:
New in this version.

 man/man2/mount_setattr.2   | 2 +-
 man/man2/seccomp_unotify.2 | 6 +++---
 man/man3/aio_cancel.3      | 2 +-
 man/man3/dlinfo.3          | 2 +-
 man/man3/dlsym.3           | 2 +-
 man/man3/fts.3             | 2 +-
 man/man3/resolver.3        | 2 +-
 man/man3/rpmatch.3         | 2 +-
 8 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/man/man2/mount_setattr.2 b/man/man2/mount_setattr.2
index f4bbc088b..96d1c5d7f 100644
--- a/man/man2/mount_setattr.2
+++ b/man/man2/mount_setattr.2
@@ -390,7 +390,7 @@ returns zero.
 On error,
 \-1 is returned and
 .I errno
-is set to indicate the cause of the error.
+is set to indicate the error.
 .SH ERRORS
 .TP
 .B EBADF
diff --git a/man/man2/seccomp_unotify.2 b/man/man2/seccomp_unotify.2
index 7092f9491..c7ce0cc74 100644
--- a/man/man2/seccomp_unotify.2
+++ b/man/man2/seccomp_unotify.2
@@ -370,7 +370,7 @@ for details of this structure.
 .P
 On success, this operation returns 0; on failure, \-1 is returned, and
 .I errno
-is set to indicate the cause of the error.
+is set to indicate the error.
 This operation can fail with the following errors:
 .TP
 .BR EINVAL " (since Linux 5.5)"
@@ -612,7 +612,7 @@ field contains a nonzero value.
 .P
 On success, this operation returns 0; on failure, \-1 is returned, and
 .I errno
-is set to indicate the cause of the error.
+is set to indicate the error.
 This operation can fail with the following errors:
 .TP
 .B EINPROGRESS
@@ -790,7 +790,7 @@ operation.
 .P
 On error, \-1 is returned and
 .I errno
-is set to indicate the cause of the error.
+is set to indicate the error.
 .P
 This operation can fail with the following errors:
 .TP
diff --git a/man/man3/aio_cancel.3 b/man/man3/aio_cancel.3
index 4e32cd2bd..2798eba61 100644
--- a/man/man3/aio_cancel.3
+++ b/man/man3/aio_cancel.3
@@ -81,7 +81,7 @@ All requests had already been completed before the call.
 .TP
 \-1
 An error occurred.
-The cause of the error can be found by inspecting
+the error can be found by inspecting
 .IR errno .
 .SH ERRORS
 .TP
diff --git a/man/man3/dlinfo.3 b/man/man3/dlinfo.3
index ada8f643e..8ca490957 100644
--- a/man/man3/dlinfo.3
+++ b/man/man3/dlinfo.3
@@ -198,7 +198,7 @@ NULL is placed in
 On success,
 .BR dlinfo ()
 returns 0.
-On failure, it returns \-1; the cause of the error can be diagnosed using
+On failure, it returns \-1; the error can be diagnosed using
 .BR dlerror (3).
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
diff --git a/man/man3/dlsym.3 b/man/man3/dlsym.3
index 74cc36af2..577e83296 100644
--- a/man/man3/dlsym.3
+++ b/man/man3/dlsym.3
@@ -100,7 +100,7 @@ On success,
 these functions return the address associated with
 .IR symbol .
 On failure, they return NULL;
-the cause of the error can be diagnosed using
+the error can be diagnosed using
 .BR dlerror (3).
 .SH ATTRIBUTES
 For an explanation of the terms used in this section, see
diff --git a/man/man3/fts.3 b/man/man3/fts.3
index d2c520450..461ff88b0 100644
--- a/man/man3/fts.3
+++ b/man/man3/fts.3
@@ -270,7 +270,7 @@ the
 field contains the error number (i.e., the
 .I errno
 value)
-specifying the cause of the error.
+specifying the error.
 Otherwise, the contents of the
 .I fts_errno
 field are undefined.
diff --git a/man/man3/resolver.3 b/man/man3/resolver.3
index c54337218..c7dec6a36 100644
--- a/man/man3/resolver.3
+++ b/man/man3/resolver.3
@@ -462,7 +462,7 @@ the global variable
 .I h_errno
 (see
 .BR gethostbyname (3))
-can be consulted to determine the cause of the error.
+can be consulted to determine the error.
 .SH FILES
 .TP
 .I /etc/resolv.conf
diff --git a/man/man3/rpmatch.3 b/man/man3/rpmatch.3
index 5ef3ca5f9..50f753d38 100644
--- a/man/man3/rpmatch.3
+++ b/man/man3/rpmatch.3
@@ -98,7 +98,7 @@ can fail for any of the reasons that
 .BR regcomp (3)
 or
 .BR regexec (3)
-can fail; the cause of the error
+can fail; the error
 is not available from
 .I errno
 or anywhere else, but indicates a
-- 
2.45.2


