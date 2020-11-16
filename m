Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 593BD2B515E
	for <lists+linux-man@lfdr.de>; Mon, 16 Nov 2020 20:43:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730486AbgKPTmX (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 16 Nov 2020 14:42:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37230 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727885AbgKPTmX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 16 Nov 2020 14:42:23 -0500
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8396C0613CF
        for <linux-man@vger.kernel.org>; Mon, 16 Nov 2020 11:42:22 -0800 (PST)
Received: by mail-wm1-x343.google.com with SMTP id p19so571055wmg.0
        for <linux-man@vger.kernel.org>; Mon, 16 Nov 2020 11:42:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=dTLyYzqtvQvOk5CRCyOOMClKoewkk2zT5XbaJP5sGr0=;
        b=CktTB2bGo6ePVJw9qzWV4s/OR9pbuf5AbdYwuEGG1eIhWz4kNnwt4eRx3hHfbj7C7E
         rNUY0toEj3M2nhOMU4DjUGBsKTJanvtwSsErL/z9aL5Db7WbucLtOQB6JMdW2U2giq22
         mR+XHii4I40DNKeDFoLwfhHq5TWkAlS6o4tqG1YJV99A4rmaznnP3OlZKT72+ag/lRta
         /VO+Bnm3nn+TsfV5+1lxcbB0mq7x2TN4k6iEA86Flvab4BRZwvDjeeoJv9uw7LViQLyK
         qhgPLf+NOVj8kDqGhrwL3yIUkgn2qyEEA9Cg1/dCWoCK0Dnv5k4qpXXvAb2fxm4ii/hp
         5u2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=dTLyYzqtvQvOk5CRCyOOMClKoewkk2zT5XbaJP5sGr0=;
        b=DVPuYf9nLxaZf75TtdbmgEghhS/yLbX9tS57fXwT4MxDaGDRqA/bkBxtN8oLpZ4wPb
         UjGMfrqTke+Vcw2sH/+nNH7c7/91ThluRDH2tS6xzoUAB710XnG7Rndzb4N0J00M5CdD
         zGTi7qgZPal482+s7MFb/BWOEAATlvY8SNtT4dFUY+IXAsNwPaHDVMISJxEax9iDzyvO
         CPt8/aJJAI85854LnCpUfAjHwziWiEFgowmcsdXp9czGd9iG5CxGNaUdUCbeAfUfS0KT
         Nh3XDCIMnQE9hyN25Mo9kD/Zyv68lJ1f3vdGZHlqW0ZfXgmdAuo3En6awQWwol3Rl+on
         j9AA==
X-Gm-Message-State: AOAM533oVGinTOQRvZmTZ9fq/jZpQJLdjmlmkxG1jPWhnMLstsWI0yZp
        nDN92eHaIRxRKkrIlPo5UgVwGfrX4sAN3g==
X-Google-Smtp-Source: ABdhPJzXMRr4HB3W8rxiUt8eQfB3JzctZk7P5M+jEVE9OQQxfka8hD1snrcc9s5iNhJeyf/5EIedQg==
X-Received: by 2002:a1c:4944:: with SMTP id w65mr544261wma.50.1605555741537;
        Mon, 16 Nov 2020 11:42:21 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id q12sm22237514wrx.86.2020.11.16.11.42.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2020 11:42:21 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH v2] Add script to get modified pages for commit msgs
Date:   Mon, 16 Nov 2020 20:42:18 +0100
Message-Id: <20201116194218.5098-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <f3253576-63e6-1540-5a07-9b71a10c42e2@gmail.com>
References: <f3253576-63e6-1540-5a07-9b71a10c42e2@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The script can be used this way:

git commit -sm "$(./scripts/modified_pages.sh): Short commit msg"

And then maybe --amend and add a longer message.

This is especially useful for changes to many pages at once,
usually when running a script to apply some global changes.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 scripts/modified_pages.sh | 34 ++++++++++++++++++++++++++++++++++
 1 file changed, 34 insertions(+)
 create mode 100755 scripts/modified_pages.sh

diff --git a/scripts/modified_pages.sh b/scripts/modified_pages.sh
new file mode 100755
index 000000000..f6c4a6cea
--- /dev/null
+++ b/scripts/modified_pages.sh
@@ -0,0 +1,34 @@
+#!/bin/bash
+
+## SPDX-License-Identifier: GPL-2.0-only
+########################################################################
+##
+## (C) Copyright 2020, Alejandro Colomar
+## This program is free software; you can redistribute it and/or
+## modify it under the terms of the GNU General Public License
+## as published by the Free Software Foundation; version 2.
+##
+## This program is distributed in the hope that it will be useful,
+## but WITHOUT ANY WARRANTY; without even the implied warranty of
+## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+## GNU General Public License for more details
+## (http://www.gnu.org/licenses/gpl-2.0.html).
+##
+########################################################################
+##
+## The output of this script is a
+## list of all files with changes staged for commit
+## (basename only if the files are within "man?/"),
+## separated by ", ".
+## Usage:
+## git commit -m "$(./scripts/modified_pages.sh): Short message here"
+##
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

