Return-Path: <linux-man+bounces-2432-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 74C35A33E2E
	for <lists+linux-man@lfdr.de>; Thu, 13 Feb 2025 12:34:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 75E4F3A13D1
	for <lists+linux-man@lfdr.de>; Thu, 13 Feb 2025 11:34:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB8BC21422A;
	Thu, 13 Feb 2025 11:34:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="B55XHfs2"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13449227EA8;
	Thu, 13 Feb 2025 11:34:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739446466; cv=none; b=m9TrVC4f03m2Vr9xjTmP/M3nJPWgVicRQQ5LqsrzROiZ43hBnyBV19AWb58ThQ1SVRmy/VlIFRm8VwQ6nmfiq+R05ytgzDL2Zyt1MPYvOMDsW8pKkHKrEckMo15cKsDby5m7rczvpf/rJGMtAdgmxnJswBV0nkjTJxxrbSInKoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739446466; c=relaxed/simple;
	bh=m3AHHQoFaGLR86+j4ld8rPY7w4WnhBo3/AP5fP05v88=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=NElMiWUM9cS6dotJfNhSDykS+9tNu8gK2ZQoxNwGgQbEfaLlYauV96URWVv3as0H/ptFVtq76Mxbvx/ZbR4PkMEdf4315/qKGmDjE4YOnpsZ4F8itBe0QjVnS5V+djrGN2acMCns0vxeGOUuoR19aA42a9cB8yt9Y8+/PTj4z78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=B55XHfs2; arc=none smtp.client-ip=209.85.222.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f176.google.com with SMTP id af79cd13be357-7c05b700b78so67039885a.2;
        Thu, 13 Feb 2025 03:34:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739446464; x=1740051264; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PX0bO32jzjh5GtB3wS0faQmyE7j9XJOMtbeWYVHOA9M=;
        b=B55XHfs2oW2hR+3zZrAr55k+jOlOnndmQjS5Xo7e7XGo/IGrCxIiZr2+SuTRULlmVv
         ABaSZQZfPq/tCF4Qagy81CC0FTEwGPoMnX2Dg6oGhvK5VZMUf7eA0LD0B056xHR11LmH
         CNKZLGMTBTEuu4sBwpfNNfQ/g3wZS4v4mR3xDYv8dU4aH3/C1ex7DheTmAXR17GlE6TW
         lDgDqZIh7S7SE+BSvL8/RIf2sGtfRQ8oT/DzOZHymqFLHjvrZ3rg2LEVoWdkbeCEJtYa
         KqYPsbRI8Ybox4yJu56P9kK4GqaYECAO8nLQiWrih83LJLAbRh4lzmiQarwNmjrkSGjP
         XB5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739446464; x=1740051264;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PX0bO32jzjh5GtB3wS0faQmyE7j9XJOMtbeWYVHOA9M=;
        b=AzE2ERi0tUSfKY3998Xl86Z9tZGa8I2hEztEGA9pm8mqC03q8iERC/+XXJp/fkGfdK
         2KQVkpM6sdIFEkCeGmJuDNAgu5spLvuJn2D2jJ0WpCw4GudxLTVOGGJdmEXNj059Vxzt
         NlGiQVPta3j7FAWwFyp5ACoQiQUCqBDcRw2gnsLeIMymlwvYQJF+Zz+tzNSAradxbFP2
         Ixe/bzLCmYq6ma/toZ7/RiUN05Y+80smNq8R/0elKszfFKK/Wwghd4jK5B9JgYUfc2kP
         X+OmQFp+PnBa3CXqWf77uA2fFmzY71Bx+fTPChZPnW1NhqcQUbxHo4reND3mTkG1x4wp
         +w2g==
X-Forwarded-Encrypted: i=1; AJvYcCX4H8ZCkv95VKHZEqiVKxgg8jHNvo1Gm8HPzrmfv8o3JCReKqvDkpYEjVzqud2jj37wWqjTikEcNkj29p8=@vger.kernel.org, AJvYcCX8SK90BByXv7nQS/90CX+KPpKODXdZ2EeAVd5R+4GuZ04WqmoAF7CXnCFJk5wJ6UB/ePkPNx3BcV42@vger.kernel.org
X-Gm-Message-State: AOJu0YzqFSdWCN0Gn9AqUZPTK/SF8GUA1oYBMriiyjiVpKsrV6fdI6+h
	7SNBqmo2kv4Pvo6NTwm/ZbF8shOroM3GO+oQ890Ktxfm94Jizvxo
X-Gm-Gg: ASbGncvkdDuY+P5dnJh6uz09AUUVVscV0qGTbKgBXa4FGCvyFgegRCrgV85Tzz4wvcE
	XCUyNQnNwvWnmkeh+ld4lPwmXBgWoVX59kGoqjrT+zofy7mwJSh786NWZB0EE49PD6h9IZXMC/2
	TZpJ66mMuYSKZpweSzEvNwWLZnD0SRew/uZFkXRZuqlBSP53z/d8Hk+bfPzs6bjDo5uNMY8OncZ
	TIWb5YDYYv1tp1VJFoQjQF7NJtb9vli03NaKE5n4vxYUExcncAVSci552iVnh681kMRuOAVw+kd
	W7vZ1ClK5pPByCglGs94CIImSO+u46vKs8MhQFFN8hUVqAw2q4i0GrwOLEeoKpBBIJbbPugdTWe
	KpgTNKZ2YTHC201QD9oTSuhvXb03LREhZp1d9XA==
X-Google-Smtp-Source: AGHT+IGCl7CGqLgLZYFetGFPsT/dSU7d2L5+Uq4Y3+gaKF3uIr+p3lmj1c4cI2W+zuKpCOFtCuG/Qw==
X-Received: by 2002:a05:620a:2d86:b0:7c0:7207:600a with SMTP id af79cd13be357-7c072076255mr622841985a.46.1739446463808;
        Thu, 13 Feb 2025 03:34:23 -0800 (PST)
Received: from 1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.ip6.arpa ([2600:4041:5be7:7c00:c8d8:9808:e9c7:ed5b])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7c07c861b71sm75008785a.70.2025.02.13.03.34.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Feb 2025 03:34:23 -0800 (PST)
From: Tamir Duberstein <tamird@gmail.com>
Date: Thu, 13 Feb 2025 06:34:18 -0500
Subject: [PATCH v7] rust: alloc: satisfy POSIX alignment requirement
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250213-aligned-alloc-v7-1-d2a2d0be164b@gmail.com>
X-B4-Tracking: v=1; b=H4sIALnYrWcC/3XPwWrDMAwG4FcpPs9Dlmyn2WnvUXawZTs1pMlIR
 ugoefc5PRmXncQv+H6kh1jjkuMqPk4PscQtr3meSujeToKvbhqizKFkgYAGEJR0Yx6mGMocZ5b
 eIHskQ3xGUcz3ElO+P/suXyVf8/ozL7/P+k0d2/+aNiWV5L53HSViH/TncHN5fOf5Jo6mDWuNr
 caijUvgTQpB29RqqrVtNRUN7BmcBwIbWq0rraDVumgLPZOzKSrqW21q/XK5Of42KoJXXYjxRdt
 aU6tt0TqFLqE+WwBf633f/wB4WWUZ4AEAAA==
X-Change-ID: 20250201-aligned-alloc-b52cb2353c82
To: Danilo Krummrich <dakr@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, 
 DJ Delorie <dj@redhat.com>, Eric Blake <eblake@redhat.com>, 
 Paul Eggert <eggert@cs.ucla.edu>, Alex Gaynor <alex.gaynor@gmail.com>, 
 Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, 
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

Adjust the call to meet the POSIX requirement and add a comment. This
fixes failures in `make rusttest` on macOS.

Acked-by: Danilo Krummrich <dakr@kernel.org>
Fixes: dd09538fb409 ("rust: alloc: implement `Cmalloc` in module allocator_test")
Signed-off-by: Tamir Duberstein <tamird@gmail.com>
---
Changes in v7:
- Remove errant second `pad_to_align` call. (Gary Guo)
- Link to v6: https://lore.kernel.org/r/20250213-aligned-alloc-v6-1-4fd7f248600b@gmail.com

Changes in v6:
- Replace incorrect use of `build_error` with `map_err`. `build_error`
  seems not to work correctly on the host. (Danilo Krummrich)
- Link to v5: https://lore.kernel.org/r/20250212-aligned-alloc-v5-1-c51e0b17dee9@gmail.com

Changes in v5:
- Remove errant newline in commit message. (Miguel Ojeda)
- Use more succinct expression. (Gary Guo)
- Drop and then add Danilo's Acked-by again.
- Link to v4: https://lore.kernel.org/r/20250210-aligned-alloc-v4-1-609c3a6fe139@gmail.com

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
 rust/kernel/alloc/allocator_test.rs | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/rust/kernel/alloc/allocator_test.rs b/rust/kernel/alloc/allocator_test.rs
index e3240d16040b..c37d4c0c64e9 100644
--- a/rust/kernel/alloc/allocator_test.rs
+++ b/rust/kernel/alloc/allocator_test.rs
@@ -62,6 +62,24 @@ unsafe fn realloc(
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
+        let layout = layout.align_to(min_align).map_err(|_| AllocError)?;
+        let layout = layout.pad_to_align();
+
         // SAFETY: Returns either NULL or a pointer to a memory allocation that satisfies or
         // exceeds the given size and alignment requirements.
         let dst = unsafe { libc_aligned_alloc(layout.align(), layout.size()) } as *mut u8;

---
base-commit: 8a5aae7dbbfb612509c8a2f112f7e0f79029ed45
change-id: 20250201-aligned-alloc-b52cb2353c82

Best regards,
-- 
Tamir Duberstein <tamird@gmail.com>


