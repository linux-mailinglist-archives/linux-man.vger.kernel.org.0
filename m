Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 57D697A6B1E
	for <lists+linux-man@lfdr.de>; Tue, 19 Sep 2023 21:02:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232909AbjISTCz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Sep 2023 15:02:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48824 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232904AbjISTCm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Sep 2023 15:02:42 -0400
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com [IPv6:2607:f8b0:4864:20::b4a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D96DFB
        for <linux-man@vger.kernel.org>; Tue, 19 Sep 2023 12:02:30 -0700 (PDT)
Received: by mail-yb1-xb4a.google.com with SMTP id 3f1490d57ef6-d816fa2404aso6664775276.0
        for <linux-man@vger.kernel.org>; Tue, 19 Sep 2023 12:02:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1695150149; x=1695754949; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=5/ZA4nlbby3TSOXQeGLhY3RgtFATqmihyuOhsYNku5o=;
        b=ILqI7TNmSI3xoxz6Gb20TjikkOWe6V6TnyOB+d+IrFUhwShOf/Y+3+hjouGb4yRK6a
         9uau1Ssjg3ISDR5w7vf2UkokaTzpPODfmFKHPeYF0NPSSqZFAqrZabPA/kRmi8surMqj
         0jMTJ25dmpM4S+KzZqtwpGU3denfpfu0lG2ZVWROcE/HLPxQz8i80/z/UJFDCu0BydfH
         u1cey1gNaV6ZxysgKb+nOL0WbVLlzFjuYmIxuZm0/pVc1Sfz9t8x28sckj8bhB7MBTBP
         cZp0NIs+Gt1WzZzgW/67hGlFY8Xyju94ZXUcI5nExbLWXALfmArb8rESdhaSgGTSDYrR
         IFXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695150149; x=1695754949;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5/ZA4nlbby3TSOXQeGLhY3RgtFATqmihyuOhsYNku5o=;
        b=dZaR7DfwIZQc61MiLvBNQaxs3D2cklVdXcXE4VoQI3BL0GTp7tQY11u1XNrxvNJP3s
         YWDT+bOOp1qysDZZP9xg9Hw/LmD2+R7ktWyFyA9hxAQZgTB2VD9vCvKSQuWo1MPrVJ8o
         RERBEHVKJVUQ1W0Cfgm1irbPn04b5fGKZv689RpBlzGazLFNDcACmqfzPfDUz0OF/yhl
         Rgdshg50Vr1Po6dAKhHH0ZcgXa+Sj6zAHScGQLcRcvCUK+vVFGTcO+DFIiSn8hpc0DJX
         q8+X/eUfbaO5Gamhrl8FmNPi21eCcdE7PquKSCfCxNFgzgv3PN3MZnmLNaB0Yc42m2oS
         pQew==
X-Gm-Message-State: AOJu0YypGelWFIVy2XEb9xJQXF9ces2F6Sr2e9J7PpYgv9tEFEAF+lAy
        EL7gyfg1Hyei33gTlCKqYA3m585f1iKm8XzVenKR
X-Google-Smtp-Source: AGHT+IG8eaTU7hxdY5mgOyKHs6IeTw13//TND4ha10SPnops/i3jjzvDx1XteSAjjRbmIb2msTY9QDo9nytSfSAHrvmQ
X-Received: from axel.svl.corp.google.com ([2620:15c:2a3:200:8f5a:6a6a:cafc:a3ad])
 (user=axelrasmussen job=sendgmr) by 2002:a05:6902:1805:b0:d77:f7c3:37db with
 SMTP id cf5-20020a056902180500b00d77f7c337dbmr7876ybb.8.1695150149582; Tue,
 19 Sep 2023 12:02:29 -0700 (PDT)
Date:   Tue, 19 Sep 2023 12:02:04 -0700
In-Reply-To: <20230919190206.388896-1-axelrasmussen@google.com>
Mime-Version: 1.0
References: <20230919190206.388896-1-axelrasmussen@google.com>
X-Mailer: git-send-email 2.42.0.459.ge4e396fd5e-goog
Message-ID: <20230919190206.388896-9-axelrasmussen@google.com>
Subject: [PATCH 08/10] ioctl_userfaultfd.2: clarify the state of the
 uffdio_api structure on error
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

The old FIXME noted that the zeroing was done to differentiate the two
EINVAL cases. It's possible something like this was true historically,
but in current Linux we zero it in *both* EINVAL cases, so this is at
least no longer true.

After reading the code, I can't determine any clear reason why we zero
it in some cases but not in others. So, some simple advice we can give
userspace is: if an error occurs, treat the contents of the structure as
unspecified. Just re-initialize it before retrying UFFDIO_API again.

Signed-off-by: Axel Rasmussen <axelrasmussen@google.com>
---
 man2/ioctl_userfaultfd.2 | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/man2/ioctl_userfaultfd.2 b/man2/ioctl_userfaultfd.2
index 1aa9654be..29dca1f6b 100644
--- a/man2/ioctl_userfaultfd.2
+++ b/man2/ioctl_userfaultfd.2
@@ -272,6 +272,14 @@ operation returns 0 on success.
 On error, \-1 is returned and
 .I errno
 is set to indicate the error.
+If an error occurs,
+the kernel may zero the provided
+.I uffdio_api
+structure.
+The caller should treat its contents as unspecified,
+and reinitialize it before re-attempting another
+.B UFFDIO_API
+call.
 Possible errors include:
 .TP
 .B EFAULT
@@ -305,14 +313,6 @@ twice,
 the first time with no features set,
 is explicitly allowed
 as per the two-step feature detection handshake.
-.\" FIXME In the above error case, the returned 'uffdio_api' structure is
-.\" zeroed out. Why is this done? This should be explained in the manual page.
-.\"
-.\" Mike Rapoport:
-.\"     In my understanding the uffdio_api
-.\"     structure is zeroed to allow the caller
-.\"     to distinguish the reasons for -EINVAL.
-.\"
 .SS UFFDIO_REGISTER
 (Since Linux 4.3.)
 Register a memory address range with the userfaultfd object.
-- 
2.42.0.459.ge4e396fd5e-goog

