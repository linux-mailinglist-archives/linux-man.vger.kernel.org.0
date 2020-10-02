Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3239B280FA2
	for <lists+linux-man@lfdr.de>; Fri,  2 Oct 2020 11:15:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726017AbgJBJPT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 2 Oct 2020 05:15:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725993AbgJBJPT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Oct 2020 05:15:19 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3FF50C0613D0
        for <linux-man@vger.kernel.org>; Fri,  2 Oct 2020 02:15:19 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id k10so958707wru.6
        for <linux-man@vger.kernel.org>; Fri, 02 Oct 2020 02:15:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=J/Nb5NAMoAfIQe5zVVsa6JNB4jpzwyWagLNz7L9trX0=;
        b=G/TlzswARQ2i4dFcB5esWsIQagQVDyXD8GaPKMLixpmhvtv7Op1iiFGk07JzCyzxri
         mLj7q2FlrbIkWIo+5TXSgqmb833c6GwKelJd2X8Pna00KiUy6V8OqiZoH93naCR8U9ej
         Z7KpvliFSk4FmFa19W3NlzzRlNzto2qTw7llaJ6LS8l175YEb6Jur7Sd5xheiH1dunQe
         +yp3wmqYl2Rrrg27hUHiUExe575ZOHq5pR5COKyqypVt39lGC3YjhAdZk5ce33myo+aO
         zqWRzq2q1QZukFMPTDLrqMzb3w970zvW/XYsOqFEAEfgUQnrmQ4IoWwSzxiRfZj18Unq
         gFDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=J/Nb5NAMoAfIQe5zVVsa6JNB4jpzwyWagLNz7L9trX0=;
        b=B/BwMnQUIaC2Z3y70doRfeeV161uYVj2qdFendvusJMQ05oOA2SrMf67ZtOG1puH3O
         iat6ml6JHxgVpWIALZ5AwotA0VO5TjpdvgjqJU9S0//1tuah2hSRki9hJzxqME25hA1f
         vUZr/OGi7AouASrqvkqSc8W4AeVf2BY/YMd8nz3ZDikC/kNb1WZU3iZBbVpxMEiWiEqe
         fkv3dJn/TGU/KlHijiiisYs3xlGz1bKRxkKfvO1AgptjDkBXZNmwClS+xv1eJhCC2sNS
         YtfbkxKhTiiL9GthdeL/EqO5X1s1b36x10C3HtAbE6LjJimBxlpm2PqMJBDNYYqsSkVK
         JH1w==
X-Gm-Message-State: AOAM532/s6TsY+G4LcFHyBsGhKr7HmMU4SLiPH0OpX0vKNF2ceM53+el
        7u4PUwG1UkfedkniOfmHlB/mETsPJYo=
X-Google-Smtp-Source: ABdhPJxBWb+qWMUFxrNfBVK2PNZSAsLGVt/ES5AwDG+RD60QuHis2zoYpgaDV8qy4wPG6mAEf9OzyA==
X-Received: by 2002:a5d:4dcb:: with SMTP id f11mr1858510wru.163.1601630117935;
        Fri, 02 Oct 2020 02:15:17 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id u127sm1132784wmu.48.2020.10.02.02.15.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Oct 2020 02:15:17 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] system_data_types.7: Remove duplicate reference
Date:   Fri,  2 Oct 2020 11:15:05 +0200
Message-Id: <20201002091504.14172-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 1 -
 1 file changed, 1 deletion(-)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index 3cf3f0ec9..aab64e002 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -1192,7 +1192,6 @@ since POSIX.1-2008.
 See also:
 .BR read (2),
 .BR write (2),
-.BR memcmp (3),
 .BR fread (3),
 .BR fwrite (3),
 .BR memcmp (3),
-- 
2.28.0

