Return-Path: <linux-man+bounces-3747-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AE4C2B3AC86
	for <lists+linux-man@lfdr.de>; Thu, 28 Aug 2025 23:08:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EA2AA582ACB
	for <lists+linux-man@lfdr.de>; Thu, 28 Aug 2025 21:08:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C577A2BE653;
	Thu, 28 Aug 2025 21:07:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UHYzK1Qk"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com [209.85.160.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFBD02BE7A7
	for <linux-man@vger.kernel.org>; Thu, 28 Aug 2025 21:07:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756415278; cv=none; b=QBQ2cSRqtdcOuQaKh72DCqDWIVH/2Kw5EDv4n5ZjWosNFCfK4sRGiIPBmGWiGngF7CaNK/xLnoGeokM89KacmYupxTC1qA7cGbT8fN1zJs1uR+L62avNiGe7amN164q+93difPF4Db5tQNN6cgL/t7HcpVMCqJfJbGzB3rwrH24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756415278; c=relaxed/simple;
	bh=u4wd2Rb0XcHsevJdbdBC/Nl8Bamv/EqfycsdrMtNy8w=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Ce5oIcqV9uBvKcsA56WzGlQXsZpudxmssC5Tc3AqtUjoYwEspNgKhgGKokXUwXiRG0JsKFynIxRPQLYz3E7nfspC9bpHcGW2ONUuERbyhLZgWD2GuUX3nirzYbjqpBj8lyH9IhoiIS7yGBTjA/H858ceOCREHXL1ARLmPfragUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UHYzK1Qk; arc=none smtp.client-ip=209.85.160.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-30cceb3be82so1299075fac.2
        for <linux-man@vger.kernel.org>; Thu, 28 Aug 2025 14:07:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756415276; x=1757020076; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=nsJNq+ysD9CJu9UA3XIfGtYEnTLCfTMP18/ybs5jWzo=;
        b=UHYzK1QkNkXeufcdRGvpBGZJaEmhXgGb7G+MsKROPYfEmVxsq0X4lKSYobZsxR1Ng3
         a1sInc+23WU2wjOs0ARQjKtI5CcmbLlp1bVy5LP35qxRUS5/c5PzTho2JOCV/XVNVr58
         DeFel8cPvXZaZqkY2fTluDNC4b5IfynnWXyNWf1i4CXg0GRVfnrtq8uaq2koJ/HJILQU
         J0BZqgtQXpVkJKw/kx5JVuuIToUAeKvIowXu5dQ9JFETvVpJpA4+tNkR8j8Jpq5nFYv7
         HLOZkEtacc/eRU6NPBkwMOwN0D0Vut1ukMQjIf1CnbmwYX53ZtaaqmA6Qr9x8HdgQ+fV
         lPCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756415276; x=1757020076;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nsJNq+ysD9CJu9UA3XIfGtYEnTLCfTMP18/ybs5jWzo=;
        b=upsckV4he9soIi1xgliCfxI21ehGp2yfUTSTOWREySHHBK0v5GMoxqfmp3+00/ZLf8
         aLX7fp3LYmw/glLZFc4/i3Twa7VmyS+FD9sqsnbnRpT6DV3NOP/d7RxtvogCEwxNslcv
         SfUPrfyR1BaMDjGL91DVyw422pRzq3XbmJRBcqY862qrGLNdBA5HpfYVvlHE63striRI
         K72/WskT6EDxHYNrsXq9w7ziMpnJjXy6BmRfcPO4foYg2leF/BgL4Aj5ihohR/woDwRr
         sWX6ztWUsYR0x88vx9G7VJzzgXSNuw67l06hp+wODS7SC77qQde89QPIt+icYsYRAXjP
         5udw==
X-Gm-Message-State: AOJu0Yxj83i27h/5af+jyzF9vMh75cdZjl1V3ciqDkaY/f8bE5HgOh44
	BjPP6EFzfHPXcHJPxXk27XQMcwU4/ljmtI+LV1Oxs3mjzwKFZ11Wrfi952VAhLPbm3UJ67xHAdx
	9NNHx
X-Gm-Gg: ASbGnctn7Y34NW+dI3BosaikfVkGAIi8aw2ci/gex2vWxpgZePV/uyIV+zE3LpVr5my
	gio0EinIwKUTTSPGWKjKBdxWDnAB1ZCxP0Uq3b2+cmn8WvyDQd7D7nOXAKtE/tVoLFPJeOlu1Wp
	B9QRz/2l6Oxx564U/poFl6DWyv7gLv1jFKxH/OS5rqPMy/xN6vO/E7PlE6+NjXP5ZC77hKxNKMd
	0CmrinFV+0BG1aAkywG/sNML75Ol7A8WmtVgNVPp48WANzpO4yzFjz6yyV8na4f0tK7Wx2sBTnj
	BroN/6EwreZ4LhvjFfIaHJoRV3sY7e9Mzm2fOHs4QRXWYOX+P5r3TB8NepAVYP1ZmtjeAXtW4kd
	OyVGXw9baA3ADwva82rj810YtODYbe7Oa7jfmijTSug==
X-Google-Smtp-Source: AGHT+IGTOr1KB0Mr33tHE8AGbDefgU8jXirY2F5w5NFBM6kuUzcMU9t17efLpLVabfLUe387FwQkqQ==
X-Received: by 2002:a05:6870:568e:b0:315:9723:972f with SMTP id 586e51a60fabf-3159723ad48mr1683178fac.46.1756415275831;
        Thu, 28 Aug 2025 14:07:55 -0700 (PDT)
Received: from localhost ([2804:14d:7e39:88d6:6e13:b74:2f69:a1e0])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-315afe651a4sm400956fac.27.2025.08.28.14.07.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 14:07:54 -0700 (PDT)
From: Thiago Jung Bauermann <thiago.bauermann@linaro.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH] man/man2/sigaction.2: Update si_code list with Linux v6.16
Date: Thu, 28 Aug 2025 18:07:52 -0300
Message-ID: <20250828210752.619435-1-thiago.bauermann@linaro.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Update with missing si_code values from Linux v6.16's
include/uapi/asm-generic/siginfo.h.

Signed-off-by: Thiago Jung Bauermann <thiago.bauermann@linaro.org>
---
 man/man2/sigaction.2 | 49 +++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 48 insertions(+), 1 deletion(-)

diff --git a/man/man2/sigaction.2 b/man/man2/sigaction.2
index 8d08a8c409d9..1e8ae0b41ea7 100644
--- a/man/man2/sigaction.2
+++ b/man/man2/sigaction.2
@@ -652,6 +652,9 @@ or
 .\" SI_DETHREAD is defined in Linux 2.6.9 sources, but isn't implemented
 .\" It appears to have been an idea that was tried during 2.5.6
 .\" through to Linux 2.5.24 and then was backed out.
+.TP
+.B SI_ASYNCNL
+Async name lookup completion.
 .RE
 .P
 The following values can be placed in
@@ -716,6 +719,12 @@ Floating-point invalid operation.
 .TP
 .B FPE_FLTSUB
 Subscript out of range.
+.TP
+.B FPE_FLTUNK " (since Linux 4.17)"
+Undiagnosed floating-point exception.
+.TP
+.B FPE_CONDTRAP " (PARISC only)"
+Trap on condition.
 .RE
 .P
 The following values can be placed in
@@ -742,6 +751,24 @@ See
 .BR pkeys (7).
 The protection key which applied to this access is available via
 .IR si_pkey .
+.TP
+.B SEGV_ACCADI " (since Linux 4.17, SPARC only)"
+Application Data Integrity not enabled for mapped object.
+.TP
+.B SEGV_ADIDERR " (since Linux 4.17, SPARC only)"
+Disrupting Memory Corruption Detection error.
+.TP
+.B SEGV_ADIPERR " (since Linux 4.17, SPARC only)"
+Precise Memory Corruption Detection exception.
+.TP
+.B SEGV_MTEAERR " (since Linux 5.10, ARM only)"
+Asynchronous Memory Tagging Extension error.
+.TP
+.B SEGV_MTESERR " (since Linux 5.10, ARM only)"
+Synchronous Memory Tagging Extension exception.
+.TP
+.B SEGV_CPERR " (since Linux 6.10)"
+Control protection fault.
 .RE
 .P
 The following values can be placed in
@@ -785,6 +812,12 @@ Process taken branch trap.
 .TP
 .BR TRAP_HWBKPT " (since Linux 2.4, IA64 only)"
 Hardware breakpoint/watchpoint.
+.TP
+.BR TRAP_UNK " (since Linux 4.18)"
+Undiagnosed trap.
+.TP
+.BR TRAP_PERF " (since Linux 5.13)"
+Perf event with sigtrap=1.
 .RE
 .P
 The following values can be placed in
@@ -839,7 +872,7 @@ High priority input available.
 Device disconnected.
 .RE
 .P
-The following value can be placed in
+The following values can be placed in
 .I si_code
 for a
 .B SIGSYS
@@ -850,6 +883,20 @@ signal:
 Triggered by a
 .BR seccomp (2)
 filter rule.
+.TP
+.BR SYS_USER_DISPATCH  " (since Linux 5.11)"
+Syscall user dispatch triggered.
+.RE
+.P
+The following value can be placed in
+.I si_code
+for a
+.B SIGEMT
+signal:
+.RS 4
+.TP
+.BR EMT_TAGOVF " (SPARC only)"
+Tag overflow.
 .RE
 .SS Dynamically probing for flag bit support
 The

base-commit: c7e6c703f8c41d16630dfeb289de6bb45228d8d8

