Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 38A682971D5
	for <lists+linux-man@lfdr.de>; Fri, 23 Oct 2020 16:58:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S465416AbgJWO6p (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 23 Oct 2020 10:58:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34162 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S465408AbgJWO6o (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 23 Oct 2020 10:58:44 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 71F2DC0613CE
        for <linux-man@vger.kernel.org>; Fri, 23 Oct 2020 07:58:44 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id x7so2242654wrl.3
        for <linux-man@vger.kernel.org>; Fri, 23 Oct 2020 07:58:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+noYP55vNXPy60yLQtlot+rN6iVyBtr5iK6P20cg/0E=;
        b=eFlfG2GmQuw64/EbXQKPM03LtLFEh3UF5SZ/lpLcd/yPLTaWRHdwQFnZGvlObmXd+M
         HwfhpzcbkPIAykrL5n5rkB1uG/xvRSo2XYLkaUFbQvRUA5V9Ufs96VGgHX/vk1QhM6iy
         I5Me7Yg91C6vJsCiBPnSzVy3Ip0BGfoZNCOo4Uuk2WGMzbfAYIdKjcxmojTQAK/t8mci
         VIpiNef5nAQ5og9LqBXHR7NSzfUwLP9QToKazea7RjE6dZicgB7XuZnFXdu3oj1FuPMC
         HONFIJUKYoU8L8a8NPR1YBIGUDbm1ewwEmmUWHL7K3HGbVDPXEKXygVyAI0K510rnPzK
         1V/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+noYP55vNXPy60yLQtlot+rN6iVyBtr5iK6P20cg/0E=;
        b=qZY7cIjMlM8Ej/7C9cDLsWq89Zh4Ep5V/feYTEGGb3K06gtMESZaMUZzE7oY2r8H+Z
         QpGbMBu9BedSA8em39sTwPCkgtM5auDTkn68uhoSsriKhmTivquEi6q1EB+avgwRbE1c
         Vpe92hUu74ED73YkcdwbbEtYLdwuyQDmdCqJovDdPstomxlBSoqhQUFerkeRn6qHPr4z
         w31u468nSd0k8/Q41S8hnkHTsvcRK/ur6oyAiMoTGwhHLIRpGZEc6ArhTvjxRKEtbeTL
         YxbE7YvmC61Gx48Uz8l8+H8PEMsmsMdHFzTpY+JXreJkK+sjbVXcwQmo+HcMALEt8K9u
         olRg==
X-Gm-Message-State: AOAM532l05NzHCxf9RSyYOohCPze5i8Q32QFNzfaAUqgRH24SSdZFA+B
        yk7T6sK6REt6wlQIefxOJp8=
X-Google-Smtp-Source: ABdhPJxlzHltiDSWVSEI+Hrcp8RqG7TdoHwRx3iSpqO8fS4gcz2Z4+f4GPiNG8Pd9QXRia+Gfh4FyA==
X-Received: by 2002:adf:fac3:: with SMTP id a3mr2923752wrs.240.1603465123209;
        Fri, 23 Oct 2020 07:58:43 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id m8sm3755268wrw.17.2020.10.23.07.58.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2020 07:58:42 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 11/11] queue.3: SEE ALSO: Add circleq(3)
Date:   Fri, 23 Oct 2020 16:57:37 +0200
Message-Id: <20201023145736.102750-12-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201023145736.102750-1-colomar.6.4.3@gmail.com>
References: <20201023145736.102750-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/queue.3 | 1 +
 1 file changed, 1 insertion(+)

diff --git a/man3/queue.3 b/man3/queue.3
index 79cdca318..0c57f8ef6 100644
--- a/man3/queue.3
+++ b/man3/queue.3
@@ -798,6 +798,7 @@ Present on the BSDs.
 functions first appeared in
 .Bx 4.4 .
 .Sh SEE ALSO
+.Xr circleq 3
 .Xr insque 3
 .Xr list 3
 .Xr slist 3
-- 
2.28.0

