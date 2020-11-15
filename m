Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 26B332B3A86
	for <lists+linux-man@lfdr.de>; Mon, 16 Nov 2020 00:10:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726369AbgKOXKL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 15 Nov 2020 18:10:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726004AbgKOXKL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 15 Nov 2020 18:10:11 -0500
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 457DCC0613CF
        for <linux-man@vger.kernel.org>; Sun, 15 Nov 2020 15:10:10 -0800 (PST)
Received: by mail-wm1-x341.google.com with SMTP id p22so22154210wmg.3
        for <linux-man@vger.kernel.org>; Sun, 15 Nov 2020 15:10:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=yhS7DKlN4nK80ZoQC/9qSZ7rffwtYZum79DSxJ64hdM=;
        b=BNP7Vx1Cj6L9UOzPPk8BEknomoUZ5+hBFwJhOKmAQdxdit1m9PORAyHP76le/8XFwH
         ee1sk0TeBrYH2kcEUc0POu0NXGSinlXtpNeLsc07tHdrwVSBaZoHwxYEPq+771yb5oDw
         H+RNI9yYfTiKnH0pn9zjvP/CK4Jpsbtc5FGj1dEHU32EjAselL9ykpQlxbSWeelVTN9S
         XYmZocAgzBzTgvgT0RHhvf4Ad6WDWh2fywQNEcUmejc0iNouH2OJZWdVDFXF4hM4B4SL
         HK3MWBJFSMegTiqoUauQ6Kzg8U6kVKWRvPpZ2E9AXw7qSHkoeFIhTTnYEMhmFn9z3k/E
         TSqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=yhS7DKlN4nK80ZoQC/9qSZ7rffwtYZum79DSxJ64hdM=;
        b=RIk1qqiq5+vCGWrq2mww4XigJipcC+UsJOGntoSqH0mWHCc+sCpwKkgCeSs2kcMBPA
         Qzd6krj0j2eHFyWvggq52TtadGZgZNJ71VpwrifU3VSJ4B1BC8vDHCRM7dM2Hj6yEO1k
         6USpz+X5Ck/3OYQdoeHDjzeSbRkjLMg5OZDGRJQfCaNO4LW3eGzNZ8JwvDzEgAtpufnj
         mX0HSLTRG7TEj5fvKmvtyajo37HCDJZuKYoSPZge1ri84mCC2TnnTAWFciKcEyiwlJkW
         DoC8o1j5DwJ8dC51H/H2UzLthbgCj77y/Abi+40R9/vigTxy6zlVYR5JckzgB3rCP5+B
         A6ww==
X-Gm-Message-State: AOAM530EhW3ocTiv3+EvtpmoN0nb7DjfEwkVPzACxQzUqcwF00rVqAN4
        0cANUGaRHkt10KhrDKAreho=
X-Google-Smtp-Source: ABdhPJzkWgRNYw668BrUq0EApXWAksdTWKdRcl3bjl9UjK9YZaOpw2au4qRKW3TXWsdSeXmso0/9EQ==
X-Received: by 2002:a1c:bcd6:: with SMTP id m205mr12196434wmf.47.1605481808899;
        Sun, 15 Nov 2020 15:10:08 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id j4sm19818620wrn.83.2020.11.15.15.10.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Nov 2020 15:10:08 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] Add script to get modified pages for commit msgs
Date:   Mon, 16 Nov 2020 00:08:08 +0100
Message-Id: <20201115230807.1994-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The script can be used in this way:

git commit -sm "$(./scripts/modified_pages.sh): Short commit msg"

And then maybe --ammend and add a longer message.

This is especially useful for changes to many pages at once,
usually when running a script to apply global changes.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---

Hi Michael,

I put into a script the commands I used for a previous
patch's commit msg.

Cheers,

Alex

 scripts/modified_pages.sh | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)
 create mode 100755 scripts/modified_pages.sh

diff --git a/scripts/modified_pages.sh b/scripts/modified_pages.sh
new file mode 100755
index 000000000..7fac2d98c
--- /dev/null
+++ b/scripts/modified_pages.sh
@@ -0,0 +1,26 @@
+#!/bin/bash
+
+## Usage:
+## git commit -m "$(./scripts/modified_pages.sh): Short message here"
+##
+## How it works:
+## 1) Read git status.
+## 2) Staged changes are always printed before "Changes not staged for commit".
+##    Cut from that point to not include files not staged for commit.
+## 3) grep lines containing "modified:"
+##    (each of those is a changed file)
+## 4) Keep only the basenames of the files,
+##    and separate them using a comma.
+## 5) Remove the newline characters.
+## 6) Remove the comma before the first file
+##
+## The result is a list of all files with changes staged for commit,
+## separated by ", ".
+
+
+git status							\
+|sed "/Changes not staged for commit:/q"			\
+|grep "modified:"						\
+|sed "s%\tmodified:  %,%; s%man[1-9]/%%"			\
+|tr -d '\n'							\
+|sed "s/^, //"
-- 
2.29.2

