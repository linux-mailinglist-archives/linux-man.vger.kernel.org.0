Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D40B940794A
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 18:01:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232985AbhIKQCy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Sep 2021 12:02:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232830AbhIKQCw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Sep 2021 12:02:52 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49981C06175F
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:39 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id l7-20020a1c2507000000b002e6be5d86b3so3458890wml.3
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=56GB2/CjPWHa4qODKqBXbu0IKs5q2VIgczfa91+jyIk=;
        b=X5olbR3cFfHsQ4pgCqvwXSDQNDmPtFjOZIk6hDIfXzwTHpp9lF2h683Hh81Va0sorS
         76x1VeyrCdZgZBeTZ5ahwCIQn5kYkxOdsGC0R9ZMKJ+ClIKLDCDQCKlAC1+czjdUtSkH
         SLWP5iIS/+hGi3Q5yFv1ELQWUGORU6yMOHWAU8fIx/t/Yxcptw5nxZB8RNUej+F/Roq5
         GronZnf2WZrtN9kWob8YdIyk9KU2IqDX4fogvzmdgi7EcIv40ejpLTZDQMNrx46SukfE
         jlMbcVO2wxuwq6d6DuryjeN+0vCS2y4R+DHulB8LiicyX1hUhe7KgktlAZqtm+ZoFhKl
         T1QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=56GB2/CjPWHa4qODKqBXbu0IKs5q2VIgczfa91+jyIk=;
        b=5AwHF8pI6J1fnN1wTQgves+1TewEHJblco4ae51R5KjxxWs4Hqi4rlWKM8Xr7R8KyF
         S0CZbOFVMy4usDta6La78hIoyiQpBnJkNOGLh61aRLx3RUZAyGB59QIOz3bb/cckHl4n
         THawIm9qZS5ijyGy8YpT23o0IPVO8xzYKdMyzZL0B618AQINml26haOXSBF9foYVsmrg
         DxvMZoE73ceP4kjO9CeeYVAmU/oDoMAJempTpoVSFVYRVhkbtdBstLaYpq9ZlmjmHYQ0
         VGX9DFGHSgyrQQ3zNL/aWSF03YQlvO2VMLmKgnaWNf5T34QHKd1be/WFlMxhxEPlobYz
         goQg==
X-Gm-Message-State: AOAM532RLSMlk2sYd1d4CP5QLNK3x3lyyzag/CyDdO4f9vhliWYeFzO9
        gy4s4MvQZstTSLaVDrlDNjs/d/DcykA=
X-Google-Smtp-Source: ABdhPJwyZxXp1Sr17DBowKacy913aRqVKSiBf52eHqgwlI2emTScQnb03SXP8SNonskri9fr1JbQ5Q==
X-Received: by 2002:a7b:c350:: with SMTP id l16mr3127279wmj.151.1631376097958;
        Sat, 11 Sep 2021 09:01:37 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i9sm1947313wmi.44.2021.09.11.09.01.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Sep 2021 09:01:37 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 11/45] vfork.2: Add LIBRARY section
Date:   Sat, 11 Sep 2021 18:00:44 +0200
Message-Id: <20210911160117.552617-12-alx.manpages@gmail.com>
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
 man2/vfork.2 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man2/vfork.2 b/man2/vfork.2
index cd59a374f..7a75469cf 100644
--- a/man2/vfork.2
+++ b/man2/vfork.2
@@ -29,6 +29,9 @@
 .TH VFORK 2 2021-03-22 "Linux" "Linux Programmer's Manual"
 .SH NAME
 vfork \- create a child process and block parent
+.SH LIBRARY
+Standard C library
+.RI ( libc ", " -lc )
 .SH SYNOPSIS
 .nf
 .B #include <unistd.h>
-- 
2.33.0

