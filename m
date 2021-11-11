Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5F31444DB6A
	for <lists+linux-man@lfdr.de>; Thu, 11 Nov 2021 19:04:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232203AbhKKSHO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 11 Nov 2021 13:07:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49458 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229710AbhKKSHO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 11 Nov 2021 13:07:14 -0500
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4CE86C061766;
        Thu, 11 Nov 2021 10:04:24 -0800 (PST)
Received: by mail-lj1-x235.google.com with SMTP id d11so13508668ljg.8;
        Thu, 11 Nov 2021 10:04:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=XRv4sPm/eAe+1AAZYe7JO2xFTc/SAJg06alVeOYE1+8=;
        b=AdWtUlzu0jTwb/4zx8zIH+Y+2fG5iJ2/mDU7v5BsuTCnOzQRo7UcZ5xwGaM1BQ+lPW
         qHWv1UUw4txUfzNyxzw5Y4gm7RKrmFKo758G0eZwDDTtjUVDkbUrctzYoFJBp8KGEktF
         W6elHYuJlomJPey/w0KhYwmyFCq4FV7trdNvQmJ5mKwj0BWrwuAwOKVuG6pipjEqqQG7
         aq14wdWIUcNuMiWjzV13DwUrFHoYBptjSeOnWkyblk40brlmu2E3yuzwX/wJv16YL43B
         DWtYjII/Lj/Lts5QbQk/UgIQRVi2ZHD0Qs5fNEhewggPlfw6NPf1shCkYW2ov/D6ocHZ
         QvHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=XRv4sPm/eAe+1AAZYe7JO2xFTc/SAJg06alVeOYE1+8=;
        b=FWruy/u7oHU6bAFWAVzNet5qf5vDvVdCFBCjV4rEusu6KfeWXiPiTtsPOVb6aTzxRC
         /pUdFLCD/n3Z183mTfy7JyCi2AjFrF+O4yN72K8tiGbtUQxF8vjwHXTYiNVjDMkxSNnc
         RPPiBo241AERFP/qCV6+wRmrH4AAy9PnQ94DsUM4QNqzcmgTfTHQ0AoeJW8cd1cbbtqn
         LMWGnyukmUYDQTqUjYsSAH8JrKfcYq/sXF7bAxDlEShELGN2LBjuJ2FnRgCOi4HJ1LOp
         F+vtq9DVK+f2QbWiMWLowBPiS6ghd24Ltz/q6bZV+YZqwcTuittPtoGIZfielhezVjam
         UgOA==
X-Gm-Message-State: AOAM530i7owK8oMUbpeN4p9vGONJPAAQAAy/U054Dy4BCWNhH1fVHzuD
        FTrFeSGNIggoG1PUZBwi7JQVHXoV7jM=
X-Google-Smtp-Source: ABdhPJxwT/K5UHN2tK+BnVrfZY4uAT4Iw1lgwb2GYlN5cVmnqo3poNGJGmKFW39adl3ZL2n40tvAAg==
X-Received: by 2002:a2e:a604:: with SMTP id v4mr9145051ljp.349.1636653862390;
        Thu, 11 Nov 2021 10:04:22 -0800 (PST)
Received: from localhost.localdomain (81-197-199-108.elisa-laajakaista.fi. [81.197.199.108])
        by smtp.gmail.com with ESMTPSA id s14sm345377lfe.14.2021.11.11.10.04.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Nov 2021 10:04:21 -0800 (PST)
From:   Topi Miettinen <toiwoton@gmail.com>
To:     linux-man@vger.kernel.org, alx.manpages@gmail.com,
        mtk.manpages@gmail.com
Cc:     linux-mm@vger.kernel.org, Topi Miettinen <toiwoton@gmail.com>
Subject: [PATCH] mmap.2: ENOMEM possible when exceeding VA space
Date:   Thu, 11 Nov 2021 20:04:17 +0200
Message-Id: <20211111180417.8382-1-toiwoton@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

A bit surprisingly, mmap(2) returns ENOMEM when the virtual address
space of the CPU is exceeded.

The expectation could be EINVAL instead ("We don't like _addr_,
length, or offset (e.g., they are _too large_, or not aligned on a
page boundary)").

This is demonstrated with the following program:

 #include <stdio.h>
 #include <sys/mman.h>

 int main(void) {
 	for (int i = 12; i < 64; i++) {
		void *addr = mmap((void *)(1UL << i), 4096, PROT_NONE,
				  MAP_ANON | MAP_FIXED_NOREPLACE | MAP_PRIVATE,
				  -1, 0);
		if (addr == MAP_FAILED)
			fprintf(stderr, "mmap %lx: %m\n", (1UL << i));
		continue;
		munmap(addr, 4096);
	}
 }

It gives the following output when running on CPU with 48 bit VA
space:

mmap 800000000000: Cannot allocate memory
mmap 1000000000000: Cannot allocate memory
mmap 2000000000000: Cannot allocate memory
mmap 4000000000000: Cannot allocate memory
mmap 8000000000000: Cannot allocate memory
mmap 10000000000000: Cannot allocate memory
mmap 20000000000000: Cannot allocate memory
mmap 40000000000000: Cannot allocate memory
mmap 80000000000000: Cannot allocate memory
mmap 100000000000000: Cannot allocate memory
mmap 200000000000000: Cannot allocate memory
mmap 400000000000000: Cannot allocate memory
mmap 800000000000000: Cannot allocate memory
mmap 1000000000000000: Cannot allocate memory
mmap 2000000000000000: Cannot allocate memory
mmap 4000000000000000: Cannot allocate memory
mmap 8000000000000000: Cannot allocate memory

Signed-off-by: Topi Miettinen <toiwoton@gmail.com>
---
 man2/mmap.2 | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/man2/mmap.2 b/man2/mmap.2
index 96b7444b0..59fd5c904 100644
--- a/man2/mmap.2
+++ b/man2/mmap.2
@@ -603,6 +603,11 @@ limit, described in
 .BR getrlimit (2),
 would have been exceeded.
 .TP
+.B ENOMEM
+We don't like
+.IR addr ,
+because it exceeds the virtual address space of the CPU.
+.TP
 .B EOVERFLOW
 On 32-bit architecture together with the large file extension
 (i.e., using 64-bit
-- 
2.33.0

