Return-Path: <linux-man+bounces-3292-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BBA2EB0FFC5
	for <lists+linux-man@lfdr.de>; Thu, 24 Jul 2025 06:58:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E166656445B
	for <lists+linux-man@lfdr.de>; Thu, 24 Jul 2025 04:58:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9186A1F37A1;
	Thu, 24 Jul 2025 04:58:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cyphar.com header.i=@cyphar.com header.b="OM6PyxmO"
X-Original-To: linux-man@vger.kernel.org
Received: from mout-p-101.mailbox.org (mout-p-101.mailbox.org [80.241.56.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3DBB10E0
	for <linux-man@vger.kernel.org>; Thu, 24 Jul 2025 04:58:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=80.241.56.151
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753333120; cv=none; b=NdI3ZV7gHue2JlqqNrpHzNXZhB2WrwDOd5o2OCEvPaJESP+KkSFjbJLQQ3nvzlRmTBjDAcDhiJ4Pg0MhgJl7989uEoyhxouBE0yibWpw7vUliuOOlMrfG3bWlH82JXavUaZqU+UlVf0p3pmED0XXefi2maVvzmtpEL8PwXiWsIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753333120; c=relaxed/simple;
	bh=r8htvO4tw1vaE8ciuk2nG/uFyHFfFLIIU62x3//FH5U=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=gLbDi5+xKqlSXM+pQfVfCo2k5Cl5XY0jn1aM+jHLu+KuG+X8X4qANecu+0WP5pgV0OLocQvDTdHBuRT9uhdj2LFItiYHkltDA2mEZjYLLdoGN6y+0oOp+6pllHPgd2LkNlal3+DOUqO0YdHMLn8KF9f7JIZynEr+AZvA8eucn3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cyphar.com; spf=pass smtp.mailfrom=cyphar.com; dkim=pass (2048-bit key) header.d=cyphar.com header.i=@cyphar.com header.b=OM6PyxmO; arc=none smtp.client-ip=80.241.56.151
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cyphar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cyphar.com
Received: from smtp202.mailbox.org (smtp202.mailbox.org [IPv6:2001:67c:2050:b231:465::202])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-101.mailbox.org (Postfix) with ESMTPS id 4bnf0V6fNzz9sqh;
	Thu, 24 Jul 2025 06:58:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cyphar.com; s=MBO0001;
	t=1753333115;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=dG9EE+Nj55pYoQjiOb5hla/XJA9547TBg3kdvfkcHMI=;
	b=OM6PyxmOR3OQ1SGjkZOWCekam4ENmHyZ1ay3uKoZc373XkQ3SwA0w8M7W3ZlG/x1YZWZ98
	t1R6cn7ezt5V0Jvd2QjNBUH7NvZv9Vx+k8AI1KQ/X8dKm/1Gerv8fB0olTVsiVQplnGvab
	FhiwlxlRdtUNsaPD/V5iZwQXMz7zWqfQX5nKLlsnn8djvfHspgjr+ZU7RC85l/gYensi73
	8vFcAgWRESwM1ToVfNnrm8ZJbwI6iiIgnOIRPbFTAju0LJqRJ+2vgw8PXsoYDX1MT8uI9A
	lBiHUxTNFRP3If58bJ4dGl91rwOBkzT1ROzIKrYB53j043KzypWyGlBTLfsY8Q==
Authentication-Results: outgoing_mbo_mout;
	dkim=none;
	spf=pass (outgoing_mbo_mout: domain of cyphar@cyphar.com designates 2001:67c:2050:b231:465::202 as permitted sender) smtp.mailfrom=cyphar@cyphar.com
From: Aleksa Sarai <cyphar@cyphar.com>
Date: Thu, 24 Jul 2025 14:58:25 +1000
Subject: [PATCH] openat2.2: update RESOLVE_CACHED to mention kernel version
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250724-openat2-cached-note-v1-1-037e7398f797@cyphar.com>
X-B4-Tracking: v=1; b=H4sIAHC9gWgC/x3MQQqAIBBA0avIrBswM6yuEi1Mp5qNhkoE0d2Tl
 m/x/wOZElOGSTyQ6OLMMVS0jQB32LATsq8GJVUvjdIYTwq2KHTWHeQxxEKo9di51sh1sAPU8ky
 08f1f5+V9P/WSZzVlAAAA
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Aleksa Sarai <cyphar@cyphar.com>
X-Developer-Signature: v=1; a=openpgp-sha256; l=938; i=cyphar@cyphar.com;
 h=from:subject:message-id; bh=r8htvO4tw1vaE8ciuk2nG/uFyHFfFLIIU62x3//FH5U=;
 b=owGbwMvMwCWmMf3Xpe0vXfIZT6slMWQ07i0zX352lbTds4uun/MYtIzaf8WxXA0PdXNsXVK0u
 PnfbaXUjlIWBjEuBlkxRZZtfp6hm+YvvpL8aSUbzBxWJpAhDFycAjCR2A2MDKuj8r/X/vdrFZmt
 +e2u/I7js15dfytyOurRzva8Y9MePKxg+Cv4ReSaWtmR7W7mjGKPPfo6bd7abCk/9SSX31UmqPb
 zQ14A
X-Developer-Key: i=cyphar@cyphar.com; a=openpgp;
 fpr=C9C370B246B09F6DBCFC744C34401015D1D2D386
X-Rspamd-Queue-Id: 4bnf0V6fNzz9sqh

Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
---
 man/man2/openat2.2 | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man/man2/openat2.2 b/man/man2/openat2.2
index e7d400920049..ab296b9cd0d6 100644
--- a/man/man2/openat2.2
+++ b/man/man2/openat2.2
@@ -371,7 +371,8 @@ a system pathname that is used by an application is modified
 (e.g., in a new distribution release)
 so that a pathname component (now) contains a bind mount.
 .TP
-.B RESOLVE_CACHED
+.BR RESOLVE_CACHED " (since Linux 5.12)"
+.\" commit 99668f618062816ca7ba639b007eb145b9d3d41e
 Make the open operation fail unless all path components are already present
 in the kernel's lookup cache.
 If any kind of revalidation or I/O is needed to satisfy the lookup,

---
base-commit: 5d53969e60c484673745ed47d6015a1f09c8641e
change-id: 20250724-openat2-cached-note-4493c170b8a8

Best regards,
-- 
Aleksa Sarai <cyphar@cyphar.com>


