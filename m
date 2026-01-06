Return-Path: <linux-man+bounces-4660-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 566EACF7D39
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 11:38:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C80B230617E5
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 10:36:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 221CB342CAE;
	Tue,  6 Jan 2026 10:30:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LSzMDrcZ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E318342C88
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 10:30:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767695457; cv=none; b=dv5AQAgLI97CCE76CZyJGQrqJhyRwtVT4DUpo0wnfAXgC2g/Wg79jnCCxCzLBns6b0qNwqLT5a+CEHaYZ5Usvi+cAFbIrqUgeJKc8JURGVPAevrsB7K2Xph+oSSwCtiQtKT+KfoSdtRjL43yXxiO5777PkofN8jhPlWpN+5gMkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767695457; c=relaxed/simple;
	bh=NY/kx0CsxQ8KUp2YT6hW0JMXE1cAtCFYYze2Fl91QnA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=jcP7ioclML5RVwTnyvj514i9RzlmOig0zHDhCbEHB6/xND/FLnK8+JID5Kt1co+nqSEC/aRWSs/dhb1mTt01Wwwt4UW6xxpdqlvdZ67n92KAfIb/zE0cCBZ3Rt+Z0rsppRfRMJtQ0StZ3i6xPwhfsOfRuaoP4eSu/X7q2jYCg4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LSzMDrcZ; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-43246af170aso456691f8f.0
        for <linux-man@vger.kernel.org>; Tue, 06 Jan 2026 02:30:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767695454; x=1768300254; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jGHKOemU6IhLpEFQ995ZbgnuIIegrVzj1tCwu5oYdH4=;
        b=LSzMDrcZg3NFH4VMzywla/B6KUeCvI/FXV20eOwfXK/OsrP1XRcuULbzRDtsoBSEG/
         0pMAskO7FoBZ/ilmHGIPD+nLj+duHU4gNB9/Nr7pSqBNCYGrPEVfIXOIJB/YPvsCkG/2
         lzRMLLxkRaTBr+/T+jkXHWb01a/q4tODFKHx/YcuV687M17bFvi3YC7Psd7DwL/yfRFX
         6QEXomGq0FLo2MnC2veia4g0IQbrCHThryuwC/e1Kaz3mmfgiTeZBaeMWkgzXa9c7OyV
         LJ34KFQDLCWDeiHi2dF3/LP7HU8WYgqcLrbzlVjbmVT+oWSdhiYDCbWWuNXncIMN7/mk
         OnMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767695454; x=1768300254;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jGHKOemU6IhLpEFQ995ZbgnuIIegrVzj1tCwu5oYdH4=;
        b=xJ02Ei4UuXAaEjvDkICnQgNePXhXySB7Aaw7A2wwWxmXQ+kCu9Y6xeVKkSQBqPQ6Wn
         TcAN+94pnrJ+y6FaK3izctMkE9xXYv4GFFk0KOF2BL/HfUxc+V7LnV/MwkQOn9ZwQ/gn
         lRJ0NoUruAmSkn9+ElShW089XbSEI5bhf25emxGmwNHu1j6tA4kabVYQqJsSE0OM2eij
         Hdz2KP5Kez5XkzGbZ6nz7Wgg2I81HBjzeAitSBdI7XPoK76oJUjhLJtD0L53K58LZt/q
         nhqHpFDVrszDI+qDOEl7QfT5rRc3s0tzBVzGgxU7NYATb26XSeb43M6WlSccTPI2PVIb
         iW3w==
X-Gm-Message-State: AOJu0YxIvBG5vhqU/QrU9jZSOZAO/6HyGgl1OtYxWvYVHn3vlto9oZI5
	nhvGMbeiNVD6qc+TwXVERgR50B7kS+JxyolsRRgXDzFGKUViCoi8LxyD
X-Gm-Gg: AY/fxX5Q4ODGX/l4ohha1pg2vDFnXH+v8CZGf1ABkCpTCofrkvpb/nfZ9PnzRzGN1vc
	pTC/SaQPVs/pyWH9S8NtswaSk0yNT/ADIf6KZLhlbkI85XlBkrAT6uiswZASs7/wNh7sb3sWZJj
	K9qMCA0KoM4eGw0ZS7KQYXP2co/zrYa4SDHIv/eupM/YNDPeMyBZOdIIGVNn3V5heLvQKQDFxD8
	21NcsDdIx8CViy4FUzDcM2CKscjL2UYbdSf/OJ+vCDOKV/I8PjWzFt1xTPyTX5bLAdOS/iIO9M8
	ZF5bmTyOEVhZQAvs1iJGqWasdoUznZC3Q4S4rc8rL5aMONrFuTifbtuMyxNWlVmg6BAMA1AeiOi
	v3M9ZmmjZ0hGyqcdgt0vutkvtjML4STHcuYw/Vr74ZKrWLIPJ/wjkt8RLYjvb0uoQ3CPTgSjgE/
	IbBSXjKm51x9JW9GSUOGpNm2ObB3b6wGsGnziS
X-Google-Smtp-Source: AGHT+IHgRvD2uURFjq+ONJOUurWhWwgtHDJhgMHyC64Nv+AwiZnlMUlzl/8aZzQRQ8eSjwolLaIr3Q==
X-Received: by 2002:a5d:5f51:0:b0:430:f736:7cc with SMTP id ffacd0b85a97d-432bcfa1e4bmr2421269f8f.1.1767695454419;
        Tue, 06 Jan 2026 02:30:54 -0800 (PST)
Received: from DESKTOP-Q32C80O.localdomain ([102.91.81.188])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5ede7esm3581584f8f.32.2026.01.06.02.30.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 02:30:54 -0800 (PST)
From: Simon Essien <champbreed1@gmail.com>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	debian@helgeth.de,
	champbreed1@gmail.com
Subject: [PATCH] man3: Fix spelling (British -> American)
Date: Tue,  6 Jan 2026 10:30:48 +0000
Message-ID: <20260106103048.29227-1-champbreed1@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Standardize 'initialise' variants to American English 'initialize' in regex.3 and pthread_key_create.3.

Reported-by: Helge Kreutzmann <debian@helgeth.de>
Signed-off-by: Simon Essien <champbreed1@gmail.com>
---
 man/man3/pthread_key_create.3 | 2 +-
 man/man3/regex.3              | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/man/man3/pthread_key_create.3 b/man/man3/pthread_key_create.3
index e4fb5e321..ab993cd99 100644
--- a/man/man3/pthread_key_create.3
+++ b/man/man3/pthread_key_create.3
@@ -188,7 +188,7 @@ with automatic reclamation at thread exit:
 /* Key for the thread-specific buffer */
 static pthread_key_t buffer_key;
 \&
-/* Once-only initialisation of the key */
+/* Once-only initialization of the key */
 static pthread_once_t buffer_key_once = PTHREAD_ONCE_INIT;
 \&
 /* Allocate the thread-specific buffer */
diff --git a/man/man3/regex.3 b/man/man3/regex.3
index c9cc310dd..a901a937a 100644
--- a/man/man3/regex.3
+++ b/man/man3/regex.3
@@ -127,7 +127,7 @@ contains
 is used to match a null-terminated string
 against the compiled pattern buffer in
 .IR *preg ,
-which must have been initialised with
+which must have been initialized with
 .BR regcomp ().
 .I eflags
 is the
-- 
2.51.0


