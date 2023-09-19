Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 00E3E7A6B16
	for <lists+linux-man@lfdr.de>; Tue, 19 Sep 2023 21:02:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232740AbjISTCh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Sep 2023 15:02:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232725AbjISTCe (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Sep 2023 15:02:34 -0400
Received: from mail-yw1-x114a.google.com (mail-yw1-x114a.google.com [IPv6:2607:f8b0:4864:20::114a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDA60129
        for <linux-man@vger.kernel.org>; Tue, 19 Sep 2023 12:02:22 -0700 (PDT)
Received: by mail-yw1-x114a.google.com with SMTP id 00721157ae682-59bee08c13aso66676877b3.0
        for <linux-man@vger.kernel.org>; Tue, 19 Sep 2023 12:02:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1695150142; x=1695754942; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=gOdPMAxCjzIvLxf6qfx/KF9XXYtmYZAQcBo4SahEGKQ=;
        b=1fJ3i6U0CgJ0P8Iemhm3nkJnQEjA+uvmLAt4yMlxiom3Q623ZdK1ISGVaIF2MTYEHZ
         cxYjxVtG6nMFSLcJNqpvSGSNwidMRCLg+uZidMoiHSUOv8VvHjA6DJaWGVBRTYL2739c
         MUXP1LgHr/Mbj0u8W8QNqhDY9HOICcpWouCBauXtTgo7bu7lotoLAJG6niCubYMm+4Zu
         xcz/E2aYBW12KDQMQxWy4MPhtD5GTKDv7f1viQIBAbtu5gYH0oaVUyYKbkhphtDEWdx7
         bFCxPGdZpxvdW506J6KZ/VSvkQPFr9r0lxYerovKL27RjtQni4YccyniCz1gMZnm1ijV
         lDAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695150142; x=1695754942;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gOdPMAxCjzIvLxf6qfx/KF9XXYtmYZAQcBo4SahEGKQ=;
        b=PrO0KXGRErDUqC+bkBFry625UBH1NEAVIfOO1IATBS5JE4ATSpUDuHBEHOolQyiW42
         jzG1pwF8itVpA9XY/xtW49dnpcS+s2COwjAXiUKhjN5Kr8YsimsVbnFcrBL6xLFZ2QhK
         1h4oyLSMlhe87sLb8gHQJ08W9O30EeWs6orHgDMrNA4D4DNPKKM4/zCMhfU9f188R29T
         BQyrGm2SKSnXtV83VuzZkIwDRCGC9WcF8D6Myo38CCPxLXzP9lkLE8BYEM8G4caDcyG5
         AWhcxxixwtq3VJWLSOXOLJNfh49N6qhlQQ503P4C2VNI8ZoS1EN+a8yGPlCVRqymFcTc
         I1KQ==
X-Gm-Message-State: AOJu0YxpSi0cpKnEFNg4wuR4QS5ZM8U3WraPn516qnEDzQHCXpkyfLAR
        8Nqq9/zN/NOOkBSkCTgrqeCUuiJ706blRRYETdKq
X-Google-Smtp-Source: AGHT+IFZpuf3puikO1dpMMmRSMwyUPuqXBGQdykRHv7eVlMOCdkUpk8MEbv9YqybcXD2K15AerblJ02c7++wCFD4AnMi
X-Received: from axel.svl.corp.google.com ([2620:15c:2a3:200:8f5a:6a6a:cafc:a3ad])
 (user=axelrasmussen job=sendgmr) by 2002:a81:b709:0:b0:59b:e669:c944 with
 SMTP id v9-20020a81b709000000b0059be669c944mr5687ywh.3.1695150142185; Tue, 19
 Sep 2023 12:02:22 -0700 (PDT)
Date:   Tue, 19 Sep 2023 12:02:00 -0700
In-Reply-To: <20230919190206.388896-1-axelrasmussen@google.com>
Mime-Version: 1.0
References: <20230919190206.388896-1-axelrasmussen@google.com>
X-Mailer: git-send-email 2.42.0.459.ge4e396fd5e-goog
Message-ID: <20230919190206.388896-5-axelrasmussen@google.com>
Subject: [PATCH 04/10] ioctl_userfaultfd.2: fix a few trivial mistakes
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

- Fix missing paragraph tag. The lack of this tag yielded no blank line
  in the rendere dpage, which is inconsistent with style elsewhere.

- The description of UFFDIO_WRITEPROTECT was a sentence fragment; the
  last half of the sentence was left out by mistake. Add it in to fix
  the issue.

- move UFFDIO_WRITEPROTECT 'since' to its own line All other ioctls
  note the kernel version introduced on a separate line from the ioctl
  name. Update UFFDIO_WRITEPROTECT to match the existing style.

Signed-off-by: Axel Rasmussen <axelrasmussen@google.com>
---
 man2/ioctl_userfaultfd.2 | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/man2/ioctl_userfaultfd.2 b/man2/ioctl_userfaultfd.2
index b5281ec4c..339adf8fe 100644
--- a/man2/ioctl_userfaultfd.2
+++ b/man2/ioctl_userfaultfd.2
@@ -31,6 +31,7 @@ using calls of the form:
 ioctl(fd, cmd, argp);
 .EE
 .in
+.PP
 In the above,
 .I fd
 is a file descriptor referring to a userfaultfd object,
@@ -351,6 +352,7 @@ operation is supported.
 .B 1 << _UFFDIO_WRITEPROTECT
 The
 .B UFFDIO_WRITEPROTECT
+operation is supported.
 .TP
 .B 1 << _UFFDIO_ZEROPAGE
 The
@@ -693,7 +695,8 @@ field of the
 structure was not a multiple of the system page size; or
 .I len
 was zero; or the specified range was otherwise invalid.
-.SS UFFDIO_WRITEPROTECT (Since Linux 5.7)
+.SS UFFDIO_WRITEPROTECT
+(Since Linux 5.7.)
 Write-protect or write-unprotect a userfaultfd-registered memory range
 registered with mode
 .BR UFFDIO_REGISTER_MODE_WP .
-- 
2.42.0.459.ge4e396fd5e-goog

