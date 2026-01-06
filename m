Return-Path: <linux-man+bounces-4671-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E3FBCF828C
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 12:53:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B999C307E270
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 11:47:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1817D1EA7DF;
	Tue,  6 Jan 2026 11:47:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SMzvTt3t"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E60A533D6
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 11:47:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767700065; cv=none; b=QeAjZqMh5hTRKjx49lNzavGpgiwH1CbWDlLoVMb3AFqrNKiZbGrgm/yzErwsHRnAitFTuQE3eAxtpno+yg6HLeAH5KU8CrwhgJmp2KZDXUh1qtq7izt6bjpWvY6mi1lOgoh+jNuB2C9/zsfM00uQFTUmncaCIKa3Oz/he7J7jmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767700065; c=relaxed/simple;
	bh=9OMqHIdVP+D5qcjvO9cH4+pQhkEQAh67lIkSsHCzvNs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=evobASt3DTooKrdaeqqyhYyFfhFUoclC44p0L+eXcBEOaHfH67YHIK/ufzJL8YNN6Tf51BEcOeAEmXU5ywHZrnpi112JP0lbQKCzbQfKLyBwlsxE30JB8gNzOA/XRohWVVQmbTWE54mfAhP2MNV2cefG07NnkKxq6Z5JHWEYZjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SMzvTt3t; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-47bdbc90dcaso6375355e9.1
        for <linux-man@vger.kernel.org>; Tue, 06 Jan 2026 03:47:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767700062; x=1768304862; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DY7SJ83lIrW6fUelFoHr5MiOFNYeFAmS0DXGx5Jx6dc=;
        b=SMzvTt3ta77wWuA16wXg4Qrajy0TJ2aqcg3mAnBJyH4JhKBxOo/uN2gt1LHT5T/QEg
         qaChP+sQ6iQd0kzMS94CnQU12zCosCk9y1eBOXH6LcDIn8VUjoA6Spo7bt0LImXtdvRI
         4a4mO9v2tcEcpIwJMsLMi0qC3InNXBeoQkaPcqvrX193xmrVgTq6LChpiMpuH2/dDypf
         fYdVH4qSIT93mPC3MpevUQqOGF44rEg0Ns/fJ1Jgv4ZIDZi6V8mzaVcMSvtluSE6nPwT
         S3uOICUt2BqLxmgG9UEO8ytU8ri8k+lPYEsWUAF8wyFeN7n9suYeImvSOuSvtlZeigm+
         Uodg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767700062; x=1768304862;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DY7SJ83lIrW6fUelFoHr5MiOFNYeFAmS0DXGx5Jx6dc=;
        b=VzY4A/jADuZppIy7AYzS4DhQ2pUOQCaZ4hB6tsKOtw6kVnLEDDVpXlVfE/nUD9WDuQ
         WBe/LDWj1sFHBoZ1jLLqmMDFpydaiMyAQZCgMMiY1jLhEXqtCyWo/akx5sH+PBVcJM7O
         bJYczR3vkQ0eG5K/WACUIz1GQedpDo4/UPpPTTbZ/TrAHvbvuH+yO3py4HsbTeQdJBlT
         QHiouhG9/CRThy9/LO+2Cdo9yPeXPpYYae9aHzJx1Oxa0fKRw6cok6SL5P0Y9jhE0u01
         PYEjwc0J4iE3RAp16nfdlqwR77vXX5Z+5sIAxUdE8DfUjd6b5gIcpaK2WqdMMo5QUuC4
         QtDQ==
X-Gm-Message-State: AOJu0YzvORXP7r7gOvt4EMsjMxA3/lD4bkYvSOwzqSyNpon3NCWt1D8s
	szGXsxjk5ABoSguMOqM6Nnc92QYfkmZUNPxcrlhRAwUi341pL/W6Arlq2mBfJ5AX
X-Gm-Gg: AY/fxX7Fzznn1z0yAk73YtkfRK8wyUrxhv2PsYuv91E5HgvDhgwVjSMypZSG0o947zs
	RYSxxrfNAwRPK+AEU3WsNERsqzEFjkuXi6VUHUYExMvVXQ5aYAi8+sHTigL3e3M6XoFWddUEbbM
	wQ9z/4UFyIrY5wMmgkHAx/z7YxpjkviyYLcguZybJnkmXb93BmzcT31jgjqystE9s+S/DNFQt+x
	06c9ehnt2jxwwEkQMFYcvR5qjV05T0lhVv+4+NoHuF9tU3Bfz0GEbEAv286yMg9MtzRJ5jwpjo/
	xO4Oq6QAMSyDvnQvZDW11JU4Ztox42LzK1MpYl9N4WIZudlZyzf+ZpXpk/bun9FwHy/kVr+UwMW
	SImoATMmvOkU/9qx7hWMsyQej5BrFxoEUVW0DJ38iSMx1MF+AtoT42aAYkAfDSHp4vUWB6uPLj2
	3nbon+bKjiQJGi9j4nuz2GeYHMVqxKxyuSkvc1
X-Google-Smtp-Source: AGHT+IGg3DlNPT4h6YAmaQAKmtOGpZWaK6fGID+/YbOgYuQ3gL5WDkE+SiSRIU2+yoz1GfD5nWiLuw==
X-Received: by 2002:a05:600c:a16:b0:477:b642:9dc9 with SMTP id 5b1f17b1804b1-47d7f0a2629mr29500865e9.28.1767700062416;
        Tue, 06 Jan 2026 03:47:42 -0800 (PST)
Received: from DESKTOP-Q32C80O.localdomain ([102.91.81.188])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d7f418538sm38310895e9.5.2026.01.06.03.47.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 03:47:42 -0800 (PST)
From: Simon Essien <champbreed1@gmail.com>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	champbreed1@gmail.com
Subject: [PATCH 1/3] man3/creal.3, man3/cimag.3: Standardize style and history
Date: Tue,  6 Jan 2026 11:47:34 +0000
Message-ID: <20260106114736.105645-1-champbreed1@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Consolidated VERSIONS and HISTORY sections to match project standards.
Moved GNU extension notes for __real__ and __imag__ to a clearer
format within VERSIONS.

Signed-off-by: Simon Essien <champbreed1@gmail.com>
---
 man/man3/cimag.3 | 11 ++++-------
 man/man3/creal.3 | 11 ++++-------
 2 files changed, 8 insertions(+), 14 deletions(-)

diff --git a/man/man3/cimag.3 b/man/man3/cimag.3
index 39eeb1007..946e095a8 100644
--- a/man/man3/cimag.3
+++ b/man/man3/cimag.3
@@ -45,14 +45,11 @@ T{
 T}	Thread safety	MT-Safe
 .TE
 .SH VERSIONS
-GCC also supports __imag__.
-That is a GNU extension.
+Available since glibc 2.1.
+GCC also supports the
+.BR __real__
+keyword (a GNU extension).
 .SH STANDARDS
 C11, POSIX.1-2008.
 .SH HISTORY
-glibc 2.1.
 C99, POSIX.1-2001.
-.SH SEE ALSO
-.BR cabs (3),
-.BR creal (3),
-.BR complex (7)
diff --git a/man/man3/creal.3 b/man/man3/creal.3
index be07d8273..d05125274 100644
--- a/man/man3/creal.3
+++ b/man/man3/creal.3
@@ -43,14 +43,11 @@ T{
 T}	Thread safety	MT-Safe
 .TE
 .SH VERSIONS
-GCC supports also __real__.
-That is a GNU extension.
+Available since glibc 2.1.
+GCC also supports the
+.BR __real__
+keyword (a GNU extension).
 .SH STANDARDS
 C11, POSIX.1-2008.
 .SH HISTORY
-glibc 2.1.
 C99, POSIX.1-2001.
-.SH SEE ALSO
-.BR cabs (3),
-.BR cimag (3),
-.BR complex (7)
-- 
2.51.0


