Return-Path: <linux-man+bounces-2430-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 05B52A33E0C
	for <lists+linux-man@lfdr.de>; Thu, 13 Feb 2025 12:28:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C42457A10E3
	for <lists+linux-man@lfdr.de>; Thu, 13 Feb 2025 11:26:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 515BE21CC61;
	Thu, 13 Feb 2025 11:26:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jmnLr5lU"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54F6F227EA9;
	Thu, 13 Feb 2025 11:26:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739446008; cv=none; b=dy7fnytYaBcxtzeSmqMVR7DE8ZjbK7ZjorIETlnoCMhY4nA8VcPo730hKnpGH8CzkXCCDVdiZXKf2JmEnSP0sAsBCuKXCT4ScV4+KtBamT/pzN78jJcCehgheRz9IQSErBLPbaTDmGovdp3sUGPMBfZ7YmVzVV06HLvrb7jLYMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739446008; c=relaxed/simple;
	bh=UvF0qyEAeD84uggiYEODW362+ZzeFxJVzIiWPhGyHzc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=U9Pjc/Pl/ALr8wiIbLC/TN49VWLME+ypO+/q0ImXk2c1ZYX0wV4T67RUI1jfAM9DFxetdaShGtnU8VWHytmZp4y3FFalgfRQp+j3k6MD/Vav/TpEOag5j/TPy8JUx8OR+q0tEUI6IywKL1t7FmJvfeAe55V/yGSGFRZ05N0hYeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jmnLr5lU; arc=none smtp.client-ip=209.85.160.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f182.google.com with SMTP id d75a77b69052e-46c7855df10so12745231cf.3;
        Thu, 13 Feb 2025 03:26:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739446005; x=1740050805; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=LHaCd/GVQXhCshi75jh/YdL77wv4MeC4IivvaIzYoSQ=;
        b=jmnLr5lU5IaGcx0paRC9MntDoiurx7ANjTaUczkuMJZnNLK9tcScO9GB9JBW7nAnLT
         xkWyywONA/tNIlW2B91WMnrs1djwDL0yCGZRTAiB3l5BS06JHAU+i2I7bnVgcktlDaCn
         gj5Kl21KK5legZyTHKasRy9TFcXkc3Raqg5f66m3q0FYUJM+nFlPhh1eoFVu1JH3nTJ/
         SDgy2UxGJHcAlhashMYKJBsQqLAXuiyBoSTfehHl83B90obKwfChRKXdOToVynKp6z2p
         1kT52scQmi9Pa7VaQQgA9K4JzK9UkSMPoSRzCUuNBldqTs/U2DKVd5zHtjqqtpraRkht
         78zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739446005; x=1740050805;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LHaCd/GVQXhCshi75jh/YdL77wv4MeC4IivvaIzYoSQ=;
        b=p0zSWLsGI/V5a3UTeL2NeZomtgw6dEIARCLy6VhO1TzjZCZILaaAuslz94K0IEa40a
         iTfZVaHDiunKH2u/hmxx5/3rfU3A88dXfdwPKA6p7wUXnSnA1YXokqr2RHiX9IlezD5G
         Fa/9qwuRqodsqJFJ4La9NbPIT80mzkxB7pk4Awh63GHYdJRuUtpBs3nZSvoo1ufOBSMQ
         KJxBbNLyCaqmW1AzWH4hx7zuduurKi0k6+8bh6uRyQv4n+07Dx76IAJEsYtDJHvMCXd1
         Cfy13eAyYsB7R6gYgT03ExXjDDoOEcyeXYWFqzzognN6xLGKe+RVU+RKiM4zRbKGk5Z1
         jwzw==
X-Forwarded-Encrypted: i=1; AJvYcCW1ALHVZqGI5+KIiBW1vfb1F69LcfVP/hXSBgKK3s40WS0swhiTw6aZzTp3sJqukvurKTetaXeuuIKAqco=@vger.kernel.org, AJvYcCWFcmkAUMlMUIwEK58H6ItRJ9EA9P8BPLMYvNuHw+n/8UqDr5mLSkSIJ1+9ZsMt17Cf0G+njxd/nmRy@vger.kernel.org
X-Gm-Message-State: AOJu0YzIbc1VBhO8lbrRTkzu31fhARZhFA3SDiPpXZIH1eIgPF2etGcd
	LCV6tGesdq8jaH5L5niq0WZDlyobnlGXm/d4bIkgSXQJgrPnukZo
X-Gm-Gg: ASbGncuYdaVuiLJ/oOFqv7ttsz5d7p4sKQBVQCUHQfYebFdlP+P7N1sQcVw7pV5RDey
	2vu39O1jqq5AL0CKzDYazx4aQt+mJTs6SqWXehRbrrBjFDM7btyO4q8ImX96SYoqiGXQ6OWu1vl
	LzDEnwvsPMm5YI6+QR+P/6s4UhnWozATdgLUly6Aab6OhUmB5e8xaz0wAsbyTKM4xQQRPzpk0Q7
	g73Zfo9m4FSDX4Sjst92lf2qAFzVKnR+fs95r10ArVv5C8Z3BTYV8YWJD0jnxRzMPIf3lpvvMIv
	CiTNg8MmcLwgNPJJ+GRht4LywUP2OdL9Gz30weM5tnbXrbgwV4qtNybuUn+E5uWfTVJIYzd0WBC
	WPl7vT2DLAKQGXJsNe03HHNCXVYM8gmrcWMfg8w==
X-Google-Smtp-Source: AGHT+IHGRagn7x8eSs7Z/JyfOoyd3nmFtQG9HGa52jb6SXFkz2tqApWeqtO3XMaNdGLZypac/vL7rA==
X-Received: by 2002:a05:622a:1e85:b0:45d:8be9:b0e6 with SMTP id d75a77b69052e-471bee35d02mr50933101cf.43.1739446005044;
        Thu, 13 Feb 2025 03:26:45 -0800 (PST)
Received: from 1.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.0.ip6.arpa ([2600:4041:5be7:7c00:c8d8:9808:e9c7:ed5b])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-471c2af335asm6641891cf.55.2025.02.13.03.26.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Feb 2025 03:26:43 -0800 (PST)
From: Tamir Duberstein <tamird@gmail.com>
Date: Thu, 13 Feb 2025 06:26:41 -0500
Subject: [PATCH v6] rust: alloc: satisfy POSIX alignment requirement
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250213-aligned-alloc-v6-1-4fd7f248600b@gmail.com>
X-B4-Tracking: v=1; b=H4sIAPDWrWcC/3XPwWrDMAwG4FcpPs9DlmJ36anvMXawZTk1pElJR
 tgoefc5PWUuPYlf8P1IdzXLlGVWp8NdTbLkOY9DCe7toPjih050jiUrBLSAYLTvczdILLMfWQe
 LHJAs8QeqYm6TpPzz6Pv8KvmS5+9x+n3UL2bbvmpajDaa29YfKRGH2Jy7q8/9O49XtTUtuNdYa
 yza+gTBphgbl2pNe+1qTUUDBwYfgMDFWjc7baDWTdEOWibvkhhqa233+ulyu/1tjUAwxyjyT6/
 r+gcSwogkogEAAA==
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
Changes in v6:
- Replace unsound use of build_error with map_err. (Danilo Krummrich)
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
index e3240d16040b..e68775078e90 100644
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
+        let layout = layout.align_to(min_align).map_err(|_| AllocError)?.pad_to_align();
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


