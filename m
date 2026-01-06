Return-Path: <linux-man+bounces-4654-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C36FBCF6F8B
	for <lists+linux-man@lfdr.de>; Tue, 06 Jan 2026 08:10:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 30FED30028B9
	for <lists+linux-man@lfdr.de>; Tue,  6 Jan 2026 07:10:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB357309DCC;
	Tue,  6 Jan 2026 07:10:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Lk6/XNIl"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com [209.85.210.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26926309EE5
	for <linux-man@vger.kernel.org>; Tue,  6 Jan 2026 07:10:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767683403; cv=none; b=ow+wsiVgg9f8Wh6YsjTXUwQaoPhW54/H9jnSS7TjNfvXAv69hFxEF9AXpaFd7KPezGxT/hIyfzuOTZIuqokuve/ExEy8M0bwpBKkXAdEVPaRXWozD+MIdNjbyq1ek79YoAoEU0pasVNVxUx1U8lCG/k8qoRS1Gl6OIXd1xoUx20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767683403; c=relaxed/simple;
	bh=PTL2EqnOsvUBJhneUGt9Vs7DioiAM0pfAp1NZaWiFWc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HDdhGj1wn95V8Yw/Z5Dd2xnD6FWAI9J6PZ2Ou0unLWLlbTpcKzGrkAf+a0jJKCIubMnACjjJP+X0lp5ApydgzaJGREsuRH8yk2kHn0FsIcw8yDikrrjg9h4HSlbnEu4D0etItrnPAXrt6ZIPCvvp2fwyz3qMT3KdihNINSZQ/ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Lk6/XNIl; arc=none smtp.client-ip=209.85.210.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f193.google.com with SMTP id d2e1a72fcca58-7aab061e7cbso986067b3a.1
        for <linux-man@vger.kernel.org>; Mon, 05 Jan 2026 23:10:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767683401; x=1768288201; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=nCAICwDd7bE0MGtdteP84yZgDU4vrSsPo0Vp3iRnJkI=;
        b=Lk6/XNIlST99EpWiaK8XsTfvMDNbK5tikmNx3UzONPjJLLHdnLx/mlz69GYDVSGmoH
         3dJg/3XZkwQQJlN1A2zUz4XEcyVs/Nx7zxKQH1Agx6R9fAGZiKBpKocoQT6WekVSOpt3
         u9HbAwLo1WgixCjUmrtbJk4nRw+oT20sxluB6RsAahhiEF3tLvAnqK9NnYIn73KMa+XP
         e/lkp6icZcLSvmYl8kpWovAJuQuU89k5eemW+gmAee+zNxnIdkPR53ocRoxt/nx2vvI8
         hC60g+1N73UrO9b5tD/2L5lZhjx8gS052nE5NaWaPlr+4GVeBEhU4UlQLJWdkHp9Xa6Q
         gDvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767683401; x=1768288201;
        h=content-transfer-encoding:mime-version:reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nCAICwDd7bE0MGtdteP84yZgDU4vrSsPo0Vp3iRnJkI=;
        b=gzuaGv9qXQFM5aegra5qgh7OCPRHM98shS0lXFJclg7zHrjnPSd3C3uC/b1YPX/h2V
         mD5QXtOLPzrJaJOv4d352lwhyb272Ami7ydYZnyU1AlHvPG+n09drHvqvDyZ217/Jlr3
         KRuh+57nrKX4MwgHbpYZV2Q5HBaf7LT+4N7B0q/6SLaUvNx9cwL8St/z/SJQGVBALzT6
         Zh1D1Qef4PuvrMDyY0uZyzERO6ZQ7SMneRDtzl3b1EXYS/BzzGi4OMvtJNdZoAqgkxtI
         3p5496sOlAvx4aMaJSSCN4H3LCjWffrVGf3sH55tE4XHdQ1bRWrCYSjFRDsjuEjqE2Pw
         t+Aw==
X-Forwarded-Encrypted: i=1; AJvYcCUn/5GmDtDM9GrF3qtJvSjo2g3h8IY8kHWtc6a4Nrmj1Nh2BSYHJOlXTluUzecAHXWJiINFCm33eMo=@vger.kernel.org
X-Gm-Message-State: AOJu0YwZvkd1pNCRhhzcDwNb7/JxLYlJDi2GAj/4fAFoU8GBo4id6Uap
	/CYRQBndhLTD4MA44Mw1mL279aJpBulxAUXRK56ygnJvfScLHhCx/2zdt6EZS8MY
X-Gm-Gg: AY/fxX42f5fgfZyusZ1x0iKayf3dj50d/+nG4+NsPKmlwKkGpd4QcVOEBrjWRqfdRfz
	QxnK+KVNAbMbD39Ixh8NrNHQlqXJl10gPD5XlopULNiDSf+Tdc3gZaV2hsgboV5MzwNCPCzFYD8
	LLiHd87mmmq/qnksvmy20yVMfmZbfn3GGFY6sZL9oGuCRl28RiMt3//UyndgLTGsoiAUwClZ18Z
	kg608q3FLc5SFDgFhRJ0H14FVtuwAxsYtOUHIwV0jfMvLVzmu8wqDUq3afGOWuthieRW/rZHfnQ
	ZaASAvWIVZ4Fn6OTNugsI9fMkzyrCZiFO6uxMORc19tJeS/inpvmLkUtULjHAACag1wqzaqheBG
	qNACUNMlR3epDiBysMRyajlf8AEEfglvMow1aBHjgGF5pugWql+24h7DY0UOVO+RaZn4467mccM
	BX6E7fqf57GMNj8qrVh4/4f4BJ7mpnyQqqtLe3Ces9FulDQhT/2L725a2vMOP/YrAEbp+TmEUa9
	JyUJ4+KovERqKHN22F1GZUpLU0=
X-Google-Smtp-Source: AGHT+IFFCTWKUUCnMgwReyNmxpaen8xJdKhSIvCsptogT2YWQNOEQEcFUTw6XwdeTrW925tiaCwoLw==
X-Received: by 2002:a05:6a00:2a03:b0:7ff:c51c:d4d8 with SMTP id d2e1a72fcca58-818825f5140mr1789156b3a.41.1767683401312;
        Mon, 05 Jan 2026 23:10:01 -0800 (PST)
Received: from McDaDebianPC.local (2403-580b-5de8-0-f6ca-7558-daf0-e28d.ip6.aussiebb.net. [2403:580b:5de8:0:f6ca:7558:daf0:e28d])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819c52fd904sm1133688b3a.33.2026.01.05.23.09.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 23:10:00 -0800 (PST)
From: Seth McDonald <seth.i.mcdonald@gmail.com>
X-Google-Original-From: Seth McDonald <sethmcmail@pm.me>
To: Alejandro Colomar <alx@kernel.org>
Cc: Seth McDonald <sethmcmail@pm.me>,
	linux-man@vger.kernel.org
Subject: [PATCH v1 13/15] man/man3type/id_t.3type: HISTORY: Update first POSIX appearance of id_t(3type)
Date: Tue,  6 Jan 2026 17:08:02 +1000
Message-ID: <e5992856df9c6a311ae64303ae1073308c1ef80f.1767675322.git.sethmcmail@pm.me>
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

id_t(3type) first appeared in SUSv1.[1]  The type was added to
POSIX.1-2001 when POSIX and SUS merged, but as an XSI extension (still
SUS-only).[2]  Then POSIX.1-2008 moved it to the base specification.[3]

[1] X/Open CAE Specification, System Interfaces and Headers Issue 4,
Version 2, Chapter 4 "Headers", p. 838.
[2] IEEE Std 1003.1-2001, Volume 1, Chapter 13 "Headers", p. 366.
<https://pubs.opengroup.org/onlinepubs/009604499/basedefs/sys/types.h.html>
[3] IEEE Std 1003.1-2008, Volume 1, Chapter 13 "Headers", p. 398.
<https://pubs.opengroup.org/onlinepubs/9699919799.2008edition/basedefs/sys_types.h.html>

Signed-off-by: Seth McDonald <sethmcmail@pm.me>
---
 man/man3type/id_t.3type | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/man/man3type/id_t.3type b/man/man3type/id_t.3type
index ad79394b1b72..63eb84aadf7d 100644
--- a/man/man3type/id_t.3type
+++ b/man/man3type/id_t.3type
@@ -49,7 +49,9 @@ .SH HISTORY
 POSIX.1-1988.
 .TP
 .I id_t
-POSIX.1-2001.
+SUSv1,
+POSIX.1-2001 XSI,
+POSIX.1-2008.
 .P
 Initially, POSIX.1-1988 only specified
 .IR pid_t ,
-- 
2.47.3


