Return-Path: <linux-man+bounces-4585-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C2A0CE8CD7
	for <lists+linux-man@lfdr.de>; Tue, 30 Dec 2025 07:44:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3D419300E837
	for <lists+linux-man@lfdr.de>; Tue, 30 Dec 2025 06:44:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A8932F7443;
	Tue, 30 Dec 2025 06:44:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dGiMpumN"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F5E12F1FE1
	for <linux-man@vger.kernel.org>; Tue, 30 Dec 2025 06:43:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767077040; cv=none; b=tUkknln/cI36NqNRLhh0f3YDyNs+1qqDA1962/PY9Qkd99XcjAqLkS0B2sNettYhSLJShCVnpBFGt3FIRZnf3T92ru/wfXvN7mcrh9a3yPRW2mUTO0NtBc/stfPF+qzIPzw3yWQCL5I2zrx7t5t97ZpCmIn0N+PJfcv+v+ZyBYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767077040; c=relaxed/simple;
	bh=y92KqWuFFbkCGfQXNnCC8Ke0kbB2l5NjzwriI70KRsA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=vGIy8ExGbuOMbebI51bYlGlAk47+PrvotsuH+6Y9UahouxpBVKnLoUV2QU+SOZy955CnBSF4UtgDzx3ulxaGIGhALBNjrJBmRXS+G5ii537/Q3A1lCdKOQheVBmf68k6LoxK/fKdDU1zbJwFzfQ83HpDjhH8za+YqXTsDkcyPhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dGiMpumN; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2a0b4320665so148509535ad.1
        for <linux-man@vger.kernel.org>; Mon, 29 Dec 2025 22:43:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767077038; x=1767681838; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iT7iwmR4yEIr6khuQ3OPZn2hkqU3hpwV4xBwGQ7GmqQ=;
        b=dGiMpumN6uTZuFSuYMPADxcEe+4cGQuhvb3fQP5jRw3uSim60u0/xlrxddVc+O75jL
         qJtTq6ami8y7qNat1dY8fG+4kpM92Z5PA4XopJxQgstseo9b6H2yojDk6AkZEkmoKOot
         r4Oko3w7ION+8Sjx0j+S22AGJVF8Szgl9QQmJpGJHAaTtcTSeaao2pqyiBiVZ4y3vS5s
         6WbJtBwXmtTdmLe3q0FWToSgcnqhBsF6uxOGTo2c/Y6EuU6ROK+MC38KLML8XVzoesaX
         NAgOxzcDODzAnEN28pU7O+FbnBKAw0O2gKOrnIz6VErba9F9z7E/68EbTHzaDJb39GDU
         rEqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767077038; x=1767681838;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=iT7iwmR4yEIr6khuQ3OPZn2hkqU3hpwV4xBwGQ7GmqQ=;
        b=XGDOP5Fxxyb+qcUTfzguYTPyy2G8EofjLT5Xv4UsTOVakhyawDVKQS71El463Ri+NZ
         19U8L9lvodHvS93m2Xf56uYQZHC793K2jPt0z82lOhRvaJpMjVRLaiBcN3fEM9F0aux4
         I5OeSq/Qw6LpMm7RYoy4LkD6sgEdY1HHKMAa2qAzXGUz29BtiPKQEhlIyHFf8Wg4KmFM
         gvMnBtSwU7nzRCcytF11Q9Gf4E/uGtlv9hPfGU+ciN6RLU+morYqtqUrbqxMpVC5Py1x
         g2jiTLD7AxhxSnIkQ4+05JRxMy1FQUy+NAsMNEJVQPcestZH5urljMZlQg6uSXRXwcVn
         yP1w==
X-Forwarded-Encrypted: i=1; AJvYcCVtdUUrXBDU85cyx+AKQsFAgZyaNmiPOwO6pTDK3RjuZsBesTEoOvpHgdBlVYhkprgFXSzNE/MWsQs=@vger.kernel.org
X-Gm-Message-State: AOJu0YxGpDg4CYOD75I8G0fubXsLIM2H7wT5PfMELEj5JOc/4FVImB+I
	BLcOfnduSw/Od5o/TS0bgfWBQMFtftEn/dfsSm/YS6F47TY3E43wPNOa
X-Gm-Gg: AY/fxX4q/kqTI200YfXBp5pReDvzaFmG7UqPpuXbvC30DYPp7okoJb+MCDrz4mE9WaQ
	7ifurlG6WpVlX3cuXZS+CM8weW/1ecZIaVa9TW+iqPZVro3dpvIe7nsCIJ/QMf+K1O8z6FXzltP
	3QJRbW5+UMvQJqpdkmXPN0vUEEjJ6NK1Zgcp2GH3auoNLHQcFrLHRVjQHqCsrcekl2ON0CoUAwe
	4lK4LHJ0AN1X14O9GCv52xA3cXutlAwGqWqKk8yN73YJNCagCiyku5TnEhWVUgg97RCxQLBLgAX
	v3L+UiTzRNerpERwrk1ocHmvXW9bh/316xmTFcglVJmVSFP2Sy8cMFtOteE2A8/TiySZxX9ggun
	gtIpuGaazlmGjfTjxtI1ufBABfa1Vj+NM/aC70S+Ug1AfaOcp6mbH9R5JZ1co9tSsQ3ERZk+/WO
	onl6BS6FH9uPMtShWFgECnw5pkAdhMJDMf5qZ16CfL1GTeqhahJ2HfD8mo83xyrNtLFaQaKtPPm
	YNgw9eejydaufY9ag==
X-Google-Smtp-Source: AGHT+IGXIhsbLx4B4/F5xSUhSCbOocBJIsBGj9M8UlvybdN3A8yQa9NM7Q7w0/xn5aPZ1hUJ8M+Ukw==
X-Received: by 2002:a17:902:fc45:b0:2a0:bea0:8207 with SMTP id d9443c01a7336-2a2f2b5361amr371685185ad.49.1767077038286;
        Mon, 29 Dec 2025 22:43:58 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-841f-6737-2002-883a.ip6.aussiebb.net. [2403:580b:5de8:0:841f:6737:2002:883a])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d5d566sm287458395ad.71.2025.12.29.22.43.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 22:43:57 -0800 (PST)
From: seth.i.mcdonald@gmail.com
X-Google-Original-From: sethmcmail@pm.me
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 3/4] man/man2/utime.2: SYNOPSIS: ffix
Date: Tue, 30 Dec 2025 16:42:02 +1000
Message-ID: <fad6d60041620c94de4aed504bfffdf28b22cf46.1767072049.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1767072049.git.sethmcmail@pm.me>
References: <cover.1767072049.git.sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Seth McDonald <sethmcmail@pm.me>

Increments the indentation of the times parameter in the utimes(2)
prototype by one space.

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2/utime.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man2/utime.2 b/man/man2/utime.2
index 94307a5b90..e044f15b06 100644
--- a/man/man2/utime.2
+++ b/man/man2/utime.2
@@ -18,7 +18,7 @@ .SH SYNOPSIS
 .B #include <sys/time.h>
 .P
 .BI "int utimes(const char *" path ,
-.BI "          const struct timeval " times "[_Nullable 2]);"
+.BI "           const struct timeval " times "[_Nullable 2]);"
 .fi
 .SH DESCRIPTION
 .B Note:
-- 
2.47.3


