Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4F52633A059
	for <lists+linux-man@lfdr.de>; Sat, 13 Mar 2021 20:27:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234433AbhCMT0a (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 13 Mar 2021 14:26:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234345AbhCMTZ4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 13 Mar 2021 14:25:56 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1249EC061574;
        Sat, 13 Mar 2021 11:25:56 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id g8so5746004wmd.4;
        Sat, 13 Mar 2021 11:25:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=yQXEtfeyKUnkSglVrznV/SHCCMXJyKxnW8hgUwKGmHg=;
        b=QkWox1cW8ob5y/CvxM7WzzFG/s4AfTfmOF7TBZ2k2XafbvzNjw0WufIwQfaYSWY07i
         Aa38msogLr7uzQkXvVdW4OO/3WGLiWW/CzlRc8Gm1VCMXcJyVlOMLmr9N6Y8TuRnf6ql
         mxERd5YN8iGz9spJBwezLI/ev0vrKPDM6EU8LJpNCxg/0FrLkkvoB9w3AVzmJk/M7OC/
         Hcget2NAzTtW/5NSogm15diNmYabq0N6lo451DQd/SzbQr8kf44Y4asYGvNB3ZVLdg/S
         HC5KvKaxbI0Fu/3JyG7BRkZrbcz9ZVzApFJiuj0zcgEqehez4EkFt7nlPFlxEnPx/GjD
         p+lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=yQXEtfeyKUnkSglVrznV/SHCCMXJyKxnW8hgUwKGmHg=;
        b=ee6FBuybFBZt3BUiGlRyU0C6tSdwXFIJCTIzuE073Vp0VQYRW6ffHp8RuwwSgc+rQn
         B0o0t/K5pn3811/GbgqR6rgvuLAl+Z0oA3LirdvNxBdgGUL76NPDm/CQxMBCQGJgJonW
         aV7li19j8cRdIPc+g1/nafgmIhJyYIKxUCnJxu8CPBXU+/7EnA4bjG5qX9Ghb7xKYDI/
         kzZyVBYNz4eGWAoiqeyFi4zRNIqnev7raFIt/0DSY4x2ghbCEaNGSdq8MEUuxVXVvu36
         y3wSq9ruHVaYlDjaxRh12kEfq96/lMN8gaD6dQgcQrNByXJ6zOUttNBkhhXhXT/tlW99
         Us2Q==
X-Gm-Message-State: AOAM533eNpqpZuPSWPbjvXW1Mq8HSdrNomW0WW5HFTM9af8TGZKxwo7s
        n7DrLKeT5zEuVwcpYBV4xCNjQXjc4Py97g==
X-Google-Smtp-Source: ABdhPJzMA2rcRrGgKxTV5GfVy9NgQlIob38w90BYyCIiZfU+6RHUpQs/sOvXP6n0OAqSljiKymag+Q==
X-Received: by 2002:a7b:c084:: with SMTP id r4mr18907694wmh.166.1615663554835;
        Sat, 13 Mar 2021 11:25:54 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id j136sm7670964wmj.35.2021.03.13.11.25.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Mar 2021 11:25:54 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        linux-kernel@vger.kernel.org, Florian Weimer <fweimer@redhat.com>
Subject: [RFC v3 07/17] delete_module.2: wfix
Date:   Sat, 13 Mar 2021 20:25:17 +0100
Message-Id: <20210313192526.350200-8-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210214133907.157320-1-alx.manpages@gmail.com>
References: <20210214133907.157320-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Use the same wording as in delete_module(2) for this special case.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/delete_module.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/delete_module.2 b/man2/delete_module.2
index cb78cf484..50921d7ba 100644
--- a/man2/delete_module.2
+++ b/man2/delete_module.2
@@ -31,7 +31,7 @@ delete_module \- unload a kernel module
 .fi
 .PP
 .IR Note :
-There is no glibc wrapper for this system call; see NOTES.
+No declaration of this system call is provided in glibc headers; see NOTES.
 .SH DESCRIPTION
 The
 .BR delete_module ()
-- 
2.30.2

