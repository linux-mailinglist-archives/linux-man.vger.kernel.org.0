Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 250C57A6B11
	for <lists+linux-man@lfdr.de>; Tue, 19 Sep 2023 21:02:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232524AbjISTCX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Sep 2023 15:02:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232490AbjISTCW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Sep 2023 15:02:22 -0400
Received: from mail-yw1-x114a.google.com (mail-yw1-x114a.google.com [IPv6:2607:f8b0:4864:20::114a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5D66B3
        for <linux-man@vger.kernel.org>; Tue, 19 Sep 2023 12:02:16 -0700 (PDT)
Received: by mail-yw1-x114a.google.com with SMTP id 00721157ae682-597f461adc5so73017597b3.1
        for <linux-man@vger.kernel.org>; Tue, 19 Sep 2023 12:02:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1695150136; x=1695754936; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=OM7/ZBsweEHQQFPt50lI+eLlVKDaLR0lSsGnYD/uIDg=;
        b=TL7YK71y+TUTy6fGHYiqdt4EtznmZCsTiHX38kHatN4xhHv67/jiXlPuGF2TixAK/m
         AwAnc1huXwj7Kkc1XDnMP1lT4t+s/lZd7VTuW6gu2fgOFm1OiPF7V4JZgnOuavWSO+EB
         OylC/CtOFWRfzrNpB0UKREr5Bd6tSYckKJXohuyIjLLv3vUrmi3dlHv4IahrJ2oaB3em
         UOpkZCFgCRhIanNHMSCO4awRhDvx3N9Y2pVAjUXrKBO6aqF93RDswWshoCVSVLu3ZgF2
         km9BZHT3khi3N+Oi4nroprbc4fCKPDIMV1dfsdu29GaMjWZnK1xf66H5lDijGxxOdSrO
         h/lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695150136; x=1695754936;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OM7/ZBsweEHQQFPt50lI+eLlVKDaLR0lSsGnYD/uIDg=;
        b=mpQf8qYr2bf5I1ce8GWaeYvG2GHunCWxRj8yp3OETkVfzWw8g5C1PUMNmjXxWoEbPp
         p3RUkaCcwMjpQfhuEw5RlUNImdY82hQzc8TWI8LxGX8xV+kAqtpfKWf5hlmXI/7FGMa2
         5NexzE3ZvthdV1OO0KI702K9hD43LAZA3dFDhvJN+bAYxLVY1XRx2YZbNf9AbTYRq/0E
         W6wKetbf9vzcQpHZgTMnec56W6bdsT9dbscu/a0y7OVqubYJJPEIiQLFRzriilOp80cs
         RwCiOwRdwnxHHo/nyohG6/2jbeIWcgmNxoiTiuTJyBgj9tCFQ3Ncs44Vnuc/+T83EWOE
         hUuw==
X-Gm-Message-State: AOJu0YzglV6p94Noq/07vsJxksTPNhNdYRv3KIgLSvOlyy7b/mJes/H3
        cJcuetfaDvOjGNPjk4KENxn0O8MCOKN9aTpcspLT
X-Google-Smtp-Source: AGHT+IFf0kRJIOcrKDJvGyy+9uuMetyVG0rmWrcYJuPzwTUle78T8JRLjh7ImzOta7b6zc579tMrz4KeWMgNFH3qWKPl
X-Received: from axel.svl.corp.google.com ([2620:15c:2a3:200:8f5a:6a6a:cafc:a3ad])
 (user=axelrasmussen job=sendgmr) by 2002:a25:ab48:0:b0:d81:68ac:e046 with
 SMTP id u66-20020a25ab48000000b00d8168ace046mr6411ybi.12.1695150135954; Tue,
 19 Sep 2023 12:02:15 -0700 (PDT)
Date:   Tue, 19 Sep 2023 12:01:57 -0700
In-Reply-To: <20230919190206.388896-1-axelrasmussen@google.com>
Mime-Version: 1.0
References: <20230919190206.388896-1-axelrasmussen@google.com>
X-Mailer: git-send-email 2.42.0.459.ge4e396fd5e-goog
Message-ID: <20230919190206.388896-2-axelrasmussen@google.com>
Subject: [PATCH 01/10] userfaultfd.2: briefly mention two-step feature
 handshake process
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

This process is critical for programs which depend on extra features, so
it's worth mentioning here.

Future commits will much more fully describe it in ioctl_userfaultfd.2.

Signed-off-by: Axel Rasmussen <axelrasmussen@google.com>
---
 man2/userfaultfd.2 | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/man2/userfaultfd.2 b/man2/userfaultfd.2
index 40354065c..1b2af22f9 100644
--- a/man2/userfaultfd.2
+++ b/man2/userfaultfd.2
@@ -200,8 +200,9 @@ the application must enable it using the
 .B UFFDIO_API
 .BR ioctl (2)
 operation.
-This operation allows a handshake between the kernel and user space
-to determine the API version and supported features.
+This operation allows a two-step handshake between the kernel and user space
+to determine what API version and features the kernel supports,
+and then to enable those features user space wants.
 This operation must be performed before any of the other
 .BR ioctl (2)
 operations described below (or those operations fail with the
-- 
2.42.0.459.ge4e396fd5e-goog

