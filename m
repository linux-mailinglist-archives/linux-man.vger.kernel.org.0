Return-Path: <linux-man+bounces-4780-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 37095D0D07C
	for <lists+linux-man@lfdr.de>; Sat, 10 Jan 2026 07:16:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 23A8C3019E23
	for <lists+linux-man@lfdr.de>; Sat, 10 Jan 2026 06:16:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7D0C23D7CF;
	Sat, 10 Jan 2026 06:15:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NS6SJMgh"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com [209.85.214.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E8E3205E26
	for <linux-man@vger.kernel.org>; Sat, 10 Jan 2026 06:15:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768025758; cv=none; b=Xzfaew7GNyIzG6cwGHgvfaAvolqF+OY31DLM2BsfYwYyrqpPYOjCRqZmZV8pbojThk16QP9qZzQQFPUrNy5SaLA22CUukAxwv44Kp0e7dOZQQJJT6NDATMJmiwUZ756um8frlDyEUiwmHVO/IV/ip/VRruFNcy+c2bUheCIsuXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768025758; c=relaxed/simple;
	bh=JyNyHEC8UiIjZPnwrjcwwyP1R2zWcC5ZF5Qr29o3P/E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=p2yb+OOEDbxFdiKn8jy+aJq1tfhl4z4iSAmIEe7uuQcLfsTfhM/zuWto8eK0bPpZjypatwXnCkuF5aRqqrBLMyiU8wO/r4MaBx45tV3676z1IHNDnTWHQWkNsm9mHHPaOiuEdNJW270iuN2OWnu6RYPbit2vdpdiXgJqu2YGjdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NS6SJMgh; arc=none smtp.client-ip=209.85.214.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f195.google.com with SMTP id d9443c01a7336-2a09a3bd9c5so33764505ad.3
        for <linux-man@vger.kernel.org>; Fri, 09 Jan 2026 22:15:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768025757; x=1768630557; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=+lFzUZ8HC8h5FpSRR6tHBIv/SkLjocbfcB1WRBSCFVc=;
        b=NS6SJMghiWn4cx0XaDoszrwVbiM/nSxLSk0yGJhwadqJEAyjIelV2VFbXnsiPJagmR
         pDwnw7mLH/k1p9R/Ybl91EFVeRVfy7SwHtrl85R8KfZ2xvFGqWs8ifs44gsvSZLt9+jE
         B+mS8QSIJa6g/iGWxGnjJIMw8+m37bSAKJ9DvDlpt8UHc6/yhuNenwWF6Wdy4RdO9u8S
         suQQio7G/A0GRseYX+KsIECBHBDxXDUNeIkjr+3kVdPlVX8r2QVpH4y1VdvOFTz827J5
         Y+CN5cU+6p3yovkfGus3yXXmqmoKlcHNldPK9jfya1Ppv0li0YPTVRwhUocsaRc2uU7u
         aJHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768025757; x=1768630557;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+lFzUZ8HC8h5FpSRR6tHBIv/SkLjocbfcB1WRBSCFVc=;
        b=VYYSuDGmFNCdOJxO0KN0PZCuKWI4rANScGVl+AbMHJml7SojC703xuKeOhoMBWF1Ez
         67b7M8rfstnfrxH2ddDzT2uWDiXkEJE+jtVxS7J3VTR8YbEUdHlVkpkjnQN0PPXauB5x
         uXY2pCQaA5emZtKJVp2w+H4x2WOHEamw+6wCbfmy5qHBs/uCL3V5OR/skKz+YV4GkEw0
         BpTqqRRl2U5nbCGOXl8Ferp6sGnwNNHNSvw+aPkOhvpajA18WuecvxPECHAiT8F9xq7s
         Avau/gs2PvD9mTbvxehUM+JRXryoQ+6tnH8eeRV2dfZUUiG+CpKgGTPFl/7fTC5T4eP0
         A71Q==
X-Forwarded-Encrypted: i=1; AJvYcCXXlSDlbl8uFDCFOKJGiW6kQywUPiIVHLwo/sMsS5aHcs4oxQIY0S+o2rce/S8e5mKTAPGXbfcfb5o=@vger.kernel.org
X-Gm-Message-State: AOJu0YzXxMWMQQVW1vpRTjCGucKbld1GvkZ6JQPRpvvzxl0w9s9jnEXd
	C7etihgNtyehCzT0Gclq8NMvMOAeplM/Cq6MkSTkvbHnk0wBKlRKxJZC
X-Gm-Gg: AY/fxX4zSnE8WeuuM55xOt3Bc11oRa9WhGt5pTIpOQuRpOk3uUP9VKyNwKyv+DlV0M5
	7vSuk7o2t7NcMB+lUzLHxttBwgDRr5bqsvxZRoUbT6EY004/quUNo/EunbuAD2OeGo4DyPFaU9m
	IigYsgu+mpKt4FhqSzvxdsj0hJny9yWTM2+If05+62Ks/s0ouh8KUXt4rvWhbdmuiauCpSOaA2j
	jwqFppDtDRDyNZ20/piJ0RAj2AFD7a/ubuOOfpe2xzKxq8HmENI9NFM6Htywlr24e2OVTJbDjLa
	sXhmC0R5uOhpvgj92z+2LLBXAziRywGNQ0xf/gjLcgoAA5RdkyXSrveKkqlZ6z2VBhVHFQy+EiV
	xcjc0gyLE0gWUjSscv14lvhvwIwEsGzjWbkvqXoRKkaMELAuhDgxdD6+SimLGTgKEG4ImR4pQXO
	WEvvnLf9Bjb95SWyldFmpbJbthsqnzT9P79CsFBeT+lmhByjXgEo4iwJ3wUwZ+QwNBg7Voh/ra0
	d0w0SryR9HkZG/t9Q==
X-Google-Smtp-Source: AGHT+IEIeJFXPveHqOwxZ+X+109qEGWBM4WkZsbEo9vh5kQpV+UkPqHeq4dX+wYVJMT4gEIwHPhBSQ==
X-Received: by 2002:a17:903:13c6:b0:2a0:9755:2e97 with SMTP id d9443c01a7336-2a3ee4363c1mr103662975ad.15.1768025756575;
        Fri, 09 Jan 2026 22:15:56 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-ce8d-7313-a81a-a88c.ip6.aussiebb.net. [2403:580b:5de8:0:ce8d:7313:a81a:a88c])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cc8ddfsm119807885ad.74.2026.01.09.22.15.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 22:15:56 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v3 2/3] man/man3type/stat.3type: HISTORY: Update first POSIX appearance of st_{rdev,blksize,blocks}
Date: Sat, 10 Jan 2026 16:15:19 +1000
Message-ID: <e4503345e46fc2c621287766e223c6497bde55d0.1768025095.git.sethmcmail@pm.me>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1768025095.git.sethmcmail@pm.me>
References: <cover.1767931376.git.sethmcmail@pm.me> <cover.1768025095.git.sethmcmail@pm.me>
Reply-To: Seth McDonald <sethmcmail@pm.me>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Seth McDonald <sethmcmail@pm.me>

The st_rdev, st_blksize, and st_blocks fields of the stat(3type)
structure first appeared in SUSv1.[1]  They were added to POSIX.1-2001
when POSIX and SUS merged, but as an XSI extension (still SUS-only).[2]

[1] X/Open CAE Specification, System Interfaces and Headers Issue 4,
Version 2, Chapter 4 "Headers", p. 830.
[2] IEEE Std 1003.1-2001, Volume 1, Chapter 13 "Headers", p. 356.
<https://pubs.opengroup.org/onlinepubs/009604499/basedefs/sys/stat.h.html>

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/stat.3type | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/man/man3type/stat.3type b/man/man3type/stat.3type
index 21610f7ea723..55294599638a 100644
--- a/man/man3type/stat.3type
+++ b/man/man3type/stat.3type
@@ -144,7 +144,8 @@ .SH HISTORY
 .I .st_blksize
 .TQ
 .I .st_blocks
-POSIX.1-1988.
+SUSv1,
+POSIX.1-2001 XSI.
 .P
 Old kernels and old standards did not support nanosecond timestamp fields.
 Instead, there were three timestamp fields
-- 
2.47.3


