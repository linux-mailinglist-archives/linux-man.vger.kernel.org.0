Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 06F182B3AB3
	for <lists+linux-man@lfdr.de>; Mon, 16 Nov 2020 01:18:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728119AbgKPASi (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 15 Nov 2020 19:18:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727701AbgKPASi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 15 Nov 2020 19:18:38 -0500
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3AE8C0613CF
        for <linux-man@vger.kernel.org>; Sun, 15 Nov 2020 16:18:37 -0800 (PST)
Received: by mail-wm1-x341.google.com with SMTP id 10so22239440wml.2
        for <linux-man@vger.kernel.org>; Sun, 15 Nov 2020 16:18:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=3DlKR7zqtT8ZfvO/73N/xOaFSc18Aj/m7mqKaRiPd+A=;
        b=Ug5WDbiuuB+lzYvwnbTYkEQeN0UOmMLknXGmcgkZWrk/DObqp3bRV/O+At6xWINFxI
         hIgqb7k5L0nNp8lLnuT6lRczsuK3pOIfdqkAWHJTRa3daB6bmBIOdFJUVlB9Vvx/Mbrb
         +PLqWrhTmnAB9YP4duQn2Q/LobQSXrPp3x2z0TopulRqdb/cO0+0ofPKc863y4toNaMC
         IiGD0okrISuwlOVmyjpwW6K78fePt/CNk/TlnAQ+qrC4oDQB2xLJjIN6JQkyU/a7bOPf
         ER5wwM2Ra6gDwz+D5oiQR9OcM1RpmgO0ALaTa5SCumESYCFLAzPYd2jb1ijl8HXElVLJ
         cBiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3DlKR7zqtT8ZfvO/73N/xOaFSc18Aj/m7mqKaRiPd+A=;
        b=gJmLZNPeSliTyiPM1/gD2j57/CHT67iVD2vjm91EmA3yDgXC1YDzT2/IHkjgra775f
         +P2mymKmBGMn3ank8blyCCVOmoksuz6SzGA8IQRJF9foEv6mp5JiYxOdja1XBVfdGgoi
         neGu0coI2hXLBnrFChroeme8Y3GLpKr/WSLk8ShQS+WM0t0JgPpTNrpXQtkfa/lSGBwD
         ZxoZK85ZKeZj11e2cvmlfFXPdKeNowht/7+lQFa7JxQfu5E8i9l1sYq6RupQtZ21aFrI
         Eksfm6+BxOMYmKLH9J0aPhnAEsS/Vud4h3lZxqAQ/nx75wP1BgU482MM6a3uQgk5vYSq
         oaEA==
X-Gm-Message-State: AOAM531CHI8pmTp1smUsinvrPmLcNypx9NpMaDvcL2OYNFzZFJ0EIX+A
        Tm2sjCpgis3+CeC7dSpoML7A5WpQMx7A3w==
X-Google-Smtp-Source: ABdhPJxobiNbhhI9P9gMqST6fNF+1nX+2L34l4Gu82WhM8PdppTCVSTGQohgGj/5i4DupDYPj73idQ==
X-Received: by 2002:a1c:2041:: with SMTP id g62mr12995700wmg.118.1605485916395;
        Sun, 15 Nov 2020 16:18:36 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id z6sm17133076wmi.1.2020.11.15.16.18.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Nov 2020 16:18:35 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH v2] Add script to get modified pages for commit msgs
Date:   Mon, 16 Nov 2020 01:16:35 +0100
Message-Id: <20201116001634.3663-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201115230807.1994-1-alx.manpages@gmail.com>
References: <20201115230807.1994-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The script can be used this way:

git commit -sm "$(./scripts/modified_pages.sh): Short commit msg"

And then maybe --ammend and add a longer message.

This is especially useful for changes to many pages at once,
usually when running a script to apply some global changes.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---

Now it will also include new files and deleted files.

 scripts/modified_pages.sh | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)
 create mode 100755 scripts/modified_pages.sh

diff --git a/scripts/modified_pages.sh b/scripts/modified_pages.sh
new file mode 100755
index 000000000..c6bc064a4
--- /dev/null
+++ b/scripts/modified_pages.sh
@@ -0,0 +1,27 @@
+#!/bin/bash
+
+## Usage:
+## git commit -m "$(./scripts/modified_pages.sh): Short message here"
+##
+## How it works:
+## 1) Read git status.
+## 2) Staged changes are always before "Changes not staged for commit".
+##    Cut from that point to not include pages not staged for commit.
+## 3) Keep only lines containing "modified:" or "deleted:" or "new file:"
+##    (each of those is a changed file)
+## 4) Keep only the path, replacing git text by ", ".
+## 5) Keep only the basenames of the files in 'man?/'.
+## 6) Remove any newline characters.
+## 7) Remove the comma before the first file
+##
+## The result is a list of all files with changes staged for commit,
+## separated by ", ".
+
+
+git status							\
+|sed "/Changes not staged for commit:/q"			\
+|grep -E "^\s*(modified|deleted|new file):"			\
+|sed "s/^.*:\s*/, /"						\
+|sed "s%man[1-9]/%%"						\
+|tr -d '\n'							\
+|sed "s/^, //"
-- 
2.29.2

