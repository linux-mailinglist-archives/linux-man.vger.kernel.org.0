Return-Path: <linux-man+bounces-2400-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DFC2A328E6
	for <lists+linux-man@lfdr.de>; Wed, 12 Feb 2025 15:43:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3BBD13A9EC3
	for <lists+linux-man@lfdr.de>; Wed, 12 Feb 2025 14:43:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54844210F5D;
	Wed, 12 Feb 2025 14:43:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bRx9AJQu"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66F8820967D;
	Wed, 12 Feb 2025 14:43:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739371389; cv=none; b=MV1YhxWxFm2rHmLGj7EqHDbjt6TQn+t3Nr6+pj2WS6mRJHzfIkTNqB5dod5qOzSPS0uqeaWlWZTLhuVgPnWsZsDJOVuBlTaF8r3Hs0NQR699EdqXBUAWDz1jEhr5n3n6h3eG2xoUiAkjtaKKz5Lf4h4Bg1oIOH/PfJlUkrxynpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739371389; c=relaxed/simple;
	bh=V4mU0GjkjWbEkL/INC2a+sJpha9ZmCGaZJr78NjeBY8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=KKoR6F1GOZROKQZ/M1B8ltuN62towZrrOnjO2jH+vu5xaKKLVJB+s8sWxTSMfUzEwvbHdOdyeSEcWOQjTGav1hP/cRheAu9jyysKEp+hdCkmhMbd2hI5RudgIpR2ngnGnGK/xI6zorq0cn86E2aLk9fGG817rnWdkqQ77xXHZkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bRx9AJQu; arc=none smtp.client-ip=209.85.219.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-6e46269d2c2so40843636d6.3;
        Wed, 12 Feb 2025 06:43:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739371386; x=1739976186; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gGpyZWwaIydNu+RxVjlhMHpFk5vW0QiePFraEUdR7ws=;
        b=bRx9AJQuRCip/0zWvCMCifd7LTIUCIUSpmb/GsMcgcNLOzUaCiRK/AjNDM1KyulYAz
         rlVmUQ2OpCBAdFOMa2fCLd9XmZTlKnZo0J5Ou05zn+iwh68Dudt9e0VYpxJWWMukGsgT
         ewjteisk0WVy6M1ANAZuNKc3sokLk94bUmCxu8Kb7Mw1bNoG685+7W9X3gY+YmBRXBuS
         e1jy7XMylS7T9MsTiHAq/n7YUy/vangIFXxIKgIesNuH9Mdqyx6ehYvRE3ub///7LPCC
         9MtfR4r4YJCJJ8Qf2JAQ6rP2n8jyebnavxgpXp+3gnKtoiZXR/jTqBFYXRuxd7t3BYi7
         XgYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739371386; x=1739976186;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gGpyZWwaIydNu+RxVjlhMHpFk5vW0QiePFraEUdR7ws=;
        b=t/VKuIHxvW0p7Tup5aUKlpRyyPwl2IqjRQvTBf9z9wnf8vumQk3EolWRKugCX+/Qj0
         qr27xN9JsSNxiQOngvOGJ0KdNC+Exti9p3wBa+xifgcHYDeQUeGp6N1HrMna6tYdYT6N
         jlPCK2QVG0txTYXQWK9v5+SeqqMGftU/Qk7mXAKM8rCbDFHSTb7vI/1TDXi4fX6/YySX
         +CTT7FEkTXrVF6vQYZ9nM1Y/gykmtFPccxAelG4l5jEAVLtWaMEUE8M7X/cOSNvnpXUA
         TgFoeWw1iqgdC74NtgPwJodBQtlCDAXS9UV5iRbG4UdHsyTlRbIIfVS8pnXUP/T+B7Wo
         imxA==
X-Forwarded-Encrypted: i=1; AJvYcCXFsRgJ0sH16p2BJ2YVDe2iC7mpzLW6TPrCUiqlT2qjg0ckJO95QlhnQM14QxSFyuDkEDIlGIpJozjKgyc=@vger.kernel.org, AJvYcCXa3bP6dGIeGgj3+yaMK7sUkM37GZc3LqCMesuFz+xCLhiRtXRNct7NclnrO3soXdiisxJedPz3nEr2@vger.kernel.org
X-Gm-Message-State: AOJu0YzoLNqScrMQ3gB4UN2jJ2heryAIlZLh76L/9cmO7TVElU9grKwC
	KMd0XPfPPQb6ZMB+IWZSpKXh44EY4qxbNgm3Ha4XMHkCU013OcQT
X-Gm-Gg: ASbGncuIYD7zZk/M+AWK52y0fWglit/Gy5a9q5WpviuK7QUYHep9wV1Ew5MQDh9+X83
	b1A9kfbUZqZveym2+lorf2j2UUcsMq8458JWKeJdpOufXDaiLxW3Gng5NFejp6QdGZvUedoZchj
	jOvujBfmakKKTkGrZkBrV92WwvztPP6XRT+xIdgZQcP+Rsc8ifoRWXlbXTAE+n6q87zfphlMoiD
	MPpxo5XEE43DzgDkMc+b1724g4XIHJcC52POlZZnM/prKEqIrvpo3nk8QOj4CHbaNMhHvTLcWQL
	kbZ87/giDSwCCp4SnnGQgN3BoIPGKno+GF+2NBNdM2hPCH26q2Xx4DDLACrz/Z+KVzvBXRawQgv
	w85Elrbq/59xEJ2DTkSoA8YaK
X-Google-Smtp-Source: AGHT+IF9seDh6AWQtalF752Q0jhtPu9m93pQFxRunT/I8QcmdFHIUexk3E9l9PKkC9TOV9kt0lknzg==
X-Received: by 2002:a0c:e884:0:b0:6e4:6ee2:1a0d with SMTP id 6a1803df08f44-6e46ee21a93mr48589516d6.18.1739371386093;
        Wed, 12 Feb 2025 06:43:06 -0800 (PST)
Received: from 1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.ip6.arpa ([2620:10d:c091:600::1:1968])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6e445c50a10sm70366836d6.91.2025.02.12.06.43.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Feb 2025 06:43:05 -0800 (PST)
From: Tamir Duberstein <tamird@gmail.com>
Date: Wed, 12 Feb 2025 09:43:02 -0500
Subject: [PATCH v5] rust: alloc: satisfy POSIX alignment requirement
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250212-aligned-alloc-v5-1-c51e0b17dee9@gmail.com>
X-B4-Tracking: v=1; b=H4sIAHWzrGcC/3XMQQrCMBCF4atI1kYmM020rryHuEgmSRuorbRSF
 OndjV2VgKvhDXz/R0xhTGES591HjGFOUxr6PPR+J7i1fRNk8nkLBNSAoKTtUtMHn283sHQa2SF
 p4hOKbB5jiOm19q63vNs0PYfxveZn9fv+K81KKsl1bY8UiZ2vLs3dpu7Aw138SjNuNZYas9Y2g
 tPR+8rEUtNWm1JT1sCOwTogML7U1UYrKHWVtYGayZoYFNVbvSzLF1C5j4BkAQAA
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
 rust/kernel/alloc/allocator_test.rs | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/rust/kernel/alloc/allocator_test.rs b/rust/kernel/alloc/allocator_test.rs
index e3240d16040b..17a475380253 100644
--- a/rust/kernel/alloc/allocator_test.rs
+++ b/rust/kernel/alloc/allocator_test.rs
@@ -62,6 +62,26 @@ unsafe fn realloc(
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
+        let layout = layout.align_to(min_align).unwrap_or_else(|_err| {
+            crate::build_error!("invalid alignment")
+        });
+        let layout = layout.pad_to_align();
+
         // SAFETY: Returns either NULL or a pointer to a memory allocation that satisfies or
         // exceeds the given size and alignment requirements.
         let dst = unsafe { libc_aligned_alloc(layout.align(), layout.size()) } as *mut u8;

---
base-commit: a64dcfb451e254085a7daee5fe51bf22959d52d3
change-id: 20250201-aligned-alloc-b52cb2353c82

Best regards,
-- 
Tamir Duberstein <tamird@gmail.com>


