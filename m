Return-Path: <linux-man+bounces-2906-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A1ACFAB3ED6
	for <lists+linux-man@lfdr.de>; Mon, 12 May 2025 19:19:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3CE8E19E3D4C
	for <lists+linux-man@lfdr.de>; Mon, 12 May 2025 17:19:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74223296D31;
	Mon, 12 May 2025 17:19:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="bSmyzx4O"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAB11296D0F
	for <linux-man@vger.kernel.org>; Mon, 12 May 2025 17:19:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747070373; cv=none; b=uW07QzbNNeBOuuCGPPko5Ybj2FR42dG3eHvJSSfvXGM2SzXbBw0ebRmKwnRdjOYhpO9bClxPfEVINzQXev1i0/isdFSzSa9mvCDXM8aq2t6rrI4H/P0IGTyPuuLHyOY9G9O+jwmSS54NFHvMqlYQ1Zip+i2RQL3M+99Wwxph/pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747070373; c=relaxed/simple;
	bh=6jrxi2OgPIlVyLawUTKOAWprABtCqGgriEH2/6Se5Qs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HUWaYuy1xWfmmgHB6H5/saHwYh6Z1WCAAUFKh/N70CMgug4jIdLhSDUomdYqvBCscNROppogeBBFaEKxXc/aTfsrk9l2NeCKE7nWlp/+B5J3j65oFZhIlPcoLGGy1bE2IK3DzDarUVEJGMzeuv8Eb5q84g0PZHjeIjUANbm/uAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=bSmyzx4O; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1747070370;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CWI3XlZ8DiHOSNmvwLFcrT7CheTTJj0Amd4kgoFoUz8=;
	b=bSmyzx4Oa8I+ciQK/3Eldx49dfhPVvvXiN8KKgMo8Zzo8AMZ1PmIKhFZL9EqeomzKxgise
	1VPNrmp0V3c/tl2UA2OZsN5w+NsKxv7A/rmqR3kRkD5TUz+8/90p+TfjgsodOThaBmipBv
	nsNc7Rwr0Vo3XI1XgGSW4ZugH2nHiU8=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-100-shdGLbdwNXOJ_4kq2ap9jg-1; Mon, 12 May 2025 13:19:29 -0400
X-MC-Unique: shdGLbdwNXOJ_4kq2ap9jg-1
X-Mimecast-MFC-AGG-ID: shdGLbdwNXOJ_4kq2ap9jg_1747070368
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c5f3b94827so725206685a.0
        for <linux-man@vger.kernel.org>; Mon, 12 May 2025 10:19:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747070368; x=1747675168;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CWI3XlZ8DiHOSNmvwLFcrT7CheTTJj0Amd4kgoFoUz8=;
        b=MiZu1Lbe9jkub2IYr4u6brCm8UP+prI5upSytcR8vJI6NGts6Wct4vYAkbqdW9bB04
         0K5OhdKLaf4dWpIzyVwZ2baaAxeFxXP2dsvuUPTfpaWgDY67e+yxfaKcSPgoPU8lDtFQ
         Bd80o7UBBztgZPyaWmMtwdA4ZuycLNkXFP4nb3sZsOlqJxP+aYyFwDRm1MBu2JswpgcG
         rEUTDJu2hL0/n6N7l+kf+XNVdy7Xfcfd9h7BWvtSXl+Z6AoeapTk8MP3uZsMpqYCkOMd
         PGDoHMgzhZ6oPToOhIlAmSkdl8mPDcj9f8vCYPky/ynZd9TQ2a2FPIP2peswd21Z8YPZ
         SeTw==
X-Forwarded-Encrypted: i=1; AJvYcCXiRPT+SZKBuktodkYHc9rzSDNAJlM7aZI5YJC3xKFoHYmtjeYdhJu25+5MjatRGGO/GlAj3re9WWk=@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6+eOQ5dScX49NNsVzYCjFVt8YwH+unrNlM/OYnCHxv/VsbxAP
	mr2840T+KINQYniZJGBkLiD4+wQP1xXmqWXepb+daXzvNuVmyxYy+izMwDFsNfLf66vvmW7Cz8d
	AGG7IW+WTVuwS8HkJ95TdS/dPmLlqux1+XVnvebcLUYfidpdv+9q6O60Xig==
X-Gm-Gg: ASbGncs+5WQQy9mzx/PbHx6x0ytdLT0AAixi0aFyeNSroJAYPsZfu8MxOr2A2ocULCm
	6Q041BjP3lrXW24vpf8MbRuZMH0BQz7+yemDb3ZhB3hAiQ97l64jiInsV+R2kgqZGfqUel5bmsy
	WABq8dq5ni2/hG8Y2T4IAL+jFbBfUmjKzty2MHsVGmlQ+djzBd9B1YknrotOF02cI3lnRh1qK/p
	dizbeihFuOKAwEvHL2CvwLsREK7Lkj6ZC4sVEFZdgh8FMZG/k5AChMjRPUtYZyPWnNNfz9wg2Py
X-Received: by 2002:a05:620a:2488:b0:7c7:6543:2018 with SMTP id af79cd13be357-7cd010f42d8mr2542746385a.7.1747070368503;
        Mon, 12 May 2025 10:19:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFE7u5GopyAen1aodLf0OH/i6/dXL0hCylOx/TfWNJi6vpOxB0Aqq+17CE6uEEEKzezAlrWdQ==
X-Received: by 2002:a05:620a:2488:b0:7c7:6543:2018 with SMTP id af79cd13be357-7cd010f42d8mr2542743885a.7.1747070368188;
        Mon, 12 May 2025 10:19:28 -0700 (PDT)
Received: from x1.com ([85.131.185.92])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7cd00fde7c9sm574237485a.75.2025.05.12.10.19.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 May 2025 10:19:27 -0700 (PDT)
From: Peter Xu <peterx@redhat.com>
To: Alejandro Colomar <alx@kernel.org>,
	linux-man@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	Andrea Arcangeli <aarcange@redhat.com>,
	Mike Rapoport <rppt@kernel.org>,
	Axel Rasmussen <axelrasmussen@google.com>,
	Kyle Huey <me@kylehuey.com>,
	linux-mm@kvack.org,
	peterx@redhat.com,
	Robert O'Callahan <robert@ocallahan.org>,
	Suren Baghdasaryan <surenb@google.com>
Subject: [PATCH 2/2] UFFDIO_API.2const: Add an entry for UFFDIO_MOVE
Date: Mon, 12 May 2025 13:19:22 -0400
Message-ID: <20250512171922.356408-3-peterx@redhat.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250512171922.356408-1-peterx@redhat.com>
References: <20250512171922.356408-1-peterx@redhat.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the entry for UFFDIO_MOVE in UFFDIO_API.

Signed-off-by: Peter Xu <peterx@redhat.com>
---
 man/man2const/UFFDIO_API.2const | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/man/man2const/UFFDIO_API.2const b/man/man2const/UFFDIO_API.2const
index 1c554107a..17ea6f905 100644
--- a/man/man2const/UFFDIO_API.2const
+++ b/man/man2const/UFFDIO_API.2const
@@ -204,6 +204,12 @@ ioctl.
 If this feature bit is set,
 the write protection faults would be asynchronously resolved
 by the kernel.
+.TP
+.BR UFFD_FEATURE_MOVE " (since Linux 6.8)"
+If this feature bit is set,
+the kernel supports resolving faults with the
+.B UFFDIO_MOVE
+ioctl.
 .P
 The returned
 .I argp->ioctls
-- 
2.49.0


