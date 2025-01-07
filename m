Return-Path: <linux-man+bounces-2201-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D9D2A0414F
	for <lists+linux-man@lfdr.de>; Tue,  7 Jan 2025 14:57:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 346701650B5
	for <lists+linux-man@lfdr.de>; Tue,  7 Jan 2025 13:57:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B86A1F12F8;
	Tue,  7 Jan 2025 13:57:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="32MRrBhU"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ej1-f73.google.com (mail-ej1-f73.google.com [209.85.218.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 703131DF25C
	for <linux-man@vger.kernel.org>; Tue,  7 Jan 2025 13:57:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736258264; cv=none; b=TBh1qNueQEgLFd3jxNnok8n3pSjI9b2CsFGOMz6CoLMsAk6GJxxEAG4mvFS1PYy/4DIU8NhyHWv3xt695fv9hLvzPZFNM7w+kDcTeYQZgIEiV2ky+6HoWiwLw8yFSSIA9OPWkLx7/wJQV3VVILhO9vhWNxkAd84TMatQRXsJIbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736258264; c=relaxed/simple;
	bh=7h6DIC9Bi/5zxo5JtvXVn3ndkElAC7TYaiZiGn45Gcg=;
	h=Date:Mime-Version:Message-ID:Subject:From:To:Cc:Content-Type; b=Ay0MGdXdG3gRbGlX50IMKAb3hQHqwT8ElQd5/GRU/qsgJZWyZIz/UxWtM/sKLM8vBjTAO+g4SME30kr4tQf+LTlYopqGKOtw0GlwbAgQTRL9HAOtT0HyKlZTmAV8jgJuPlx/dfRgcNDGmrdDbbD6UVR7HUACLIAiDHI5MNYsL8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--mclapinski.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=32MRrBhU; arc=none smtp.client-ip=209.85.218.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--mclapinski.bounces.google.com
Received: by mail-ej1-f73.google.com with SMTP id a640c23a62f3a-aafc90962ffso314375466b.0
        for <linux-man@vger.kernel.org>; Tue, 07 Jan 2025 05:57:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1736258260; x=1736863060; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=EMOxhz/FyfS/JICTjLnQNUVaWP5NqifSuZN+lFFayWQ=;
        b=32MRrBhUTEC65VNBfrC+fAwAVhs/HSrFfkiSSx4dUG1YvNrOOJziBcsXQcnsE+MeFa
         0Yo9ebuYvGrf8vWOawKFCXKki+oshw2blVkfRrlnDWBnoWHgEZoQ2nbfX3sRvKxf71Uj
         96RrBJaGpqAV6lx+qy1VWGgQI/QZCeHMc2ZrbGIm0SBvZXkWwPbCYUJ0ATUfEQDJ0BPs
         pEWhxsDNW5q9rKfIBRU0dBh5rsvUQxUTdqT6BUHMiV63qbxQ7QJ4pjp21tCSyML6yLmy
         AwG/4bqY8+jwp+SvOLt4OzvruOVw6IOZhyVUM1Lr4LaTWd95/K4byAfzVw3k7AEA6Iw0
         g7lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736258260; x=1736863060;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EMOxhz/FyfS/JICTjLnQNUVaWP5NqifSuZN+lFFayWQ=;
        b=MEZRtrp+5F5i0EYBpBGHMIOJfHakLW94CnyVcMyVkDpMDxJ+mvVNoVJ4tMZIudRwD4
         ixaN5ewW3NXS+3I7h2Z4h3TupBCVv6o68aWsloiD8Hd553opHXOdhmFBOf/iMvT3DmVK
         AFypij0TrUExXZBiECvNEfYyN8tfkYOr6rU0C4j2ie4NT8weH1HHSBwREJTgtOdCGBbj
         POWzRC51CN9OQv3SoDiVoCH9aO4zJIR/MdA+LGdbFPMhRpwaHMODIGI7gHyJlw8417cD
         StHmrq0ZWOulHwHbFL89TfMkTvygvRKZh55v9K3fpkkOg6+Au/q52E56uwPfJPqtELzR
         NA5Q==
X-Gm-Message-State: AOJu0YxLlvPPeRYTBOoYmIL5kp5U8/3TlutzG/aXRSVT3YVo/GK/jmKs
	O4qTEe2g85bfIVNSd2y5lX9/IC2Q3fhr986MVSNaUMv+lGGv2SxqgM9IfDkxPfRANmVRwS7cyO3
	NwaBKCfJSxFt35ISU1g==
X-Google-Smtp-Source: AGHT+IFdY8tgLRk4+BhfMRJgCr2y9alCGz1Z61i9uJ664y5Wc/t1axAPpduvtNeVNkhy+1DP1xHzSRAA3jiuMedu
X-Received: from ejcst10.prod.google.com ([2002:a17:907:c08a:b0:aa6:887a:57cd])
 (user=mclapinski job=prod-delivery.src-stubby-dispatcher) by
 2002:a17:907:7f0e:b0:aa6:c169:4e21 with SMTP id a640c23a62f3a-aac27028286mr5538720566b.6.1736258260701;
 Tue, 07 Jan 2025 05:57:40 -0800 (PST)
Date: Tue,  7 Jan 2025 14:57:00 +0100
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Mailer: git-send-email 2.47.1.613.gc27f4b7a9f-goog
Message-ID: <20250107135700.3995936-1-mclapinski@google.com>
Subject: [PATCH] setns: add missing info about time ns
From: Michal Clapinski <mclapinski@google.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Michal Clapinski <mclapinski@google.com>
Content-Type: text/plain; charset="UTF-8"

Only singlethreaded processes can setns into time ns.
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/kernel/time/namespace.c?h=v6.12#n309

Signed-off-by: Michal Clapinski <mclapinski@google.com>
---
 man/man2/setns.2 | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/man/man2/setns.2 b/man/man2/setns.2
index f32a91bd8..619717b77 100644
--- a/man/man2/setns.2
+++ b/man/man2/setns.2
@@ -237,7 +237,17 @@ Using
 to change the caller's cgroup namespace does not change
 the caller's cgroup memberships.
 .TP
-Network, IPC, time, and UTS namespaces
+Time namespaces
+In order to reassociate itself with a new time namespace,
+the caller must have the
+.B CAP_SYS_ADMIN
+capability both in its own user namespace and in the user namespace
+that owns the target namespace.
+.IP
+A multithreaded process may not change time namespace with
+.BR setns ().
+.TP
+Network, IPC, and UTS namespaces
 In order to reassociate itself with a new network, IPC, time, or UTS namespace,
 the caller must have the
 .B CAP_SYS_ADMIN
-- 
2.47.1.613.gc27f4b7a9f-goog


