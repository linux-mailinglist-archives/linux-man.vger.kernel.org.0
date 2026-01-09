Return-Path: <linux-man+bounces-4739-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CC167D071BB
	for <lists+linux-man@lfdr.de>; Fri, 09 Jan 2026 05:20:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 92E423019BDD
	for <lists+linux-man@lfdr.de>; Fri,  9 Jan 2026 04:20:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F9BB1925BC;
	Fri,  9 Jan 2026 04:20:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="R0mqRvAB"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com [209.85.214.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 729F0500958
	for <linux-man@vger.kernel.org>; Fri,  9 Jan 2026 04:20:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767932408; cv=none; b=aA5V5FAyi3MUiEbxeKJFB5kzYLC40Re6nrjsjud68HzLhvKGfWCgVkGHfPThpPtlvubMLMSmHwjf9QBe3om6Bmq6YbDXS3FnRKCigSoWZZMD+LQi45U7vKZnqu7w204SQmidbLbnTM5nZZTH2wI6DzbAPgChVcdjDVIyrKCB7nQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767932408; c=relaxed/simple;
	bh=ffmLBBXVrGQ8WLOOP17Siqb7Ph8JW0o5vT3JqCB+sJc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=P5SEaFDXKeF7U/qKNV8Txz5OYSdEKFgD+IpY3B0rmqhEFu6cE4Mf9IeJ6j3LZPZisuEc1aNHSX4B1t6KahTYfnE/Y++NByPh3RVtZsGM0gIAZt3OFEqO0+umcZqK0CXaB+4DllR8wwIW1K/ndDVHibdwtYDJhflgRTI98nFpBYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=R0mqRvAB; arc=none smtp.client-ip=209.85.214.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f193.google.com with SMTP id d9443c01a7336-2a0a33d0585so26746425ad.1
        for <linux-man@vger.kernel.org>; Thu, 08 Jan 2026 20:20:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767932407; x=1768537207; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=5M2GLj/0k9uZSM2EK9Csv74XvJoo6pMpoGPbS+yGmY8=;
        b=R0mqRvABBwe8VMQzbRFsTaQaAFuwuU17eBppN/sKx/w0y8gganmbz2+AJYjhfUHayC
         ginF/Zm9649k+a0S/CoX3IH9mAIlxsGMvgIg5mpKUNU/1dh/Eh6jRhD+mbrhInFzyLEw
         c69ygRCo9PxjYfjk0RGFGZMoM4GmBAS0abSomK5Ll8VN3zfafAiAUElcgkCMj6J1MVbQ
         Tsv9xE/5y0vObjwNXLxRVRKCx3D9JnQsgr2gc+OwDCU2CaC+vbpe3+dtnMecUIzTt4l2
         Oge3CowCHZ5UmzJ5LtQRVm3Daf5EL55700ewH9bOHm3bfTarkPTtjrdk/sLfr8z3AsrQ
         330Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767932407; x=1768537207;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5M2GLj/0k9uZSM2EK9Csv74XvJoo6pMpoGPbS+yGmY8=;
        b=biss0nf4Y782AWE2baob9Pj5nMchFJPWEk2wFAuPbdD30DF2hM4p2eluQ6qdQ4h0D/
         6vb6h/DtAsEH5B6mqgLraqmR5S8dH4TiOxu4yo7ZYYlPARfjhD6AFe9mVPHYCEX5N+xL
         AKwo0vAvyL/ry7WwCy6CLZQLjBk5Iwqf3M7iR0HiNRITkv+O/ROw9N7GLpDVnMmFWQjS
         QeH+n41NU8e/zS+Fvs1tpTPYh48Nf8D7VwA+GzL4i5c485sgUtXzvOgWOI8khcJG5SgW
         zNjW47hq3ZtYDhTM7v9vSKXOwFL8Phqts/eViE0gdKLPUdfw4qzJ9I15iIVqJdRo3sN7
         g1qg==
X-Forwarded-Encrypted: i=1; AJvYcCWSY+rcKQjb1rcQqmcT63a+L4qkMg9La2s5uanvZh4BhuzbLuvNtBg+6TDv1L5pU5nrtcsLbIQZvhQ=@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9sC/BgKmjO3tKiCY+uVqbmmB7aAkeKhqXocPssl5i4KWbn/9p
	e03SvZBtuDrRC6CKan7oRfvpGxukqZfEVHC+R/IHMZ3T/L/cGHAtobfO
X-Gm-Gg: AY/fxX4bd77MMKnX9JEz9a04D8HedUvy/ibLZDOUBhtdqsTMU6zIbgYasT6XKrjEf6T
	rpkbpM9TQgANbDXYGwcvuey8dmvAgKrajHiuTajs71hByXvaw1WHZCTnSRQuaflI17Jyfb7nZOq
	twrThOX0oLTcJeGYpUdeYQBT5K1/sLy5yig+lqsIs2mCEr7oRAwGtJc1uEF8ASS+aZ1HXhugTQZ
	JtyrGOpD65MiTB5zrKO8ZmekTlmHH3DMVtCy+w/UmMdoT2hnaTCEdPUgdXrXtj24Z9I4B44Q17X
	ecx5tz4d8pMEAL5cpQuqILaCgYEEemqvFloMtqIs04Qi+BzFkwET0eOun8w2xZJ73afFaTqlDSZ
	bFiSg1+luFbmJxwRwamy118Z5E7Pd/aLrtdg3U3M0uDPLJsmlqFjpT6+pCPYFIMaUEj2E9+ehTE
	BuG/gE/1emRe/LpQbQgPPjnA6t+dLcChUuKvVRR9iqNB8uPVAclN23ZZ+eANYxu/cS1RxjwttHw
	Gb1P0KLQnuODKooCA==
X-Google-Smtp-Source: AGHT+IFaRrCwRkf0t6A6AbrNpl6vT0ZSYqVisryTECbolqcca9XKF13ekRkGhVFd0/RvvZkuZB/b8g==
X-Received: by 2002:a17:902:e74c:b0:29f:2ec4:83e5 with SMTP id d9443c01a7336-2a3ee41d105mr80138165ad.12.1767932406788;
        Thu, 08 Jan 2026 20:20:06 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-1ba5-4bb2-ac31-391a.ip6.aussiebb.net. [2403:580b:5de8:0:1ba5:4bb2:ac31:391a])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3c47147sm90098055ad.22.2026.01.08.20.20.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 20:20:06 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v2 06/12] man/man3type/stat.3type: SYNOPSIS: wfix
Date: Fri,  9 Jan 2026 14:19:00 +1000
Message-ID: <84a9e467d506b8ed0c2d66eb8e1e87446a8a8630.1767931376.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1767931376.git.sethmcmail@pm.me>
References: <cover.1767840410.git.sethmcmail@pm.me> <cover.1767931376.git.sethmcmail@pm.me>
Reply-To: Seth McDonald <sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Seth McDonald <sethmcmail@pm.me>

When the VERSIONS section was renamed to HISTORY, the reference to the
VERSIONS section in the SYNOPSIS was not removed.  Change the comment to
refer to the HISTORY section.

Fixes: 4131356cdab8 (2023-03-30; "man*/, man-pages.7: VERSIONS, STANDARDS, HISTORY: Reorganize sections")
Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/stat.3type | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man3type/stat.3type b/man/man3type/stat.3type
index ea9acc5ec025..257f1c8d6b71 100644
--- a/man/man3type/stat.3type
+++ b/man/man3type/stat.3type
@@ -26,7 +26,7 @@ .SH SYNOPSIS
 \&
     /* Since POSIX.1-2008, this structure supports nanosecond
        precision for the following timestamp fields.
-       For the details before POSIX.1-2008, see VERSIONS.  */
+       For the details before POSIX.1-2008, see HISTORY.  */
 \&
 .BR "    struct timespec  st_atim;" "  /* Time of last access */"
 .BR "    struct timespec  st_mtim;" "  /* Time of last modification */"
-- 
2.47.3


