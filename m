Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BE26E40796A
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 18:02:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233252AbhIKQDU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Sep 2021 12:03:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233245AbhIKQDT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Sep 2021 12:03:19 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F27AC061574
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:02:07 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id x6so7326169wrv.13
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:02:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Z4670zci1YSQe6FaWf13LSjLicKCfj8SrLnJ3bBJ8BY=;
        b=FmU2KSL35S83z585Xjffaxnrt/xcTFHCgMiE9qvMJAUDyAa7mtHargFz607M1OsjtB
         UgXx07+eZOIL9jC2bkNLnqtTAKdx/W8wcEnnWjTpaboTDZ+kQAuiS7e6xwer0cVX7dji
         vpb8s8z8404VoMAqwjX6QcUIyziXuvo2XQlarf4nsOhHmoFYshlLXolqmLsLu9wCnf80
         G5drlFV6K3AD1QmSwg7yYOv9tZ3bMevGleRr5CyIlZ7tYRJ65A+ryU5LELZpO26Mdwk7
         dkduiwd+ZjTpL2CWcfuTYstaFZ+iXS2R6ESSvYlczWS0T6HToPt7uF2KAivugYlnc7PB
         FRNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Z4670zci1YSQe6FaWf13LSjLicKCfj8SrLnJ3bBJ8BY=;
        b=l/Irbk5M5t7evwvYNdn+9y7WaAQ7tIi1KmFlCXkEi/orYWC0iXgCnE8kothT/9j3dS
         BcxQpP3FqGFtmbWI9c15+K3dU/1ig3HdBncojMyzjRFwV0LEtfgnFhhzBIpKhwzHoOsh
         zouXrcTAozh+SGge++MdxQHbwO1wRbvB6seepmIy7Ko7JaFIvKYOKR4GW0Fwm0r+1J9/
         0fCxkhSOEITM0X090DyLA3sULaqmaDBkLO4g6MjZ8HO04RpZvM3929a5DuRdO0cMtJuC
         5wFia7NfhQ5D5N4uXxwA95KYME2CS7fiTYWFpsqTZNvQFXQDXMjtyn7N6AuJyPDw82AO
         bcQw==
X-Gm-Message-State: AOAM530CGDSOYtssUL9XHzmBL1gh+0MghVIRzUc7rsoJ4Nw1sC4e0rPe
        Pokv4UJesMigxN7HyKdoPo2UkhLdk+o=
X-Google-Smtp-Source: ABdhPJwYj+H3VpCk50CXx2rn7LlqY6qz1OBxuSwHERu9jBaeBxxbpOYnB3f1BF/fyc5dHodiXxTyPw==
X-Received: by 2002:a05:6000:18c2:: with SMTP id w2mr3641622wrq.282.1631376125840;
        Sat, 11 Sep 2021 09:02:05 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i9sm1947313wmi.44.2021.09.11.09.02.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Sep 2021 09:02:05 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 43/45] socketpair.2: Add LIBRARY section
Date:   Sat, 11 Sep 2021 18:01:15 +0200
Message-Id: <20210911160117.552617-43-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210911160117.552617-1-alx.manpages@gmail.com>
References: <20210911160117.552617-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/socketpair.2 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man2/socketpair.2 b/man2/socketpair.2
index a799babda..c07c51fa2 100644
--- a/man2/socketpair.2
+++ b/man2/socketpair.2
@@ -42,6 +42,9 @@
 .TH SOCKETPAIR 2 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
 socketpair \- create a pair of connected sockets
+.SH LIBRARY
+Standard C library
+.RI ( libc ", " -lc )
 .SH SYNOPSIS
 .nf
 .B #include <sys/socket.h>
-- 
2.33.0

