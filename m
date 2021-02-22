Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B01AC3219D6
	for <lists+linux-man@lfdr.de>; Mon, 22 Feb 2021 15:12:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231560AbhBVOK2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 22 Feb 2021 09:10:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54622 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231969AbhBVOKH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 22 Feb 2021 09:10:07 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6FDBEC061786
        for <linux-man@vger.kernel.org>; Mon, 22 Feb 2021 06:09:26 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id f137so529993wmf.3
        for <linux-man@vger.kernel.org>; Mon, 22 Feb 2021 06:09:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Kt3nZDDEnOdSKR5hm0npa0Gv4OkBt3Z85eOxvZUFzCQ=;
        b=KEzezGt8XVT9goU+6C3dFRKrwSf556MXK+i4OvRumZ1aAbW9ZZ/9ROe72k1+xV0Tsq
         BBbTMHaQWDYhTyHglstZHGM21L9Q8HdunbA8BKBAzCIVWfethluQYuEy8YzS8ihcIPx6
         QbOZ3izLJpYGdY1m03pxxS97tgpn0EGeikytBPlWCnbXj84UC2+P2Q6d9nc2ylE7c5PV
         MoiNEr8wVlqwiOuawUv98nT+LdOtonSylyIpSrYjUcpcxH/xy41agLvu3wRr+VdBtvC1
         +tf1kce0SICzLIjljK1r2PLkdtpFWLvPv5VnOhlnQXODpcgox4LPOvGOaQcNVeKI6iGt
         laPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Kt3nZDDEnOdSKR5hm0npa0Gv4OkBt3Z85eOxvZUFzCQ=;
        b=JESg7/FZATM9nK7BeIGw6tEwRxrhf9gbcj82IRDh6lti6YRiC4gGHuCZxLvis96seJ
         0m1kgmQ0Ony+4pc1u2QfswZM9r+qQptb42J7Kha9S2xt/0mWhE4Y4HKCrOsOS+K7PhX/
         0sz/jh+W2gdB/k9jpDrJwUyrL5DGMTq+2Sc+1U0GdT5JifBvaoqVDDYpF2Qy+KlxaO4S
         UCf3fwKmKTln1nNA/gAL5l3pkCZ8aswC8+wWDKivdQ+JW9o/7HZMTI8kc4aoXO+Ab0Jf
         AikAxxUBkGfW6kXvzT7+F7Yl3sH0WmuHBzcwUM9GDuVkzjWf8Pe8aC8da2wOjOmLXgif
         8Pbg==
X-Gm-Message-State: AOAM530LgtZKB2sqdQGNYN4DfSZZ9qM/468T+MMdodutDqxwCXFE55b/
        A25nPDJr0pYWYWH4cmX5cLS7ojk4E0YLzg==
X-Google-Smtp-Source: ABdhPJx3cRa5hiuRKqapQPZV4OwIui1jNGYmPGWBk3ZiHPPRnkW8QPdtuZJP0RVajAXW6RsvOHJ9YA==
X-Received: by 2002:a1c:7fc6:: with SMTP id a189mr8639261wmd.169.1614002965207;
        Mon, 22 Feb 2021 06:09:25 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id v9sm2554529wrt.76.2021.02.22.06.09.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Feb 2021 06:09:24 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] scripts/bash_aliases, scripts/modified_pages.sh: Move scripts/modified_pages.sh to a function man_gitstaged()
Date:   Mon, 22 Feb 2021 15:03:45 +0100
Message-Id: <20210222140344.3862-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

This allows calling the function from anywhere in the git tree,
without having to calculate the relative route to the script.
It also makes more sense for this piece of code to be a function
than a script.

Minor changes: replace <"> by <'>.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 scripts/bash_aliases      | 17 ++++++++++++++++-
 scripts/modified_pages.sh | 34 ----------------------------------
 2 files changed, 16 insertions(+), 35 deletions(-)
 delete mode 100755 scripts/modified_pages.sh

diff --git a/scripts/bash_aliases b/scripts/bash_aliases
index c0c8bc33e..127ed5d08 100644
--- a/scripts/bash_aliases
+++ b/scripts/bash_aliases
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 ########################################################################
 #
-# (C) Copyright 2021, Alejandro Colomar
+# (C) Copyright 2020, 2021, Alejandro Colomar
 # These functions are free software; you can redistribute them and/or
 # modify them under the terms of the GNU General Public License
 # as published by the Free Software Foundation; version 2.
@@ -147,6 +147,21 @@ function pdfman()
 	xdg-open ${tmp};
 }
 
+#  man_gitstaged  prints a list of all files with changes staged for commit
+# (basename only if the files are within <man?/>), separated by ", ".
+# Usage example:  .../man-pages$ git commit -m "$(man_gitstaged): msg";
+
+function man_gitstaged()
+{
+	git status							\
+	|sed '/Changes not staged for commit:/q'			\
+	|grep -E '^\s*(modified|deleted|new file):'			\
+	|sed 's/^.*:\s*/, /'						\
+	|sed 's%man[1-9]/%%'						\
+	|tr -d '\n'							\
+	|sed 's/^, //'
+}
+
 ########################################################################
 #	Glibc
 
diff --git a/scripts/modified_pages.sh b/scripts/modified_pages.sh
deleted file mode 100755
index f6c4a6cea..000000000
--- a/scripts/modified_pages.sh
+++ /dev/null
@@ -1,34 +0,0 @@
-#!/bin/bash
-
-## SPDX-License-Identifier: GPL-2.0-only
-########################################################################
-##
-## (C) Copyright 2020, Alejandro Colomar
-## This program is free software; you can redistribute it and/or
-## modify it under the terms of the GNU General Public License
-## as published by the Free Software Foundation; version 2.
-##
-## This program is distributed in the hope that it will be useful,
-## but WITHOUT ANY WARRANTY; without even the implied warranty of
-## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-## GNU General Public License for more details
-## (http://www.gnu.org/licenses/gpl-2.0.html).
-##
-########################################################################
-##
-## The output of this script is a
-## list of all files with changes staged for commit
-## (basename only if the files are within "man?/"),
-## separated by ", ".
-## Usage:
-## git commit -m "$(./scripts/modified_pages.sh): Short message here"
-##
-
-
-git status							\
-|sed "/Changes not staged for commit:/q"			\
-|grep -E "^\s*(modified|deleted|new file):"			\
-|sed "s/^.*:\s*/, /"						\
-|sed "s%man[1-9]/%%"						\
-|tr -d '\n'							\
-|sed "s/^, //"
-- 
2.30.1.721.g45526154a5

