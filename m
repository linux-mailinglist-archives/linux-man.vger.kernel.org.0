Return-Path: <linux-man+bounces-5497-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WGkKEQ10BWpuXQIAu9opvQ
	(envelope-from <linux-man+bounces-5497-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Thu, 14 May 2026 09:04:45 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 10A0353EAD2
	for <lists+linux-man@lfdr.de>; Thu, 14 May 2026 09:04:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 753D33025501
	for <lists+linux-man@lfdr.de>; Thu, 14 May 2026 07:04:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B1173A6F1C;
	Thu, 14 May 2026 07:04:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="tGHfq2Z4"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 691E73AD50A
	for <linux-man@vger.kernel.org>; Thu, 14 May 2026 07:04:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778742266; cv=none; b=U+Y4Vwuo9j7t6YAvRVYYiO6SFMq62J+vxyLFgXrO8WufKDkbZ60baKjjp+VFaWelBXb7qrRcdqxO9mLZk4MjEiZK2kGE225uRQ4iFgQ15WXFRdKuhb8MOraNuz5trN0ClhZ3ALTV4ZMr21wEtt3esPJ22GSJP2bl+BQhZKj5Bvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778742266; c=relaxed/simple;
	bh=3MMAAJUWIO0Glcx7xTlgO+VyAEqcB78W6G5Uu194i6o=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=SfXhgO8gz8grW9YawJz/AMMBGbTibP+XdYFLNfirsazrEkAakWxsEKLY74NOgnAtfqCxkIr/oUO5BedmSuxxVdhHIq15b2rSlGfZOWcMLzmIFjhA4ksW1wPe8agq0xHzGAt9BHw5ewdxLBZ9HypKr7zigNFmdYASJcpucOrPJZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=tGHfq2Z4; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-44a044cb827so6064558f8f.0
        for <linux-man@vger.kernel.org>; Thu, 14 May 2026 00:04:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778742264; x=1779347064; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nUKVeyfE2t+3Rp6YQV1s2ARAXj3ExNHyHH2Pi0qL0po=;
        b=tGHfq2Z4YkYBm4x+4qAuOplXXM7zgJY8/lDNTD8Yl8e5G7OlshcByV/NJiQVjQ1N58
         oEjD9gH8IBT7eOuQGg7nLPE5EYL7BluuuxL0O2ewi8Mhtchl/W+fhX4RAHPb4ASPAEF8
         9RLoaULCTzdsmnwrVsMNrb4BGWQfvhfs9RpMWomSw3PVhkrLHE9nPQWEkOJ3b55Ou+0I
         RqS6ziZuC4GSYsv4MXBB5TXpP3e6ghNlfb2RSWlkM0VIDEq3maIQ7mYN3LYHOq/Vuuxn
         2y2e6PwtBcZiDzjcQS+YmDMTWwLkGdaXmih6JOAVjdMT+j3xmj7OIVMaW1iVghSe8DJK
         18YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778742264; x=1779347064;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nUKVeyfE2t+3Rp6YQV1s2ARAXj3ExNHyHH2Pi0qL0po=;
        b=PkwwpXXevg+e0OE7zkm29xDQ3py2HxJBB+7gSWc1lWMhG774Z6VmftTjTIADtnt8W0
         WnRUnKpmKIr8vNf81bi+vIbU4XZ1EqHNGvLQbWUBnDYgeUl8jjF6iTdsMt9TYjZGCjFl
         QWy6UNdFXtoeUUigKTERXqwK9qQHhhVt6qL+fBApPRT7Q+iC7Vy2YJvZ0OrexQiK54HJ
         murLWzV+ZgNJfW6NQccCaNs49cteSV4o7wROMAeJaOgRCc9xnC/pIRkPZRcv/E8XlMN7
         ZWcEK/EzRCjqETQgtzeWibZpY88rP8giksVALIfC88IE6ulHOjUbTCWFoqtRcTRlkEJp
         SErA==
X-Gm-Message-State: AOJu0Yyg18XwUp1SCzIOK1nqwM7BGm5wKdlRVju82bYiQqFXK/wkAJRz
	j19FyLvkKpDWso295ufiFqYEfL4b3Sk2MrVtBFa7TmaA7ZmKY7EL3LsZ
X-Gm-Gg: Acq92OEsLPq4wReDAkZR3+rdqY5kEpE5mNi3gBbGgCGZXnGBp2cQie9PR8vGFOxef8c
	rPLFhj6JaLYZd8AKK6v7iJgJyfzUaa7t9SQ5D9GSimXqqztYfZcTpbDJx6bdkY8hUsO2ZqLF/0c
	z9cd7bISQcOy6pxra1g31kkcPQr9Zg9FqaWNT9YN8ZbTwhVNZxLwiKFp1DJzlOrXN8SyQm01cmt
	6zlorrw9Juww9xNtMCF7TfR8PtKcVKvULhKyi5h0zBspt7on+tuTR12ENmwLztujotNQEnRfXLb
	xEfdF5WLAHS596ftTCssuWnqdN+jxoYh10yapGSX3UhAOqVakfzIhJQNXgvcwsiWaGZcXpflmdK
	ZqatGxT80uKBgyM8M3iWTtxB6k5+wrTFCFZOj6lMzhU238bM+/E6kRvV7ieuBoyHsHjLQ5GQqqP
	+xaeJS7nIRGBsiowkR6JgB41T9ionErx3EWiJdWLLGLjMAcnCEbYk3F4LBH6g=
X-Received: by 2002:a05:6000:22c8:b0:455:70bc:216d with SMTP id ffacd0b85a97d-45c7958661bmr10481301f8f.12.1778742263634;
        Thu, 14 May 2026 00:04:23 -0700 (PDT)
Received: from localhost (ip87-106-108-193.pbiaas.com. [87.106.108.193])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45da0fe248dsm4615632f8f.30.2026.05.14.00.04.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 May 2026 00:04:23 -0700 (PDT)
From: =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To: Alejandro Colomar <alx@kernel.org>,
	=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
Cc: linux-man@vger.kernel.org,
	=?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH 2/2] man/man7/landlock.7: Document LANDLOCK_ACCESS_FS_RESOLVE_UNIX (ABI v9)
Date: Thu, 14 May 2026 09:04:17 +0200
Message-ID: <20260514070417.7923-3-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260514070417.7923-1-gnoack3000@gmail.com>
References: <20260514070417.7923-1-gnoack3000@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 10A0353EAD2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5497-lists,linux-man=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gnoack3000@gmail.com,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Action: no action

Document the new LANDLOCK_ACCESS_FS_RESOLVE_UNIX filesystem access right,
which controls lookups of pathname UNIX domain sockets.  Restricts both
connect(2) and sendmsg(2) with an explicit recipient address to UNIX
sockets created outside the Landlock domain (same semantics as
LANDLOCK_SCOPE_* flags).  Denied attempts return EACCES.

Available since Linux 7.1 (Landlock ABI version 9).

Signed-off-by: Günther Noack <gnoack3000@gmail.com>
---
 man/man7/landlock.7 | 56 +++++++++++++++++++++++++++++++++++++--------
 1 file changed, 46 insertions(+), 10 deletions(-)

diff --git a/man/man7/landlock.7 b/man/man7/landlock.7
index 0e3a11489af2..d0d9c720bfaf 100644
--- a/man/man7/landlock.7
+++ b/man/man7/landlock.7
@@ -139,6 +139,38 @@ whose implementations are safe and return the right error codes
 .RE
 .IP
 This access right is available since the fifth version of the Landlock ABI.
+.TP
+.B LANDLOCK_ACCESS_FS_RESOLVE_UNIX
+Look up pathname UNIX
+domain sockets
+.RB ( unix (7)).
+On UNIX domain sockets,
+this restricts both calls to
+.BR connect (2)
+and
+.BR sendmsg (2)
+with an explicit recipient address.
+.IP
+This access right only applies to connections to UNIX server sockets
+which were created outside the newly created Landlock domain
+(e.g., from within a parent domain or from an unrestricted process).
+Newly created UNIX servers
+within the same Landlock domain
+continue to be accessible.
+In this regard,
+.B LANDLOCK_ACCESS_FS_RESOLVE_UNIX
+has the same semantics as the
+.B LANDLOCK_SCOPE_*
+flags.
+.IP
+If a resolve attempt is denied,
+the operation returns an
+.B EACCES
+error,
+in line with other filesystem access rights
+(but different to denials for abstract UNIX domain sockets).
+.IP
+This access right is available since the ninth version of the Landlock ABI.
 .P
 Whether an opened file can be truncated with
 .BR ftruncate (2)
@@ -478,6 +510,8 @@ _	_	_
 \^	\^	LANDLOCK_RESTRICT_SELF_LOG_SUBDOMAINS_OFF
 _	_	_
 8	7.0	LANDLOCK_RESTRICT_SELF_TSYNC
+_	_	_
+9	7.1	LANDLOCK_ACCESS_FS_RESOLVE_UNIX
 .TE
 .P
 Users should use the Landlock ABI version rather than the kernel version
@@ -563,7 +597,8 @@ attr.handled_access_fs =
         LANDLOCK_ACCESS_FS_MAKE_SYM |
         LANDLOCK_ACCESS_FS_REFER |
         LANDLOCK_ACCESS_FS_TRUNCATE |
-        LANDLOCK_ACCESS_FS_IOCTL_DEV;
+        LANDLOCK_ACCESS_FS_IOCTL_DEV |
+        LANDLOCK_ACCESS_FS_RESOLVE_UNIX;
 .EE
 .in
 .P
@@ -578,14 +613,15 @@ and only use the available subset of access rights:
  * numbers hardcoded to keep the example short.
  */
 __u64 landlock_fs_access_rights[] = {
-    (LANDLOCK_ACCESS_FS_MAKE_SYM  << 1) \- 1,  /* v1                  */
-    (LANDLOCK_ACCESS_FS_REFER     << 1) \- 1,  /* v2: add "refer"     */
-    (LANDLOCK_ACCESS_FS_TRUNCATE  << 1) \- 1,  /* v3: add "truncate"  */
-    (LANDLOCK_ACCESS_FS_TRUNCATE  << 1) \- 1,  /* v4: TCP support     */
-    (LANDLOCK_ACCESS_FS_IOCTL_DEV << 1) \- 1,  /* v5: add "ioctl_dev" */
-    (LANDLOCK_ACCESS_FS_IOCTL_DEV << 1) \- 1,  /* v6: same            */
-    (LANDLOCK_ACCESS_FS_IOCTL_DEV << 1) \- 1,  /* v7: same            */
-    (LANDLOCK_ACCESS_FS_IOCTL_DEV << 1) \- 1,  /* v8: same            */
+    (LANDLOCK_ACCESS_FS_MAKE_SYM     << 1) \- 1,  /* v1                     */
+    (LANDLOCK_ACCESS_FS_REFER        << 1) \- 1,  /* v2: add "refer"        */
+    (LANDLOCK_ACCESS_FS_TRUNCATE     << 1) \- 1,  /* v3: add "truncate"     */
+    (LANDLOCK_ACCESS_FS_TRUNCATE     << 1) \- 1,  /* v4: TCP support        */
+    (LANDLOCK_ACCESS_FS_IOCTL_DEV    << 1) \- 1,  /* v5: add "ioctl_dev"    */
+    (LANDLOCK_ACCESS_FS_IOCTL_DEV    << 1) \- 1,  /* v6: same               */
+    (LANDLOCK_ACCESS_FS_IOCTL_DEV    << 1) \- 1,  /* v7: same               */
+    (LANDLOCK_ACCESS_FS_IOCTL_DEV    << 1) \- 1,  /* v8: same               */
+    (LANDLOCK_ACCESS_FS_RESOLVE_UNIX << 1) \- 1,  /* v9: add "resolve_unix" */
 };
 \&
 int abi = landlock_create_ruleset(NULL, 0,
@@ -598,7 +634,7 @@ if (abi == \-1) {
     perror("Unable to use Landlock");
     return;  /* Graceful fallback: Do nothing.  */
 }
-abi = MIN(abi, 8);
+abi = MIN(abi, 9);
 \&
 /* Only use the available rights in the ruleset.  */
 attr.handled_access_fs &= landlock_fs_access_rights[abi \- 1];
-- 
2.54.0


