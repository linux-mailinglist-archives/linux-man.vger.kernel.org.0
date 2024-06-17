Return-Path: <linux-man+bounces-1241-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B049E90BF9E
	for <lists+linux-man@lfdr.de>; Tue, 18 Jun 2024 01:11:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3B5FB283AEC
	for <lists+linux-man@lfdr.de>; Mon, 17 Jun 2024 23:11:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17D251993AF;
	Mon, 17 Jun 2024 23:11:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="H5UirOVj"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D814E19923B
	for <linux-man@vger.kernel.org>; Mon, 17 Jun 2024 23:11:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718665871; cv=none; b=NWgY6zQ9AYxIIUidmngEHulkKuZT3zzVDGs1BJvPIxZCq/9rbzkP7noq+91dlYIDRl0Ied8494mos+NsRM3x5SyR9OWBbGGVxsVHYewJBIdpa5AbqK2ZUQvUSdRhdE8epGOwXK4HACi1jN+1TC/apm/xMHI0AXfPhPWrDuFp5IM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718665871; c=relaxed/simple;
	bh=KDUvd4bWMk+kK25oC7VhoS26XabFN8Ez12t744DsoGc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ldSjMhfue16IbzfKjL3WGxVLTn8WKTtKlZdMhJuNclPzLwETIJWohIye7Xpz682jU/biGuLXnaNumLK19ZzESh5iZqIuJfU419T2LGeL6BVEQt5tWxFn/was6XJP6brFdiZuB/OtGZE1Hha0I1nQSk8BVZOLL6ie0g7QgVtDKQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=H5UirOVj; arc=none smtp.client-ip=209.85.222.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f172.google.com with SMTP id af79cd13be357-7955dc86cacso279316085a.0
        for <linux-man@vger.kernel.org>; Mon, 17 Jun 2024 16:11:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718665869; x=1719270669; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yBRk9zl8Cb6Svgkp7uXILPpOALw7TfoYrRA/k0NaUJQ=;
        b=H5UirOVj3IH35VL6WVa43AmbsHzCmcG1Ain2jfLfQdNub5FDe44QhHqoBVJi2puDZP
         q1oqeNJ+6P8wT6JNQr3iFFk0rcXSs87jLDNxe/L6Fh8+abBN6fs6jgcprpBwQLlapVRk
         Jb68+Hxz42xKk/a3M+MpI4lxWIleTQ8L5pzG70+XwazKiebubHVDvRWuMUddbjHASaZs
         7sKzrPoBKDLwV14zuhoFvoTtQoRIYCjooiYejFzOTuQctTc2Ib9T8j6Z4OHSPLQXo6To
         +MBk8i6ni1hmpq3qAW5y9OyyULD5wq8QB7VzV8kKyper1BmXNvuFGLrgYx/WCKgyGOwU
         M4bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718665869; x=1719270669;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yBRk9zl8Cb6Svgkp7uXILPpOALw7TfoYrRA/k0NaUJQ=;
        b=PVzIw9KUayG65pB2TAVuIqkzu/WEgbFLFO75MSlygeiFjAhcRCihuQ+BSN5DM1tXkd
         iPUueLan4sjow44BasLKjVkWv9MDQgtKYYkbCDSQrCm++Q3aM+kzpfB8QKpoMTqUatT/
         AsR1AQtyqTgGDdCNmlAXVEVtN4f3c0sy2ISQxIAWPm1uO4LWxqnM64ZFacmgxfiTejXn
         vbL9h4ISqlYY5qj/CSs4cr2VsYRP94NpVPvX6Q8dFhR3BTkBsTnmSGe4aYD6rj64RnuS
         OFIG2viizjjD6hDxSQOjpadrG0bXKb13q8wLQHB/csiqOty9bphylMRzBBAVhDHJxTVR
         g2Uw==
X-Forwarded-Encrypted: i=1; AJvYcCXSVNLFHYT8YR//KeD7136ILopvCYqECfOxhZPdv7Vhu6QpJx8mzbtdXsS1AXBd5/ItJcASThnqiMdG/sY3MICjqPV6I0CPoRx2
X-Gm-Message-State: AOJu0YyLSZlCHNaTTMCAlFTUpmVThOo9tOP7sg6Z94orx2IzsalIOnCO
	gJj823ySfMfhVDfbmesEejrMaZkKDDpkKoq4QPfJZx2r83J02wREAT/6Ye9L
X-Google-Smtp-Source: AGHT+IEhcMUiKK6K7ZcETFNY2B3LzLIZ3I7SUu6HDt5JvblzzV0HPdXsuUWlElcXMVXwFY2q1LOlFQ==
X-Received: by 2002:a05:620a:2586:b0:797:d55a:515c with SMTP id af79cd13be357-798d23e6d02mr1459883285a.13.1718665868696;
        Mon, 17 Jun 2024 16:11:08 -0700 (PDT)
Received: from kir-tp1.redhat.com (c-67-160-124-188.hsd1.wa.comcast.net. [67.160.124.188])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-798abc105b4sm471409985a.79.2024.06.17.16.11.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jun 2024 16:11:08 -0700 (PDT)
From: Kir Kolyshkin <kolyshkin@gmail.com>
To: Alejandro Colomar <alx@kernel.org>
Cc: Kir Kolyshkin <kolyshkin@gmail.com>,
	linux-man@vger.kernel.org
Subject: [PATCH 14/16] semctl.2: fix wrong section reference
Date: Mon, 17 Jun 2024 16:10:26 -0700
Message-ID: <20240617231035.1766780-15-kolyshkin@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240617231035.1766780-1-kolyshkin@gmail.com>
References: <20240617231035.1766780-1-kolyshkin@gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The man page says:

> GETPID
> 	Return the sempid value for the semnum-th semaphore of
>	the set. This is the PID of the process that last
> 	performed an operation on that semaphore (but see NOTES).

Since the commit 4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS,
HISTORY: Reorganize sections"), this information is in VERSIONS.

Fixes: 4131356cd ("man*/, man-pages.7: VERSIONS, STANDARDS, HISTORY: Reorganize sections")
Signed-off-by: Kir Kolyshkin <kolyshkin@gmail.com>
---
 man/man2/semctl.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man/man2/semctl.2 b/man/man2/semctl.2
index 243919c73..4dad99ea4 100644
--- a/man/man2/semctl.2
+++ b/man/man2/semctl.2
@@ -317,7 +317,7 @@ .SH DESCRIPTION
 .IR semnum \-th
 semaphore of the set.
 This is the PID of the process that last performed an operation on
-that semaphore (but see NOTES).
+that semaphore (but see VERSIONS).
 The calling process must have read permission on the semaphore set.
 .TP
 .B GETVAL
-- 
2.45.2


