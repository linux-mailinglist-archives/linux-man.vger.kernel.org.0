Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 410473778E6
	for <lists+linux-man@lfdr.de>; Sun,  9 May 2021 23:44:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230045AbhEIVpd (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 9 May 2021 17:45:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229986AbhEIVp1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 9 May 2021 17:45:27 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5EC01C061574
        for <linux-man@vger.kernel.org>; Sun,  9 May 2021 14:44:21 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id v12so14543534wrq.6
        for <linux-man@vger.kernel.org>; Sun, 09 May 2021 14:44:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=3Tiw3LGhI2Ta/P64wPit7nQhs6mpjtBaiIgKAJLD0gI=;
        b=R4/51yczVvkfD16gkekK6mLGOULS9JnsvPONrhvfvOcookL6hJKjowUTxjhnAA46Sl
         2eRLdCq9g6UMJounlRwjy+vWVXFCvZr+lfzkdxJDyYHNESMINxGvXJ0YkSEq0qYTvEQs
         yNqMrqRcymA/COcN8NxbA6cShg8nYBIsuZJrAfvwyvedxZvoKW/TYGhnijWHRyGAcDp2
         p1sXDwadidn7JFNVPHa0xmvrflXf7WFTxKvKafsxFHjznw+r3N3tjYgGrh36VLIX5SUx
         grCzKcYcTbLq35jYJWD5NkF8+yEYyz2pA3eeAoG443PXhoznmIAocfSXL00mqQHn5JnB
         WQwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3Tiw3LGhI2Ta/P64wPit7nQhs6mpjtBaiIgKAJLD0gI=;
        b=JLgHtDaSNsh3a8gORO2RorvZf+us9o5SdlcyHBoHTkX/D2Mwk4wz0f+IDDm4hGtHnR
         9GvUrryWlFJaa1dxpSWpxXE5EH8IlxTbA2yacKArBpvJZFY1HE8X8QnZyBTlzYhkfQOt
         WUF0zcjFxJJAhyu8W+Ke7T/0+/HrF+AcgHJwBmdMiey+dAwIJK2PZCUYWP5mrt0C/hGT
         uyWEBOEMelHTsFHOswO4p5hlE3P8k9pH/mizXAbiHpk8L+6D1c1yP7VTNBfFT4aWCOZv
         aPhkmFRhnsNjnxgKrFhE1wsy8NohiyS+3qMySzS1t9JRnOcom4cENIXoB+N7qo2+PwS0
         2kHg==
X-Gm-Message-State: AOAM533AkCpiLqdsFQQ4yQsuHpyvrC8Wcac5M46PAFCSIhdNqnDPnCZL
        duqgjYYym6xIHxDz9gqYys4=
X-Google-Smtp-Source: ABdhPJykYFx9EEsUxLEgebnf72uIYINxO13PM5M2lubWG0ImHRRkizVJ024dlLwf6Sv9QJ+B89TpNA==
X-Received: by 2002:adf:e846:: with SMTP id d6mr26722123wrn.356.1620596660225;
        Sun, 09 May 2021 14:44:20 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u6sm16495530wml.6.2021.05.09.14.44.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 14:44:19 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        Debian man-pages <manpages@packages.debian.org>,
        "Dr . Tobias Quathamer" <toddy@debian.org>
Subject: [PATCH] .gitignore: Add file
Date:   Sun,  9 May 2021 23:39:29 +0200
Message-Id: <20210509213930.94120-35-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210509213930.94120-1-alx.manpages@gmail.com>
References: <20210509213930.94120-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Ignore everything new by default.

This avoids having to update the .gitignore when we need to ignore
something new.  It also avoids accidents that may add an unwanted
temporary file.

Cc: Debian man-pages <manpages@packages.debian.org>
Cc: Dr. Tobias Quathamer <toddy@debian.org>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 .gitignore | 13 +++++++++++++
 1 file changed, 13 insertions(+)
 create mode 100644 .gitignore

diff --git a/.gitignore b/.gitignore
new file mode 100644
index 000000000..9eb9fc096
--- /dev/null
+++ b/.gitignore
@@ -0,0 +1,13 @@
+# Ignore everything new by default
+/*
+
+# Ignore everything in man?/ that doesn't follow conventions (e.g., tmp files)
+!/man?/
+/man?/**
+!/man?/**.?
+
+# These files change name in each release
+!/man-pages*.Announce
+!/man-pages*.lsm
+
+!/scripts/
-- 
2.31.1

