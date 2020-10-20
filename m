Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A04EF293E93
	for <lists+linux-man@lfdr.de>; Tue, 20 Oct 2020 16:23:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2408037AbgJTOXn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 20 Oct 2020 10:23:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2407989AbgJTOXn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 20 Oct 2020 10:23:43 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75289C061755
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 07:23:41 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id q5so2125354wmq.0
        for <linux-man@vger.kernel.org>; Tue, 20 Oct 2020 07:23:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=YMKdFZ0eb1GC6nHLjRmILO1T/IbNsLeL6Watx/NwAes=;
        b=Q6UbjmMnqcT/F5cGgH0LJbYQAKI/GXV+lGK+UJl3dER0A/Ipgbsghs3OgOJjL4Xo/j
         oI7C3Ub27OJGEX2Kbdq1mqDk9LmTNDCGC1Wd/gJ9jL06tbxvdjJ1ZfltFyLdmGffVqnI
         WGTwykrqYRGVBBji6mU7UTu3x8SOamd9czzqYc0njh1+lJSPMrQCiKJ7K9pfZIgOwXEh
         TqwWwPMyS+FR/l5XU6Sf2QWJFCq5QziGFCInaN5Zl9epleXTbOAymJ7PVbfYHF8aCN8Z
         4NxSU5MUZSozrZg/1HCFyDg6BdH9v51aAXXSxoEY2wgDJW1cBZDy7uio2zbZXb6arqWT
         1cTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YMKdFZ0eb1GC6nHLjRmILO1T/IbNsLeL6Watx/NwAes=;
        b=ptmeIgk2ODVizhXLrqPmIFEHnAl7OC0KoplFRj2S3BeFgyln+NDIxt6xpZtJOSB1iy
         ULvn2yjfyrgYEJN+8XOkj6W1znkRhVuPmoaY9UI1P/46ZMyiZfyY/0k8Cp+7gwKuwQWG
         tSmQlVjZnDvHk+e3EBJze5ZMqXIDM7vL4WCYPX71xSbc0y/mqZnhczVSV1cRvqrli3Vv
         79zdj+AiVhT7z7+QemMZVDGxPrJy2HHxVIQ17OJ8RL6RISA3u9VJYugfdIizNwM0yXZl
         7Z8VJxQS1qJHwH8P2nHokR/FC5QRXOymheLB3Oh+5BClSPMiYnWESV02dOzE26AyiL6H
         Geyw==
X-Gm-Message-State: AOAM533TpTIzN1gaVTo7k67Bbx4phzCTPy98ENhb4T3nMi8adoW+wNzJ
        SzbCHBusRYWbSSzKkaNczdxAV9lcVPk=
X-Google-Smtp-Source: ABdhPJywqF1MKA+aA/Q6eJ6rO8BWeTcftmwOh6wBI1FUcXNdqNkPxws5eZXcTy0w2Rbp3L53jbE5hw==
X-Received: by 2002:a1c:62c4:: with SMTP id w187mr3246795wmb.149.1603203820231;
        Tue, 20 Oct 2020 07:23:40 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id s19sm3422153wmc.0.2020.10.20.07.23.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 07:23:39 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 18/22] list.3: SEE ALSO: Add insque(3) and queue(3)
Date:   Tue, 20 Oct 2020 16:21:43 +0200
Message-Id: <20201020142146.61837-19-colomar.6.4.3@gmail.com>
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
 man3/list.3 | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/man3/list.3 b/man3/list.3
index 478fa2bf3..82ab4dae4 100644
--- a/man3/list.3
+++ b/man3/list.3
@@ -263,3 +263,5 @@ Present on the BSDs
 .SH BUGS
 .SH EXAMPLES
 .SH SEE ALSO
+.BR insque (3),
+.BR queue (3)
-- 
2.28.0

