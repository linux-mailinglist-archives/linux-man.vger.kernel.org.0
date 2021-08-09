Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C4E2A3E4235
	for <lists+linux-man@lfdr.de>; Mon,  9 Aug 2021 11:12:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234130AbhHIJMn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 9 Aug 2021 05:12:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56572 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234085AbhHIJMn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 9 Aug 2021 05:12:43 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 66998C0613CF
        for <linux-man@vger.kernel.org>; Mon,  9 Aug 2021 02:12:22 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id i4so2972111wru.0
        for <linux-man@vger.kernel.org>; Mon, 09 Aug 2021 02:12:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jQDbxYTcSdAEKeAXyudirY1eq0PKpM/NOdFErtVRywQ=;
        b=hI4S9mUB5oErRLIi9gUJxNG/IHiZXPcBASg9dxhClDeYWy70lVv6cOnwjKP2IjHIrH
         Cl69C3S+tW6v8NvGFVuWQHsnCIhkRztVjzsQa+5KgPqYXRh8EJbBD3Z6UfE3/f4P2I96
         v6XWVFaOmRtTcrgjJ7Md4WE8Agj6hWVbwlXhWAKwo3fUvNKIl1Xvg9AWK9zP0y2Jaqy/
         5nHqfkiUwRG4y1kt7Lm7hn4+bTo4nOQzD/zxEhgJnUgFhyo1VRnsKyqHd5qJkLFLsm09
         o75pGVOuSsOBhbhLGKbO38DcAfVJ9l7299mK8QuXgKE7BGBcsfYwwWa6LFk1sWwhXA5L
         yI7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=jQDbxYTcSdAEKeAXyudirY1eq0PKpM/NOdFErtVRywQ=;
        b=LPFH05pOQdTen5/dnucsbI9AblzWRoJEQubt64aRdxYNJ+2Limx4rmvppT360ocw/4
         zodgexmtLpkFIMAvPGUoDWokYBGwJpKn+/G/502YgSkJ7wZcHVmt9+tZc0EgXp1g5h//
         B40AjUXEHhzyzt/PrG9IkLWBWbOXFGDjevQDv/Bnv7ehrOsrl3zJjU9rZZJtIAvb5/Un
         vu18rDxAkLxEZXzmuJG+8q+vTw1y0bv/ci08hOLodYlfrvTO6WIZgmy8r8KUSIQqVeKH
         u9mmHUPyG4Xs30pPLX6weysknblaWe8LA48/WKB6y8kGH2cE3J25r6+7Demb8rpCAUG9
         B70g==
X-Gm-Message-State: AOAM5308jolvbpWypoXh6oYgXloccezYYWEm6tBL/ldZpk611QU+ipt3
        bkESf5ecvKyl1jV0iUVKBHw=
X-Google-Smtp-Source: ABdhPJyf2ua9bo1Yh6+VVWrPdJN0N0x8OuEUJ3KSTCL7DrUlioyQdLhzrgdDLhH6RyaoBSOHLAc5VQ==
X-Received: by 2002:a5d:490b:: with SMTP id x11mr23872744wrq.322.1628500341002;
        Mon, 09 Aug 2021 02:12:21 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id e25sm5462189wra.90.2021.08.09.02.12.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Aug 2021 02:12:20 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH] path_resolution.7: tfix + srcfix
Date:   Mon,  9 Aug 2021 11:10:52 +0200
Message-Id: <20210809091051.787551-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---

Hi Michael,

Here are some minor tweaks to a recent patch of yours.
There was a typo, and I think the line breaks better at that point.
But you can omit the second change and just fix the typo if you prefer.

Cheers,

Alex

 man7/path_resolution.7 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man7/path_resolution.7 b/man7/path_resolution.7
index 749f6900b..143f22826 100644
--- a/man7/path_resolution.7
+++ b/man7/path_resolution.7
@@ -179,8 +179,8 @@ flag set (though note that this also restricts bind mount traversal).
 If a pathname ends in a \(aq/\(aq, that forces resolution of the preceding
 component as in Step 2:
 the component preceding the slash either exists and resolves to a directory
-of it names a directory that is to be created immediately after the
-pathname is resolved.
+or it names a directory that is to be created
+immediately after the pathname is resolved.
 Otherwise, a trailing \(aq/\(aq is ignored.
 .SS Final symlink
 If the last component of a pathname is a symbolic link, then it
-- 
2.32.0

