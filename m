Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2C3A725F7DE
	for <lists+linux-man@lfdr.de>; Mon,  7 Sep 2020 12:22:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728509AbgIGKWO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 7 Sep 2020 06:22:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33102 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728421AbgIGKVw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 7 Sep 2020 06:21:52 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21D1FC061756
        for <linux-man@vger.kernel.org>; Mon,  7 Sep 2020 03:21:52 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id w5so15213787wrp.8
        for <linux-man@vger.kernel.org>; Mon, 07 Sep 2020 03:21:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CM5AWY+4vpmMA/5wvxSWggTBeSVdJeM5KhYJHZLqn8Q=;
        b=Jrwqf78B6YDlNW6ch2BOnDfXtsY2uZRfogc+8PeDkL2xpZ8ml/bFD2r/t+Nz6uxjtv
         3VLpXDtw5bLh2dK1bt59NYxgPQNVpirkgwt8s553fI4iKlpx6jKYYlmvIL3kCtI/XjTn
         WvvY2DhOpCyPhXYBTMOMXAwZ7tnXjNhqU5Cqw9AmIICV2c/HynttymtE6tLBT9QPkwYF
         Y6pRW/ENof48lpaGxDBFTJe4OKWqCWlnm6g/ZKNnd7jsGGumo/Xy6rUaYH+x3kEaUcHL
         cfkV/AObEG0bheqLLs34GS4Ywjh1aeTmpV2zb+ojKm4GW9mLDXavb7z2Umjap+naW9c2
         57YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CM5AWY+4vpmMA/5wvxSWggTBeSVdJeM5KhYJHZLqn8Q=;
        b=s+O5sjlPQuNxbUPBtA+6tRuCHK45P4/KtyuAcR0P60NfNkdY4mFv+EdICewZ6meY4X
         ufbxisCa5Q5GLDQVCtjgIZH5vhFoqLbmzWkAjcqe6t/vqWQ7uCi6kTcfdEF2Vh8+pzDi
         s/rlc1Uu9xHxKwq+oijcRgD7msvwIH+ElSstLMtcDeP1AWbDlY4BrD8X3n+aimxhEUPP
         96rOiDGXiL9T7UxP7BwyXbpL0Dqy80rdm8QxpqCWITdpLs5XN7TRdWOaTWONv1XI5oI4
         pjtWmHHPHeKcxrtJWvdrMapM3iyqe0dcFN0DS5G/yLvpedpszjaqHR0YFdUJoWmlJ03G
         Lzqw==
X-Gm-Message-State: AOAM533JO00lzSgI+OfdebRr6DzLVi8F6cPJmhL+RqKUD2lNISZpocZs
        h8fpcj8KMQCZD4UZkO74K7w=
X-Google-Smtp-Source: ABdhPJxzwjw686J9qL8/4WGJiPLiyax+QwtQ9ArU85NJAcSqglYHg7GeJX4+sZNuOpwZ1aO9ZTmyBA==
X-Received: by 2002:adf:fec7:: with SMTP id q7mr20584331wrs.293.1599474108472;
        Mon, 07 Sep 2020 03:21:48 -0700 (PDT)
Received: from localhost.localdomain ([170.253.60.68])
        by smtp.googlemail.com with ESMTPSA id q192sm29530873wme.13.2020.09.07.03.21.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 03:21:48 -0700 (PDT)
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org,
        Alejandro Colomar <colomar.6.4.3@gmail.com>
Subject: [PATCH 1/2] fopencookie.3: printf()'s .* expects an int; cast accordingly
Date:   Mon,  7 Sep 2020 12:21:16 +0200
Message-Id: <20200907102116.16924-2-colomar.6.4.3@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200907102116.16924-1-colomar.6.4.3@gmail.com>
References: <20200907102116.16924-1-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
---
 man3/fopencookie.3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man3/fopencookie.3 b/man3/fopencookie.3
index 472a7f3d2..5394ce4a5 100644
--- a/man3/fopencookie.3
+++ b/man3/fopencookie.3
@@ -438,7 +438,7 @@ main(int argc, char *argv[])
             break;
         }
 
-        printf("/%.*s/\en", nread, buf);
+        printf("/%.*s/\en", (int) nread, buf);
     }
 
     exit(EXIT_SUCCESS);
-- 
2.28.0

