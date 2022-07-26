Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 950275812D4
	for <lists+linux-man@lfdr.de>; Tue, 26 Jul 2022 14:08:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232810AbiGZMIy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 26 Jul 2022 08:08:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232268AbiGZMIx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 26 Jul 2022 08:08:53 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 088FD14008
        for <linux-man@vger.kernel.org>; Tue, 26 Jul 2022 05:08:53 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id b21-20020a05600c4e1500b003a32bc8612fso8035218wmq.3
        for <linux-man@vger.kernel.org>; Tue, 26 Jul 2022 05:08:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Muu1pgkcAC7k7MOOpdmG6tISKGxRTtrsXtfu3eJ1ZYg=;
        b=aOfeIjlY9iztWCaic5CxJZ+LD7oyj0Q1hdBNSl2kccFjPCkI2UJIQFZHKiY7lm+D5b
         NplyzRZah/AhXbcuoZhdj2902hvMHlYqn7Os7oMPLPnd2fvS9M8IbUUb/LevvOVOC96T
         Z6ul6qddBZwrdlYQuseF8MmNifGrZKCR+5h7m42MK1B6yVk5AGiuhWnst2GKDCtIRkPn
         axkGHLPq7rVZC0MA5hDLGK6T7zrUsSnpxM6gj3hjytvANbLLALsV8aOXCHoo+c1Tw1pw
         sKvwagUSUHsu/kWr0SRQx1FmgUoLV3wXvBj9jyGCnFBFcusG70mkCoF0rZpIeELuWJOV
         27uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Muu1pgkcAC7k7MOOpdmG6tISKGxRTtrsXtfu3eJ1ZYg=;
        b=K7T6TpMGY/GPivsd52ZI6pWd7RP2ybdJF9RUEHrsjGG0XUEdkGiY2/Zd2LvYIb8cz7
         zH5qoQaUfSzyclhY2OulGMREn219BbSgvECZXObsUczqoaXiD5nCy5b/mGP5Vd7k3vw3
         UkJqzeJBFWUN7WhiovLjKd46b4f+Rhy3d7GjdJyLbz2KapjDrDJZZs5gC+wcpFDdBaQZ
         zUAIjjRAdUQGWumMbfuS+tsC78Wn5gXXdXciOg0WMqFVkzLAL+9CdGxNAt0mrhch0D3p
         lFRzck8R+ydr6ckJJCsLiyZpIDHO9v3GGwTi6bf+TyxZdbVNM86SQ/UvjFNG0/Gifw9x
         RtDw==
X-Gm-Message-State: AJIora/9EkoslnSwFw2mDhn9mv62y/oWFnegx1qDnP4pkXuQIAxikr0H
        a0yQChLTomULhgmrEGvytHc=
X-Google-Smtp-Source: AGRyM1tLgJhhX7KwPaC9xmLEHyIiskH1pasX+j1rHsNfxY2BwJw9CzDNvP4S7rCx4F5x2dFp3ohbJw==
X-Received: by 2002:a7b:c4cc:0:b0:3a3:2123:8c1b with SMTP id g12-20020a7bc4cc000000b003a321238c1bmr24456063wmk.180.1658837331516;
        Tue, 26 Jul 2022 05:08:51 -0700 (PDT)
Received: from asus5775.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id k6-20020a5d5186000000b0021e571a99d5sm13687006wrv.17.2022.07.26.05.08.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Jul 2022 05:08:51 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     Ingo Schwarze <schwarze@usta.de>, linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH] man-pages.7: Document CAVEATS section
Date:   Tue, 26 Jul 2022 14:08:18 +0200
Message-Id: <20220726120817.100462-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1228; h=from:subject; bh=4D833J5Rb7VfaoEmsGFXdcHWISl6urCn6OI08/lxj4E=; b=owEBbQKS/ZANAwAKAZ6MGvu+/9syAcsmYgBi39kuaHC1J9PPxuIkpd/zPndnfLAKh+3YXii/AXVx zz54tlCJAjMEAAEKAB0WIQTqOofwpOugMORd8kCejBr7vv/bMgUCYt/ZLgAKCRCejBr7vv/bMv72D/ 4nxZZAhlMe4XFL4k3D0H+wqdphZumIjEGr08ixQoTjh9oRL2vnXt7WKdAA4kRwohu6hObuusBSrCjd 8TnWCWAmrLMOZaIhu/1zQCPx+oN9YK13238tXYOvr+OapzbFhz9X9rGx5UcPMlzJsh4DW/9BSBHoaj d7UrpKN2WwNBVGiQR13YI5K5rBlEJDTvI46bFTPuVlW63vzOWyn+p5o7TQbEG82xnkPJHOMNrM1dq/ MfNq9J0o0uEQ8VkUlr/0vi9VtWBhRlfQNsMQAflohq+s8UfoHwz2M0nwcBMJvzHkX45UWZPUQV9HGq +ocvee4ieSGmKzCZ0XQYd2PwLluTExoZzP/FCaDMoUz/3/zyHWeg0ESgtScOxqMgQeofVkQ49Yo3/Z 0bLiil+mr+iB3b2MIBcICO1NIN8NC5rZAlRyk2OcIcJbcdKbXRHaSNdxpbFVzyUl0BhqMIrPK/3ZUt hIlzYN1vntoTHZFOJRv+O4d27pKvbIvU5hcrKjrrePy8ki9UK5Kfyey0QEQ1LAoLRZ1iiklPNkqa2s M9nFbDuoo5KuV84CiS1aOQM5STMRDVXFXsP/HQjOIgohXiYODq+8d6gseVX/llHj9mql1CuErKaynf S7QgsnJHOknHVUMzBldB1fKL/XA6SPd3bZpxz5KKEYU07grs5EpZqYS5FlYQ==
X-Developer-Key: i=alx.manpages@gmail.com; a=openpgp; fpr=A9348594CE31283A826FBDD8D57633D441E25BB5
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

CAVEATS is an interesting section from OpenBSD.  There's a slight
difference between CAVEATS and BUGS.  We usually have a hard time
fitting what would go into CAVEATS into other sections (usually
BUGS and NOTES); it would be easier if we had the section.  Let's
add it.

Reported-by: Ingo Schwarze <schwarze@usta.de>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man7/man-pages.7 | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/man7/man-pages.7 b/man7/man-pages.7
index 99bfa400f..e88b98ddb 100644
--- a/man7/man-pages.7
+++ b/man7/man-pages.7
@@ -174,6 +174,7 @@ VERSIONS	[Normally only in Sections 2, 3]
 ATTRIBUTES	[Normally only in Sections 2, 3]
 CONFORMING TO
 NOTES
+CAVEATS
 BUGS
 EXAMPLES
 .\" AUTHORS sections are discouraged
@@ -421,6 +422,10 @@ to mark off notes that describe the differences (if any) between
 the C library wrapper function for a system call and
 the raw system call interface provided by the kernel.
 .TP
+.B CAVEATS
+Warnings about typical user misuse of an API,
+that don't constitute an API bug or design defect.
+.TP
 .B BUGS
 A list of limitations, known defects or inconveniences,
 and other questionable activities.
-- 
2.36.1

