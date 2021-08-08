Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2CF7B3E3999
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 10:41:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231301AbhHHImJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 04:42:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231254AbhHHImJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 04:42:09 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4130C061760
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 01:41:49 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id h24-20020a1ccc180000b029022e0571d1a0so9216966wmb.5
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 01:41:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0OirbL3uYIKT5y3OsFSkOrkX0g/BLs9yRo7b03sqTL8=;
        b=aIbdrcBey/eiuRj8V25D1kN3jnT2OgMUl1XRxd8QFxTKwtdqOx12QMIUoRjWNsYmXA
         5DEw1yuIdOfIBWw+eiKe0hKYA/WUfiiZ8lGa6AKwrZrEaxgdMA3Sng5e1kzx/HoD4TZr
         ugz1gqxD6+A8We1hxOyGJaBooLIHvcJd6lnpKSPFZJCekJOdwnehXiXz7Od8Dr2EZ5vZ
         eIEK6HdyA6EQW8RuA30Krn66H+DjCCcyyiwapfDwrOzhb6KYX28AI1cUYDTyvsJWABAV
         91noKPyx7qbSIdJUhrq+tWd6X14VxpcQ+XU6TMqwD4NFITOzW/1dlCaOPsjiIMPiUVMn
         Q/bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0OirbL3uYIKT5y3OsFSkOrkX0g/BLs9yRo7b03sqTL8=;
        b=fruNI0UF9VRTZOGdVTHrW2YWZSdds2mP91BtA7jUftvLTg0MvIKOCb9c4J36hbHE1p
         ryQ7cvy1uD1GyjDR3hGpCbBzYthobhvFjgomNX9mo+TR0RuMD8B2KVGg39lEgpOj4Xdn
         UCEKndauDW4NpTe/a5CyNfrQZMD+Vnp1guhrerUmRNofL6+BwM+YWlmJd/CVnSh7nk7t
         V5v+jMrpeOpKIOdZEPnZshrfEynoPXH3V8FsPo1n5TkNtJx/lEDL+2PvEpS5NZ43x8i9
         3Lx/ZbVU7zAUvrWiewwq+ydTqfYrm3m0u7B6d3yfwMYaMzupx3g5sXKZupwWWlQVPjBD
         Tg4A==
X-Gm-Message-State: AOAM532cgQp12i2ykpgx0f6zmq08I3gvpYr40NMdg+GKCNsqfRQOk/HG
        MqR7klyZ/4UfIbjZkdmqCYYUjR21uPg=
X-Google-Smtp-Source: ABdhPJzLb7qj7qYwHVfP4oeZTPod9ULLlkY5CgqyQ8Wlja9iKOvpyACsJJKZe60Lqn2g/4zpDC/3hw==
X-Received: by 2002:a05:600c:210a:: with SMTP id u10mr469474wml.162.1628412108377;
        Sun, 08 Aug 2021 01:41:48 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id h12sm15592004wrm.62.2021.08.08.01.41.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Aug 2021 01:41:48 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     =?UTF-8?q?=C5=A0t=C4=9Bp=C3=A1n=20N=C4=9Bmec?= <stepnem@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 05/23] unix.7: tfix
Date:   Sun,  8 Aug 2021 10:41:15 +0200
Message-Id: <20210808084133.734274-6-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210808084133.734274-1-alx.manpages@gmail.com>
References: <20210808084133.734274-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: Štěpán Němec <stepnem@gmail.com>

Signed-off-by: Štěpán Němec <stepnem@gmail.com>
---
 man7/unix.7 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man7/unix.7 b/man7/unix.7
index fc2834fe4..6d30b25cd 100644
--- a/man7/unix.7
+++ b/man7/unix.7
@@ -819,7 +819,7 @@ reference to it is closed.
 To pass file descriptors or credentials over a
 .BR SOCK_STREAM
 socket, you must
-to send or receive at least one byte of nonancillary data in the same
+send or receive at least one byte of nonancillary data in the same
 .BR sendmsg (2)
 or
 .BR recvmsg (2)
-- 
2.32.0

