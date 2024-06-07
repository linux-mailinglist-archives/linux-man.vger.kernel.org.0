Return-Path: <linux-man+bounces-1044-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 18C819003A6
	for <lists+linux-man@lfdr.de>; Fri,  7 Jun 2024 14:32:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BC16B289871
	for <lists+linux-man@lfdr.de>; Fri,  7 Jun 2024 12:32:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B315193062;
	Fri,  7 Jun 2024 12:31:44 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D87841922F2;
	Fri,  7 Jun 2024 12:31:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717763504; cv=none; b=ZgO7DxouoTlUzn0Y7cuESNc+/tGiVTadxHhPq1A5Kab8a8sIyLQFmsFkUKFx72gLD6t5oOnICHn/BDqZhf18lYssCUFQCeZa5lBJSk9uuav9MFm94OjlpznVfZjyQeQH9iOXtZm7eH9F14SarWyY4S1vSIr2SWdb5xePg+w7NFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717763504; c=relaxed/simple;
	bh=uvn1dH5DVwalWgzz8CNEqutoNR+0pMPyZqiaBbrRUi4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=md5QTUhrTadLoJCea+jLtedVIhvpLTqljF45iuNsC4e6nKByeIEpxjrjkYLqFWlnsPkWsj/VtKVvSMXETNoPqgeS/E3uo9aBAGPfQz8LMoUSiLrgbEXZVtX3jOgBNzlzp76NicA1MCyQfXC51IpOskjj0QKLln931RhH9JSwxXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9071513D5;
	Fri,  7 Jun 2024 05:32:06 -0700 (PDT)
Received: from e116581.blr.arm.com (e116581.arm.com [10.162.42.8])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 312203F64C;
	Fri,  7 Jun 2024 05:31:37 -0700 (PDT)
From: Dev Jain <dev.jain@arm.com>
To: alx@kernel.org,
	linux-man@vger.kernel.org
Cc: mingo@kernel.org,
	tglx@linutronix.de,
	mark.rutland@arm.com,
	ryan.roberts@arm.com,
	broonie@kernel.org,
	suzuki.poulose@arm.com,
	Anshuman.Khandual@arm.com,
	DeepakKumar.Mishra@arm.com,
	AneeshKumar.KizhakeVeetil@arm.com,
	linux-kernel@vger.kernel.org,
	Dev Jain <dev.jain@arm.com>
Subject: [PATCH 1/2] signal.7: Clearly describe ucontext kernel dump to userspace
Date: Fri,  7 Jun 2024 18:01:18 +0530
Message-Id: <20240607123119.769044-2-dev.jain@arm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240607123119.769044-1-dev.jain@arm.com>
References: <20240607123119.769044-1-dev.jain@arm.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The set of blocked signals is updated from struct sigaction after the
kernel dumps ucontext. Mention this to avoid misunderstanding.

Signed-off-by: Dev Jain <dev.jain@arm.com>
---
 man/man7/signal.7 | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/man/man7/signal.7 b/man/man7/signal.7
index 4ba5306c8..17e75c86d 100644
--- a/man/man7/signal.7
+++ b/man/man7/signal.7
@@ -282,7 +282,15 @@ the thread's alternate signal stack settings.
 .B SA_SIGINFO
 flag, then the above information is accessible via the
 .I ucontext_t
-object that is pointed to by the third argument of the signal handler.)
+object that is pointed to by the third argument of the signal handler.
+We emphasize on the fact that this object contains context information
+of the thread, present before jumping into the handler; the set of
+blocked signals for the current thread would be updated from struct
+sigaction only after
+.I ucontext_t
+has been dumped to userspace. This semantically makes sense since the
+context for which the signals have been blocked, remains only during
+execution of the handler.)
 .IP (1.4)
 Any signals specified in
 .I act\->sa_mask
-- 
2.34.1


