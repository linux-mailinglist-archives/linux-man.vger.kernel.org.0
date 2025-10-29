Return-Path: <linux-man+bounces-4211-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id A9805C18061
	for <lists+linux-man@lfdr.de>; Wed, 29 Oct 2025 03:14:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 67C7C4E348A
	for <lists+linux-man@lfdr.de>; Wed, 29 Oct 2025 02:14:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50B732E9EDA;
	Wed, 29 Oct 2025 02:14:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aDyYnGpw"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com [209.85.160.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F756260587
	for <linux-man@vger.kernel.org>; Wed, 29 Oct 2025 02:14:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761704042; cv=none; b=tHTIVgOtVVIZgVNOHIcaC5fdcbDzZCdsB0R9OJcMw4nvor0mQZ3rmdPwXZZVMgOzHPe7c1ZWyxVnW5NfmqrpkzvGu3Vc2V4GfLZ/3IvAOIYqfVtFfUelg/cshcDmMlxzsfVfTGy+RluhWFbUmZ/u+MPlOohELh6/t4MWWbagrmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761704042; c=relaxed/simple;
	bh=RkPMZDI2fSCmOUdTk+pRdEia0CuDx6VL41N9mkBSqsE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=dTvMOUiJKj1trfaiAzF8SWTvSBMitWT6PjZj85KHudVyhE/TzWQ7sk/SKhrAObkelnXo3DX6a6A7jZp1N3MvdTfSNzEUcqXjGgJyH+ryQmoqzVfVVot/2dzHIo8ub+s+x9/P622ZvMW8Eg6HfsdiWz0xRmTn2JQup4k+Rn4p/HQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aDyYnGpw; arc=none smtp.client-ip=209.85.160.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f194.google.com with SMTP id d75a77b69052e-4ecee8ce926so31035141cf.1
        for <linux-man@vger.kernel.org>; Tue, 28 Oct 2025 19:14:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761704039; x=1762308839; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9FWGO09obzy5Yd6srHFp1/ggQCAKyxLjPIUzikwp1jg=;
        b=aDyYnGpwB03AE6TWNmmyUOuo5qpRwe4jse8qCeha6ecRm+Upv4KC4Pa80BeQNfTt6W
         nyu/z3hShA7/H2UHaYnGfE+4cGpjDa4taujjl8V3d4NAq3ZBzhfOnR2ESNXyPz2GS276
         LLex9s53lIyRfkBQpJJIX4zcDeQ4J0qDN89JUTBC46YrAJYbEyfTMo1loNs+GeA1Pfo2
         35cLfLZWE+rWqsqdtNMxysJg85ZROaWOZYJ++pWJk7rbY/wts/hqhLq0Hq5DVXQ7nftt
         0XJS7HHOrcr98eQgL70AHp4MUqZdALlDW033tytJ3rKCUhpXeUFI80JUpaHcy1SCuDa4
         GZoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761704039; x=1762308839;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9FWGO09obzy5Yd6srHFp1/ggQCAKyxLjPIUzikwp1jg=;
        b=sqAYdXp/3CkB3s1RjqmtNKmLhFBNb9yu90MA3nhqBeBXvvou5udGsf3Z4Tc4ufN8o7
         SNejC/F5oX+Ab9kRP5jZgfVI+evnfQVsEWdT5zpHwz5GdoScqtoyXuuRWyjB5Dq51ba3
         dunrIksw+oD8wbQgvXmCgXtTgRpcWrf/fIZD0ZS9BjtOhdWXcvnFZvErCvZicKDycbN+
         Pu17lmM78vRgR0DzS0kee3wDq+FO5ZS1DxFEEoCuhs5jDd+8Xt/QNvxD0UNIT0nNe+kC
         w7czAU1PVArpJ2qr4iRJyVm0qJjwIY3jx+QPmbtt9AnDjPJRnEmzjr7cjhg5U/RWm2I5
         h/uQ==
X-Gm-Message-State: AOJu0YxQGxwwLuQmROV6Mbk9vmPv3C9DsAe/ryzhLhuqU0SHfs4ZSSp6
	r21Q7yaY5SGtFa3S1WgB7D2HkwIqzvMP4bqBvFGo9Q/8PfbLzAe4zZgE0EpZoQ/Vxve7aw==
X-Gm-Gg: ASbGncst4K2eeI6Y6Eb4obHJ0emJjArhZ9rSZ99lYytYj2oiZYWf6QGC/SkPw+7rIAU
	03W8lkbUI4RslT4RzvC9Mc3m1SnaGkiiEejWSPhl1biXvh+/spqwCQ7QesGPmbM+BGbOBDzFVVB
	b1SJEJIixDyHAtL8ETAEZomKeguemrsmnHunrDAKbwO8dL/Isybd7yj3ZzPXRNGj5cK8vf3wLyv
	A3csKegAoR7kuKMi/MOlMoSWWYglDCqHsSgOM92r80pPErZLP5oKffHwY6KpNb+PGhS5M3KOzJd
	V/OR9hBimdnphhLoJwigFznSTqBkAT4XGU314/jBs/qBw9qSxXe2bRNDON/qhgspp1Tb0Ep3zY6
	URY/a3mnac8c6dcI4R3XAMRILKkJzz3ou/CEtdz+jYYYCVNrOqH5wNyciTNoYZqFEYOnA1wjc+q
	lcCN9h8u/G0hjhAsQt+tOb98cuvRd7mZeCNcklvI2b55kbD8EqgT+6yARrhRA=
X-Google-Smtp-Source: AGHT+IF73RTl/SUy6QNWksbQWfiDwXxUu57w2vsk8RKQojeuK41cQ7lHBsTsSNj6/sksgryXIzSH/w==
X-Received: by 2002:ac8:5ccb:0:b0:4ed:d2b:d43f with SMTP id d75a77b69052e-4ed15b53ce1mr21413751cf.7.1761704039303;
        Tue, 28 Oct 2025 19:13:59 -0700 (PDT)
Received: from secra.localdomain (pool-71-255-240-10.washdc.fios.verizon.net. [71.255.240.10])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-87fc48a8bc4sm89004146d6.7.2025.10.28.19.13.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 19:13:58 -0700 (PDT)
Received: from secra.localdomain (localhost [127.0.0.1])
	by secra.localdomain (8.18.1/8.18.1) with ESMTP id 59T2DwFD085957;
	Tue, 28 Oct 2025 22:13:58 -0400
Received: (from secra@localhost)
	by secra.localdomain (8.18.1/8.18.1/Submit) id 59T2Dw3B085956;
	Tue, 28 Oct 2025 22:13:58 -0400
From: Wes Gibbs <wg21908@gmail.com>
To: linux-man@vger.kernel.org
Cc: mtk.manpages@gmail.com, colomar.alejandro@gmail.com, bigeasy@linutronix.de,
        Wes Gibbs <wg21908@gmail.com>
Subject: [PATCH v2] Subject: copy_file_range.2: glibc no longer provides fallback after 2.30
Date: Tue, 28 Oct 2025 22:13:48 -0400
Message-ID: <20251029021348.85946-1-wg21908@gmail.com>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Update the documentation to note that glibc no longer provides a
user-space fallback for copy_file_range() when the system call is
not available, as of glibc 2.30. Applications must now handle ENOSYS
themselves.

Fixes: https://bugzilla.kernel.org/show_bug.cgi?id=220489
Signed-off-by: Wes Gibbs <wg21908@gmail.com>
---
 man/man2/copy_file_range.2 | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/man/man2/copy_file_range.2 b/man/man2/copy_file_range.2
index e9e9e9945..5146c0d11 100644
--- a/man/man2/copy_file_range.2
+++ b/man/man2/copy_file_range.2
@@ -202,10 +202,16 @@ that was also backported to earlier stable kernels.
 .SH STANDARDS
 Linux, GNU.
 .SH HISTORY
-Linux 4.5,
-but glibc 2.27 provides a user-space
-emulation when it is not available.
+Linux 4.5.
+Before glibc 2.30, the glibc wrapper function provided a user-space
+fallback implementation when the kernel did not implement this
+system call. Since glibc 2.30, that fallback has been removed; the
+function now fails with ENOSYS if the kernel lacks support for
+.BR copy_file_range ().
+.\" Fallback introduced in glibc 2.27:
 .\" https://sourceware.org/git/?p=glibc.git;a=commit;f=posix/unistd.h;h=bad7a0c81f501fbbcc79af9eaa4b8254441c4a1f
+.\" Fallback removed in glibc 2.30:
+.\" https://sourceware.org/git/?p=glibc.git;a=commit;h=50c6ee3e74e08b8205f18dfb2830e9ec1bcf2ad4
 .SH NOTES
 If
 .I fd_in
-- 
2.48.1


