Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7D8FD3C76EE
	for <lists+linux-man@lfdr.de>; Tue, 13 Jul 2021 21:26:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230376AbhGMT3E (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 13 Jul 2021 15:29:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55988 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229478AbhGMT3D (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 13 Jul 2021 15:29:03 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38638C0613DD
        for <linux-man@vger.kernel.org>; Tue, 13 Jul 2021 12:26:12 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id hd33so14820017ejc.9
        for <linux-man@vger.kernel.org>; Tue, 13 Jul 2021 12:26:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9gAo7AsJT97vYIFSImbw/WtHXzs+8KsCFekbYYjM4IA=;
        b=pyaZhoUEaQ18HMi8ZXugcofFEmrRKvrKi+037Bh6KPssKlVG9wspvlOHx0VvphBv0r
         gD7Y2o6Gbj3MDhs8vjlAGz4cYgmuffEAImcteJxL34zktOZC28UWfVRM9VRQKpdBbVbS
         ANdZqKQQOxkD7AExRqmwO+/nqOIBlUcACIsL9ZGux5ULT+IV8WMuzUNg3R7Jylyl0JTI
         PacK7bG9mH/VGItfEF2mePfOhSlgV1uIJWWLE0iA8jmYrre0/rP53Cen8TeS7CflONvK
         L2mqPcMt6rh+XSDBVqQkV552N2p+6M1P8hUqKywesT9he9F8zq2qdewlL9Hh/S82y1wt
         lQDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9gAo7AsJT97vYIFSImbw/WtHXzs+8KsCFekbYYjM4IA=;
        b=T8/FhztP0+p6SKPk3Chw+0v0H9Is+YVA5X8Jj9u+03HtjjOb1aT+JgMge1BME6PtDK
         +dGy0nBIlTQbALAqWBrHffn0lwFGxDqmztG5jhtSQEGbszx0GzU60MKLeHXK0Q+yE7DD
         o9486DCJZCs/FZJd89wl+0i3VaM0+1JItwCrRQgYsXoiLeRV+A/ax527KYh2wIIYvTaL
         D0JL1ZVOTg3u9P8z+lnVgHsRrLAYPoNxog6irIOOS++PVVy0WM6iR2rkqEusn9Oo6vbs
         m2qvJn1okrAv8f8Zw0CgmWbNLbKypeh7w/yIJyLElCerMj8LQbqMfzR366Uvtdxa7DFk
         r8pQ==
X-Gm-Message-State: AOAM5324oimSTYOiaJRp7QcnG8jBqQUiDFAUL6ZpXgQLny/trZEzrUNy
        bHQ1d7rgsTIfuFC3MRpvWj9sbZjahA4=
X-Google-Smtp-Source: ABdhPJz/VMkQawwoXCQ88NVBsJsMXEU29wFvbc2Ak0JfZUTvONl9sJOlgzqtMZtmtRuKNUjo5IzUYg==
X-Received: by 2002:a17:906:c7d6:: with SMTP id dc22mr7626618ejb.517.1626204370548;
        Tue, 13 Jul 2021 12:26:10 -0700 (PDT)
Received: from localhost ([185.112.167.53])
        by smtp.gmail.com with ESMTPSA id u2sm10036750eds.78.2021.07.13.12.26.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jul 2021 12:26:10 -0700 (PDT)
From:   =?UTF-8?q?=C5=A0t=C4=9Bp=C3=A1n=20N=C4=9Bmec?= <stepnem@gmail.com>
To:     linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: [PATCH] namespaces.7: fix confusion caused by text reorganization
Date:   Tue, 13 Jul 2021 21:26:08 +0200
Message-Id: <20210713192608.3804441-1-stepnem@gmail.com>
X-Mailer: git-send-email 2.32.0.rc1.27.g991a26804f1e
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Since commit ee81d7e41852, the flags list has been (only) above, not
below, these references.

(The flags table was added even before that, in commit
0b497138b908 ("namespaces.7: Add table of namespaces to top of page"))

Fixes: ee81d7e41852 ("namespaces.7: Include manual page references in the summary table of namespace types")
Signed-off-by: Štěpán Němec <stepnem@gmail.com>
---
 man7/namespaces.7 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man7/namespaces.7 b/man7/namespaces.7
index d35c2d383e32..0ac32c77e21c 100644
--- a/man7/namespaces.7
+++ b/man7/namespaces.7
@@ -97,7 +97,7 @@ If the
 .I flags
 argument of the call specifies one or more of the
 .B CLONE_NEW*
-flags listed below, then new namespaces are created for each flag,
+flags listed above, then new namespaces are created for each flag,
 and the child process is made a member of those namespaces.
 (This system call also implements a number of features
 unrelated to namespaces.)
@@ -119,7 +119,7 @@ If the
 .I flags
 argument of the call specifies one or more of the
 .B CLONE_NEW*
-flags listed below, then new namespaces are created for each flag,
+flags listed above, then new namespaces are created for each flag,
 and the calling process is made a member of those namespaces.
 (This system call also implements a number of features
 unrelated to namespaces.)

base-commit: 33248cfe50ebb8762208e7ef3264676dad71b016
-- 
2.32.0.rc1.27.g991a26804f1e

