Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 02F5D7A6B20
	for <lists+linux-man@lfdr.de>; Tue, 19 Sep 2023 21:02:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232759AbjISTC4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Sep 2023 15:02:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47194 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232600AbjISTCt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Sep 2023 15:02:49 -0400
Received: from mail-yw1-x1149.google.com (mail-yw1-x1149.google.com [IPv6:2607:f8b0:4864:20::1149])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E57E137
        for <linux-man@vger.kernel.org>; Tue, 19 Sep 2023 12:02:32 -0700 (PDT)
Received: by mail-yw1-x1149.google.com with SMTP id 00721157ae682-59c0dd156e5so52340107b3.3
        for <linux-man@vger.kernel.org>; Tue, 19 Sep 2023 12:02:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1695150151; x=1695754951; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=B/mBNxS046NndSUiuzLhVh8+as48kp1msWTNOB3shRo=;
        b=Ua8QGL2++mD9dEdg+sAx/FcJHqAsM5UhJQ3xLWs1T3+FEAbdPlQBBbZiTzJZPtRJcj
         zEo2awLPU7Rl3GJYMA/0fCdInO64l3hdcByzrVvS9DfW/6sZ41Ny/1Z2A2KCr5xGXn26
         sPcH9s9TSoeqDyh6IrLOhngvAGHRM9dC3yZ9VbblH0ueTgc4oUxhkNvOYZdwfBPUSaKL
         wqG3vLEVq+rqRbN+jo1/6jTBdkNAGXOr8XidYggPftdGrLmDdCXpTgn3G2GHZ+p7bSxW
         8mvRjrXS9Na7HQdrpOlKEyskvUrCScfa0mscy4cxzVDEcv3tsD0FfD/7b/ZNiUm6xKKY
         X6hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695150151; x=1695754951;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B/mBNxS046NndSUiuzLhVh8+as48kp1msWTNOB3shRo=;
        b=Gh41djSAI1wI0UxNU0dA3l4L0X/oeLvVLigYYr+1HbDmPN3PO66t4D/CAd9na3pYxQ
         Sj5J6W+q0/GjlTpY+RnaBXq9SjHzi3lZJzUvi52FNNsJd5JqFoDW2oCuwKSwScO/yj8Q
         89rtt/IyaWbeyhLIhSbd0DouhGOnTo5C9VpI5+tqnF3J8RwE4HCtHoFb3eJDjEW9K+FH
         /zTYhBy6gMA5Q+BxWNQa/M26c1SKG0odY7emULf28sBz/BOVqTTaWjNq1wZ65sFrZVky
         zh+jVByTyQLedgn2b9oMCDXotsRUu0f5Qr5t/VwbzLuq+xZ3DpoJJUcmAUDOTtOhawQI
         COww==
X-Gm-Message-State: AOJu0YzvvHIja90Zoj2X4UI9Zd/h4L2SjLk10fSWMaHUf+fqgbpTvXMp
        lXldHwDKSGKXHejJwFsB20EjusNHHdjvEntuKcN9
X-Google-Smtp-Source: AGHT+IH7a8feDFG+W7LkkHL8xBQ33JOSLVkr8l24lseUZrRLYRoJu9ErPhz702o9Ru0cy8y+86WKdCJVmDC1f0ZBz4hx
X-Received: from axel.svl.corp.google.com ([2620:15c:2a3:200:8f5a:6a6a:cafc:a3ad])
 (user=axelrasmussen job=sendgmr) by 2002:a81:ae07:0:b0:59b:ba8a:97d0 with
 SMTP id m7-20020a81ae07000000b0059bba8a97d0mr6086ywh.3.1695150151389; Tue, 19
 Sep 2023 12:02:31 -0700 (PDT)
Date:   Tue, 19 Sep 2023 12:02:05 -0700
In-Reply-To: <20230919190206.388896-1-axelrasmussen@google.com>
Mime-Version: 1.0
References: <20230919190206.388896-1-axelrasmussen@google.com>
X-Mailer: git-send-email 2.42.0.459.ge4e396fd5e-goog
Message-ID: <20230919190206.388896-10-axelrasmussen@google.com>
Subject: [PATCH 09/10] ioctl_userfaultfd.2: fix / update UFFDIO_REGISTER error
 code list
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

The list of error codes in the man page was out of date with respect to
the current state of the kernel. Some errors were partially /
incorrectly described.

Update the error code listing, so it matches the current state of the
kernel, and correctly describes all the errors.

Signed-off-by: Axel Rasmussen <axelrasmussen@google.com>
---
 man2/ioctl_userfaultfd.2 | 37 +++++++++++++++++++++----------------
 1 file changed, 21 insertions(+), 16 deletions(-)

diff --git a/man2/ioctl_userfaultfd.2 b/man2/ioctl_userfaultfd.2
index 29dca1f6b..afe3caffc 100644
--- a/man2/ioctl_userfaultfd.2
+++ b/man2/ioctl_userfaultfd.2
@@ -413,12 +413,6 @@ On error, \-1 is returned and
 .I errno
 is set to indicate the error.
 Possible errors include:
-.\" FIXME Is the following error list correct?
-.\"
-.TP
-.B EBUSY
-A mapping in the specified range is registered with another
-userfaultfd object.
 .TP
 .B EFAULT
 .I argp
@@ -433,21 +427,32 @@ field; or the
 field was zero.
 .TP
 .B EINVAL
-There is no mapping in the specified address range.
-.TP
-.B EINVAL
+The specified address range was invalid.
+More specifically,
+no mapping exists in the given range,
+or the mapping that exists there is invalid
+(e.g. unsupported type of memory),
+or the range values (
 .I range.start
 or
 .I range.len
-is not a multiple of the system page size; or,
+) are not multiples of the relevant page size,
+or
 .I range.len
-is zero; or these fields are otherwise invalid.
+is zero.
 .TP
-.B EINVAL
-There as an incompatible mapping in the specified address range.
-.\" Mike Rapoport:
-.\" ENOMEM if the process is exiting and the
-.\" mm_struct has gone by the time userfault grabs it.
+.B ENOMEM
+The process is exiting,
+and its address space has already been torn down
+when userfaultfd attempts to reference it.
+.TP
+.B EPERM
+The userfaultfd would allow writing to a file backing the mapping,
+but the calling process lacks such write permissions.
+.TP
+.B EBUSY
+A mapping in the specified range is registered with another
+userfaultfd object.
 .SS UFFDIO_UNREGISTER
 (Since Linux 4.3.)
 Unregister a memory address range from userfaultfd.
-- 
2.42.0.459.ge4e396fd5e-goog

