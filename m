Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DABDD53E011
	for <lists+linux-man@lfdr.de>; Mon,  6 Jun 2022 05:31:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232876AbiFFDbm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 5 Jun 2022 23:31:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232586AbiFFDbl (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 5 Jun 2022 23:31:41 -0400
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE38025C4
        for <linux-man@vger.kernel.org>; Sun,  5 Jun 2022 20:31:39 -0700 (PDT)
Received: by mail-qk1-f172.google.com with SMTP id o68so10077411qkf.13
        for <linux-man@vger.kernel.org>; Sun, 05 Jun 2022 20:31:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Jy/gliePn497ziJB+RQotFzHHtoxgKamjeer/JJ8b6U=;
        b=7a8ZXg9waYy94wg8nDmme5nMLEenheMBmVRTa/vgOPk3nN1utRLLkS0z4pgbwr5QxE
         Stjg8WamODhOfVFbbO5vyBA7dEhV78Qm2UlVzrJ6cylY6QOzWHuDsy0I00T7E2mocslf
         09ZKizpssTnM/WyWLc5PculR4xPbCNcSStmmlP+z+rFvksgxxEXNcxnu36awaZV0xK0J
         6X9f/6zPmsGx8fx5IBDhEeGzFsE0KfjgrOoNvM6hbbXzB9jkWCpGSGmSDQYmvQgFknDK
         NeD/DRbm5lWI4t1cl7PmbAm0MXEj3zz+SF8WfjUoyJdAAdWpuYrPDd7dzH5eicGkRkYT
         f/+g==
X-Gm-Message-State: AOAM533ctUPGxWMLKsvAmgQ3vVywPVZO8uxaJQDXmTjcCdsUdjecpmXi
        sg1zPl97eANqkcF+cuy8gm4=
X-Google-Smtp-Source: ABdhPJyCgMhP3H39TxQi8//oeyatQf2Zer5vPXhKalGfTXrqmt0ZQ0gNCPMYWukQUyBVlOUp0iy4sA==
X-Received: by 2002:a37:a304:0:b0:6a6:9fbf:882a with SMTP id m4-20020a37a304000000b006a69fbf882amr9328185qke.97.1654486299082;
        Sun, 05 Jun 2022 20:31:39 -0700 (PDT)
Received: from dpward-vm-archlinux.. (c-73-234-172-219.hsd1.ma.comcast.net. [73.234.172.219])
        by smtp.gmail.com with ESMTPSA id ay16-20020a05620a179000b006a6991233a3sm6851376qkb.126.2022.06.05.20.31.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jun 2022 20:31:38 -0700 (PDT)
From:   David Ward <david.ward@gatech.edu>
To:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
Cc:     David Ward <david.ward@gatech.edu>,
        Michael Welsh Duggan <mwd@cert.org>,
        Nadav Har'El <nyh@math.technion.ac.il>,
        linux-man@vger.kernel.org
Subject: [PATCH v2] poll.2: Set fd to its bitwise complement to ignore
Date:   Sun,  5 Jun 2022 23:31:39 -0400
Message-Id: <20220606033139.3826032-1-david.ward@gatech.edu>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <2c60fda4-c29d-5221-05c2-7e12bac926c3@gmail.com>
References: <2c60fda4-c29d-5221-05c2-7e12bac926c3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
        FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

A valid file descriptor will be non-negative, i.e., 0 <= fd <= INT_MAX.
When all of the bits of a valid file descriptor are flipped, the result
is a negative value: ~0 = -1, ~1 = -2, ..., ~INT_MAX = INT_MIN. If all
of these bits are flipped again, then the file descriptor is recovered.

Negating the file descriptor does not quite achieve this, because there
will be no change for fd 0. (Likewise, negating INT_MIN would not cause
any change in value, but it is never a valid file descriptor.)

Link: https://bugzilla.kernel.org/show_bug.cgi?id=79411
Signed-off-by: David Ward <david.ward@gatech.edu>
---
 man2/poll.2 | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/man2/poll.2 b/man2/poll.2
index 205468f3e..cd65bc6e8 100644
--- a/man2/poll.2
+++ b/man2/poll.2
@@ -83,10 +83,9 @@ field returns zero.
 (This provides an easy way of ignoring a
 file descriptor for a single
 .BR poll ()
-call: simply negate the
+call: simply set the
 .I fd
-field.
-Note, however, that this technique can't be used to ignore file descriptor 0.)
+field to its bitwise complement.)
 .PP
 The field
 .I events
