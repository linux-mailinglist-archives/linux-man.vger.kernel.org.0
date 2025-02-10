Return-Path: <linux-man+bounces-2381-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7863BA2F068
	for <lists+linux-man@lfdr.de>; Mon, 10 Feb 2025 15:55:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8E95A1882674
	for <lists+linux-man@lfdr.de>; Mon, 10 Feb 2025 14:55:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6ABE9225394;
	Mon, 10 Feb 2025 14:55:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AouKOjZA"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E8B7204874;
	Mon, 10 Feb 2025 14:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739199324; cv=none; b=j7OYW7dp+gn2IAWEJOnOIleCvBCByG6CgX5m6SegEe+RwyT2dmxMz8JcLZW3DbOMGvrp6Ts5v1of6klmcyvzAdkL1VYIZ9jALwdplqWMHShm3hAiHBIexY9ILElMBf/YIz0Ws99gApp91sxWe8QW2bBZUfoII7IfvepCRzW9eEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739199324; c=relaxed/simple;
	bh=0MggrRJ5v+a6b0Enr/c15QYUbRThohYTduHQhl2DMk8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=kR8+ag/+KyxcYDhsWO+jtb6YiS/q0KlP51brEW7Aq6Zusv3poGvJlLhvDy+Mj1Jcx6hOcINM6sgYBhlCKUJGKNOM0CfbSS4+Vs4TSxkKIXvM3OiDWyP30r7JnWIyGaQJS6/+3h7uFKD13ZWPL9mIQkDfzZe0lpG6XuHfWTjUmro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AouKOjZA; arc=none smtp.client-ip=209.85.222.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-7c053a2118fso186806685a.2;
        Mon, 10 Feb 2025 06:55:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739199321; x=1739804121; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oKY/cRLmPBdKHMBVUtcfQapc7oda6mpw7tya6RS5r9o=;
        b=AouKOjZAqhWkfv47PTcRK/iBx5IqH8/4y8nDG2Ma0Pw4TLMg8WHiehG+44D7zWsUFa
         RfFjrEJWfj3iwsQRSQUVwRuAJFOXvXRcVn/B1w7jWseHlpcMH9Igg4NxskVeUA0pMED9
         4MWxmWcve07Yr7SMCEiQnxDkD1r8NnUUSwMpYC5N4gt4SurBh1NpCpOtURL2OnDAZJqN
         7N70qufOgFVAv+TORRJ99hsJD/pxpiw2aqPGHK3tTHkSIaTbY3Dh/Os+P+X/w3cZIBIa
         5qQ+vdawcNiAUyqKjx+EQ7IHr7BBcl8xCynabZqLz2o35eNrqhwb6g5ldjEJ7kNXaRCc
         9gPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739199321; x=1739804121;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oKY/cRLmPBdKHMBVUtcfQapc7oda6mpw7tya6RS5r9o=;
        b=fDCBxpzit9gwpta50tHadf8B3WHIZzmKBilF7Cip8BYE7W6CLr8waYBuniW5QeT8sV
         C2A3LBaTEdnK9SsMbaqnahgbi543BgCmgj0msdyg88P5cmGGy6JMEiXR2Txmu7eAQems
         IrtnppId4yfCNvxR8tEAKqZQ6PpNTqAKWfs8+q5F3xqQkDK2xy/RQ8GHnq+UhBJ7fHJj
         m8i3aOCKM9w7TmiRfrwPWR5gN/kokVbTOa0uuPmS4oqF/ave1rOe009odqe/PU3dfDI9
         bFN1SnUtiBS4VSS2p9CtaNylGFGogXbDd1p8mUHVM1/e1eyNDmBd8YIIYaiyYdpIPPDG
         uVvg==
X-Forwarded-Encrypted: i=1; AJvYcCUT6/UH2dgYEHoWeXoOCqaKqWdCSglubSW+4YmwtoGDPaOHSDqeHqIWj/Z1jIbpkCezEEP+FWD+LMrov3M=@vger.kernel.org, AJvYcCUr2ad6s88Q8JffskLn9StMuClau0t8lY5VaYauifzxG2EG5n2RosUL2Sb2GHMyJPlumALKWc779OMH@vger.kernel.org
X-Gm-Message-State: AOJu0YwoMd4mfbtkBtiRPNnHM+HSz5FkEl6Z0D3sw+7SemiNlpz94/1A
	kXV3p4B4wEo+FGrynl9Tszc7+kuj+E+VtD7+gFlfFWMvv6sv9j4P
X-Gm-Gg: ASbGncsCdc5BALEQULVt3CX5RQxx3xMvY0v4Ry1O9+MhpPNzXMRWHRcvYLjUcSrVPP8
	pWiHVZ+nNzLCKl+f9aSvVaomnyofdUv0E0s/quGl/Zk4E20LHTK7tgJNrVQHl0arDDTSSv9dD6W
	Q22DkdJkcdNiTMTQYuYx/7Ms7tG7h2cJZCO+vGh93B8Iw/8SFiGxyw500y7+7Y46jA0qcozKn4D
	9XOUfhhiaj/OzqpAv1yQszeLWuCi9ktpiq7YHn1tFU3h/b+IMoglId8e8IAQbHhWLS/mDq/q4bX
	9Mp0np8zQSYjwO4V7wNs4KcaT6juezPbG3HTXWZ0E5Iny598bc+R1CmkenCBf2LSM0FeoUCoExH
	2oAkHVyxtxLflo+aej1wdF7xD
X-Google-Smtp-Source: AGHT+IHjtPM/dOeJofOdD9QbQ+MbB1sGFCDEjvisxh9+M++i/cWxlMTUPdxg2XYN0TJ1bRnwtQFvwg==
X-Received: by 2002:a05:620a:4515:b0:7c0:604a:3f5c with SMTP id af79cd13be357-7c0604a41e4mr535004985a.56.1739199321351;
        Mon, 10 Feb 2025 06:55:21 -0800 (PST)
Received: from 1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.ip6.arpa ([2620:10d:c091:600::1:cc94])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7c041e0e2e4sm533478985a.49.2025.02.10.06.55.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 06:55:20 -0800 (PST)
From: Tamir Duberstein <tamird@gmail.com>
Date: Mon, 10 Feb 2025 09:55:19 -0500
Subject: [PATCH v4] rust: alloc: satisfy POSIX alignment requirement
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250210-aligned-alloc-v4-1-609c3a6fe139@gmail.com>
X-B4-Tracking: v=1; b=H4sIAFYTqmcC/3XMQQrDIBCF4asE17XoGNOmq96jdKGjJkISixZpC
 bl7TVYh0NXwBr5/JslGbxO5VTOJNvvkw1RGfaoI9mrqLPWmbAIMJAPGqRp8N1lT7hCQagmoQUi
 BVyDFvKJ1/rP1Hs+ye5/eIX63fObr918pc8optq26CCdQm/rejcoPZwwjWUsZ9hqOGoqWyjEtn
 TF1445a7HVz1KJohhqZ0kywxuz1siw/c8GpXSYBAAA=
X-Change-ID: 20250201-aligned-alloc-b52cb2353c82
To: Danilo Krummrich <dakr@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, 
 DJ Delorie <dj@redhat.com>, Eric Blake <eblake@redhat.com>, 
 Will Newton <will.newton@linaro.org>, Paul Eggert <eggert@cs.ucla.edu>, 
 Alex Gaynor <alex.gaynor@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, 
 Gary Guo <gary@garyguo.net>, 
 =?utf-8?q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, 
 Benno Lossin <benno.lossin@proton.me>, 
 Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, 
 Trevor Gross <tmgross@umich.edu>
Cc: rust-for-linux@vger.kernel.org, linux-man@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Tamir Duberstein <tamird@gmail.com>
X-Mailer: b4 0.15-dev

ISO C's `aligned_alloc` is partially implementation-defined; on some
systems it inherits stricter requirements from POSIX's `posix_memalign`.

This causes the call added in commit dd09538fb409 ("rust: alloc:
implement `Cmalloc` in module allocator_test") to fail on macOS because
it doesn't meet the requirements of `posix_memalign`.

Adjust the call to meet the POSIX requirement and add a comment. This fixes
failures in `make rusttest` on macOS.

Fixes: dd09538fb409 ("rust: alloc: implement `Cmalloc` in module allocator_test")

Acked-by: Danilo Krummrich <dakr@kernel.org>
Signed-off-by: Tamir Duberstein <tamird@gmail.com>
---
Changes in v4:
- Revert to `aligned_alloc` and correct rationale. (Miguel Ojeda)
- Apply Danilo's Acked-by from v2.
- Rebase on v6.14-rc2.
- Link to v3: https://lore.kernel.org/r/20250206-aligned-alloc-v3-1-0cbc0ab0306d@gmail.com

Changes in v3:
- Replace `aligned_alloc` with `posix_memalign` for portability.
- Link to v2: https://lore.kernel.org/r/20250202-aligned-alloc-v2-1-5af0b5fdd46f@gmail.com

Changes in v2:
- Shorten some variable names. (Danilo Krummrich)
- Replace shadowing alignment variable with a second call to
  Layout::align. (Danilo Krummrich)
- Link to v1: https://lore.kernel.org/r/20250201-aligned-alloc-v1-1-c99a73f3cbd4@gmail.com
---
 rust/kernel/alloc/allocator_test.rs | 23 ++++++++++++++++++++++-
 1 file changed, 22 insertions(+), 1 deletion(-)

diff --git a/rust/kernel/alloc/allocator_test.rs b/rust/kernel/alloc/allocator_test.rs
index e3240d16040b..1c881ed73d79 100644
--- a/rust/kernel/alloc/allocator_test.rs
+++ b/rust/kernel/alloc/allocator_test.rs
@@ -62,9 +62,30 @@ unsafe fn realloc(
             ));
         }
 
+        // ISO C (ISO/IEC 9899:2011) defines `aligned_alloc`:
+        //
+        // > The value of alignment shall be a valid alignment supported by the implementation
+        // [...].
+        //
+        // As an example of the "supported by the implementation" requirement, POSIX.1-2001 (IEEE
+        // 1003.1-2001) defines `posix_memalign`:
+        //
+        // > The value of alignment shall be a power of two multiple of sizeof (void *).
+        //
+        // and POSIX-based implementations of `aligned_alloc` inherit this requirement. At the time
+        // of writing, this is known to be the case on macOS (but not in glibc).
+        //
+        // Satisfy the stricter requirement to avoid spurious test failures on some platforms.
+        let min_align = core::mem::size_of::<*const crate::ffi::c_void>();
+        let (align, size) = if layout.align() < min_align {
+            (min_align, layout.size().div_ceil(min_align) * min_align)
+        } else {
+            (layout.align(), layout.size())
+        };
+
         // SAFETY: Returns either NULL or a pointer to a memory allocation that satisfies or
         // exceeds the given size and alignment requirements.
-        let dst = unsafe { libc_aligned_alloc(layout.align(), layout.size()) } as *mut u8;
+        let dst = unsafe { libc_aligned_alloc(align, size) } as *mut u8;
         let dst = NonNull::new(dst).ok_or(AllocError)?;
 
         if flags.contains(__GFP_ZERO) {

---
base-commit: a64dcfb451e254085a7daee5fe51bf22959d52d3
change-id: 20250201-aligned-alloc-b52cb2353c82

Best regards,
-- 
Tamir Duberstein <tamird@gmail.com>


