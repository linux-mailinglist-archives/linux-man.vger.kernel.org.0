Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 99DE838D1E8
	for <lists+linux-man@lfdr.de>; Sat, 22 May 2021 01:26:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229937AbhEUX1Z (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 21 May 2021 19:27:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50264 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229989AbhEUX1Z (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 21 May 2021 19:27:25 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E33FC0613CE
        for <linux-man@vger.kernel.org>; Fri, 21 May 2021 16:26:00 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id t206so11941468wmf.0
        for <linux-man@vger.kernel.org>; Fri, 21 May 2021 16:26:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=gxCmG5Kd+TaaV5+mAaigLRxnoTYuzJvrptNwSvlLxFs=;
        b=Arld4EHk89Vbs+68HatnP9w4Dv1mNoGO/zsdaGltvI1PRB5NCwmFbBMKzvga5wZJfT
         AQiObnGySOSKmLRf/xTGCFSzhrZGqrTxAiShWX3P1lI97S6x0dd8kLqXQN50LM1yOBSt
         /v3Rb27YBUzkzvnNvRds2+lYVkTKCh1vTRgyI4puKqPgSAVThQW2gn7gH6sqQhltUCok
         /YS3fDsrKnt5Gl2b1ABQbYYAgFoDtfWSo0Z/bcyz3Q/e8A3HiBB6mUhhmdJdK3XmfsKk
         pbQNwezeIy1DyE1rWDUA0JN46c/1mlxiXDEijlaZwia/rR3TquakcZjjdjeOVRwkIPw0
         vObg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=gxCmG5Kd+TaaV5+mAaigLRxnoTYuzJvrptNwSvlLxFs=;
        b=eO6fCi+Cb8+Wxkgta+b0whnn0J4L+dboq0fjqHGWaQM+VID3WoxLKMw5xCtSw2roTt
         6d9o8rMQZvJNAywEoWLq9G+CD/NweJWaM12xrxjqgJXho8dmAo8h2X8jNGYM3evErucr
         EoT2plQrteBiLIgJpKSUjgw8IXT1gRkuDvfR+EoF3Ri+SBpfArfyewMFInCxAo9wYgKl
         shk520IVmkhLQ0UCmS/TZvVGN5x44DlHOo5lxQcsAsqkkXkaimkyjJ6ugHHJAf2pphqR
         I50eNCZTw/fyvO+t/Nq09c3oRYJZm1IStX+8pxjaCg9XbamVp3itl0njckZF6pNNAqMW
         QQLA==
X-Gm-Message-State: AOAM531lMEqHTnTMN8wrgUrcC7z7XhPeJogos8WS3c5vBR5+21X8sRaL
        LfLyntHjrLNgHKUn0eX7ts/sLvkP2b2dlw==
X-Google-Smtp-Source: ABdhPJwXZtJ1+QUbf6AoZqmoR6S44VBddoxCaTiO1dRN4t1bzK4SgNUPS6nubEzWXO2k0a/e9pDGVw==
X-Received: by 2002:a05:600c:2f88:: with SMTP id t8mr10837777wmn.82.1621639559088;
        Fri, 21 May 2021 16:25:59 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id z12sm1150639wmc.5.2021.05.21.16.25.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 May 2021 16:25:58 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 01/10] open.2: Remove unused <sys/stat.h>
Date:   Sat, 22 May 2021 01:25:45 +0200
Message-Id: <20210521232553.161080-2-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210521232553.161080-1-alx.manpages@gmail.com>
References: <20210521232553.161080-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

I can't see a reason to include it.  <fcntl.h> provides O_*
constants for 'flags', S_* constants for 'mode', and mode_t.

Probably a long time ago, some of those weren't defined in
<fcntl.h>, and both headers needed to be included, or maybe it's
a historical error.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/open.2 | 1 -
 1 file changed, 1 deletion(-)

diff --git a/man2/open.2 b/man2/open.2
index bac1ee806..1bcd995f4 100644
--- a/man2/open.2
+++ b/man2/open.2
@@ -53,7 +53,6 @@
 open, openat, creat \- open and possibly create a file
 .SH SYNOPSIS
 .nf
-.B #include <sys/stat.h>
 .B #include <fcntl.h>
 .PP
 .BI "int open(const char *" pathname ", int " flags );
-- 
2.31.1

