Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 89EA0295E9D
	for <lists+linux-man@lfdr.de>; Thu, 22 Oct 2020 14:39:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2504479AbgJVMjL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 22 Oct 2020 08:39:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2898426AbgJVMiz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 22 Oct 2020 08:38:55 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCDFDC0613D5
        for <linux-man@vger.kernel.org>; Thu, 22 Oct 2020 05:38:54 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id e17so2174263wru.12
        for <linux-man@vger.kernel.org>; Thu, 22 Oct 2020 05:38:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=cJH66i8JbJ5zqp7/bgVDCo9vmeEg1eg288jzzpJqt1s=;
        b=pElfXpmZu/Qk2oEk7TQCC+KmhBMK584T4XBd30TrKOLRMO1625gCErbarIsmaIo7Qf
         ZKTOoy17HBRxtMzpRY4bz8op8Exr/pp/qGLLb1nlqC3KF60rRN1avJo6JQvXwvzehxCQ
         3/TPOGsZtShyJ11/E85V/W2jKRg8a6swTEfB/XsZe9ZeczmJPI/EwAfTKNrwiu048oE8
         dtvNy3QQqRF14z9lmKlqEPpgZo5MmYyFFIkRBhxb5QfzIbWDl7gm7IYfRCoCvxay7qDh
         kz6GnUBEzLEVbD9QWCjpLsHz8LtukYvbUs3jPpj+9UCy1nBXy97d0Boqy1sm/NeXZG7t
         LbiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=cJH66i8JbJ5zqp7/bgVDCo9vmeEg1eg288jzzpJqt1s=;
        b=qDH0wsBh9qJk5+fYILH6N3T0d3wRVEQEoyN7kibXcKYV3ZKeo88q+c7T6kEXnx7Q7I
         7TSRM5RLoUbmdyH6U/hoYwkLfwQ+eZ8dsLVtU8lLshPq+WMElbKsUz/+3Oz7eGp2Skzx
         yYhk1mBfy6J5duh5my9qDVoDt5a5guNkt/vUTvzy2ePuzVaj5kX7pXXwA86PIRFnpDxt
         gdX0EaanlVkG4sJVPjY9ddRoRybC9rYTRel1NN+mhw/9ZBEDtJ2AfLn+IqabD9MJIa64
         axCDsizmU1R6yOr39giwjNHpDkvMZmzEqZkCbctLSBMgROQg+TH+TKIGqCfmb6QzaUS9
         X0xQ==
X-Gm-Message-State: AOAM531vH2ZZYNVzFCAsL7pwBN7HHWQ7rVmYrPhM+Jm7MTSqGVxB56Dv
        SceKhJatb6atDTpSb7g9zUqXrnrrQ4w=
X-Google-Smtp-Source: ABdhPJzeCT2Gy8jbHqHKTK6jEssPiCaJM/EiXt2vmQChzOYFd6Jqx0xgsbobYxz9/tzL/VGoOifauw==
X-Received: by 2002:adf:97da:: with SMTP id t26mr2459960wrb.321.1603370333616;
        Thu, 22 Oct 2020 05:38:53 -0700 (PDT)
Received: from debian-VLC.home ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id m1sm3573883wme.48.2020.10.22.05.38.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Oct 2020 05:38:53 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 03/10] queue.3, slist.3: SYNOPSIS: Move code from queue.3 to list.3
Date:   Thu, 22 Oct 2020 14:38:15 +0200
Message-Id: <20201022123821.22602-4-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201022123821.22602-1-colomar.6.4.3@gmail.com>
References: <20201022123821.22602-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/queue.3 | 18 ------------------
 man3/slist.3 | 18 ++++++++++++++++++
 2 files changed, 18 insertions(+), 18 deletions(-)

diff --git a/man3/queue.3 b/man3/queue.3
index 8fc10892a..3f8ca65f2 100644
--- a/man3/queue.3
+++ b/man3/queue.3
@@ -101,24 +101,6 @@ lists, tail queues, and circular queues
 .Sh SYNOPSIS
 .In sys/queue.h
 .\"
-.Fn SLIST_EMPTY "SLIST_HEAD *head"
-.Fn SLIST_ENTRY "TYPE"
-.Fn SLIST_FIRST "SLIST_HEAD *head"
-.Fn SLIST_FOREACH "TYPE *var" "SLIST_HEAD *head" "SLIST_ENTRY NAME"
-.\" .Fn SLIST_FOREACH_FROM "TYPE *var" "SLIST_HEAD *head" "SLIST_ENTRY NAME"
-.\" .Fn SLIST_FOREACH_SAFE "TYPE *var" "SLIST_HEAD *head" "SLIST_ENTRY NAME" "TYPE *temp_var"
-.\" .Fn SLIST_FOREACH_FROM_SAFE "TYPE *var" "SLIST_HEAD *head" "SLIST_ENTRY NAME" "TYPE *temp_var"
-.Fn SLIST_HEAD "HEADNAME" "TYPE"
-.Fn SLIST_HEAD_INITIALIZER "SLIST_HEAD head"
-.Fn SLIST_INIT "SLIST_HEAD *head"
-.Fn SLIST_INSERT_AFTER "TYPE *listelm" "TYPE *elm" "SLIST_ENTRY NAME"
-.Fn SLIST_INSERT_HEAD "SLIST_HEAD *head" "TYPE *elm" "SLIST_ENTRY NAME"
-.Fn SLIST_NEXT "TYPE *elm" "SLIST_ENTRY NAME"
-.\" .Fn SLIST_REMOVE_AFTER "TYPE *elm" "SLIST_ENTRY NAME"
-.Fn SLIST_REMOVE_HEAD "SLIST_HEAD *head" "SLIST_ENTRY NAME"
-.Fn SLIST_REMOVE "SLIST_HEAD *head" "TYPE *elm" "TYPE" "SLIST_ENTRY NAME"
-.\" .Fn SLIST_SWAP "SLIST_HEAD *head1" "SLIST_HEAD *head2" "SLIST_ENTRY NAME"
-.\"
 .Fn STAILQ_CONCAT "STAILQ_HEAD *head1" "STAILQ_HEAD *head2"
 .Fn STAILQ_EMPTY "STAILQ_HEAD *head"
 .Fn STAILQ_ENTRY "TYPE"
diff --git a/man3/slist.3 b/man3/slist.3
index d2f1fac66..48bce3dc4 100644
--- a/man3/slist.3
+++ b/man3/slist.3
@@ -49,6 +49,24 @@
 .Nm SLIST_REMOVE ,
 .\" .Nm SLIST_SWAP ,
 .SH SYNOPSIS
+.Fn SLIST_EMPTY "SLIST_HEAD *head"
+.Fn SLIST_ENTRY "TYPE"
+.Fn SLIST_FIRST "SLIST_HEAD *head"
+.Fn SLIST_FOREACH "TYPE *var" "SLIST_HEAD *head" "SLIST_ENTRY NAME"
+.\" .Fn SLIST_FOREACH_FROM "TYPE *var" "SLIST_HEAD *head" "SLIST_ENTRY NAME"
+.\" .Fn SLIST_FOREACH_SAFE "TYPE *var" "SLIST_HEAD *head" "SLIST_ENTRY NAME" "TYPE *temp_var"
+.\" .Fn SLIST_FOREACH_FROM_SAFE "TYPE *var" "SLIST_HEAD *head" "SLIST_ENTRY NAME" "TYPE *temp_var"
+.Fn SLIST_HEAD "HEADNAME" "TYPE"
+.Fn SLIST_HEAD_INITIALIZER "SLIST_HEAD head"
+.Fn SLIST_INIT "SLIST_HEAD *head"
+.Fn SLIST_INSERT_AFTER "TYPE *listelm" "TYPE *elm" "SLIST_ENTRY NAME"
+.Fn SLIST_INSERT_HEAD "SLIST_HEAD *head" "TYPE *elm" "SLIST_ENTRY NAME"
+.Fn SLIST_NEXT "TYPE *elm" "SLIST_ENTRY NAME"
+.\" .Fn SLIST_REMOVE_AFTER "TYPE *elm" "SLIST_ENTRY NAME"
+.Fn SLIST_REMOVE_HEAD "SLIST_HEAD *head" "SLIST_ENTRY NAME"
+.Fn SLIST_REMOVE "SLIST_HEAD *head" "TYPE *elm" "TYPE" "SLIST_ENTRY NAME"
+.\" .Fn SLIST_SWAP "SLIST_HEAD *head1" "SLIST_HEAD *head2" "SLIST_ENTRY NAME"
+.\"
 .SH DESCRIPTION
 .SH RETURN VALUE
 .SH CONFORMING TO
-- 
2.28.0

