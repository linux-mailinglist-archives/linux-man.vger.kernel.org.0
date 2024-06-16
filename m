Return-Path: <linux-man+bounces-1192-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F74D909B02
	for <lists+linux-man@lfdr.de>; Sun, 16 Jun 2024 03:19:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D663D282BF8
	for <lists+linux-man@lfdr.de>; Sun, 16 Jun 2024 01:19:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 165DB154C14;
	Sun, 16 Jun 2024 01:19:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JsfhdVQP"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A600154C0B
	for <linux-man@vger.kernel.org>; Sun, 16 Jun 2024 01:19:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718500772; cv=none; b=IfwvuGE61jhcdRvNxcYhjAu1GCgCzEVgMzsAMk29PHbXLy9mKJIqB3/gH0Sl/Y2eeMKotWTjPWIbehsmv/gYkckdvdzLSc0UXFzlYbqy/eX+0HZ+GDXXMyiB21xs/oy1m5UdpbIKp6hYhpE8pKNAhr4wDh32D7SpVudywCQfkX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718500772; c=relaxed/simple;
	bh=DJuQVv2hy6OKSLDAPGlsDcQw3zQo1oJ5ztesRqnY3kQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LKJv1mU2JGfDHblNAXNbV1oAkERgiOtXbi5GaROBWMSsck5dc9PiRxhQ0bGg1O+Ymy1+s2/UuFldaNIZ1eg9B7nntWzWSEFa+j2ChaWHLSsmgdCKKYKAJshyss9r3t+NNIQFOzqQzfs4Mh3PbHNPHtKDWLP63IjczbiaqRdakq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JsfhdVQP; arc=none smtp.client-ip=209.85.219.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yb1-f182.google.com with SMTP id 3f1490d57ef6-df481bf6680so3649659276.3
        for <linux-man@vger.kernel.org>; Sat, 15 Jun 2024 18:19:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718500770; x=1719105570; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LimjlzO66Mr2jQduKlhscMnnDCDR4OAHRlrtise3UUo=;
        b=JsfhdVQP09KPIbKRqvudFdzIibjoKmtrgvh4A3w/wcnW6p8Fxr8AtUMZIgWEEBtkv/
         nfWT5K3d31F5+S02NrgavVdzWVEqm4xM860Smx+x4aNVOOGARfcQW/zzscybFJaQIyWT
         E6mDWLapuVXLzAvkrJrmVBpu0xSFEjqndUqGJfRODtIk3k4eQ0rZybTt2MmyQwpCUcA/
         s4WUrcfqWqCsRRmh2MeDw0LqDnUTAizUFtHrm58Vfc3uFC6Hdet9Ar60OgAYGzZMTEh9
         U1LnG6yvPGbHzrboiInpTtY/A4eW8VfIV7F1qe4JfK+zmQjXNjB3S8j2tdawYc9cciTr
         v4GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718500770; x=1719105570;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LimjlzO66Mr2jQduKlhscMnnDCDR4OAHRlrtise3UUo=;
        b=hLEVPvJqLLoixNnwOjtwJxCm5fXLdt2bhf4WGlLNqfFaMFXRd2scmM2Tx8s5lOiLaE
         8oEXwE1ELJc/SLFpaRs5BItzP6bL5h+9CZER51o1IKcWpRjfqR4iw+fix51w6U97+pI9
         hh42uqdBC0IMVXCyj3yPnBNjyhGpqhRVR+brdjqy/g6N9M48HxRrIIW++8SNNiBzg0qq
         evCbIgCpsnGfOojMLmXNMpTH5gCVXhZL5FKDRf5u7XmZ2X1O2GcgAiVbiD/XrGtwu0NV
         aINXCar+kVgnMNtFqJt+rQL2hajHabv+nPcnbqY6F9MLxBjyoV/4O/p0jhIVhDMlJPqA
         DWng==
X-Forwarded-Encrypted: i=1; AJvYcCUBLoTm4t41QdgoTSvQGLs/07Js1nWsenmOjPuDDiY77vSPhtvFJYWYKuGDUU+pIenWI5W7WE8fq+obqUVMu2me89Oy4iDBJsk4
X-Gm-Message-State: AOJu0YwzFdqP0PiqiDjNxksrcovth/d7VWPXHotrZGibRLuh1crm4Czt
	7ZEqlhx6pzR7QLKsgCN4jxWWrq+TgdO5Kx7Tv/juOJMjorKKvwa0
X-Google-Smtp-Source: AGHT+IG/KM4HPbwE5GYs6WvkjAZx3VnIXNws4XqdjvGY2daGlSrVLJlc8M5HLrrQ/sYkyI+zkCqVQA==
X-Received: by 2002:a25:d686:0:b0:dff:2edf:d623 with SMTP id 3f1490d57ef6-dff2edfd7f6mr2215635276.5.1718500770218;
        Sat, 15 Jun 2024 18:19:30 -0700 (PDT)
Received: from kir-tp1.redhat.com (c-67-160-124-188.hsd1.wa.comcast.net. [67.160.124.188])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6b2a5c18209sm38130626d6.42.2024.06.15.18.19.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Jun 2024 18:19:29 -0700 (PDT)
From: Kir Kolyshkin <kolyshkin@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Kir Kolyshkin <kolyshkin@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH 01/11] exec.3: fix section reference
Date: Sat, 15 Jun 2024 18:18:54 -0700
Message-ID: <20240616011920.1627949-2-kolyshkin@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240616011920.1627949-1-kolyshkin@gmail.com>
References: <20240616011920.1627949-1-kolyshkin@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There is a reference to NOTES section, which no longer exists since
the commit 4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS, HISTORY:
Reorganize sections").

Fixes: 4131356cd
Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
---
 man/man3/exec.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man3/exec.3 b/man/man3/exec.3
index 0ff3b1f48..29e11e3aa 100644
--- a/man/man3/exec.3
+++ b/man/man3/exec.3
@@ -120,7 +120,7 @@ .SS p - execlp(), execvp(), execvpe()
 .I confstr(_CS_PATH)
 (which typically returns the value "/bin:/usr/bin")
 and possibly also the current working directory;
-see NOTES for further details.
+see VERSIONS for further details.
 .P
 .BR execvpe ()
 searches for the program using the value of
-- 
2.45.2


