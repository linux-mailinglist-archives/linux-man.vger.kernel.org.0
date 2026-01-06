Return-Path: <linux-man+bounces-4678-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A29B5CF8991
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 14:50:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 797083010FA2
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 13:50:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10A65335095;
	Tue,  6 Jan 2026 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QoBcDzFL"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1702D33030F
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 13:49:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767707392; cv=none; b=CkTa7whk25A+K3RYauOLJcdc2jPVv0pCGjLaNHL/B9mwJTMq+LmHDfsorTKKFRDPth9ucotqesMeDWLG6jr+Py91BVoqzSlDyUoYjN/OdCSkGNF4IkTMF+5oxOClqGOpHMyyir9J4k44ojI09MOhMGw3SHsoNgIhBcfDgl60KQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767707392; c=relaxed/simple;
	bh=xtn3rHKI/r7bGN2CoOSg5XN1HnHOQHvN1Yy7bEePZLI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dpGpBSdfGMqxw+bw1yFXdFGpGhFPN52U3yBcluv3kI0KZhTMKNd9OIEUxoiaSfnKL31/q0Ly6tNdzbzCz+7ZYAhkJAAhG2MqCKKDg9btoLCS3WXVNgQHufhdMz30PBX4Cju9SlCzD4nb7eFfkjXFkM/0sT8q33ScB5YyZW7LaKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QoBcDzFL; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-42fbc3056afso483542f8f.2
        for <linux-man@vger.kernel.org>; Tue, 06 Jan 2026 05:49:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767707389; x=1768312189; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HOpEAVupm8xYgX3ZtPN2vnFF4SiNT4/GtvJ61fdFNMM=;
        b=QoBcDzFLaDRM6uhGnHYuv1np5jWoTaE9Y2CGgLklAlSaP1W0QdyTVIaUx2TuIGCRck
         mZiT99bDMlZ4Yuz24TWGLF5LRxWGwO9peEc9DSHl+siyoO/wCSpQmhNxVDijNfZzARC+
         2q5LtDrNVOaC4aNEVw3sr7vlk8w4wf9v7Lh/tlvHiN/upIbNWYv6UkdlEHPHh/sB6l7N
         xPzFN3bfXSPEAf/HLqpij5jEZqumMM/s8d24rvQwGz4dMJ/8cXDGrgpPpT0PPrcHceC4
         vt1hML1VIGsBKa8CFoGfBvulA9FDTARNg4m8ZtOkl2XpydlED86BR2jgq8shVw93m6IV
         oRsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767707389; x=1768312189;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HOpEAVupm8xYgX3ZtPN2vnFF4SiNT4/GtvJ61fdFNMM=;
        b=GE75imk307mIrr8PZ1sb1kAk+WiL2qD8GY74Mq0IGucTSd3jh8beGjm7TzUDBiUjHK
         QxnNuHoicrLYQ7UikaASmlVA+MtuGxATnIBAfSdyDf5Gw9tzyRtpSUMtboptQTXhdOkw
         HInl4pnIJbT56HWGS/7V35mKwTH6uvOZ4k229TClpBcAnM3XHhHPI99PYEAj5aoixEFG
         wS6nFJNB1mskwsGbMH9ionPFnz9c9W0CGErIirk0trA2a2KWHR6Fz0BbgiNKZDyg4swG
         14pGdvC8Z2CdBUZMP9b8dt8KcADEMDz8W2DN7+4Z4ZFNbPsgKYOmyOZGDDfJKgef+d1x
         pl9A==
X-Gm-Message-State: AOJu0YzePjKtVOQQd81Xsl8n4+6pZcV2Ur+0GjmT9bxZ4HTShHL+jT0r
	HXhY1SfLhqqj0nJCXgvtTOpfm/x91gGrW3MHgRy6Kw8nXXstrCzb6MKD
X-Gm-Gg: AY/fxX5aCyXn7t/ach46Z1WW1dJYyRQkHgVg3Nl+V96NKVkmIHgG3+wZYiZ9jVeSqJZ
	0uK9A9yy63dcWg4qrRCg31IKq9u/mCv4VLJdy9Bcm6OhzK4vlVctuPey0oHjiDJpoKja5w0Fc+u
	TInu5LilCj47FKhZXRMMjp/B1xag4fSWZw3XhjEnsgfNbMpkXvWJSY0tJ6A3oZB5tdie4HdfCaB
	RlTkrxf8kmQt7OIXR87QFPU8JGeqj/YJuqYk7SGbH0sLNiyJjhlqs/vDYLtElkGb7TYjwn5p34u
	MmDikyZQTHiy0mzn1lPUZQ5IzKYl3/e3BUD2Iisjy9EUnsAqCpJ8myBzht+15r0w+/fwBYHU4na
	WedVoRF1k8COSGzRBy1AbsoTzlPG2yhTmqTtB3zQYHymjQvfSMmPE/gugYAMpu/9qTSFq3uzKBN
	CPd76MU+hIdV5zkdYxFJGDdyfJ0eLX7GLCVtSP
X-Google-Smtp-Source: AGHT+IF23L3ruTrjMNcdYmQFvx6P54L84WHWI/qyZN1rQ0OnJxb86paDR/gegogZBSEAFbCGk34QlA==
X-Received: by 2002:a5d:5847:0:b0:430:fdc8:8bbd with SMTP id ffacd0b85a97d-432bc9f7d8dmr4204354f8f.41.1767707389285;
        Tue, 06 Jan 2026 05:49:49 -0800 (PST)
Received: from DESKTOP-Q32C80O.localdomain ([102.91.81.158])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5df9afsm4739378f8f.24.2026.01.06.05.49.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 05:49:48 -0800 (PST)
From: Simon Essien <champbreed1@gmail.com>
To: alx@kernel.org
Cc: linux-man@vger.kernel.org,
	Simon Essien <champbreed1@gmail.com>
Subject: [PATCH 1/2] seccomp_unotify.2: confirm listener limits and signal behavior
Date: Tue,  6 Jan 2026 13:49:34 +0000
Message-ID: <20260106134936.233305-2-champbreed1@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260106134936.233305-1-champbreed1@gmail.com>
References: <20260106134936.233305-1-champbreed1@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

- Remove FIXME regarding the single-listener limit. Verification
  via test program confirms the kernel returns EBUSY as documented.
- Remove FIXME regarding SA_RESTART oddity. The behavior is
  established and documented; the internal query is no longer required.
---
 man/man2/seccomp_unotify.2 | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/man/man2/seccomp_unotify.2 b/man/man2/seccomp_unotify.2
index b3aedad4b..f1ff13513 100644
--- a/man/man2/seccomp_unotify.2
+++ b/man/man2/seccomp_unotify.2
@@ -89,8 +89,6 @@ Consequently, the return value of the (successful)
 call is a new "listening"
 file descriptor that can be used to receive notifications.
 Only one "listening" seccomp filter can be installed for a thread.
-.\" FIXME
-.\" Is the last sentence above correct?
 .\"
 .\" Kees Cook (25 Oct 2020) notes:
 .\"
@@ -1148,16 +1146,6 @@ that would
 normally be restarted by the
 .B SA_RESTART
 flag.
-.\" FIXME
-.\" About the above, Kees Cook commented:
-.\"
-.\" Does this need fixing? I imagine the correct behavior for this case
-.\" would be a response to _SEND of EINPROGRESS and the target would see
-.\" EINTR normally?
-.\"
-.\" I mean, it's not like seccomp doesn't already expose weirdness with
-.\" syscall restarts.  Not even arm64 compat agrees[3] with arm32 in this
-.\" regard.  :(
 .
 .\" FIXME
 .\" Michael Kerrisk:
-- 
2.51.0


