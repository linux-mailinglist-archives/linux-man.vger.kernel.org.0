Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4BA8C7A6B1B
	for <lists+linux-man@lfdr.de>; Tue, 19 Sep 2023 21:02:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232969AbjISTCu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Sep 2023 15:02:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56338 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232804AbjISTCf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Sep 2023 15:02:35 -0400
Received: from mail-yw1-x114a.google.com (mail-yw1-x114a.google.com [IPv6:2607:f8b0:4864:20::114a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C62D6192
        for <linux-man@vger.kernel.org>; Tue, 19 Sep 2023 12:02:26 -0700 (PDT)
Received: by mail-yw1-x114a.google.com with SMTP id 00721157ae682-59e78032ef9so36421307b3.2
        for <linux-man@vger.kernel.org>; Tue, 19 Sep 2023 12:02:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1695150146; x=1695754946; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=NEXa90h/68GUsd6orjyORkWHy9a7mT47IoYQaYRrJqY=;
        b=4BGM7sKNay44Df+g1Nw7jE50VV4DWrA0nROlWCooGG1H1RemZ7SOImOL3JqwGUF5p2
         YG+SI8JO1m/4mD27dbBhBBEgNGOhzValgvOf7S8LqtniXOdj2CXynEgooHy6K1lfoQzI
         XXdbQmMQgUoVI6LGhPMudhzAvkbFtyWu6iL6RgVcAtrgAOcNArFcIEkO9z/HommLEkJK
         pEJ4zaP9tQbNq3F/AFP9sOHxPOJTMDEMps+2YVNSooWH+1bCNOQUcOmygMX/yv//z4H6
         ZutUQhgR9lK5EJlnZiwZOyrnW6Zsu0eMJhp2rT6WGWyPWekZ3IZThOAIRWqu+JLcLfJT
         8mBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695150146; x=1695754946;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NEXa90h/68GUsd6orjyORkWHy9a7mT47IoYQaYRrJqY=;
        b=kDfiBzzI/acXW6DSjRK/zvCQ6LlD7X2iIs5yzAuY02+/1PWWT+ZDUkOiIMnASsjL/l
         jPtxcGWxLYQg+gabN7NraYcmg+krWuciB0Gs5+g5zI8/gTVg8zBboXvozhXFN/uLsNTe
         b/pdWeDlIAhSUoV7C0kkW6OF4Umy/YzQM6rk9CgcHzuVXtiGi+idlR6KE7gLXe0f7bHi
         ejp07hfhYPAHiA/1ryNqQuwtyiarMaVAOmDaoQl8mtlXCB5g+NhVXyPu3OWKQxVoodPE
         06xXfheoTnLF/z8sotvaKx/DFGh5lT3KSuxUHwwqANpa9A7cpB013X4h6/Z0DN0aMp22
         kFQA==
X-Gm-Message-State: AOJu0YyXsrXAEBvQ7liroJZFnTfefRs0nc/cXwRG9vYS4uUiKGHXMgN2
        WjJ7NjrbE4WxViAytr5yLTR6YZrqpoQ/9fOVJUnh
X-Google-Smtp-Source: AGHT+IFCWTBj+STf+JQII+aukLsaaJkmL6LUdqEggx41JkN/znYtNCrIQg6lN+ju+ooY+qcE8V78UIKtBAjD3/9uU5Cw
X-Received: from axel.svl.corp.google.com ([2620:15c:2a3:200:8f5a:6a6a:cafc:a3ad])
 (user=axelrasmussen job=sendgmr) by 2002:a25:6802:0:b0:d7b:3917:4606 with
 SMTP id d2-20020a256802000000b00d7b39174606mr6912ybc.11.1695150145976; Tue,
 19 Sep 2023 12:02:25 -0700 (PDT)
Date:   Tue, 19 Sep 2023 12:02:02 -0700
In-Reply-To: <20230919190206.388896-1-axelrasmussen@google.com>
Mime-Version: 1.0
References: <20230919190206.388896-1-axelrasmussen@google.com>
X-Mailer: git-send-email 2.42.0.459.ge4e396fd5e-goog
Message-ID: <20230919190206.388896-7-axelrasmussen@google.com>
Subject: [PATCH 06/10] ioctl_userfaultfd.2: describe missing UFFDIO_API
 feature flags
From:   Axel Rasmussen <axelrasmussen@google.com>
To:     Alejandro Colomar <alx@kernel.org>, Peter Xu <peterx@redhat.com>
Cc:     linux-man@vger.kernel.org, linux-mm@kvack.org,
        linux-kernel@vger.kernel.org,
        Axel Rasmussen <axelrasmussen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,USER_IN_DEF_DKIM_WL
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Several new features have been added to the kernel recently, and the man
page wasn't updated to describe these new features. So, add in
descriptions of any missing features.

Signed-off-by: Axel Rasmussen <axelrasmussen@google.com>
---
 man2/ioctl_userfaultfd.2 | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/man2/ioctl_userfaultfd.2 b/man2/ioctl_userfaultfd.2
index e91a1dfc8..53b1f473f 100644
--- a/man2/ioctl_userfaultfd.2
+++ b/man2/ioctl_userfaultfd.2
@@ -204,6 +204,13 @@ If this feature bit is set,
 .I uffd_msg.pagefault.feat.ptid
 will be set to the faulted thread ID for each page-fault message.
 .TP
+.BR UFFD_FEATURE_PAGEFAULT_FLAG_WP " (since Linux 5.10)"
+If this feature bit is set,
+userfaultfd supports write-protect faults
+for anonymous memory.
+(Note that shmem / hugetlbfs support
+is indicated by a separate feature.)
+.TP
 .BR UFFD_FEATURE_MINOR_HUGETLBFS " (since Linux 5.13)"
 If this feature bit is set,
 the kernel supports registering userfaultfd ranges
@@ -221,6 +228,22 @@ will be set to the exact page-fault address that was reported by the hardware,
 and will not mask the offset within the page.
 Note that old Linux versions might indicate the exact address as well,
 even though the feature bit is not set.
+.TP
+.BR UFFD_FEATURE_WP_HUGETLBFS_SHMEM " (since Linux 5.19)"
+If this feature bit is set,
+userfaultfd supports write-protect faults
+for hugetlbfs and shmem / tmpfs memory.
+.TP
+.BR UFFD_FEATURE_WP_UNPOPULATED " (since Linux 6.4)"
+If this feature bit is set,
+the kernel will handle anonymous memory the same way as file memory,
+by allowing the user to write-protect unpopulated ptes.
+.TP
+.BR UFFD_FEATURE_POISON " (since Linux 6.6)"
+If this feature bit is set,
+the kernel supports resolving faults with the
+.B UFFDIO_POISON
+ioctl.
 .PP
 The returned
 .I ioctls
-- 
2.42.0.459.ge4e396fd5e-goog

