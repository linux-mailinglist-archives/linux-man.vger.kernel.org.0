Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D2A8E25CA13
	for <lists+linux-man@lfdr.de>; Thu,  3 Sep 2020 22:19:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728491AbgICUT3 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 3 Sep 2020 16:19:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728358AbgICUT1 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 3 Sep 2020 16:19:27 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14C72C061244
        for <linux-man@vger.kernel.org>; Thu,  3 Sep 2020 13:19:27 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id w5so4546222wrp.8
        for <linux-man@vger.kernel.org>; Thu, 03 Sep 2020 13:19:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YhOs954el8qDSEJxNsRctNc0zL9UoeCsxawzHofU03E=;
        b=RFYK8yfDQQZSdWzeHLBi7sZIk4Nf+f217bsREixjU56Yb2S3p8Y2ORRa03tploIr4w
         QAm8Aup/5w7vi1U+d2v0DOlf62+yssFo/DduZ8zIm9si7uFQzX5lF0VSKptu+yyzlodL
         6D2wKoxg0TT24iBkSSHh/A82SOk/GMoKuTm9+GTVIpT6urjLbGIrv2YXfERug2H4ZElA
         16AbEp2EUb9gSigNyhkE49ACtbZ9iVO1fzJfeA4TK7pz2BPJuK9mcBNi6ZGTy0WlHkkA
         NnAPeCXrf7LbuMxe61ez3s+xtaoMvCQa4yzJdlpFkb/rzr9XXoaGNJGc40SIlumdxFs3
         i7sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YhOs954el8qDSEJxNsRctNc0zL9UoeCsxawzHofU03E=;
        b=aCwpCo7XeCxTFeiXHzEcylCPre5qsSO6DZiwIOEMLt84H88D3uJ9I24EIKMYsmJne5
         +07UVrwlplszGuFYcGZS+qFc9H9RNkZvsJtA+dVZCB6jv7oc2xpcYEcI/Qwj2TNR9Qm0
         nJg/U8GgNI+e8y2Q/mJ3K57N/D/QjSP3ICtfaKTB60kOXIHYNsW/4CrBt/xpmz30o3gL
         +tNtnvSo1ayWGjVEN06DorH43DpslK+ZUYw29t0/5qrN8YriZT8FdOSa7k2z3+HPyprk
         BBd35gSg7QC6KIUrCvLGo+UDaAvupyv6kePHKPRA7k6odNdwzD1tBu/Qct+gdTC2nlhg
         wuzA==
X-Gm-Message-State: AOAM533zLF71ylPprIOoPKaYtciilbVsVJh78h0h1tLkssoPMMVGrFef
        D353uzz84nj0Mx5wcSV+zcA=
X-Google-Smtp-Source: ABdhPJyUHHkJRtkVnaZH2KPhySpPTHKh375hmidQXh4ZnHGch6tCzhvBwBqyCjkjn+Z7zqT1r904CQ==
X-Received: by 2002:a5d:644b:: with SMTP id d11mr4035210wrw.373.1599164365817;
        Thu, 03 Sep 2020 13:19:25 -0700 (PDT)
Received: from localhost.localdomain ([93.115.133.118])
        by smtp.googlemail.com with ESMTPSA id k8sm6430465wma.16.2020.09.03.13.19.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2020 13:19:25 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH] unix.7: wsfix
Date:   Thu,  3 Sep 2020 22:17:05 +0200
Message-Id: <20200903201704.1076363-1-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

This is my second patch with git send-email.
It is really simple.
Just testing a message :)

Cheers,
Alex

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man7/unix.7 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man7/unix.7 b/man7/unix.7
index 5283a1e58..86a35be7b 100644
--- a/man7/unix.7
+++ b/man7/unix.7
@@ -1089,7 +1089,7 @@ main(int argc, char *argv[])
     addr.sun_family = AF_UNIX;
     strncpy(addr.sun_path, SOCKET_NAME, sizeof(addr.sun_path) \- 1);
 
-    ret = connect (data_socket, (const struct sockaddr *) &addr,
+    ret = connect(data_socket, (const struct sockaddr *) &addr,
                    sizeof(struct sockaddr_un));
     if (ret == \-1) {
         fprintf(stderr, "The server is down.\en");
@@ -1108,7 +1108,7 @@ main(int argc, char *argv[])
 
     /* Request result. */
 
-    strcpy (buffer, "END");
+    strcpy(buffer, "END");
     ret = write(data_socket, buffer, strlen(buffer) + 1);
     if (ret == \-1) {
         perror("write");
-- 
2.28.0

