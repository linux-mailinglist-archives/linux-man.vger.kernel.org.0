Return-Path: <linux-man+bounces-1493-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 49C77937898
	for <lists+linux-man@lfdr.de>; Fri, 19 Jul 2024 15:38:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 64C8B1C21AF6
	for <lists+linux-man@lfdr.de>; Fri, 19 Jul 2024 13:38:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19D5D12BE91;
	Fri, 19 Jul 2024 13:38:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="V1hVTiGa"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yb1-f202.google.com (mail-yb1-f202.google.com [209.85.219.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DE021E489
	for <linux-man@vger.kernel.org>; Fri, 19 Jul 2024 13:38:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721396309; cv=none; b=Vezt7jvUwDKpO9CinMhpWVedIo/f+Lp+sBzqrcPK0/wOCFj7/+Lcj88qib1YPy223rwhqhgqUqbkQuGz5LcdqwIL9vC5XStRMLDo7eFgVGoRrHO/vcXbREB3GWB1UvYGy8YlIQcFYZOvvTuGPZnU+2KYiOvzvR6a2JSD1janFsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721396309; c=relaxed/simple;
	bh=HDM2hLZPl5n/86bICUGhxhX11huT0m5L284lpZ+BFSM=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=j/A2bT53IWdq+MF3oh0yaqKfeg0AcVQ1xfRmlW/CTwX4GX2qgpapE1QamdoI9l8g4Q0g2v/3WQSle8iERR6WPKU6PfTxYImfUPPZDdVEWEwVyVL0iN2CNn+7In5wT7NFWPkMZNTDyd5T24HGJGIwldG4WjTO8nMAgp0yfaH1yeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=V1hVTiGa; arc=none smtp.client-ip=209.85.219.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com
Received: by mail-yb1-f202.google.com with SMTP id 3f1490d57ef6-dc691f1f83aso1441523276.1
        for <linux-man@vger.kernel.org>; Fri, 19 Jul 2024 06:38:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1721396307; x=1722001107; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pbnSZTXlY0/FclBk2BgGCl6SClvpMizw7aatdHbchfw=;
        b=V1hVTiGaW+iwNCa2rZWs1BRIXAA2Sn9pXQjpIvr4ZRozIl7z8EjEfi7Sfya5EzOXrm
         I/R/pe0atIPy0KrY02zkxr0UlIN0r3ViwcFr4/gQuZ9nqy6eMTvzGZeVx42Zyu2HnEqv
         S1ydN0xoQBa29gX/kbPipVtZrrcKmHNARvXwjJ+qsRYohZipJbfzJIwAQEhjfbPmQCw/
         QK8rneTfDeb97DF4W9NVHUqlnAOE2x4cnowDab+OiX2zNKMdMGHKhNXdONEud0u1FXGF
         toTU+8zOX4TwcnwY/egjQn2h6HT5tr5okvgI3vWH59TOCUpSBZtJ+FBVrTSdwJpRt7v2
         ifLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721396307; x=1722001107;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=pbnSZTXlY0/FclBk2BgGCl6SClvpMizw7aatdHbchfw=;
        b=e+QjZ6EKDbMFqe7sA69IdRlAAzvFWQ62ay0+IpwyjCnOeZSz14umDYuJGSKt9Vve1X
         Y7nR6iM474wwwpdvIkjN0UOgYZaOlEN0oV/w8qmIvY+oswqtS/tde58pnNrkwhY6cH6P
         2WApjt+Cd1g5ml8NHnGU3f1KP/sRQwWlxTZusEXiw8lqP7VCh6u6txYNPz3/TlEOTOtJ
         bdrFYb1leIBUbgqbcBRHSnTdNfxumdfbhdzkn6/P4gY4aE+NBai3YgmyIJ2FYZ4tdErg
         AGxDYHKgFzTBv2GEVyhZwRjHSRjl6fRmqLGeqzpiZ6GcYt9HeFgTFIP+SM51IbPLVfjz
         TCpw==
X-Forwarded-Encrypted: i=1; AJvYcCUcO7V8OJAFJukjGbPS8uBMv8j9liWTvT+H/jViNQGikFHEEy5og185a+WBAW7O0fEW1Z59XfJPaq308OBYMWRW7FIiMPDXDHUO
X-Gm-Message-State: AOJu0YxGogD07/rUNXnZJPRgrVYVo7ePNqOMh5b4WQ6HrF+2QqaO/Nxd
	80db4uJvgna7GXIhZAiuB17O59XhACYFUPVemx4ioioc5D3nUe2a6WENfuy01ShpiK0DKDC0OE7
	TLw==
X-Google-Smtp-Source: AGHT+IFnDeII51bd9AHdyiN7Mr2W4s6AiB5CWzjkv5arE1b8ZRhonH6VxLJDQ95pk3ETA0wAwbIM4ezKJE0=
X-Received: from swim.c.googlers.com ([fda3:e722:ac3:cc00:31:98fb:c0a8:1605])
 (user=gnoack job=sendgmr) by 2002:a05:6902:2d41:b0:e05:a5c1:81ff with SMTP id
 3f1490d57ef6-e05ff2fcefbmr50081276.5.1721396307291; Fri, 19 Jul 2024 06:38:27
 -0700 (PDT)
Date: Fri, 19 Jul 2024 13:37:58 +0000
In-Reply-To: <20240719133801.3541732-2-gnoack@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240719133801.3541732-2-gnoack@google.com>
X-Mailer: git-send-email 2.45.2.1089.g2a221341d9-goog
Message-ID: <20240719133801.3541732-3-gnoack@google.com>
Subject: [PATCH v2 1/5] landlock.7, landlock_*.2: wfix
From: "=?UTF-8?q?G=C3=BCnther=20Noack?=" <gnoack@google.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: "=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?=" <mic@digikod.net>, Konstantin Meskhidze <konstantin.meskhidze@huawei.com>, 
	linux-man@vger.kernel.org, 
	"=?UTF-8?q?G=C3=BCnther=20Noack?=" <gnoack@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

* Various wording fixes
* List the same error code multiple times,
  if it can happen for multiple reasons.

Reviewed-by: Micka=C3=ABl Sala=C3=BCn <mic@digikod.net>
Signed-off-by: G=C3=BCnther Noack <gnoack@google.com>
---
 man/man2/landlock_add_rule.2       |  9 +++++++--
 man/man2/landlock_create_ruleset.2 |  6 +++---
 man/man2/landlock_restrict_self.2  | 11 ++++++-----
 man/man7/landlock.7                |  6 ++++--
 4 files changed, 20 insertions(+), 12 deletions(-)

diff --git a/man/man2/landlock_add_rule.2 b/man/man2/landlock_add_rule.2
index d4ae8f2f6..fa0b1f109 100644
--- a/man/man2/landlock_add_rule.2
+++ b/man/man2/landlock_add_rule.2
@@ -60,7 +60,9 @@ struct landlock_path_beneath_attr {
 .in
 .IP
 .I allowed_access
-contains a bitmask of allowed filesystem actions for this file hierarchy
+contains a bitmask of allowed filesystem actions,
+which can be applied on the given
+.I parent_fd
 (see
 .B Filesystem actions
 in
@@ -92,7 +94,10 @@ Landlock is supported by the kernel but disabled at boot=
 time.
 .TP
 .B EINVAL
 .I flags
-is not 0, or the rule accesses are inconsistent (i.e.,
+is not 0.
+.TP
+.B EINVAL
+The rule accesses are inconsistent (i.e.,
 .I rule_attr\->allowed_access
 is not a subset of the ruleset handled accesses).
 .TP
diff --git a/man/man2/landlock_create_ruleset.2 b/man/man2/landlock_create_=
ruleset.2
index 618d54f37..871b91dcb 100644
--- a/man/man2/landlock_create_ruleset.2
+++ b/man/man2/landlock_create_ruleset.2
@@ -23,7 +23,8 @@ Standard C library
 A Landlock ruleset identifies a set of rules (i.e., actions on objects).
 This
 .BR landlock_create_ruleset ()
-system call enables creating a new file descriptor identifying a ruleset.
+system call creates a new file descriptor
+which identifies a ruleset.
 This file descriptor can then be used by
 .BR landlock_add_rule (2)
 and
@@ -45,8 +46,7 @@ struct landlock_ruleset_attr {
 .in
 .IP
 .I handled_access_fs
-is a bitmask of actions that is handled by this ruleset and
-should then be forbidden if no rule explicitly allows them
+is a bitmask of handled filesystem actions
 (see
 .B Filesystem actions
 in
diff --git a/man/man2/landlock_restrict_self.2 b/man/man2/landlock_restrict=
_self.2
index d4e5e753c..f044c6b31 100644
--- a/man/man2/landlock_restrict_self.2
+++ b/man/man2/landlock_restrict_self.2
@@ -20,7 +20,7 @@ Standard C library
 .SH DESCRIPTION
 Once a Landlock ruleset is populated with the desired rules, the
 .BR landlock_restrict_self ()
-system call enables enforcing this ruleset on the calling thread.
+system call enforces this ruleset on the calling thread.
 See
 .BR landlock (7)
 for a global overview.
@@ -38,10 +38,11 @@ with multiple independent rulesets coming from differen=
t sources
 built-in application policy).
 However, most applications should only need one call to
 .BR landlock_restrict_self ()
-and they should avoid arbitrary numbers of such calls because of the
-composed rulesets limit.
-Instead, developers are encouraged to build a tailored ruleset thanks to
-multiple calls to
+and they should avoid arbitrary numbers of such calls
+because of the composed rulesets limit.
+Instead,
+developers are encouraged to build a single tailored ruleset
+with multiple calls to
 .BR landlock_add_rule (2).
 .P
 In order to enforce a ruleset, either the caller must have the
diff --git a/man/man7/landlock.7 b/man/man7/landlock.7
index 4a98f6549..652054f15 100644
--- a/man/man7/landlock.7
+++ b/man/man7/landlock.7
@@ -58,7 +58,7 @@ and
 .BR landlock_create_ruleset (2)
 for more context.
 .P
-A file can only receive these access rights:
+The following access rights apply only to files:
 .TP
 .B LANDLOCK_ACCESS_FS_EXECUTE
 Execute a file.
@@ -87,6 +87,9 @@ or
 .BR open (2)
 with
 .BR O_TRUNC .
+.IP
+This access right is available since the third version of the Landlock ABI=
.
+.IP
 Whether an opened file can be truncated with
 .BR ftruncate (2)
 is determined during
@@ -97,7 +100,6 @@ using
 .B LANDLOCK_ACCESS_FS_READ_FILE
 and
 .BR LANDLOCK_ACCESS_FS_WRITE_FILE .
-This access right is available since the third version of the Landlock ABI=
.
 .P
 A directory can receive access rights related to files or directories.
 The following access right is applied to the directory itself,
--=20
2.45.2.1089.g2a221341d9-goog


