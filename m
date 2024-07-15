Return-Path: <linux-man+bounces-1465-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E40329317E6
	for <lists+linux-man@lfdr.de>; Mon, 15 Jul 2024 17:56:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9F30328227F
	for <lists+linux-man@lfdr.de>; Mon, 15 Jul 2024 15:56:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28C52EAD5;
	Mon, 15 Jul 2024 15:56:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="WHI09D6J"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yb1-f201.google.com (mail-yb1-f201.google.com [209.85.219.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 686C9D53C
	for <linux-man@vger.kernel.org>; Mon, 15 Jul 2024 15:56:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721058962; cv=none; b=d+5WPYS6z+6L/Vd2ygdo/0kgt08K/VF7YUDje4oyLgPTRTnRo3K8XHOFl5YfbzoodVX4KgbniopDZIb9SJ4XFBpHn9CLfUcvQ4h12qd0aSU04fWuOf2jIemo54ILYeEwgCg0Z1r/s79dRnbooGOND4I3Y+5gR0nisFDLxzFN8oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721058962; c=relaxed/simple;
	bh=2lJMl0fzmCp57BNZSxp1gLagDOzEC68C/dtPiu1d5ZI=;
	h=Date:In-Reply-To:Mime-Version:References:Message-ID:Subject:From:
	 To:Cc:Content-Type; b=Etb48Rmv1Q0u3eDSjnX8HyoBcNdaZ6al0cfPSIqgxqaq4Z3x1OL00Q6O4cHOvIv0vkNEt6M+AzcEz2LkWj+VvLgkrM0oYBVTtsBk+UeaYkcQGttigr37oY8oeEU8Tl+3uAZ2BVrxLq6ASvZZmuNLXXnP+knNJySxid/u/QvxpWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=WHI09D6J; arc=none smtp.client-ip=209.85.219.201
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--gnoack.bounces.google.com
Received: by mail-yb1-f201.google.com with SMTP id 3f1490d57ef6-e03c68c7163so7655337276.0
        for <linux-man@vger.kernel.org>; Mon, 15 Jul 2024 08:56:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1721058960; x=1721663760; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fwvJM/Yw1B4UwWuS/sBEJeDeIYo9iKTk2RYiEXvkhKU=;
        b=WHI09D6Jx7UblApKPJJkTQ+MB4GKH9qVQKiO8k2BX6sc2aegX13NUigvgS93HnG4Jg
         zye/3VK/mVXPwGTsVBFtxD71VSJBd8uTziZx568/bLSasa8P+Kv4YuAx5wHWDCHhZwEc
         RxhulEh1K7ca2QAPNzt3VJCZ1i6teGqsO9MNmeu6t4SKM0Fd8e/gS8bCXjv3ncPU5EPq
         Szhi2oeMH1VzcFz0xk9XH9YuTkRmG0YIidr67SK1ZrSFI0O54f0GKVKmGDCOpLO1XC5M
         v5p+R2/lUP8ecChVsUPONjbnAP1wWWHMKUKEE6lWXEswsod7gAyxnCfH48V0VpKu+nCr
         ZNJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721058960; x=1721663760;
        h=content-transfer-encoding:cc:to:from:subject:message-id:references
         :mime-version:in-reply-to:date:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=fwvJM/Yw1B4UwWuS/sBEJeDeIYo9iKTk2RYiEXvkhKU=;
        b=jxl3HWo99xVunJeQfppcA5i74rUPrh8ZNUEEGf/TZVWMnFDuG+Lrn+lBihZ6F/Lwhi
         x5hKtAqej28jF8Hye5ilirt9Jjwk8hURjC8Ghk0bVW8t316BO5NhXc17dguiwpp9aODg
         +giWjVI4FR1BmivjCONN781PjXZO8clUVyVaJGnUUW0uDyw3FCCtBeYOLEwHIec1Ifg5
         88tb/JdkiGPFR7d5cxKJTulbsXgQlFYCyctlU9QZ0rvhVof1WVjLsd54brev99exGkMo
         IyW9052LKNzWLsOJj0vXVS3UtTkjcVnOq1a6Yupp3/j0xGE9XCpowFbjXIvOuhMVSKNM
         nH1w==
X-Forwarded-Encrypted: i=1; AJvYcCVyWnZKY37tDvn1/xLcfkJCda52LKClGEgNt9X3H7EocqNnfjPERdWJV9+YKHi57nvSFey+w4YD1b68ssB93g4LZ2SN6jYakpCa
X-Gm-Message-State: AOJu0Yyp6bhWUFIir8DbM/AWJgJU6OQ2rngwAceSwdUGlIm5QF8N0jwc
	SefmBKrdcYaDJ+edQqWOfLIkRsFqBpwLGna4Pj3op+9CuZyNcNsZ+E8S9Rfeq4fZ0F48OpfSFDl
	IVw==
X-Google-Smtp-Source: AGHT+IFAIcIYN8vbEx7DVbQ2MiarzDkdnygNE36wDsT/wJ0pubu7lX+aQntefxAaUpxmR17EbD31Nfg6RBU=
X-Received: from swim.c.googlers.com ([fda3:e722:ac3:cc00:31:98fb:c0a8:1605])
 (user=gnoack job=sendgmr) by 2002:a05:6902:1025:b0:e03:5a51:382f with SMTP id
 3f1490d57ef6-e041b1153f4mr1654099276.8.1721058960384; Mon, 15 Jul 2024
 08:56:00 -0700 (PDT)
Date: Mon, 15 Jul 2024 15:55:50 +0000
In-Reply-To: <20240715155554.2791018-1-gnoack@google.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
References: <20240715155554.2791018-1-gnoack@google.com>
X-Mailer: git-send-email 2.45.2.993.g49e7a77208-goog
Message-ID: <20240715155554.2791018-2-gnoack@google.com>
Subject: [PATCH 1/5] landlock.7, landlock_*.2: Wording improvements
From: "=?UTF-8?q?G=C3=BCnther=20Noack?=" <gnoack@google.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Konstantin Meskhidze <konstantin.meskhidze@huawei.com>, 
	"=?UTF-8?q?Micka=C3=ABl=20Sala=C3=BCn?=" <mic@digikod.net>, linux-man@vger.kernel.org, 
	"=?UTF-8?q?G=C3=BCnther=20Noack?=" <gnoack@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

* Various wording fixes
* List the same error code multiple times,
  if it can happen for multiple reasons.

Cc: Micka=C3=ABl Sala=C3=BCn <mic@digikod.net>
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
index 4a98f6549..f7bb37cba 100644
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
+.P
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
2.45.2.993.g49e7a77208-goog


