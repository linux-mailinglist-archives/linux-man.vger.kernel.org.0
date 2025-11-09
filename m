Return-Path: <linux-man+bounces-4261-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 041F8C4379B
	for <lists+linux-man@lfdr.de>; Sun, 09 Nov 2025 04:03:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 915883AFC9C
	for <lists+linux-man@lfdr.de>; Sun,  9 Nov 2025 03:03:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 591C119309E;
	Sun,  9 Nov 2025 03:03:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IkKFmxhh"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF58C18E1F
	for <linux-man@vger.kernel.org>; Sun,  9 Nov 2025 03:03:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762657414; cv=none; b=bybynuv1nMoNn+BBu5Li4GJNx+KTlKAVvizg2OnINizfYgcIXY8KEkOvr3q28E6RNweaGazXoa5EkmPJk5dPvtWDS5mccLUpfwKPBfzB0gWmFC/E64C4Uv6za/jF5QkWL9duSQxvRyvTjTy9e2UjOU1vq85xl76KeTOGwIxXChE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762657414; c=relaxed/simple;
	bh=Hl1KX9Bt4SCA5V8bu04/dO7bOm8Fw7iPj82S9AYU6N4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Zldp/K+NRG0CX9EkhV53E56jTwkrrfSpNgtS2gHLirlivlkYELRRdElxCHtFwIvESWLsfUDlCyEXMoD68eoD7oXqy4BB9lF3HpClFNkrbnhh6askq/TRVIgjjOfUvd8W5HxDMcmUoMdGYbenZHOZx/QUqPICQ5T/zmlktM3tbiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IkKFmxhh; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-793021f348fso1331440b3a.1
        for <linux-man@vger.kernel.org>; Sat, 08 Nov 2025 19:03:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762657411; x=1763262211; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zLAKqAWt8KKZsVHb2GcGRyogWUyFT2aXbfvYla/Ftrs=;
        b=IkKFmxhhUu6HUKMrEMWki3odXTFZEwD4Y/z0eWUaBn/rl1LvvWbcEPGRu8t8zwU0ur
         lRUKBgBHLWamZLqIEkl14fRa/jr7/2Oe6gDE0IBcv5UQkKla/ij7E37CsSwWOAhX6RdY
         4chJ/yyfbApc14lgVQnVKx1hBLBJrqf0Nu0X9QGdHpNjRoyK72M8A8jS/rx62wHWw7IE
         +1J+j4WBENYnXW7rtU5U39gqfyvxAD8xjnLlF4TiDZSY2ZVoI33eZxhn2XNakwHwFPp0
         hE9Dxfg+qJ1e2RjJetd38mrmuI0t3wzqAvZo6gDpjMn8a+urUv2Yw7IAiX8K9V0pD2qN
         n1AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762657411; x=1763262211;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zLAKqAWt8KKZsVHb2GcGRyogWUyFT2aXbfvYla/Ftrs=;
        b=J41G4AMt379nIRg19Vfnk3RAjGLiD6vexAXvTYx/kmml7njlhk3+i0pjonpuW1Tuwr
         6DDt8eGd79H2mZ8jguBEKSI7rN6oalPaHuARD1GtUCizprjyZufa52V1xueCYIButpZk
         rl/hiHM4R/43vBb4Bj0ARYNu/qVT9U0n+LoEdWIXmggwB/c2MffbxoWw9kx4s8nicNT7
         Nxb/SLSeyyQbqsLGv5Gva7ZaZ3KyjbHi6PscmuWAQP+kCd8TvQKxk345kXcom80u4AWz
         lWR+ayceJ+UvNAu6XWhGLzl4BBPblH8YLtvmdrq8c5hFePEyI8AgpaB2RX9Z7/JEwLZs
         SHBg==
X-Gm-Message-State: AOJu0YzBDEZjCk9bdGNGl1B+23q7EedC4kN2hVvmGy77OYpMQArcvOMQ
	aD/UUJFErP9IuC57etvNs7IXoo4nGr6cefxyEBElDsaZu28ohZqppjMJj3Dv1jUl
X-Gm-Gg: ASbGncv9fTAIpzXOPtlC5U3p8d+LLnNe2xM1SChoptAiXbtuh1N9+WD/yeUgA6yTMde
	6yti3dXar0uTErWo54WVwXa/1P14+A4Qt4vVidC8AzTclOryi+VX4nkjEeNCBN8A0aAuyaWO2xK
	Ukmm3z1jr9wPX6naVRfL7Pdin5ShlNcLQ2kqhjlG9xc8JjOvUKFc6W7iwB3ZlQCHnC4COFwAm+M
	wvPcIXIg9Qj6BvB5g9uu32aKJLQzP8u9mFrBqEbXvc8CtYhCx+qhZpi1RKY7PkVdEfox/O71UWB
	aPlQf88MFP22tF/MLiQ+HxrrWUqUWNoqk3Rcelpm5mvCR5Jg09f3YChF8v4B2cvgi/mTXHAdcvE
	5xw7EZH8RFqwP5J5ydKEk7+EmylMwg9dYk1QmZA+P/CUyKs6slYS5PcSBBxkiJVK6yMDPVl2vrL
	+2PkaGfX/p5jCOou1rqzGWtk7WkxTAW72Av/0T8lmDH36KIp+fQmd2alx/W0kb7wC9wn5WPlDSM
	BM=
X-Google-Smtp-Source: AGHT+IEnv/g0/7xSLUyWEbzSfXZ/HufjwigMNldfYavCM1bXBnm2RzOLWkMBnQcyTHKNiJaSjCO1EA==
X-Received: by 2002:a17:902:e947:b0:246:4077:4563 with SMTP id d9443c01a7336-297e56ada44mr44329175ad.34.1762657410698;
        Sat, 08 Nov 2025 19:03:30 -0800 (PST)
Received: from Arisu.localdomain ([103.152.113.186])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29650c5f94fsm102754875ad.40.2025.11.08.19.03.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Nov 2025 19:03:29 -0800 (PST)
From: Mingye Wang <arthur200126@gmail.com>
To: linux-man <linux-man@vger.kernel.org>
Cc: Mingye Wang <arthur200126@gmail.com>
Subject: [PATCH] man/man2/swapon2: describe SWAP_FLAG_DISCARD_{ONCE,PAGES}
Date: Sun,  9 Nov 2025 11:02:49 +0800
Message-ID: <20251109030322.13538-1-arthur200126@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There has been a TODO to describe these two new flags for a long
time now. This commit finishes it.
---
 man/man2/swapon.2 | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/man/man2/swapon.2 b/man/man2/swapon.2
index df5e8d8..1d2db47 100644
--- a/man/man2/swapon.2
+++ b/man/man2/swapon.2
@@ -53,6 +53,32 @@ argument, freed swap pages will be discarded before they are reused,
 if the swap device supports the discard or trim operation.
 (This may improve performance on some Solid State Devices,
 but often it does not.)
+.P
+(Linux 3.11+) If either of the
+.B SWAP_FLAG_DISCARD_ONCE
+or
+.B SWAP_FLAG_DISCARD_PAGES
+flags are specified in the
+.BR swapon ()
+.I swapflags
+along with
+.BR SWAP_FLAG_DISCARD ,
+the discard of swap pages is controlled as follows:
+.RS 4n
+.IP SWAP_FLAG_DISCARD_ONCE 4n
+\- Discard only occurs when the swap area is first enabled
+with
+.BR swapon () .
+Minimum overhead is incurred for subsequent swap page frees.
+.IP SWAP_FLAG_DISCARD_PAGES 4n
+\- Discard occurs on every swap page free, asynchronously.
+This may incur significant overhead.
+.RE
+.P
+Setting both flags results in the behavior of
+.BR SWAP_FLAG_DISCARD_ONCE .
+Setting neither results in both types of discard being performed.
+.P
 See also NOTES.
 .P
 These functions may be used only by a privileged process (one having the
-- 
2.51.0


