Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BBCD34D06D7
	for <lists+linux-man@lfdr.de>; Mon,  7 Mar 2022 19:48:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239995AbiCGSs7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 7 Mar 2022 13:48:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49640 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234052AbiCGSs6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 7 Mar 2022 13:48:58 -0500
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3BE0F4706E
        for <linux-man@vger.kernel.org>; Mon,  7 Mar 2022 10:48:04 -0800 (PST)
Received: by mail-pl1-x62d.google.com with SMTP id z11so14752287pla.7
        for <linux-man@vger.kernel.org>; Mon, 07 Mar 2022 10:48:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=1VPetEhBFpYgmT7fkOGehkDdiG0qEpXsSfsQPV85SyQ=;
        b=HoACzcaZI8fjsqREe4rkRK101fOmdA7uTxdRymbk5iXWzBLqA5n3USQvrmjF0FJi3o
         lOcpZ39H1QI7XvHH2apjSAd5lD0aBFNBqoitpn7hsxFb+b45I88G7z7pcPdA3ylQHQoG
         4qgrG6AUEcVbLCp+E8KzwKMGWzTznfl7bO9IwUWtAFmC+sVHsDeEHf5cYOoeV7qLLJD/
         VuGKQDiQXoWkZmynHyq8Utzyy/dHrW6tK04/m7b//K5gjUTW9aJe+umJ05J4Ouli7B6/
         ix2MmY+hwWgk5WQguBxmGMTAyWuo3P5FaDCY4r0IFbqU+aMdTKAHDD7QVeiy3ZXVguB2
         pTFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1VPetEhBFpYgmT7fkOGehkDdiG0qEpXsSfsQPV85SyQ=;
        b=JYiQDOfqD/Nx5GJ0q8/fuiRcvaG5vIy396AdM58o3eFSicwy/XDgR+71XQw1mKa7Kq
         0gGqGy42PmrdegAzWbnq4EclgCoTSgQNfK9K3a5t58qCoOmBy7hQe5wfwRsfFiZqeJEk
         EldpjV+mJbwX1vq/HZ7HzFConGUmpYddsElA+QTsNbKAkioQhuh6HY4u/tAda/Xk7DTe
         Q7NVTAXSK9G4QRWcGcEKeE90XKNmk/6COBx5txL5aKCEzG27Gjw0cuQRnR84Fl2HKMiL
         /0f4b9sMsyXOKqA1Js3ApzCV21bwhE7vwoQxrJlzJLBeMKkMaOy7V3Jl3ALA0mf0E5Rz
         acqQ==
X-Gm-Message-State: AOAM532JrWUYxHV0a4M2Tndv4l9kDq/BWn/EclzD0Rgvhsr8QoRZOEgb
        mkhzNG15nFZd39npk9iVKuNKPZdQWXw=
X-Google-Smtp-Source: ABdhPJyL650SlAZuc3wIti84mVOF7Xve/dVFuUtzc/KPk1ZQ+2XLZTxQyyQXbloMgCp/jZCILRNTyw==
X-Received: by 2002:a17:90a:a591:b0:1bc:8015:4c9e with SMTP id b17-20020a17090aa59100b001bc80154c9emr371973pjq.154.1646678883312;
        Mon, 07 Mar 2022 10:48:03 -0800 (PST)
Received: from sc2-hs2-b1628.eng.vmware.com ([66.170.99.1])
        by smtp.gmail.com with ESMTPSA id c18-20020a056a000ad200b004f0f9696578sm18624749pfl.141.2022.03.07.10.48.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Mar 2022 10:48:02 -0800 (PST)
From:   Nadav Amit <nadav.amit@gmail.com>
X-Google-Original-From: Nadav Amit
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        "Michael Kerrisk )" <mtk.manpages@gmail.com>,
        Peter Xu <peterx@redhat.com>,
        David Hildenbrand <david@redhat.com>,
        Nadav Amit <namit@vmware.com>
Subject: [PATCH 2/2] userfaultfd.2: fix userfaultfd_demo output
Date:   Mon,  7 Mar 2022 18:48:52 +0000
Message-Id: <20220307184852.20351-2-namit@vmware.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220307184852.20351-1-namit@vmware.com>
References: <20220307184852.20351-1-namit@vmware.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Nadav Amit <namit@vmware.com>

A bug in the kernel caused in recent version a different output (masked
offset). Update the output of the demo program accordingly.

Signed-off-by: Nadav Amit <namit@vmware.com>
---
 man2/userfaultfd.2 | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/man2/userfaultfd.2 b/man2/userfaultfd.2
index cee7c01d2..779ff8817 100644
--- a/man2/userfaultfd.2
+++ b/man2/userfaultfd.2
@@ -648,7 +648,7 @@ Address returned by mmap() = 0x7fd30106c000
 
 fault_handler_thread():
     poll() returns: nready = 1; POLLIN = 1; POLLERR = 0
-    UFFD_EVENT_PAGEFAULT event: flags = 0; address = 7fd30106c00f
+    UFFD_EVENT_PAGEFAULT event: flags = 0; address = 7fd30106c000
         (uffdio_copy.copy returned 4096)
 Read address 0x7fd30106c00f in main(): A
 Read address 0x7fd30106c40f in main(): A
@@ -657,7 +657,7 @@ Read address 0x7fd30106cc0f in main(): A
 
 fault_handler_thread():
     poll() returns: nready = 1; POLLIN = 1; POLLERR = 0
-    UFFD_EVENT_PAGEFAULT event: flags = 0; address = 7fd30106d00f
+    UFFD_EVENT_PAGEFAULT event: flags = 0; address = 7fd30106d000
         (uffdio_copy.copy returned 4096)
 Read address 0x7fd30106d00f in main(): B
 Read address 0x7fd30106d40f in main(): B
@@ -666,7 +666,7 @@ Read address 0x7fd30106dc0f in main(): B
 
 fault_handler_thread():
     poll() returns: nready = 1; POLLIN = 1; POLLERR = 0
-    UFFD_EVENT_PAGEFAULT event: flags = 0; address = 7fd30106e00f
+    UFFD_EVENT_PAGEFAULT event: flags = 0; address = 7fd30106e000
         (uffdio_copy.copy returned 4096)
 Read address 0x7fd30106e00f in main(): C
 Read address 0x7fd30106e40f in main(): C
-- 
2.25.1

