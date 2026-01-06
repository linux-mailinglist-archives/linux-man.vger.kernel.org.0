Return-Path: <linux-man+bounces-4649-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B714ACF6F7B
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 08:09:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BF7E03015E37
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 07:09:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34638309DDF;
	Tue,  6 Jan 2026 07:09:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gKVx5Tl+"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com [209.85.210.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A110A2C11E4
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 07:09:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767683392; cv=none; b=ECHXCrCIa0MxVE0ivBKslnCjyjxGhZea+pDUuLE9vcRIkBbWRgJeXpmvTaslm6ucdPMc8ZxRYt5OzypODmxpD8ehSWMPTniprTs+QI+tICvZNPOjC56PfBqJI6UP+alSiTkYQ/uIwmcFQ54O+n4cUul8BUKgX93cw1iMEsHytNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767683392; c=relaxed/simple;
	bh=vEi55IA53MT9AEmPli5gIdNdgURPD1kP0D4fbFvq0BU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QkrdjUe+LAZTfuNhAFFRVVVmZZ8EpOKg7g6KebhncxKibOBo/RWpeppWsQqUt07lhQJuOK+6hP+B3TtQT8Dtvj24c5dLSPOOwH7oiaxE5FHwxtVoV8rw4n9iIVLCIN3Ym6clrFQOwUOymvSKaTPW3zMTAjIyi01ZS4mQoibOL5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gKVx5Tl+; arc=none smtp.client-ip=209.85.210.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f196.google.com with SMTP id d2e1a72fcca58-7fc0c1d45a4so705125b3a.0
        for <linux-man@vger.kernel.org>; Mon, 05 Jan 2026 23:09:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767683390; x=1768288190; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=V7+dRTQ1Vpf5IOOFxxT2K6kRINz/5sDTJeL2/aK4UrA=;
        b=gKVx5Tl+JIBvArvAbSgSbY0ZXW2ptNPBB3ZN2cYalgRWxm+hUXZDxuTAUE//yHTScn
         ooz7f3H9sorLCKMJyRyl092sVBWBun0SaYavETSW8A0swt1gpY9vLTiw6FVWRTyHERY/
         F4V91dTyc6ljXfvFG3tBGtaihprgu14OOruqE2G2VyhP+9r6hVDQP11UyNp7MRfT6ZGR
         AZIPRZMb1wV7jRtybFQU32J5XMScd4uEWRMdxUOs/aHJCXFvCF0huagSabqLhg9FiBpM
         8A79wJx6vm602B1wmLqMAEHZYGAgJgj4d2XTSteazKbbiK2NuCa863HvHkaQg7IMhjSx
         9RAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767683390; x=1768288190;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=V7+dRTQ1Vpf5IOOFxxT2K6kRINz/5sDTJeL2/aK4UrA=;
        b=lVbfbEtjZWaHNK9t2JhywBlNJjx1ij2IiW9D/VWQ3CsgFPx7fLIwpjaAQya067cBCE
         3UtHZTyFCODYQWocifbTKJUIVKMsKkefzCP438sf38xlRZs3qjLFPXbasmO7Xo5svaC1
         SBzZh2QAKlYqUcfty5dm6ebSnMwMSMPN+jytkgE20JSOhwIJPPOCLLnaQgzcrdO0PAIR
         FLqWqEh3g3OzSOc9JIS8/Y1+mB0B8tNcCSJvBlvHbvXXELz3YEN2y+BbBf/InK7GHSZL
         ESoPwzC9i+qPv0r2TFO7XzKPRzi9P3FWRMTfZJWnu5w95rgclODNDf5jCPx0/QebWYi9
         inKA==
X-Forwarded-Encrypted: i=1; AJvYcCXPw2pdJmku3Q4ACOkA1R1A9e9zVs+cgna3vnLQ5GosRCXjtAWedA3ZZK9FZ+eDOBxiRC576MaoMyY=@vger.kernel.org
X-Gm-Message-State: AOJu0Ywl6nuzbAcGfOrxfhwp4sLz3+Frc/3lL0TsGSksJj5D4SgE1ZS6
	/fmxXQmuMbnh304jQO0i8xevyrOYczRg/YE1aa8Xx2wbZvd/ac2mCe5n
X-Gm-Gg: AY/fxX7oBhBRY8vjPU2qOgAyrs6jd4/SXhqRpc3WDxXccFg+kK+6loS+62o+ePRvwDQ
	/0ZwBx5Nir0HTzXzSVuqMLY3ozzhEqvRSVDEpQEj7IzePTXQ/zjF4c0ot5xRydr76SWK2fkvLkR
	PI6oC3C4yHSzE0xCePZsbqHYHHROrpxYaUbwNM/e/RoIryRdQcX68Jhibx+UIGfgCvHpyGyeDYy
	6+OSQHQKLhQqGEtWaBtXQ3jGRGnYUxTSmca0qLNbnvR8SxvTOUHTCq+DfltDCN7ZyxNnLpvvl+V
	WNl8bV2UMQgFKmCuTVwITCMW08+fxfqs+mEsndP2k7+Qx6tq3SMPljqumPWLQzMxWUfHP5+vht5
	h3+X/We+G3j0MOYiAcXR6hGwwi7QOERAVd+7eNK20P2+expYDJ5AAUD6PgLVbacEmftbbBzSrCP
	cf32XPyByvHTegEJ4YgRgWzfLFetGEM5g37v7UOwKCGbPf2eHaXYaLj9lq9FaW48/l44yQ0QN/+
	2Sz70mPXndhs+RK
X-Google-Smtp-Source: AGHT+IE1yqgBVwb7xqlI8zpP1qG9UH0nssRelRMwOLuQ6ty3ms4XbJSZcO3gH3pdwyxRUtlTtCqaRQ==
X-Received: by 2002:a05:6a00:32c7:b0:7ff:91bb:3939 with SMTP id d2e1a72fcca58-8188098140amr2198457b3a.16.1767683389999;
        Mon, 05 Jan 2026 23:09:49 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-f6ca-7558-daf0-e28d.ip6.aussiebb.net. [2403:580b:5de8:0:f6ca:7558:daf0:e28d])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819c52fd904sm1133688b3a.33.2026.01.05.23.09.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 23:09:49 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 08/15] man/man3type/div_t.3type: HISTORY: Update first SUS appearance of [l]div_t(3type)
Date: Tue,  6 Jan 2026 17:07:57 +1000
Message-ID: <feb8d662b9fef7c2177e18449b2e19d3934135e5.1767675322.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1767675322.git.sethmcmail@pm.me>
References: <cover.1767675322.git.sethmcmail@pm.me>
Reply-To: Seth McDonald <sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

div_t(3type) and ldiv_t(3type) first appeared in SUSv1.[1]

[1] X/Open CAE Specification, System Interfaces and Headers Issue 4,
Version 2, Chapter 4 "Headers", p. 807.

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/div_t.3type | 1 +
 1 file changed, 1 insertion(+)

diff --git a/man/man3type/div_t.3type b/man/man3type/div_t.3type
index 654e78b215c0..d15c94787d1f 100644
--- a/man/man3type/div_t.3type
+++ b/man/man3type/div_t.3type
@@ -54,6 +54,7 @@ .SH HISTORY
 .TQ
 .I ldiv_t
 C99,
+SUSv1,
 POSIX.1-2001.
 .TP
 .I lldiv_t
-- 
2.47.3


