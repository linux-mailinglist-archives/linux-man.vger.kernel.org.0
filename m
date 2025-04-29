Return-Path: <linux-man+bounces-2823-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 778E0AA11C8
	for <lists+linux-man@lfdr.de>; Tue, 29 Apr 2025 18:44:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D12A1466DF9
	for <lists+linux-man@lfdr.de>; Tue, 29 Apr 2025 16:44:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCED32459EA;
	Tue, 29 Apr 2025 16:44:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="VPSo/ttx"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D51E623BCF2
	for <linux-man@vger.kernel.org>; Tue, 29 Apr 2025 16:44:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745945048; cv=none; b=ZnaQM3+pGZlSxWJDB+RlWWkGxbDEABjWRlyVsy2BZLlZwH3CePnpuIoSX4e0gEY9ZZvZyyEEIiO/zW5zQpIeS7vygCeTb1frNgu4G1opcyDG9VPx30awpU9MzqZHU2yQiBfOF+tabSNxKZsBDUCEYCdcelerQplWNSyNe4THWDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745945048; c=relaxed/simple;
	bh=1UUzQxlDpdBeuhUAGuUjYiRvoPKTyXVmsxOS7s3R1ek=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=EfUEbBi/s7nLCN01uJXEjRmomgG4s8qv8WtK1GgnFPMn3kxZ6ahXSG85nezwOiWXM07jrtT9yG0KPv4CBxuRvW/tazXkbpCOJYTnaa94zgMx2R5kN+LI5fL3uJx6lWL79p5k6OweUEpW9FoMNOdp2N9K4NOrgKbRL1GlqnZ2+zk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=VPSo/ttx; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-43d5f10e1aaso53695e9.0
        for <linux-man@vger.kernel.org>; Tue, 29 Apr 2025 09:44:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1745945045; x=1746549845; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8Q+7reQ7Y48tayiXG8kRLfEN8nY/ew2idxVMBKwK9Bk=;
        b=VPSo/ttxS+AfZDE16U6sKI436FG6TNLIL/pe4P7fQjXaXywpta8MmVwo7M7Bohp4MM
         9n4qmrPqYFKw0KvFZ9g9mkV5vqVqIU9cZsId9APH7qsm/PcYl6nmOyrb47c7Ap4xwG74
         iMASoazxicu4sCKnJZeOeDSF1RQghOg7YET+icWmkSv0Wh2ji9D+48hk9860RFsg12GK
         n3uSIbQUbnlgqFthz1+szCvUJ/s4RVwJQhVaZZRVR1wu4qgAlNVOX1hKxRBpsivp3vpV
         T4VfylTkvHguWN4OwIBtjYNDGi4nvre4HLjYRvmNV4TUviLDFUxg6GwJ1U5SAJhtV3rA
         HW6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745945045; x=1746549845;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8Q+7reQ7Y48tayiXG8kRLfEN8nY/ew2idxVMBKwK9Bk=;
        b=u4hfqboVpmqCDKXDhsFv+18yZjVSLyYKJAlstwVi4P4fNe6zEc4TilG0vV0vEYrQQy
         1h/th9ufUOFpl5P66ZMPxJafszcMUDyXOLRm4e3YXn1TuLJox+TqgkmKKu/QXStIn1Mi
         fP03Ah2s4bUye6Zz02ZtZ/ofeb68aI4ZCSNKtlLf8JTrj0eL7pfd/9y+s7toYqKJJnVt
         dP3YRT6UI3fLxUlP/FSt80/HwSdmeiGrutvIwfIRnojPMMTfw3RIEuEhsgaBYbaHEZKd
         polFucSkC6KWhlcfvdHXad41XC3v/KTZnonWCRtrKxlxxX+mx0QOnBSOV0nGt4KnIu4s
         JdFg==
X-Gm-Message-State: AOJu0Yxyn2PV45zD8xmLA3L5lZs7hStP9E3hpZqY4bPWrB4yzbsvaQEU
	u7dqKyv9B5AeZD7LcHCCedK+h/LnMy+OO3TwzB0U49ETtLg4KMgN9XNLumDN3w==
X-Gm-Gg: ASbGncsMySynBUmoSR9lzMFHBss7LoLyHQA2nDq1AnWsTA/SxiUs1pfvQsYPCVFvVY1
	FA5m5Us2ArrsgAdl+f/RjXkKGyeUb3PF75+X/llwhVv8P2G0RFO5rHsyWCaPqzMnAVFddyrCDsG
	d3sAaLXMo5WkGHdJcs2RQY2A6bkBLca/L2AEXTURkxEQhsIsJUs3p8LvD5VCg6FCHsnKNdi0hwt
	ODSqLFlauVOlvpBWpifAaQ1jF+rt7ucTXZTfO5jHV0Y/eymznU5BwpYVB1ae5irMJ/meST4VaXb
	JGxRwHjeORA5EP+AmYwzENeS1hOU3t5cTmR1Zo0=
X-Google-Smtp-Source: AGHT+IHj8FRRYMysLKuNm+nK2RZNYOU6P6Y6esGIE0iQ1A63rIVKxzj45a1okqyzM3jfirP/VoxdZQ==
X-Received: by 2002:a05:600c:4688:b0:439:8d84:32ff with SMTP id 5b1f17b1804b1-441ad65335dmr1202435e9.3.1745945044815;
        Tue, 29 Apr 2025 09:44:04 -0700 (PDT)
Received: from localhost ([2a00:79e0:9d:4:3989:6246:83f7:7d90])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-3a073e5da4dsm14625359f8f.99.2025.04.29.09.44.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Apr 2025 09:44:04 -0700 (PDT)
From: Jann Horn <jannh@google.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	Andrew Morton <akpm@linux-foundation.org>,
	"Liam R . Howlett" <Liam.Howlett@oracle.com>,
	Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
	Vlastimil Babka <vbabka@suse.cz>,
	linux-mm@kvack.org,
	Jakub Wilk <jwilk@jwilk.net>
Subject: [PATCH man v2] mmap.2: Document danger of mappings larger than PTRDIFF_MAX
Date: Tue, 29 Apr 2025 18:43:59 +0200
Message-ID: <20250429164359.2699330-1-jannh@google.com>
X-Mailer: git-send-email 2.49.0.901.g37484f566f-goog
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

References:
 - C99 draft: https://www.open-std.org/jtc1/sc22/wg14/www/docs/n1124.pdf
   section "6.5.6 Additive operators", paragraph 9
 - object size restriction in GCC:
   https://gcc.gnu.org/legacy-ml/gcc/2011-08/msg00221.html
 - glibc malloc restricts object size to <=PTRDIFF_MAX in
   checked_request2size() since glibc v2.30 (released in 2019, as pointed
   out by Jakub Wilk):
   https://sourceware.org/cgit/glibc/commit/?id=9bf8e29ca136094f
---
 man/man2/mmap.2 | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/man/man2/mmap.2 b/man/man2/mmap.2
index caf822103..4bb15699d 100644
--- a/man/man2/mmap.2
+++ b/man/man2/mmap.2
@@ -785,6 +785,25 @@ correspond to added or removed regions of the file is unspecified.
 An application can determine which pages of a mapping are
 currently resident in the buffer/page cache using
 .BR mincore (2).
+.P
+Unlike typical
+.BR malloc (3)
+implementations,
+.BR mmap ()
+does not prevent creating objects larger than
+.BR PTRDIFF_MAX .
+Objects that are larger than
+.B PTRDIFF_MAX
+only work in limited ways in standard C
+(in particular, pointer subtraction results in undefined behavior if the
+result would be bigger than
+.BR PTRDIFF_MAX ).
+On top of that, GCC also assumes that no object is bigger than
+.BR PTRDIFF_MAX .
+.B PTRDIFF_MAX
+is usually half of the address space size;
+so for 32-bit processes,
+it is usually 0x7fffffff (almost 2 GiB).
 .\"
 .SS Using MAP_FIXED safely
 The only safe use for

base-commit: 4c4d9f0f5148caf1271394018d0f7381c1b8b400
-- 
2.49.0.901.g37484f566f-goog


