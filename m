Return-Path: <linux-man+bounces-4618-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CF061CF2B8A
	for <lists+linux-man@lfdr.de>; Mon, 05 Jan 2026 10:25:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E5CEC303AE8F
	for <lists+linux-man@lfdr.de>; Mon,  5 Jan 2026 09:20:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 377E528980A;
	Mon,  5 Jan 2026 09:20:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="liv3Iz46"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com [209.85.214.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 876AB32F744
	for <linux-man@vger.kernel.org>; Mon,  5 Jan 2026 09:20:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767604818; cv=none; b=pVX+OcBI4XJfduBGBZBUWcItdtCECBYEh91CfAtU0F3sR0urrW7Fu92LQtxYvpLwwtqWdXlifAOO8m03PM1cdfkplm4bRAEmdQ5JSfuQtiryMThJW4Z1oz6C/5H6l5mBwyr18xuAjwqWnRKcyRvAWkNxI3IIVagG9WppqWzr2PY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767604818; c=relaxed/simple;
	bh=i6Kb7OwVQGKmUan3Ci/SiBG88x9l4fyAvFUgjYzaGxw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=soZ+jqF0zonvCmlmNCgv+rxq/sc2o5RZdIOQClOFovVqgW9jttaA6SX9QOumXHiXi40ou4bTVSbmNf/o0BVypJUmsoQGoxG+RUeYW2WykY86GbnxsJ45qqQBLYiHGlNg//2l45g1lBgzmgwMii3x5bks9dZISXx+QGVFl6JxQVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=liv3Iz46; arc=none smtp.client-ip=209.85.214.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f195.google.com with SMTP id d9443c01a7336-2a0bae9aca3so195930025ad.3
        for <linux-man@vger.kernel.org>; Mon, 05 Jan 2026 01:20:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767604815; x=1768209615; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=R/nO+hAussLwPVuSBp8ZY0U/967s1O6+8/yRMU4mYHU=;
        b=liv3Iz462449ZMu2iVagrBRxwRcKozg8nVRahgbTKmxHQFOiBoDInTW2iYlsRJMDMz
         AviL1nIDC1vHJjz0Z5iMN5GHocUcv4586pP2RAqY23opPZdqHR+4QttGpyq6hfSfJxoz
         vUJOPDogZ2OFSqLAfQTDljRUVH/GQwA8Da1qB96CIMmVVmJM4PpwYtjkM2KMnwYphxJe
         Q88hNnpNXpH8b3JC4ZPGmuMqdyyf3d+Dd1DfL5apNqaK3RDSWSuf8rAAHrMCrV0VeLMT
         vY004LX2QXN93gLg80iFnqaviTJbHnLyKWjwHml70/FzR3du0LWW6cDdB4cBHv2m+5XF
         cg0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767604815; x=1768209615;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=R/nO+hAussLwPVuSBp8ZY0U/967s1O6+8/yRMU4mYHU=;
        b=Dj1aDhj5DIwLPeuaOi4aoKFV0H/1fBnsbnoN+Gz2h/92PyCozSTlvcVpi2SF/UM1OH
         HEyayJxJkS3mfMkK1wfMWP1T++rJ5AWcfO2dZe+lFrW4olAVb7F0tMLkk0sK+++tE3Eb
         LjeG/mITKWwIbFQcNcgf4f9s95xIdzYtvnnaqSsJjkv1qoJLlvuTNXq+mQu4inIsMwLA
         IO0U5c43ZQOfaSA+chIDGfYhz5lEDDVYh+155lVtg0aFMvGUVrgGCmBDcDpvJYStD5NI
         +DE7BRS50mnhtuokylzmHbSuoQZMTGgYejafgL1q7V7MyPKWoScAu5MbHakrQTAesQ2D
         Mdww==
X-Forwarded-Encrypted: i=1; AJvYcCVeXLqdqvCiebpydFWTzwr9oC7DdME2cv4XzISzKfcE+xlfXvK2+ukGFeBiGlGNRE89WdpBjcJ7p/Q=@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1jJ3q5+OImQxnwaMact1N+ov+YHjI38Cc9MwUpvRH99Av7GcQ
	gSa8gTp0kAuepa9yVHQskxT/WvOpu4axDnRs6cvU5oI8YDI9rJosHLMF
X-Gm-Gg: AY/fxX4w/VdlmfW6/3vENa+bpU7og+DrbPq2XYHrN7hfg1/VHYfwA7R6YmmZDtz1lu3
	zk1laDRYdyFf9RY6mpDufw7LMat5EY51gTdg/02USyGo9DCztfDCTUhBijOWJiBlRHReYfBB4SB
	ESkzVmrusLRPpMxzP1koCNdpzEZYSNc1zHLAbpc2sxz8TJAhN2iRkI1Wr+3bJyGSZlo/xBIwMRL
	UEqqxMBKK393t5R9C/1I9X1UA4qCaeIR7No9e5FH03993TdPEnKYY0Ls0KqEqwy222GSK+rYopU
	RkzpltSS7uE/w9tpMII4cAooBu2Hsn85+/ck+D4l+2giSRoPhqqATYYCzZj1FRzYlJfTN8HrKpV
	GZIp7MKK9UIAD49vQ0IsATMBUIpXn9uTbOynnst5sPF4tiN0QYUfwUyKhZyMbUhdJmaQw0S+NSa
	AZGL5lqgC4cQIprazT7yMGMSMmOLM01LxC7nrwgyWIVO/DY9ejT6e6iX3MbQ8YCAwXNb8IucXY1
	9TjwPMvYnvfJkQ/
X-Google-Smtp-Source: AGHT+IHtD4VBIADQbDrTSie6Z3zAgT/2Puudm/j0eAZgv79kdggXBinZuOx5N6grLQcr2jb20/nUsw==
X-Received: by 2002:a17:903:946:b0:29e:9c82:a918 with SMTP id d9443c01a7336-2a2f242559bmr499053195ad.22.1767604814996;
        Mon, 05 Jan 2026 01:20:14 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-a8d1-55e9-3280-2b25.ip6.aussiebb.net. [2403:580b:5de8:0:a8d1:55e9:3280:2b25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d776b2sm446173565ad.98.2026.01.05.01.20.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 01:20:14 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 02/12] man/man2const/F_GETFD.2const: HISTORY: Update first POSIX appearance of F_[GS]ETFD(2const)
Date: Mon,  5 Jan 2026 19:18:38 +1000
Message-ID: <2ebaafd230336d02405815949315e1b0bdf2685f.1767599119.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1767599119.git.sethmcmail@pm.me>
References: <cover.1767599119.git.sethmcmail@pm.me>
Reply-To: Seth McDonald <sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

F_GETFD(2const) and F_SETFD(2const) first appeared in POSIX.1-1988.[1]

[1] IEEE Std 1003.1-1988, Table 6-1 "cmd Values for fcntl()".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2const/F_GETFD.2const | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man/man2const/F_GETFD.2const b/man/man2const/F_GETFD.2const
index e44aa644d60d..dc46ef5df8a7 100644
--- a/man/man2const/F_GETFD.2const
+++ b/man/man2const/F_GETFD.2const
@@ -62,7 +62,9 @@ .SH ERRORS
 .SH STANDARDS
 POSIX.1-2024.
 .SH HISTORY
-SVr4, 4.3BSD, POSIX.1-2001.
+SVr4,
+4.3BSD,
+POSIX.1-1988.
 .SH CAVEATS
 In multithreaded programs, using
 .BR fcntl (2)
-- 
2.47.3


