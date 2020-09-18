Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 69F7B26FD18
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 14:46:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726635AbgIRMqq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 08:46:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39980 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726609AbgIRMqm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 08:46:42 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4DD5BC061756
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 05:46:42 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id k15so5482064wrn.10
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 05:46:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=sKdKTbN0Y0PdMXzN9kK4Mv/+Rjxr9R4yzSX9jANU71s=;
        b=kkhdrOBycTCZXVVsCAo7CJwvHlGSQY4srk4U239Bj/hOfcW6tAvFjeOeCfAWmtPgFo
         yOcyhfhBbF5qPokOBpoWRgkvK+pqBxnxIcuZ/vOmpI8VASFR6Z2/q2+Ou1Hzfit3V904
         jp7o83PIf/6o06KGHV9jvJUygOW0/9h5SdhgrMnob7xVDk4PxPxf+d6CjmQ0OlKy80uY
         ruG95dSQhUdDyyKnxPJuKlzbbLCnmGSCzDkD4D08AAu4rUttSBWGAlKChoZ6kFpuVTuu
         Itm57q51u6BU/MLtZEDVYZRDFKsirZcmIojucj00yFinLqOFLp2ER1qr1sLbp3wVgJCS
         qgvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=sKdKTbN0Y0PdMXzN9kK4Mv/+Rjxr9R4yzSX9jANU71s=;
        b=Z8+7pczJ9oH1+iCBbVEQ2bvD+UD9c5WClo1Y9ePQ1NINLcQWeuD5onKVyob1BOWUQa
         2io7kz0D6ifP+lh/2/44BURDHr0jc3zHD3FxgFMRl7tf0PR2Xu+txNZskRDI7OE0dWq/
         mGOj8+JMhyeJ9dHJwLdaWhBPvoY5nb+MfvyO7Ha5pxJAI/vcRK4zwq2bttRjp1EW+a1/
         XhtfiajOe4rjG3uqIRxSE267fj3a4sxvIqTokyiEIm/QVCi9twLkhhCaC4lC9cmUB44T
         JYsSjx5B2QYjPzTdLy1l+mb6q7QIrW/hHK0Dg7VUnjClj66c9hcH8o/pOsfALh7iLwLV
         gg9g==
X-Gm-Message-State: AOAM531Rg3EkrVc3IFrCtoZptucHrFWU/grGewNX0cTp7CYS7+HnbMld
        0wtfwRlatJ/kwONYGUtILic=
X-Google-Smtp-Source: ABdhPJxwB5+7/gZiE5P3iyhodWPKp5Do4NpiS2hiIBc6Hgub4XcBWtevRxdWoQNZgwGhSv6mwA6r3A==
X-Received: by 2002:adf:dd51:: with SMTP id u17mr37396830wrm.355.1600433201059;
        Fri, 18 Sep 2020 05:46:41 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id h76sm5254410wme.10.2020.09.18.05.46.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2020 05:46:40 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 1/4] system_data_types.7: wfix
Date:   Fri, 18 Sep 2020 14:45:52 +0200
Message-Id: <20200918124554.46308-2-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200918124554.46308-1-colomar.6.4.3@gmail.com>
References: <20200918124554.46308-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index dba80cf6f..8969ee966 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -350,7 +350,7 @@ struct timespec {
 };
 .EE
 .IP
-Describes times in seconds and nanoseconds.
+Describes elapsed time in seconds and nanoseconds.
 .IP
 Conforming to: C11 and later; POSIX.1-2001 and later.
 .IP
@@ -379,7 +379,7 @@ struct timeval {
 };
 .EE
 .IP
-Describes times in seconds and microseconds.
+Describes elapsed time in seconds and microseconds.
 .IP
 Conforming to: POSIX.1-2001 and later.
 .IP
-- 
2.28.0

