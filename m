Return-Path: <linux-man+bounces-2761-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 05C11A83199
	for <lists+linux-man@lfdr.de>; Wed,  9 Apr 2025 22:07:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 849F03AB27F
	for <lists+linux-man@lfdr.de>; Wed,  9 Apr 2025 20:03:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8A47202C44;
	Wed,  9 Apr 2025 20:03:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="zV71S9FN"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDA7C143748
	for <linux-man@vger.kernel.org>; Wed,  9 Apr 2025 20:03:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744229007; cv=none; b=PzIkV1OdiUyYwM1FH7E1Z2u1GeXdJ9XfOYZVyz+n7EyNQglgcHz0G2Wk6Le0cNOvKYPvjGzPGIocPWBruWE7rwafSd8I5L9vF9QN0rQgQfX1+BGe50dvaGLJ5R/A/qo3WFWIZ2gRczT0bfMpMbXRwNVFBXyurAhCG77v1k0FA5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744229007; c=relaxed/simple;
	bh=2q8RemfWk+iqHKKYxGihb6hG4Sg1PwqdaIhIoRf5TSU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=C5jtIa5nTGqx1AD2G3tswHfbXjgewXsp1zppZdQUyqL81HmdUBE2K2EFhXfz2irLpq1misvLG8bxEf3WPSF5rDj2APngrWfiKbrtHXgR2rfqHnxR2Lg/Ea5/HqXeMjmllyC51rEwk3zr14XHin/sA22mm7h431wpClxQ8k/f1nY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=zV71S9FN; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43ef83a6bfaso1485e9.1
        for <linux-man@vger.kernel.org>; Wed, 09 Apr 2025 13:03:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1744229004; x=1744833804; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ibP2CU6RAFJSeqUSlrkOvkOcHxqYPK+98gOWakQDC6c=;
        b=zV71S9FN4s/kalw5hWFvZJeqpIErv4Db7oMo9v5CbODqtJdhbQEeaASJEhm2p9vjMo
         Ovi1MfEV8+dklMop5vrZHTZ2rmWUfokVBcr3Kd0tngWlq2jUy7YMnpXVGAe5KyK7UtoD
         zYzmucM9fDOxHjiW2wcdgzeU5XAMPP+qilF7TMVLDGM19KuJvzH3DfwOfmN3DsEPoLBe
         Ihu80MzWS/v0ZP7lZeAVWRVoG1c3eLT2w85yFo621ZZkNwvaERbYn7/Sgv2wYpaEjrhW
         JK+JnylixDqTIqLhrHwoFtxQ9bmXTzgJfWL67n4FkiD4486fUakm1slOQ9IzSoxMSHH5
         nhHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744229004; x=1744833804;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ibP2CU6RAFJSeqUSlrkOvkOcHxqYPK+98gOWakQDC6c=;
        b=nILk+nqhONbuGRF8Ah94ji/x5O8WpHpQ8hklt3KUWvuOAI5dSEwYnxCUS7bNDDaoLG
         xwRNJR6ivKmLHz3W5Mk3CwF3+QkQQpDqj/1CQSvhBULRHkOcqOAzDnh78jA4GLXEHEcr
         +pSRvb1mvDR0IFaGmIPv6KMdYmA3cA69XxYpB29c4lrgXqDeIemutK6JmVOIRwSZGexy
         Vt+XF0EoPVdx1qKDG2D1vdvpcGmOv6/mgGcU6kirnpkHwKbCNplHx9mU32cjsFi44F8v
         MiFpDZnwNGfyItDuPJBfwU4Id3Z1kkgpPfvZbAcdkL3dFrvLD/U5DSrCR3Gi/JZhQAFa
         JrZw==
X-Gm-Message-State: AOJu0YyDEanSeUCAV6WbbG7aPO57BdKQfagIClw1s9AB71/XR9+QMhQM
	V45GxNho+OXmxpD4eKnN4TK3Ie8Y/nhf8SuwRe4jbqEJCxC2TQq8dyAD0Cp1OA==
X-Gm-Gg: ASbGncvYjrQKXvg62fQs6D+FLNcPTwDFuozv3rNJT3ETe0CxTEeySqE2qh8ZQl9mlRs
	5srGeM6sr5UQElY06VxgUP7krEplOKm07QcZuc2t43b4qSa7QmqBW2kjXAQdYhByR+n5pd6Px8G
	MGYOYOgErAtZaUBBgVVv1yJfXuL1BAMxS85MCoy+Xi+pPG5Tl2jlIA+ygTMfkeYPA3bpiL587BS
	BFqBpwJ6C+EAbP1GywdHs5GBDo7Pvm+C5IgqvrJD32CsVrB5U3dTKjj4xZCpRkNBT8z+QAekzGK
	srPhrucfGhJPO9kbzItPv0VsCCvK3A==
X-Google-Smtp-Source: AGHT+IG6niI2hvwR6UeodCm2LxQ33raWiJJ1zWlTTycqnhO+IaVHjMAPiCodW4wIumoymwLCneEXbw==
X-Received: by 2002:a05:600c:3b09:b0:43b:bf3f:9664 with SMTP id 5b1f17b1804b1-43f2e2df5a2mr114045e9.5.1744229003612;
        Wed, 09 Apr 2025 13:03:23 -0700 (PDT)
Received: from localhost ([2a00:79e0:9d:4:3a4a:b867:2c16:399f])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-43f2338d757sm26436995e9.5.2025.04.09.13.03.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 13:03:22 -0700 (PDT)
From: Jann Horn <jannh@google.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org,
	Andrew Morton <akpm@linux-foundation.org>,
	"Liam R . Howlett" <Liam.Howlett@oracle.com>,
	Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
	Vlastimil Babka <vbabka@suse.cz>,
	linux-mm@kvack.org
Subject: [PATCH man] mmap.2: Document danger of mappings larger than PTRDIFF_MAX
Date: Wed,  9 Apr 2025 22:03:16 +0200
Message-ID: <20250409200316.1555164-1-jannh@google.com>
X-Mailer: git-send-email 2.49.0.504.g3bcea36a83-goog
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
   checked_request2size()
---
I'm not sure if we can reasonably do anything about this in the kernel,
given that the kernel does not really have any idea of what userspace
object sizes look like, or whether userspace even wants C semantics.
But we can at least document it...

@man-pages maintainer: Please wait a few days before applying this;
I imagine there might be some discussion about this.

 man/man2/mmap.2 | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/man/man2/mmap.2 b/man/man2/mmap.2
index caf822103..9cb7dacf3 100644
--- a/man/man2/mmap.2
+++ b/man/man2/mmap.2
@@ -785,6 +785,23 @@ correspond to added or removed regions of the file is unspecified.
 An application can determine which pages of a mapping are
 currently resident in the buffer/page cache using
 .BR mincore (2).
+.P
+Unlike typical
+.BR malloc (3)
+implementations,
+.BR mmap ()
+does not prevent creating objects larger than
+.B PTRDIFF_MAX.
+Objects that are larger than
+.B PTRDIFF_MAX
+only work in limited ways in standard C (in particular, pointer subtraction
+results in undefined behavior if the result would be bigger than
+.B PTRDIFF_MAX).
+On top of that, GCC also assumes that no object is bigger than
+.B PTRDIFF_MAX.
+.B PTRDIFF_MAX
+is usually half of the address space size; so for 32-bit processes, it is
+usually 0x7fffffff (almost 2 GiB).
 .\"
 .SS Using MAP_FIXED safely
 The only safe use for

base-commit: 4c4d9f0f5148caf1271394018d0f7381c1b8b400
-- 
2.49.0.504.g3bcea36a83-goog


