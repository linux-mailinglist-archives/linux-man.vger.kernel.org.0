Return-Path: <linux-man+bounces-4586-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 09887CE8CDD
	for <lists+linux-man@lfdr.de>; Tue, 30 Dec 2025 07:44:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 23DD8301394F
	for <lists+linux-man@lfdr.de>; Tue, 30 Dec 2025 06:44:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E503D2F8BC3;
	Tue, 30 Dec 2025 06:44:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Kgg8QJcQ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA1B2F1FE1
	for <linux-man@vger.kernel.org>; Tue, 30 Dec 2025 06:44:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767077042; cv=none; b=FTU2WgD7c4t/keoxddXteJAKr6HH9c9QPfrn8Ue8lAXcS2ElbP+q3cSBPCzecoidDaghnM+5JhQZ2aKWtlWAwUWZb0H0clak7d8VJCG07bfutp84xBXbhocPttNC7NhFz7cMK7K3DEm7UnNPIbdNv/hBkqgBJjIuyGApzVhi65A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767077042; c=relaxed/simple;
	bh=KVNJtjV3Kaj90hrcgwZqkodbks57IDETOZp0FCtvg0Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=I2wUoCAKEI+NsQEbMDKGz95BLQTT720Bi5Nujob5zagOGfpdIeYshmwDENZHXHtISsnoBZG35UYthdVn03MG2PKt2dfpETOBJSagjVqyr8Eu/CgMS935CZZbRmyC9Wx96JM1KpZchEGL5Xkk/bQFZ5n4a/pMrcYmw8gTtD1jDPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Kgg8QJcQ; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2a0ac29fca1so81984205ad.2
        for <linux-man@vger.kernel.org>; Mon, 29 Dec 2025 22:44:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767077040; x=1767681840; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YqRVBfKBaZGHaATHR6clnz8AW9NIT7s2VDSar9zLwJ8=;
        b=Kgg8QJcQ+6GmRfolQN2UiJSGTpjMlNKMRsh+AE6KyW+dVr9drdeSl7cJZ9b4GJJaux
         Dldi9Cap/3rhNuDjvAnGu4h9Ace4QvhI1JjY3WIcj0/qoXDCtCf+OSCDMuQnz0zZzhdg
         vu33MEXsRquIxn7f0wsDYJLK+MuZA8/8RM9auQj+gbXmEZ7P9zwZnRBs+DX4aFakceDg
         yDuqwACFfnI8OtaXIqJ1XhvHDfN4/vp4ENpyXANhU2CQypPVo/ZvW555Ja8BHS+R62NS
         peKvsEw8acw1VRrTZwyPm0dQ7HrIJTphl5n8zfFpbdnoeAmpAF0sx2zzBiT8dVhTDwEj
         QsTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767077040; x=1767681840;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YqRVBfKBaZGHaATHR6clnz8AW9NIT7s2VDSar9zLwJ8=;
        b=fqH28EcFCOMi29uf/LQVYbBflgs0IL+BUGUAC+nl8xUkZU8pxVgZzxIYhtZs0bc575
         QlZ4Ee8o8sW4+yok3wpbUYUCzp4S/QTWDS9Nof/JJk0AirHiOQBtrVQ8md64lSTu5CDU
         3mPY/Abh4PueHLhJr0+C9d6t6mimw18VO/LRfAd6y+MZsnqcBQeAQLDaj0cFf1Mw71en
         rKQSbbiEtKoLaPACLS/Y5TED4neh+W4uZkiC0nfgmAjF5CcmnHOJeHTUWWcUFIqXviwk
         K2FNMhO6uHFbTAVXZKm2gjGXC3WQpQi5rWRvke4t0e1eZFdv4JVqc8NJvy6Sq5rzWlpx
         n2MQ==
X-Forwarded-Encrypted: i=1; AJvYcCW9DkOWAG7iCgemn1vpJzqK7pSHq+R83VtEo7I7NUM7QurP8OfmcN+o/CPzOtzzB3+KbIADkksJuBM=@vger.kernel.org
X-Gm-Message-State: AOJu0YzMBCaPD7JFiA3U3jdIH+ZIsMrjFRo1fOXGRqD9kopdixYGQPAQ
	hmJ9wy6/EnfluxH6EqAoi3zId1FPZ41D875Dh8zZduay+RCCnjGJV7vOF0CdOQ==
X-Gm-Gg: AY/fxX6LgEV1oNbxaZWq9y1rIaVGgCyxlUKctYKaseBrkllXgtXJSYYe7NPRtwTbVcd
	njV+bpY6pntu1nLqHPHjeVUv5QPreX1LGc8c/gxxeHYTWhmtntoGOWrSisw4msrhAGn5PO79Tac
	9aI39ZsI9WAW/8BxrP5K6Pvk51123DROFwgmog5e6dl0mcuN9dKTyfVil0Xjd670D3bZ3e7HVHi
	MyZfvtcyckkZ82dsVVLg2ivebkVMpWZLa0xg0iSSacHIJNSfyBrvvxvaGAVwJ4g/TZLmSQr3r1I
	gVURi7psQJfrY5I2eMO3nuIcBI9gkQUfYr9eHB+yDR391ahOQwBfgTlxqrpMK8XgPRRP5IScxdO
	NqjBICL9kpvGL3Edh3L5wEY64S7Trq4Kp4yE1gBG3duLIJHlKLVHoveVbk4ydgjo5ocd9K0Rsuc
	RE01PTwxRFXMA8YoSqjb5McdpghJXZh+Im72xUgv9s92rpi/uLaurUQ0kOsuVGwGAOz/Zg8BR8i
	52jAD0DUOM2RKRkPg==
X-Google-Smtp-Source: AGHT+IFBIR0ZCDnNzGINw/c0yg8/F0T5KsGSRMy3s3Dzxv2RZ0tmDS9DunBQxvuZuFABIaFwUZcZfg==
X-Received: by 2002:a17:903:1670:b0:2a0:bb05:df55 with SMTP id d9443c01a7336-2a2f2226dd2mr308638655ad.21.1767077040494;
        Mon, 29 Dec 2025 22:44:00 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-841f-6737-2002-883a.ip6.aussiebb.net. [2403:580b:5de8:0:841f:6737:2002:883a])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d5d566sm287458395ad.71.2025.12.29.22.43.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 22:44:00 -0800 (PST)
From: seth.i.mcdonald@gmail.com
X-Google-Original-From: sethmcmail@pm.me
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 4/4] man/man2const/F_GETSIG.2const: HISTORY: tfix
Date: Tue, 30 Dec 2025 16:42:03 +1000
Message-ID: <2f33ba3b5bd29ebd931bd213fb8f9a7b19ed9ce6.1767072049.git.sethmcmail@pm.me>
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

The G and S do look surprisingly similar...

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man2const/F_GETSIG.2const | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man/man2const/F_GETSIG.2const b/man/man2const/F_GETSIG.2const
index 3964cb7fd1..cd99611666 100644
--- a/man/man2const/F_GETSIG.2const
+++ b/man/man2const/F_GETSIG.2const
@@ -458,13 +458,13 @@ .SH HISTORY
 .TP
 .B F_GETOWN_EX
 .TQ
-.B F_GETOWN_EX
+.B F_SETOWN_EX
 POSIX.1-2024.
 Linux 2.6.32.
 .TP
 .B F_GETSIG
 .TQ
-.B F_GETSIG
+.B F_SETSIG
 Linux.
 .SH BUGS
 .SS F_GETOWN
-- 
2.47.3


