Return-Path: <linux-man+bounces-5289-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wGg2D6cfyWl/uwUAu9opvQ
	(envelope-from <linux-man+bounces-5289-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Sun, 29 Mar 2026 14:48:39 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id ACBCD35203E
	for <lists+linux-man@lfdr.de>; Sun, 29 Mar 2026 14:48:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 97BE5300B75F
	for <lists+linux-man@lfdr.de>; Sun, 29 Mar 2026 12:48:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57C643128D4;
	Sun, 29 Mar 2026 12:48:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UGQBxIeS"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A04F23C07A
	for <linux-man@vger.kernel.org>; Sun, 29 Mar 2026 12:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774788516; cv=none; b=kQEHz5AjW7n7YTYMWRAJZ5nlIZVhOgEVCADOrDrQjKw6DyKU2R2I6Cwwn0YJUrQeJ0+RRrFj31yNp+cuaZ37j1s/IIwQ2V0GtPReSqfDo+5rr2iAV+9BtUNy6JgwhxweQ/7n0YZrCvmTBNNVDoM8lNpPHVkRjdcQb+u0ntq+hjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774788516; c=relaxed/simple;
	bh=kIZ0qU09g14vMFHT38EkbSdK9Fo9FTCtgyeevD2SHfU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=PE8O6fLM8eYYEjp44EkguvS5v/ACQ7xCxMRi+pYwN/LI/lvycYeuUc1+U3tKUbS9no4LEwf5253u0ox1jmZlI8XbRjhRnigTx6WBrnsjIZujhzP8sxjf6qPBBF1ND9R0x6eSLL1XAvd/IlL3kYzr4OKiyp/F9im/VlQzNDMR1JE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UGQBxIeS; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-43cf906b007so266563f8f.0
        for <linux-man@vger.kernel.org>; Sun, 29 Mar 2026 05:48:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774788513; x=1775393313; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3hH2ptul7v0u6aI6HR6t7vXL0C2Y4UDbG6CWiC92E0k=;
        b=UGQBxIeS/4US4MQblw+GWrcjtxpAbJh2XnMrfQdOm75bLZvL9UcM6hGap1NyQXHpRA
         Zvf7a+MM2KbbF4EQMVSjMQJdTAbp9GFgJqcjOCVNwP+4jn2iaOusJK1g1ONL4Cq9n92h
         vraNo8sVatSDgJFBTdlPQl2pCnx7qDzmdjzjxl4FnbckvHl/tslSlWPI8pQRlLeGDGp1
         dBuejtRYhKKjUjg5dRMIXUcj2O+eW7AwXTGELnjJufu/0CNKstnwKbCkCXdTm+ndnpxd
         eYTkyEfsHo0NoSnKqp9Q1CO8gUyEIbSPQp3GzKZifQkERKTMRDw1105RhtfGUQkKk7Ry
         Wd3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774788513; x=1775393313;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3hH2ptul7v0u6aI6HR6t7vXL0C2Y4UDbG6CWiC92E0k=;
        b=EXCLYsMEI0drB7TzxIA/+XUIcnEf40dqS2OgMPq2YF0zzbK53Ljw8YsEyoKnu2rQmt
         C6HCSAg9HOguzTMlSfjfCzl+35UQDSc0oDqXQ7QHh9+IuewPyY/zRveyi6AYcIDXmj1s
         0EkIXLD3qXjpvyEwV/4/lPzFT+N1Rmb7u7vVS4FiDvS1oKGwbskaAI0gwHA0SLIWgyI7
         7gAlrNUUDlyLASG88o3goaP1J2wZ0Vp8aXl2ubK7spMF7RxaUO+rXlrzxeG8yjjBlDjT
         S5TMV+LLe2MnO+jv38jcWKhDDjPv56ZtJ1RohWcaqJvDgwYxe9ETQj9dgYmvBi/3VCHT
         fI7A==
X-Gm-Message-State: AOJu0YzagI/ke93sa3qg6rAYwVlPhjUa1JQl0Vta3qaZfLxJOt2f0V+m
	hdH2s3XaQUXRN7+BTqHxOAjV3+dmyPWnOJIrmB0Z/Ni/Ms8bGLauwaAy
X-Gm-Gg: ATEYQzw6lmpfJnO6Ks/m/ZedBEh1vmymI+iIHFr0PaAc9cNx6zqvrdBmxmcmr+KCFKV
	7sjqe09bbR1r5nYTtwE8pddbTUcNDOPrr/oSM9RMyW4ZR4ZWBjVgFy+RaDlGxCa0D9fY6c7ul93
	vJDqUrSXqrg0B4QWTAxb6Gl17fDnJb5sTQYhQ5T8Yo8X6ru7ilwhl//OorI2EUA2FkCX47gl71t
	jrOig2kZ5enZbBZJ4LCHfDapjLtrTjKIs06cnag43Skhew7gx2yHD3FIs6yTvZP2KU636A5DOjR
	OCWZWx8dMZqPVDIsdXC3CjjR3U1rtIi9pJIEEILCSxf+IMCVPCEmtd4m16EQFSGbyKUu/V4wpvA
	3SGmH2eMLCO7Gn/qhML1brInFMM1Qtj5RiqWiElPdybbAGJHUpgYwuKAZBftla5my4qbc3uVZBn
	Pv9shMXvuAnaPidvn392Dzkd5zzn9p2mz6ni1Iv5aNprfTNXIg
X-Received: by 2002:a05:6000:2511:b0:43b:4aba:8f35 with SMTP id ffacd0b85a97d-43b9e98db0fmr14978414f8f.12.1774788512637;
        Sun, 29 Mar 2026 05:48:32 -0700 (PDT)
Received: from localhost (ip87-106-108-193.pbiaas.com. [87.106.108.193])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43cf330872asm10150867f8f.17.2026.03.29.05.48.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Mar 2026 05:48:32 -0700 (PDT)
From: =?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
To: Alejandro Colomar <alx@kernel.org>,
	=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?= <mic@digikod.net>
Cc: linux-man@vger.kernel.org,
	=?UTF-8?q?G=C3=BCnther=20Noack?= <gnoack3000@gmail.com>
Subject: [PATCH 3/3] man/man2/landlock_restrict_self.2, man/man7/landlock.7: Document audit logging (ABI v7)
Date: Sun, 29 Mar 2026 14:48:16 +0200
Message-ID: <20260329124815.92502-5-gnoack3000@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260329124815.92502-2-gnoack3000@gmail.com>
References: <20260329124815.92502-2-gnoack3000@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-5289-lists,linux-man=lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.997];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[digikod.net:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: ACBCD35203E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

* Document the flags LANDLOCK_RESTRICT_SELF_LOG_SUBDOMAINS_OFF,
  LANDLOCK_RESTRICT_SELF_LOG_SAME_EXEC_OFF and
  LANDLOCK_RESTRICT_SELF_LOG_NEW_EXEC_ON.
* List these flags in the compatibility table in landlock.7

The documentation text is copied from the kernel documentation,
originally authored by Mickaël Salaün in [1] and [2].

Link[1]: <https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/include/uapi/linux/landlock.h?id=ead9079f75696a028aea8860787770c80eddb8f9>
Link[2]: <https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/include/uapi/linux/landlock.h?id=12bfcda73ac2cf3083c9d6d05724af92da3a4b4b>
Cc: Mickaël Salaün <mic@digikod.net>
Signed-off-by: Günther Noack <gnoack3000@gmail.com>
---
 man/man2/landlock_restrict_self.2 | 67 ++++++++++++++++++++++++++++++-
 man/man7/landlock.7               |  6 ++-
 2 files changed, 70 insertions(+), 3 deletions(-)

diff --git a/man/man2/landlock_restrict_self.2 b/man/man2/landlock_restrict_self.2
index 530ef9a4cd25..9e80a40ee4a4 100644
--- a/man/man2/landlock_restrict_self.2
+++ b/man/man2/landlock_restrict_self.2
@@ -68,8 +68,71 @@ is a Landlock ruleset file descriptor obtained with
 and fully populated with a set of calls to
 .BR landlock_add_rule (2).
 .P
-.I flags
-must be 0.
+By default,
+denied accesses originating from programs that sandbox themselves
+are logged via the audit subsystem.
+Such events typically indicate unexpected behavior,
+such as bugs or exploitation attempts.
+However, to avoid excessive logging,
+access requests denied by a domain not created by the originating program
+are not logged by default.
+The rationale is that programs should know their own behavior,
+but not necessarily the behavior of other programs.
+This default configuration is suitable for most programs
+that sandbox themselves.
+For specific use cases,
+the following flags allow programs to modify this default logging behavior.
+.P
+The
+.B LANDLOCK_RESTRICT_SELF_LOG_SAME_EXEC_OFF
+and
+.B LANDLOCK_RESTRICT_SELF_LOG_NEW_EXEC_ON
+flags apply to the newly created Landlock domain.
+.TP
+.B LANDLOCK_RESTRICT_SELF_LOG_SAME_EXEC_OFF
+Disables logging of denied accesses
+originating from the thread creating the Landlock domain,
+as well as its children,
+as long as they continue running the same executable code
+(i.e., without an intervening
+.BR execve (2)
+call).
+This is intended for programs that execute unknown code
+without invoking
+.BR execve (2),
+such as script interpreters.
+Programs that only sandbox themselves should not set this flag,
+so users can be notified of unauthorized access attempts
+via system logs.
+.TP
+.B LANDLOCK_RESTRICT_SELF_LOG_NEW_EXEC_ON
+Enables logging of denied accesses after an
+.BR execve (2)
+call,
+providing visibility into unauthorized access attempts
+by newly executed programs within the created Landlock domain.
+This flag is recommended only when all potential executables
+in the domain are expected to comply with the access restrictions,
+as excessive audit log entries could make it more difficult
+to identify critical events.
+.TP
+.B LANDLOCK_RESTRICT_SELF_LOG_SUBDOMAINS_OFF
+Disables logging of denied accesses
+originating from nested Landlock domains created by the caller
+or its descendants.
+This flag should be set according to runtime configuration,
+not hardcoded, to avoid suppressing important security events.
+It is useful for container runtimes or sandboxing tools
+that may launch programs which themselves create Landlock domains
+and could otherwise generate excessive logs.
+Unlike
+.BR LANDLOCK_RESTRICT_SELF_LOG_SAME_EXEC_OFF ,
+this flag only affects future nested domains,
+not the one being created.
+It can also be used with a
+.I ruleset_fd
+value of \-1 to mute subdomain logs
+without creating a domain.
 .SH RETURN VALUE
 On success,
 .BR landlock_restrict_self ()
diff --git a/man/man7/landlock.7 b/man/man7/landlock.7
index 05664b3d7cba..bcf06ea30ad4 100644
--- a/man/man7/landlock.7
+++ b/man/man7/landlock.7
@@ -445,7 +445,7 @@ users should query the Landlock ABI version:
 box;
 ntb| ntb| lbx
 nt| nt| lbx.
-ABI	Kernel	Newly introduced access rights
+ABI	Kernel	Newly introduced constants
 _	_	_
 1	5.13	LANDLOCK_ACCESS_FS_EXECUTE
 \^	\^	LANDLOCK_ACCESS_FS_WRITE_FILE
@@ -472,6 +472,10 @@ _	_	_
 _	_	_
 6	6.12	LANDLOCK_SCOPE_ABSTRACT_UNIX_SOCKET
 \^	\^	LANDLOCK_SCOPE_SIGNAL
+_	_	_
+7	6.15	LANDLOCK_RESTRICT_SELF_LOG_SAME_EXEC_OFF
+\^	\^	LANDLOCK_RESTRICT_SELF_LOG_NEW_EXEC_ON
+\^	\^	LANDLOCK_RESTRICT_SELF_LOG_SUBDOMAINS_OFF
 .TE
 .P
 Users should use the Landlock ABI version rather than the kernel version
-- 
2.53.0


