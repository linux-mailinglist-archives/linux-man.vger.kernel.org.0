Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5381A293E91
	for <lists+linux-man@lfdr.de>; Tue, 20 Oct 2020 16:23:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2408035AbgJTOXj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 20 Oct 2020 10:23:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2407989AbgJTOXj (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 20 Oct 2020 10:23:39 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 275CDC061755
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 07:23:39 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id c16so2126666wmd.2
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 07:23:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=pPKuMBiv52/bvg9lIGM3tBEPqf6hoRrTZs/pqh82PCM=;
        b=r9ABT2BHyG9Z1/PZZqz63PhqV8bXZk3syC+aTRseYx0Br1KB4J7pYB1n8wZfSNLpNO
         oJzoyxGuyehXHwvnVaGq3/4I0WFRVko9e7Sg9Byln72vJMXL9Ucvib7Dmy0dGwSEuAQr
         rO1MLJy63YAa1b00Gy1fMILtOqLcpx6Y9nYnxzbi2o8glEKPpEpH6OLwhowK4BzAuQK6
         avFcirf69AMv8Mo4+KiKHsS7b24OPDg0YAgHS3V2buIyWI55TOXXlZamhGdvJbmBMqaR
         +qcmmc7xKfsJtD2hq5LH/71H5DA1dPyDNPqz/723mdNeuzNeuApaCThleJobjgtUnF2D
         0L/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=pPKuMBiv52/bvg9lIGM3tBEPqf6hoRrTZs/pqh82PCM=;
        b=OeE6Wsp69xfF/1f6ZeOFzwrnzoVlmiuhqCfxbYwgVFtqRQ6I45rDaaiKI/mclR2sjd
         yegKjLIo6la42T+A2GQTzy83xiSy65v+SwmptsRK3WBQ2xMEUn4ehQewUTOPtQi0cqSX
         n5+KoQR41TzxrR57USU0jxZtnXDo7V3BSL9zicqpDpM885gkR3T81Lo+juT0/SDQmNU2
         NhlTFYEgjpusvq9y8MCbuDgsCIz+dfW2ReY9Kc+06YDN72LZz+ckgjGV1H2u07s4QMaI
         TUG349zxgavoAr9CeFA3RknuZoQE0Slxs/jH9ziL6+NPmEAx1dpmYcSuW4vym10MTLm4
         3A9g==
X-Gm-Message-State: AOAM530QWSojiuE8T+CJ1lT5lzFRzHo/ViWOiVzA4SFfn9d+7nf8kjRJ
        RnUPmcV5Nn3Rrmf/sNmwTJw=
X-Google-Smtp-Source: ABdhPJwd/0AxQt0BWQKFLRhTGtk8xdSG2uFYQP+zarNXVQT5/o09J/Ms0MAwlEHFbTWmTvHuGmRRbQ==
X-Received: by 2002:a1c:cc01:: with SMTP id h1mr3379599wmb.114.1603203817952;
        Tue, 20 Oct 2020 07:23:37 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id s19sm3422153wmc.0.2020.10.20.07.23.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 07:23:37 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 16/22] list.3: CONFORMING TO: Adapt to this page
Date:   Tue, 20 Oct 2020 16:21:41 +0200
Message-Id: <20201020142146.61837-17-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201020142146.61837-1-colomar.6.4.3@gmail.com>
References: <20201020142146.61837-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/list.3 | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/man3/list.3 b/man3/list.3
index 64f94197a..2a873deab 100644
--- a/man3/list.3
+++ b/man3/list.3
@@ -258,10 +258,9 @@ from the list.
 .SH RETURN VALUE
 .SH CONFORMING TO
 Not in POSIX.1, POSIX.1-2001 or POSIX.1-2008.
-Present on the BSDs.
-.Nm queue
-functions first appeared in
-.Bx 4.4 .
+Present on the BSDs
+(LIST macros first appeared in
+.Bx 4.4 ).
 .SH BUGS
 .SH EXAMPLES
 .SH SEE ALSO
-- 
2.28.0

