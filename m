Return-Path: <linux-man+bounces-2953-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B69FBABACC1
	for <lists+linux-man@lfdr.de>; Sun, 18 May 2025 00:11:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C980E3B26AB
	for <lists+linux-man@lfdr.de>; Sat, 17 May 2025 22:10:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A205A2036FE;
	Sat, 17 May 2025 22:10:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hZRDli/T"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A75284A35
	for <linux-man@vger.kernel.org>; Sat, 17 May 2025 22:10:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747519855; cv=none; b=Axc2hvguX/ziVjlQOuv7hRIsmYNOf30SUXiPBe36sTuhOHVI8RK1jNAuS3TwossEftrhPZw7NQanMNXzbyQzDVsI1/hNoQes1Dqck1ZRiGA5ljeGPJyfbgmIzE37cRak3Ik46GS0T6d8vTFUVvkFANa3daD08U7GEaMdBA98CjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747519855; c=relaxed/simple;
	bh=FyRqyOMRCLFkCRN/gy1KjawmFCuCTmkaPU7eVDdsMLY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sCTgCFXujeWcGGuSkveRYtVabiT/O/eLjPS3rwdu9hnEWMGkQv1nJ3nlTlCd1VjrVnfpBgi/tcGZoDt6ThNrypFFk8y95TB81HXu9JYuzSZeyb66P0acCALiX4/AlQu2dlty54v2U/kk7Fo9PWVSeHkUeTsZcsOpWdbvmq/sacc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hZRDli/T; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-72d3b48d2ffso3262945b3a.2
        for <linux-man@vger.kernel.org>; Sat, 17 May 2025 15:10:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747519852; x=1748124652; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oJqx9oyod4X/FPZgHx0d27oPXIQnjS/fzGiHyy46Mk0=;
        b=hZRDli/Tc8CgOk6XpsSP/eURN+xmfPELpXSAGYZMVySXxApGPAoSXSgWhJsIw+ZMYD
         xLM8vvtLvW/6QHd9LebRITrR9Kh/Euv8YeXgLTK4RIErgpOxI2A9n0tD3Iz/hKGFReqx
         3szxuuOFonop5091y/diIri+Q+kJwtlIbBEGcnasGyKUFUV+trqS874DXUD3CTPdcCZQ
         p5lDamg42RRk3uUo3Vw8ZCQTi/rukqe3uLyMFXI9eGwohLP+qkpxcnc757aj8YNYxkGj
         NGvjY92CK2tOeCHtsz5dPcFA/UjYDZ2iTbBexcqGeMeavOntUrGjZtjkqrC1/WT+eGar
         0gzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747519852; x=1748124652;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oJqx9oyod4X/FPZgHx0d27oPXIQnjS/fzGiHyy46Mk0=;
        b=CRtVsrg8F1nvFA6Nvd6RUKqQw+Vosr4tDiojx33Oe5TceBPFo7gzgozTf59t7Sn2Yd
         4ooKRshuD0OrNnHecmkSD13A7E21qMRV7TjQPHPOC1pJX86xpQLsdlinD/EAJfq5DsC5
         kMmL1HloHLvpuN9o+uvHPPSEe13MOe17X+bWbLGT2dBjkehM9Lz0g68INZ5k3R7oswmK
         /WS/X9bqF++fEvOwp3ZGFyhBv3RVb8CyjB+WV50+Eggh4pg6g/U0wUVhgA5RqEGLxQmm
         ZvuyHIMM3f9rdkpc/YixauvwflX6ezKBu4Aox2UrrN8AUOxv44ZK0bF/iiAKbpFzN6yA
         1Sdw==
X-Forwarded-Encrypted: i=1; AJvYcCU3S4z/2a/OxhIYA+/V1gU3bSwK6jJTDIerSlZEvCaOkBmEJ5CiY+HBWQnvHyOONZHg6B0bYJ5iiec=@vger.kernel.org
X-Gm-Message-State: AOJu0Ywugn7IQk0UweSIghXHTYBCC55x/+2VPux6YU0hQxTbUai+hPnd
	obhBqVLPTcZHWWB8kajfDyUIaL3a0HhXMMZRZoP1ikJknxoW2Uz08U7aUUDy1g==
X-Gm-Gg: ASbGncvgBK84Z/oZOD/2tsR0rMTuCaTzJgCrRHw8ytjoU8udgz2bW/ABjk3I8AaS/17
	bFMyG4VcHJo6jqF0ESmvQz/ow4Kkc0tqQ1+moWoZVxGgErK6ISt86b2+mHZIUIX9CqN2+qecWcV
	JCoAM8Kam+l2M9USlL/RU2O6DkY1UgJJrc71wb/OLxLz+FAzuaty6Kqz0yY8oER0vVejecArD1W
	XonEZDb2cTDMpayQnlAH8elkJJ7JlKWw5ePDAq47UKegtTc44vTtPhhMPAfYt4Zl4eTsylXzJ+1
	fNp58Qh8x/79Rtlr1+QmUS7FYa0Ano3dHg==
X-Google-Smtp-Source: AGHT+IGVuq/qHEg7xbip3vLeucQN+58VTpWJAPVq7x6xFETb9x/GwQIEtkZ8FV8IxCZXcPz7eidYXw==
X-Received: by 2002:a05:6a00:3492:b0:736:34a2:8a20 with SMTP id d2e1a72fcca58-742acd72500mr10649008b3a.21.1747519852216;
        Sat, 17 May 2025 15:10:52 -0700 (PDT)
Received: from fedora.. ([2601:646:8081:3770::9eb])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-742a98771cdsm3757766b3a.144.2025.05.17.15.10.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 May 2025 15:10:51 -0700 (PDT)
From: Collin Funk <collin.funk1@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Collin Funk <collin.funk1@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH v2 2/2] man/man3/getenv.3: Mention secure_getenv was standardized in POSIX-1.2024
Date: Sat, 17 May 2025 15:10:41 -0700
Message-ID: <2d55b75480ae862a622ac46e7e6c7628f6efc45d.1747519811.git.collin.funk1@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <bae6bc16f9ab6bd3e5c30dc8e11bd83566b06a6f.1747519811.git.collin.funk1@gmail.com>
References: <bae6bc16f9ab6bd3e5c30dc8e11bd83566b06a6f.1747519811.git.collin.funk1@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Collin Funk <collin.funk1@gmail.com>
---
 man/man3/getenv.3 | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/man/man3/getenv.3 b/man/man3/getenv.3
index f05e3eda5..7da86cc30 100644
--- a/man/man3/getenv.3
+++ b/man/man3/getenv.3
@@ -36,7 +36,7 @@ .SH DESCRIPTION
 .I value
 string.
 .P
-The GNU-specific
+The
 .BR secure_getenv ()
 function is just like
 .BR getenv ()
@@ -88,14 +88,14 @@ .SH STANDARDS
 C11, POSIX.1-2008.
 .TP
 .BR secure_getenv ()
-GNU.
+POSIX.1-2024.
 .SH HISTORY
 .TP
 .BR getenv ()
 POSIX.1-2001, C89, C99, SVr4, 4.3BSD.
 .TP
 .BR secure_getenv ()
-glibc 2.17.
+POSIX.1-2024, glibc 2.17.
 .SH NOTES
 The strings in the environment list are of the form
 .IR name=value .
-- 
2.49.0


