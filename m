Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 61FB07A6B1C
	for <lists+linux-man@lfdr.de>; Tue, 19 Sep 2023 21:02:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233030AbjISTCx (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Sep 2023 15:02:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56422 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232837AbjISTCh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Sep 2023 15:02:37 -0400
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com [IPv6:2607:f8b0:4864:20::b49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37E8B19D
        for <linux-man@vger.kernel.org>; Tue, 19 Sep 2023 12:02:29 -0700 (PDT)
Received: by mail-yb1-xb49.google.com with SMTP id 3f1490d57ef6-d8141d6fbe3so6614182276.3
        for <linux-man@vger.kernel.org>; Tue, 19 Sep 2023 12:02:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1695150148; x=1695754948; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=dATpzHjDHVSfxWhEgldjVmKuWzgWmKZlkhKuoIGibHA=;
        b=v2yJA9+xEArPA/74JMN0Hi694q+EDFyndB9ppvzcYvjeQ6RKM3MPV8k+s3kMjmOub6
         8yQVjUtjnXSs4iiDS9jPgMtzYzoebk/scqukPobKHzl1J1/TAzCr70z/wmdE8Z8cNY8G
         9LRGxHoUwdhVkJCEHtFfjcnDzLYg7MfFe9wiBDDOFrgafP30KwSNmyUbXxC2+7/cP1dg
         FVnin8rmElasfww5o03MI48xmZGPAo3TCOyUZnllrktI1WCO9YhVpfkeguMIpRx+PjHu
         r2g8s4stxr2TPEb28XzFYHoBfTx1Ikj20B80pj89tmzaLc2WhD1FH6apIb36AWYBe7+6
         tTag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695150148; x=1695754948;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dATpzHjDHVSfxWhEgldjVmKuWzgWmKZlkhKuoIGibHA=;
        b=LhI5v9hFXyw2u5DBR54oSmBZbwYQOkfGPhshkApv7/it9puxdTrzofDtJ8Y1RJxgC2
         7A5ymJr87nxJ4wsFGtzVPbXIsQS6lBkQ1jL06XO+ficqgEVr8SPh6EUbomyepgOuqkVl
         Mb5gNrQq0E/lVYawzV8yC8doo4WgCoEh3LG8GoKRLdnBTHAfyOifCLumIltVALNO410/
         YIAi+kMcEqnHBOCjSCkC+YMs2tFQwbfM8GbuWIjaCFiWGnftSs+gSiwXPmCEUzGkZk9l
         2UaJmpqhSYdagUT4+pMhLquH5DhCcgzFnSX9CNFO0N2sYhvv8z378/7d0jFEY0EAzTdR
         GGJQ==
X-Gm-Message-State: AOJu0Yz9Bhw2gYdbdqxLbovMFXVzedDtKg4YPRcCSPFg+7y1NpXxpTI9
        /E1h6K1WNGzFAGDmZ2cH0Sdz4ms8yTULNODEx1Nn
X-Google-Smtp-Source: AGHT+IF45ElZoDnMndnZOu1lqkwCh0nmxIEmNv3ls7RqY7t81Fhtx/Bi4C+mC54hjZ/x4utF8vcipSUw1i7E3maljlSH
X-Received: from axel.svl.corp.google.com ([2620:15c:2a3:200:8f5a:6a6a:cafc:a3ad])
 (user=axelrasmussen job=sendgmr) by 2002:a05:6902:1802:b0:d77:8641:670c with
 SMTP id cf2-20020a056902180200b00d778641670cmr8426ybb.10.1695150147917; Tue,
 19 Sep 2023 12:02:27 -0700 (PDT)
Date:   Tue, 19 Sep 2023 12:02:03 -0700
In-Reply-To: <20230919190206.388896-1-axelrasmussen@google.com>
Mime-Version: 1.0
References: <20230919190206.388896-1-axelrasmussen@google.com>
X-Mailer: git-send-email 2.42.0.459.ge4e396fd5e-goog
Message-ID: <20230919190206.388896-8-axelrasmussen@google.com>
Subject: [PATCH 07/10] ioctl_userfaultfd.2: correct and update UFFDIO_API
 ioctl error codes
From:   Axel Rasmussen <axelrasmussen@google.com>
To:     Alejandro Colomar <alx@kernel.org>, Peter Xu <peterx@redhat.com>
Cc:     linux-man@vger.kernel.org, linux-mm@kvack.org,
        linux-kernel@vger.kernel.org,
        Axel Rasmussen <axelrasmussen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,USER_IN_DEF_DKIM_WL
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

First, it is not correct that repeated UFFDIO_API calls result in
EINVAL. This is true *if both calls enable features*, but in the case
where we're doing a two-step feature detection handshake, the kernel
explicitly expects 2 calls (one with no features set). So, correct this
description.

Then, some new error cases have been added to the kernel recently, and
the man page wasn't updated to note these. So, add in descriptions of
these new error cases.

Signed-off-by: Axel Rasmussen <axelrasmussen@google.com>
---
 man2/ioctl_userfaultfd.2 | 24 +++++++++++++++++++-----
 1 file changed, 19 insertions(+), 5 deletions(-)

diff --git a/man2/ioctl_userfaultfd.2 b/man2/ioctl_userfaultfd.2
index 53b1f473f..1aa9654be 100644
--- a/man2/ioctl_userfaultfd.2
+++ b/man2/ioctl_userfaultfd.2
@@ -280,17 +280,31 @@ refers to an address that is outside the calling process's
 accessible address space.
 .TP
 .B EINVAL
-The userfaultfd has already been enabled by a previous
-.B UFFDIO_API
-operation.
-.TP
-.B EINVAL
 The API version requested in the
 .I api
 field is not supported by this kernel, or the
 .I features
 field passed to the kernel includes feature bits that are not supported
 by the current kernel version.
+.TP
+.B EPERM
+The
+.B UFFD_FEATURE_EVENT_FORK
+feature was enabled,
+but the calling process doesn't have the
+.B CAP_SYS_PTRACE
+capability.
+.TP
+.B EINVAL
+A previous
+.B UFFDIO_API
+call already enabled one or more features for this userfaultfd.
+Calling
+.B UFFDIO_API
+twice,
+the first time with no features set,
+is explicitly allowed
+as per the two-step feature detection handshake.
 .\" FIXME In the above error case, the returned 'uffdio_api' structure is
 .\" zeroed out. Why is this done? This should be explained in the manual page.
 .\"
-- 
2.42.0.459.ge4e396fd5e-goog

