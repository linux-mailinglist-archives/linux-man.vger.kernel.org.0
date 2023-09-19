Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EEC007A6B14
	for <lists+linux-man@lfdr.de>; Tue, 19 Sep 2023 21:02:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232727AbjISTCe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 19 Sep 2023 15:02:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232651AbjISTCa (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 19 Sep 2023 15:02:30 -0400
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com [IPv6:2607:f8b0:4864:20::b49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DAE40F3
        for <linux-man@vger.kernel.org>; Tue, 19 Sep 2023 12:02:20 -0700 (PDT)
Received: by mail-yb1-xb49.google.com with SMTP id 3f1490d57ef6-d84acda47aeso2953288276.3
        for <linux-man@vger.kernel.org>; Tue, 19 Sep 2023 12:02:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1695150140; x=1695754940; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=ki2PsI/vYMabFbd8E5Ao5rQjeLB7FSTcyoizKDHBTIc=;
        b=RfuW+oLrkSfj54woc+wxQPhieeRi54xqzswro7rv/4GQgHRZ+lKMdoytyLc4q6AdXp
         2kUZmrFIkj59xZQnca8mIMCq1lI7nilMkEYXAYBqk9hXVdyoA/LjLr0eChf+6RQiQrQa
         0S8WpnxdazGcTJacisCSD3zv7+YJxd6qKA2X2vqUzTiA+lz15do0s04RiWrUxV84SqDD
         dGNGh7R2fslNnrsksgagle0lkIU1rf6Vbzd5fKid4OuCkiJMevQfa7ZFw2YbAeNXLpXx
         /q4/Ps2nZ2PT5ltz0txjUq94m8Cl1TNHZO6xNKZMoURfdqgdJtUI80T1GcCB+6H8dOVZ
         8H1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695150140; x=1695754940;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ki2PsI/vYMabFbd8E5Ao5rQjeLB7FSTcyoizKDHBTIc=;
        b=YNxg252Q/rIQKWG9ujzE6GjpFrOWmF1qfnE/eDZLxu52h5vNnFTHRT8bPh54hCwRF5
         9+GvKyBNeqijorlxo8m3b/MOGW4DT39wtXjy3idQ3E8sLt/yb/aMNuZTa8Y6kurDN20e
         mS2WHJXHgbHzg8le8xiETPGZ+D3K2CR3Nm+uGVXZQFliCOzT6DTNtW4Ld05apSSctwpF
         Gy/gPipU4QFTrG2HLCJZgBPDq9n3KZH3WvECWnoRiZn7g6zq/2WxaIcRBaTwBvs61xj9
         8mMCX1rZao8ZcHiPYFlZlGY7Fdr1K5mTWzNHFdumFgcCketFmK+5GGhlJwlZC36H1DlT
         QPRw==
X-Gm-Message-State: AOJu0Yx212m9WIDPG8OvsCXx86VKb/2Ox4KPCKgfEj+nSCEEUi9o+iwB
        8Z/6XWyg25NLD21DOTJcCdDnBfEYSlwHpjhkesGB
X-Google-Smtp-Source: AGHT+IGXSMthavzGtM+I960Ina2tCwgtxbX7+5w8vKtVGs3oDe4TAyxfuIyBkIIgO4pFyUZosMmWqGuYU0BoHxollsgu
X-Received: from axel.svl.corp.google.com ([2620:15c:2a3:200:8f5a:6a6a:cafc:a3ad])
 (user=axelrasmussen job=sendgmr) by 2002:a05:6902:1805:b0:d77:f7c3:37db with
 SMTP id cf5-20020a056902180500b00d77f7c337dbmr7869ybb.8.1695150140155; Tue,
 19 Sep 2023 12:02:20 -0700 (PDT)
Date:   Tue, 19 Sep 2023 12:01:59 -0700
In-Reply-To: <20230919190206.388896-1-axelrasmussen@google.com>
Mime-Version: 1.0
References: <20230919190206.388896-1-axelrasmussen@google.com>
X-Mailer: git-send-email 2.42.0.459.ge4e396fd5e-goog
Message-ID: <20230919190206.388896-4-axelrasmussen@google.com>
Subject: [PATCH 03/10] userfaultfd.2: comment on feature detection in the
 example program
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

The example program doesn't depend on any extra features, so it does not
make use of the two-step feature handshake process. This is fine, but it
might set a bad example for programs which *do* depend on specific
features (e.g. they may conclude they don't need to do anything to
enable / detect them).

No need to make the example program more complicated: let's just add a
comment indicating why we do it the way we do it in the example, and
describing briefly what a more complicated program would need to do
instead.

The comment is kept rather brief; a full description of this feature
will be included in ioctl_userfaultfd.2 instead.

Signed-off-by: Axel Rasmussen <axelrasmussen@google.com>
---
 man2/userfaultfd.2 | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/man2/userfaultfd.2 b/man2/userfaultfd.2
index 00d94e514..b2b79f61d 100644
--- a/man2/userfaultfd.2
+++ b/man2/userfaultfd.2
@@ -881,6 +881,13 @@ main(int argc, char *argv[])
     if (uffd == \-1)
         err(EXIT_FAILURE, "userfaultfd");
 \&
+    /* NOTE: Two-step feature handshake is not needed here, since this
+       example doesn't require any specific features.
+
+       Programs that *do* should call UFFDIO_API twice: once with
+       `features = 0` to detect features supported by this kernel, and
+       again with the subset of features the program actually wants to
+       enable. */
     uffdio_api.api = UFFD_API;
     uffdio_api.features = 0;
     if (ioctl(uffd, UFFDIO_API, &uffdio_api) == \-1)
-- 
2.42.0.459.ge4e396fd5e-goog

