Return-Path: <linux-man+bounces-4718-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 10AF5D00C43
	for <lists+linux-man@lfdr.de>; Thu, 08 Jan 2026 04:04:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EBE78300F8AC
	for <lists+linux-man@lfdr.de>; Thu,  8 Jan 2026 03:04:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 385E3276038;
	Thu,  8 Jan 2026 03:04:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HimXa6s4"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com [209.85.210.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F020272E7C
	for <linux-man@vger.kernel.org>; Thu,  8 Jan 2026 03:04:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767841447; cv=none; b=j6CukEzvFRrQgT/2mFMg4TxmlSUNT2OyrieqliD+Ke8V0vm5jtTlbX1i20wA+3X2xLCywss4S7nU/mbkVMYPDLJluqbVBfM5Zm935Q8yzuK6ZGXLatNv87edyo1RWD3qqE2m3jaN9x4eA6sLtKk/BCEmIhQ48J850IX8QytL96Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767841447; c=relaxed/simple;
	bh=G+mNuWG1E+13/m5XPQrwGpLjrAZQJXFRA5HLiBPiqXQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jDXDAIB4Cd9lQewkHr4cIRc4tFkVRLRPSS6kevn8M10Xt2UBlFQCCylJAV22R113zFuebN7UVE9qSo96qQtnyie0e8K2OsRzFwu0Sj1S/6hrNVhVV4px4xgdDrXoeWRUq0pGRthb/18mah0dvUDmT2zngyZ+O8XH9tzp9y5Mbg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HimXa6s4; arc=none smtp.client-ip=209.85.210.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f194.google.com with SMTP id d2e1a72fcca58-7b8eff36e3bso2952679b3a.2
        for <linux-man@vger.kernel.org>; Wed, 07 Jan 2026 19:04:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767841445; x=1768446245; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=SATgBnTC6FLv+bsANowKYEYtKHjX0nS3VHuYfRGdXOQ=;
        b=HimXa6s4MtRXTabXsrDCjqvmvEn2D9zEavBXMQKBGQ0zddX8eEyjaDeTNW0u4P8kDK
         2g9kj73gEnrB/8lY0X2wMN3K/JCFIhFKeLPmc544DVRMkWU0l1FMXnoOHtt8QLwEaWZy
         E/YwkbUurTgO3b1YakRlaH4lDdBdGGRt6wnzAXM3NRC2U28dSBq89ZCLzF3Pn1h1RW1P
         MQ0bc+fd6+JvcIM9obaTiX2kDuNrWcKigsWHqf/Tdw/auQj9X31Hvpycl4GlcQzHKGZN
         9BPYXYcnqj+6oDs3bE8MDQCWhm859ay2kgGePD1lfbCyXy1WdRCLzASQ0oPkbkZB5Xb1
         0VLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767841445; x=1768446245;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SATgBnTC6FLv+bsANowKYEYtKHjX0nS3VHuYfRGdXOQ=;
        b=IW1q3IRbXJq0swUAF2uPNsyfmcv9Tsxv9JjV2tM6nDse8azq39NkY4hIxJHzYNeK2w
         cJSgK6DVswi23RLd283E7otyNkZ4H/ngwSkWqHYGGvkVT2e0kVjzmFjii23g3XjpmvAp
         cLiRKT6CGEPq7pg3YZMTk62pUGCdYzNFsFyFkDKPmNaIIj9QZEdTRpR9kij0N2WfebjK
         jJOvFYKFKup9dXHppsmgITjabQz3Gk+vLQt/U9AwLnCZeSbGwQR6287stpTwZ9VZBBUt
         SrPIoB4fJ3qhigL2CK1iah60vqheIh1Emnh6ZlFTMSLcLrDjNSESd3BIi0l81xzYJRVZ
         50WQ==
X-Forwarded-Encrypted: i=1; AJvYcCVvI2cq0/SVT+XrK3QbHyZ+Ut/RlVie8GBlPFL/mvKWflRcey/LJ2ZSxmZmrjCra+0tllrDKqEVg40=@vger.kernel.org
X-Gm-Message-State: AOJu0YxrZfZIgV8oiVrVksKd0QPcPqZ0hoHMtl7jvM17wbOrgHEgQOZL
	3ohnU23dM+gLJjA7vJfnqKOnjs3mttzo06zPy6Wbf/qTYwek4UJM32ZIJeU4VE9Z
X-Gm-Gg: AY/fxX4TVTpx4vxVSAPf2zPaN44myM8F3txzfBv70EyGcUTUjaNPE6qIVmWbt75piPe
	ocTp961itzwqvRo/HWdvEmfbs+ghL7BTTtA6l3SOcAZ1PH6NAgS5dCLfB4ht/uEEyG2r/JLOxJ6
	YxJ/ugmykPCthzc9ELgar8AOrYyOo78EgdVP7tJ5hvzfYIAXUDundmMeMNZl7YK+UJk44TvhwsI
	3yJ+NbCIiAwBy36KKa3/wCOzm5saAPusdl2qejuwRp7H7xrCRyENJOEhSTxbSWaXGZhDF6MQkkL
	onClSyG8vtGLdJPGdPYijynwdChhZy4jquciITIuOmQgzxQYRMos+otubjonrs3SnoC5fqpjmS1
	KIvj7d3fpxQE3K0SGbKL3/HJDjyM9OueuldGiVUbp3EmASZXt8MkhqaCyM7OBDyAjzxtsuPW38m
	NkQ89lYTc62wftbiyqwL/Thtl3sR6PjWPuznV6+SUK/voc+oF3bgdghHnN9Oc1ItFPbSMOyHVeG
	mMXvDTY5GY7MMc=
X-Google-Smtp-Source: AGHT+IGV/MhLPZ9JlEckpL0Ig1bpz0vbxJDQVl/Lzzh6uHpQOUDhVi3r3qMs0GEejmspFNIExsqbvw==
X-Received: by 2002:a05:6a00:4308:b0:7e8:450c:619e with SMTP id d2e1a72fcca58-81b7fcc7be6mr3839983b3a.53.1767841444685;
        Wed, 07 Jan 2026 19:04:04 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-ce7d-5796-70e-21eb.ip6.aussiebb.net. [2403:580b:5de8:0:ce7d:5796:70e:21eb])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bb4c85bfsm6120312b3a.30.2026.01.07.19.04.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 19:04:04 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 05/11] man/man3type/sigevent.3type: HISTORY: Update first POSIX appearance of sig{event,val}(3type)
Date: Thu,  8 Jan 2026 13:03:11 +1000
Message-ID: <6919cafeb4e367c998588574812693bd67b04a2a.1767840410.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1767840410.git.sethmcmail@pm.me>
References: <cover.1767840410.git.sethmcmail@pm.me>
Reply-To: Seth McDonald <sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Seth McDonald <sethmcmail@pm.me>

sigevent(3type) and sigval(3type) first appeared in POSIX.1-1996.[1]

[1] ISO/IEC 9945-1:1996, Section 3.3.1.2 "Signal Generation and
Delivery".

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/sigevent.3type | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man3type/sigevent.3type b/man/man3type/sigevent.3type
index 97e369df5199..c544ab611ef8 100644
--- a/man/man3type/sigevent.3type
+++ b/man/man3type/sigevent.3type
@@ -115,7 +115,7 @@ .SS sigval
 .SH STANDARDS
 POSIX.1-2024.
 .SH HISTORY
-POSIX.1-2001.
+POSIX.1-1996.
 .P
 .I <aio.h>
 and
-- 
2.47.3


