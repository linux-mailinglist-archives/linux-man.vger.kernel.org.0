Return-Path: <linux-man+bounces-4677-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 63697CF8A39
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 14:58:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7AF133109969
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 13:50:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0E313375CD;
	Tue,  6 Jan 2026 13:49:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="U+46/YnI"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D181B332EDC
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 13:49:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767707387; cv=none; b=Vou0snDKV/+2+EUvMYbtxBKPNGnUMQNX6C2eBb29/F1m1kvzBCDGiz8e9f27pIMWAK+VlAsJlrqdOmzwmZy+7RNk6J13yP1D1irSmfuabSLEoBNCe+cpbjqw9fus3m23HfN0REOabNqyMEcd7CT5jhZZFN0ANm8a+PXs0XRNuhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767707387; c=relaxed/simple;
	bh=9OMqHIdVP+D5qcjvO9cH4+pQhkEQAh67lIkSsHCzvNs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=nufjSZWbzFNXZ2HJdS8/fXgPioYEPK6qIKCEf1ZY+WWy89mlvDjh/ixxJrNs+EyhvEXNL8OxcABDjRItl7RvVQGR7klJL+vuaYKhuMjPWOrRRdAqfPxrH52NFiIu+DU2PdbS6OZj2SY6bS9B5vlIJC7Ke5snlxuU+DA1Lz+xVPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=U+46/YnI; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-47a8195e515so6989905e9.0
        for <linux-man@vger.kernel.org>; Tue, 06 Jan 2026 05:49:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767707384; x=1768312184; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DY7SJ83lIrW6fUelFoHr5MiOFNYeFAmS0DXGx5Jx6dc=;
        b=U+46/YnIS42l0zLFYNmHqPCVS4BKc4W2VQ1PhEUz4TohjPdypj0fvCP7+nFypll+j/
         /8Yi5UuU4ZQlNdDWhMLNB1uq5OW9f24C1W/Nyr3W0gmNnn9JpKFY0Gsr+n6K1ZJhlOw+
         nc6Ri+Lm1dFEqXlxOJo1LCtuymE2RpRu6IlIomSs5fG1zg27qxRdDQQhPlAZ7SbGvoFz
         JysBt3jsiVYnt++wXghtbjryMFy8FitHmgp+LSGrExJhPa0DchKvag6HukTtXHlnUmYS
         Bar1FsT+nSn7kmEr1holPP7fVhM7o19uGXwobrzAQ/3RDNOqTTGhfsVydBYEdKtu9S0N
         YjSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767707384; x=1768312184;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DY7SJ83lIrW6fUelFoHr5MiOFNYeFAmS0DXGx5Jx6dc=;
        b=Y/IY1nkFHGxNkl/QokYdJBZssNwhOWjjidNXNf79zT3uhL7QjlDI5aVnuTIfFNUcUh
         1CbTReeRkrug2PSSs47B7UfUSeepSsLIsVZENqdfWfC2Z6VvGPZd/YYkobDURF1vuAZH
         H0mL/O8kB3vCDsnWsrGTyGZP0m8zYzVG4o5i3KOKOWzifjw95Q6w52jc+C7NM4rTcbzI
         ZjkPHTcxeOD3FAa6fX5EYboNluUOCmpCy/yEo8eIRfE5qHeRe81V20DfYf4vCQJq11Jl
         hUCXC8M+/qf65fQYhUjJ8E1AQ3PHXAQbTffpZezk8tc5UJ0pwyEafftVSKeEKqnC4sPT
         Soyw==
X-Gm-Message-State: AOJu0YwZ4ScbyLywTL20BoKw4Zsi5eRhWngScZp2IxlMjAr/eY1AimwT
	ET73dbv+O9nVg3vJ1Q331uc6eQ1+aGQGzTSJJ+kL+40DOZifPPxBRO4F
X-Gm-Gg: AY/fxX78XXmY8jSNY8pysQUmoiaOHqx+hMNcx0JnFL1FQk0JY4hczo0+bK4HOKvghcD
	1CmV4+YYoMNoAU0/Rm0Ro/UZttTe4kU0Gwol0dqEVbWULidebyWnujkx24GMVM0wqC0AndSI0Vo
	3Uo6XGnUgM11BFmuScYOPXSo1CUIH7/exfHgpZ5eSle+LrDKlo3Q88QNRDZAOfS6SwAClBArMRT
	jvRy25tAVL2FbnXvZwu041aSZipgrzVQ2Fg47Dh6cwn25cvMqo7T0+inc+9YyfIel/f6nCdNYuM
	cgDZN/DXhM4G6993ZhS7OPcbBl0k7pwq2fnvDy79J2X84rgeDk/CMMzjWcGqSQGGz3hSQTaniOl
	7u9qQeJTKerETNWCPjqurRaRyzKUDvZo14M+h6FSbyCcdZySgZp3eyzh18saftn+jTRyCujSq1/
	m/9d3UIReKgMtXLZ3WfsJVOhmJYJ+XgfaRoj7U
X-Google-Smtp-Source: AGHT+IGgACEhsreNzL9Di82OCzaE/+eloqBMvzxUzct+uKzmPy+ZGPSHExF2Jj1KtMWDU4xYyFg9EA==
X-Received: by 2002:a05:600c:3b27:b0:46e:48fd:a1a9 with SMTP id 5b1f17b1804b1-47d7f0a86a6mr33000415e9.33.1767707383919;
        Tue, 06 Jan 2026 05:49:43 -0800 (PST)
Received: from DESKTOP-Q32C80O.localdomain ([102.91.81.158])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5df9afsm4739378f8f.24.2026.01.06.05.49.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 05:49:43 -0800 (PST)
From: Simon Essien <champbreed1@gmail.com>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	Simon Essien <champbreed1@gmail.com>
Subject: [PATCH 1/3] man3/creal.3, man3/cimag.3: Standardize style and history
Date: Tue,  6 Jan 2026 13:49:33 +0000
Message-ID: <20260106134936.233305-1-champbreed1@gmail.com>
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


