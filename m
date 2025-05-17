Return-Path: <linux-man+bounces-2938-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E231AABAA00
	for <lists+linux-man@lfdr.de>; Sat, 17 May 2025 14:16:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 834004A51E7
	for <lists+linux-man@lfdr.de>; Sat, 17 May 2025 12:16:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7E6D175D53;
	Sat, 17 May 2025 12:16:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HTV9g1iq"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 761602B2DA
	for <linux-man@vger.kernel.org>; Sat, 17 May 2025 12:16:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747484185; cv=none; b=bhvlus1XPf5rQo0jFxEbmjEfCUTkxoh8Nt/I10lIR6lTvbg602mnOezNnDvBtSj4CItHRM6um77QjzxDnm5sbvYYTvR/5B/ifqvDkKohbeSZlqPIGvqVZDX4Hj5bEZ3q7I8bgTUoA9r+pGvWHU4jRoLL2bieio7nrREPhJF7Cc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747484185; c=relaxed/simple;
	bh=Z11XyieDxkRqrRgLaQIRmO6zoQ+Wm3euHuLyE3jcAaI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oDJYRth0RyrYrp8Jm9EbUx6H7pj5aWFjvmxaQ7rpcW8BbL9pVABnHcf69i7m9cV80Q26tcK8jiPvD5jTm+wCQhkHPJF3xEWlAyQskDPH7QS6zytfrCIZMUJWWUUIi1eKLABan+MRVqT8boL5mq5Z/VT1mDdkjb70u8EAO3Hc1Ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HTV9g1iq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A9F43C4CEE3;
	Sat, 17 May 2025 12:16:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747484184;
	bh=Z11XyieDxkRqrRgLaQIRmO6zoQ+Wm3euHuLyE3jcAaI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HTV9g1iqkP6vgzABMnZJ/KY0JgxMPQiOr2pBxgmSFBt4PCl1YNm8HBO4b0rw/80Sz
	 JY6xNmLGiBVETqjJk/NRk97WQXBlBFdEnUN0aBVlFnQqWq/tql2M3CJPVCZ3lmH2eS
	 cv2kWxeps951VMvvFMoltZUFCsD+tYIlIl4zdBRQ7sUstl/oOzU/k8T06PrdoOa+Bn
	 Ek7jWwRuAeFTyv/9WkRjsrqB2GocO+x6jSW2nTPoieoo+RVg+nC9aoFvkwG8NADiiB
	 3ILoiAdkycoiN401F/5LRA8ydV//BSAQLMeZpISHBmu3QIbSQnf0trppHQ+dA/RTQL
	 gPOQLhRZ+WVgg==
Date: Sat, 17 May 2025 14:16:20 +0200
From: Alejandro Colomar <alx@kernel.org>
To: linux-man@vger.kernel.org
Cc: Alejandro Colomar <alx@kernel.org>
Subject: [PATCH v1 1/2] man/man3/_Fork.3: Document _Fork()
Message-ID: <a90d0f4c82535f6ee90ae572f0a12c33504207fa.1747484082.git.alx@kernel.org>
X-Mailer: git-send-email 2.49.0
References: <cover.1747484082.git.alx@kernel.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <cover.1747484082.git.alx@kernel.org>

Signed-off-by: Alejandro Colomar <alx@kernel.org>
---
 man/man3/_Fork.3 | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)
 create mode 100644 man/man3/_Fork.3

diff --git a/man/man3/_Fork.3 b/man/man3/_Fork.3
new file mode 100644
index 000000000..95b0bc61b
--- /dev/null
+++ b/man/man3/_Fork.3
@@ -0,0 +1,29 @@
+.\" Copyright, The authors of the Linux man-pages project
+.\"
+.\" SPDX-License-Identifier: Linux-man-pages-copyleft
+.\"
+.TH _Fork 3 (date) "Linux man-pages (unreleased)"
+.SH NAME
+_Fork \- create a child process
+.SH LIBRARY
+Standard C library
+.RI ( libc ,\~ \-lc )
+.SH SYNOPSIS
+.nf
+.B #include <unistd.h>
+.P
+.B pid_t _Fork(void);
+.fi
+.SH DESCRIPTION
+This function is equivalent to
+.BR fork (2),
+except that fork handlers registered with
+.BR pthread_atfork (3)
+are not called.
+.SH STANDARDS
+POSIX.1-2024.
+.SH HISTORY
+POSIX.1-2024.
+.SH SEE ALSO
+.BR fork (2),
+.BR vfork (2)
-- 
2.49.0


