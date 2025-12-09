Return-Path: <linux-man+bounces-4375-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 133C0CB1393
	for <lists+linux-man@lfdr.de>; Tue, 09 Dec 2025 22:41:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 23B6E310876B
	for <lists+linux-man@lfdr.de>; Tue,  9 Dec 2025 21:41:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95BE131AAB3;
	Tue,  9 Dec 2025 21:41:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=keysmash.solutions header.i=@keysmash.solutions header.b="oKR1VVAs"
X-Original-To: linux-man@vger.kernel.org
Received: from mx1.mythic-beasts.com (mx1.mythic-beasts.com [46.235.224.141])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8ACE23064AE
	for <linux-man@vger.kernel.org>; Tue,  9 Dec 2025 21:41:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.224.141
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765316471; cv=none; b=qGaBO2k/gvf2k2K8QVUPbJGixKI+KAVUaVkqnkJKkmKR7JSBb/Qe2DzBhZzjnFqg5R9NQllZs8EJHDY4NkYqZQSwdksFhcaoNtBTM1q4LWu6BZozv6jLGZNA4dRqqe6KdPUKJIztyNmWEaX+7tCtsNMmx2KyM7y8RxSm6++z7TE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765316471; c=relaxed/simple;
	bh=yJYXdxaRv8bzbEA/5+7Gl9RcSnjottQK2kFPfr9sI+Y=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=uv7t8PQhbsjHX7xuO60LjEizHI3R0i0azIbq16FLIip7Odq5iP5pbp9vwkizmVW+/haKl/WEWSskATgw1xcW3ByJvTqaQxMj67jX8DcLkn5i8Zy31ZGQncD8RurTcYrp0A4VrMtiy5uGxsrcOPjo7KAUI/fczkM/2eqoDMTfYnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=keysmash.solutions; spf=pass smtp.mailfrom=keysmash.solutions; dkim=pass (2048-bit key) header.d=keysmash.solutions header.i=@keysmash.solutions header.b=oKR1VVAs; arc=none smtp.client-ip=46.235.224.141
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=keysmash.solutions
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=keysmash.solutions
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=keysmash.solutions; s=mythic-beasts-k1; h=Date:Subject:To:From;
	bh=8H3VbAhvabBtw7yODq4YryrQH/NT/tIQkrKszCDS5oc=; b=oKR1VVAsM1D8PHWF62WmENEQ0l
	m+thPbS9qCQDfKqFJAzQtSHbePb8veyX3xuqwrvoSyynephLSsAmtEYeiNB06aSgG0kbXAAGAnh2A
	xRVUmuACVazAae+B2Uq/94w+3RhDZtDUuLrvloJAMcVTLEt0aeShkYQTJ2+/vz+Y0YEV+LCiujvUN
	som/UyjXr7MQ/wXIH7NjwHEp0tgqw+akvyBBNlMk605HpsPP0LHZffGl653PrJEjoqk4fIyqBF4y+
	sXQXDJrD6aTOhwSF3FJFknTc7Ljt7cU42tWHeyh3RbvGX2Psc+0T0b4E1YTzV++71x8Sa5T9RohrC
	j353xMEw==;
Received: by mailhub-cam-d.mythic-beasts.com with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <x-hv2j5m@keysmash.solutions>)
	id 1vT5PY-009Pag-0e;
	Tue, 09 Dec 2025 21:38:20 +0000
From: Ash Holland <x-hv2j5m@keysmash.solutions>
To: Alejandro Colomar <alx@kernel.org>
Cc: Ash Holland <x-hv2j5m@keysmash.solutions>,
	linux-man@vger.kernel.org
Subject: [PATCH] man/man7/man.7: Don't warn if groff_man.7 is not installed
Date: Tue,  9 Dec 2025 21:38:00 +0000
Message-ID: <03f1e33dd6200c05afaff1f116f5b254cebd45dc.1765314181.git.x-hv2j5m@keysmash.solutions>
X-Mailer: git-send-email 2.51.2
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-BlackCat-Spam-Score: 14

When I invoke e.g. `man man`, I see a warning:

    /home/ash/.nix-profile/bin/man: can't resolve man7/groff_man.7

This is observed by others too: <https://askubuntu.com/q/1521258/478436>

To avoid this, we can simply ask troff not to emit this message:
<https://www.gnu.org/software/groff/manual/groff.html#index-_002esoquiet>

Signed-off-by: Ash Holland <x-hv2j5m@keysmash.solutions>
---
 man/man7/man.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man7/man.7 b/man/man7/man.7
index f460f4ad3..cdf019063 100644
--- a/man/man7/man.7
+++ b/man/man7/man.7
@@ -1 +1 @@
-.so man7/groff_man.7
+.soquiet man7/groff_man.7
-- 
2.51.2


