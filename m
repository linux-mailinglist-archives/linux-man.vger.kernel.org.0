Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 344D02702D7
	for <lists+linux-man@lfdr.de>; Fri, 18 Sep 2020 19:05:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726159AbgIRRFC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Sep 2020 13:05:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51724 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726044AbgIRRFC (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Sep 2020 13:05:02 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C6D37C0613CE
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 10:05:01 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id z9so6278693wmk.1
        for <linux-man@vger.kernel.org>; Fri, 18 Sep 2020 10:05:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZSPzC1XJAN+rkxlBP3R3K3Z2FSgBSa+RVd2a4zCq8TA=;
        b=bC6Q34Ynfv2+ObvzrbHUcGA5f0+sBx78FYmB1/OFRtR0d55jaq195uWsVFueRaDTFj
         C0JZE5KvdiU78SeIl1qcsdEgfe5OyEhAwbovUvsRRaitDTS1BgHS964aMXDR+Vpj3eGb
         OH5A7yO7jD6CckD3fkM/KSYIB/80ZU+2vwreJtNA9MUAx0rmSNuyXzewRVfcVe26tn37
         COljxk8huuL1nsaYhCuCqgg2H8h/MVqNzL9oFQfgJ8XBZMS7W5nvcNsKXQprut/pln1z
         XnD/YKDdw+oXhW9XnR8uiO87k8UczKDpfeIv+zdDQcOvQvoUbfle5I/WxEPplv4pgU1t
         pzYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZSPzC1XJAN+rkxlBP3R3K3Z2FSgBSa+RVd2a4zCq8TA=;
        b=ilFMK60zL9aANCla1Ns1OqMpiZjX9P3tI6FenjEaotfUdIBvAPTvs0Z63RchEnamdG
         NICkDcDvy+gBjVWHeXK1DK8U5GOaQTQuH7tHnAZdoxNnrhVquTsSmL7m+2f4K7YKT71q
         X4huPFbtgN9gsrJyzokwKUkQLPwRD34biseTaa6pINcMtbBOf+msd+uUnS+IlqbQFu5C
         ydxUi1mmgVgTBZruxEVZr3c0M0PiBeMeqkrURJrcNRB9MN8/qcbeyLd3EkQQy2/klYXd
         Ip5QFKcPhwX6rFd5sK6vYkiunLi/eayhLbNri6iVvz4TW8kZLSa4k4dMqQahS/Sqfuom
         fIKA==
X-Gm-Message-State: AOAM5300K65QGsl7nGays8AyLuJ/BkHl5/hWdm/Fc/udcOctIqRSlwen
        l3bZBVsuXZvgDIb+QaKnJKR64PGw8oSUZg==
X-Google-Smtp-Source: ABdhPJwrjjP82Er0XEpWODNCRibnwYY/gR+jssacmM9NPVluWMUDaAL38Az/KliMxdy3vsQrySxcWw==
X-Received: by 2002:a1c:6607:: with SMTP id a7mr16343116wmc.142.1600448700449;
        Fri, 18 Sep 2020 10:05:00 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id q18sm6321208wre.78.2020.09.18.10.04.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2020 10:04:59 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, libc-alpha@sourceware.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 1/9] system_data_types.7: ffix
Date:   Fri, 18 Sep 2020 19:04:35 +0200
Message-Id: <20200918170442.94920-2-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200918170442.94920-1-colomar.6.4.3@gmail.com>
References: <20200918170442.94920-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/system_data_types.7 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index eb4718491..5352f3ef2 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -232,9 +232,9 @@ Notes:
 .IR <iconv.h> ,
 .IR <mqueue.h> ,
 .IR <pwd.h> ,
-.IR <signal.h>
+.I <signal.h>
 and
-.IR <sys/socket.h>
+.I <sys/socket.h>
 define
 .I size_t
 since POSIX.1-2008.
-- 
2.28.0

