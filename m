Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CA04C3E39A4
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 10:42:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231360AbhHHImU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 04:42:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45452 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231356AbhHHImT (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 04:42:19 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C668C061760
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 01:42:00 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id b128so8444169wmb.4
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 01:42:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=r8X/ePkqMBtK6G4DSkpYjyZEJp8487wRTQjiqVIPedA=;
        b=W0qM3wRrgIXZiRvXbgMGbXg8PnDRiuVU4bq3Fxhn1FFTH/NY9F17Ajlyg21CCddHcV
         3gPk3x6kZIKNztCUrlpKojVPArxyYsj+zNUnW+nkY9HkYY5jawEX7ZmxRe54IKnjP8xL
         8lmdycYrIetEQEudw0235MmXwUWL+uF0GiEhtyhnFKuYz6Oa7y6PqJQqJ8ZCYfUFTQrh
         K00E/sjpHoE9A0EroHjwEmL+TlIu6lbKSZqTBfcrySyGFMrkquxKlXM6o9fQi3vcpav6
         tLhDsQMYkKYh9v56Eh7X1lFmtuKAgVEHqUL+Q/aWi6PYuXoge5qYc/sVSGdlt5zuTbSU
         mWow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=r8X/ePkqMBtK6G4DSkpYjyZEJp8487wRTQjiqVIPedA=;
        b=nqiHxmXHlEKvqGyH0NBDrdxR9TxaCUeGBxKqNnd7CTfBjT/f74uwrTeRnrb5DpVwtc
         6cJvK7nd5uJ+tZ+0UckzxO7R0BV7zIup2li8UD5v/EjNyci/UnaTbZBeCUk2vJe+njjX
         05ccC9WtNod//jtNgGRCQxxOi0wDhiBgsjzg4PK9RbfofrjajXodxwa1LLxOUFfMy7bY
         ewztYtwwTU7GvT0c1/iNaUi3XsaPuSIfo2RdbEuEG59jFhbVXH5mUfcINcKNd82E01Bt
         OJILZqDtJvcYdbzbSO7LYaB3eHySXWije5Lu3iNQQeFvIlxAOBOWitZACE0VqwlsY7Ld
         QLLw==
X-Gm-Message-State: AOAM531v15Y8k1LWl1QONJmOBAfrsHd8qJ3Q5wRAo30hs3+dWOGpKkJ+
        trHbt0PVeP3To9xyVQmHIfw=
X-Google-Smtp-Source: ABdhPJw/bG2BvdRr6QW7+pjykg7a97nLMr/kOAEArNGPIoZqj+1+yhwqKXAHWg3C8WlN8FajAZyffw==
X-Received: by 2002:a05:600c:2942:: with SMTP id n2mr10935609wmd.161.1628412118965;
        Sun, 08 Aug 2021 01:41:58 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id h12sm15592004wrm.62.2021.08.08.01.41.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Aug 2021 01:41:58 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 16/23] man-pages.7: wfix
Date:   Sun,  8 Aug 2021 10:41:26 +0200
Message-Id: <20210808084133.734274-17-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210808084133.734274-1-alx.manpages@gmail.com>
References: <20210808084133.734274-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: "G. Branden Robinson" <g.branden.robinson@gmail.com>

Saw this while preparing the "switch to \~" change Alex invited.

Signed-off-by: G. Branden Robinson <g.branden.robinson@gmail.com>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man7/man-pages.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/man-pages.7 b/man7/man-pages.7
index 6cb805343..3819dfd97 100644
--- a/man7/man-pages.7
+++ b/man7/man-pages.7
@@ -638,7 +638,7 @@ makes it easier to write tools that parse man page source files.)
 .SS Use semantic newlines
 In the source of a manual page,
 new sentences should be started on new lines,
-and long sentences should split into lines at clause breaks
+and long sentences should be split into lines at clause breaks
 (commas, semicolons, colons, and so on).
 This convention, sometimes known as "semantic newlines",
 makes it easier to see the effect of patches,
-- 
2.32.0

