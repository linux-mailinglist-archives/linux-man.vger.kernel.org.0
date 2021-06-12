Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3007F3A4DA9
	for <lists+linux-man@lfdr.de>; Sat, 12 Jun 2021 10:33:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230208AbhFLIfI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 12 Jun 2021 04:35:08 -0400
Received: from mail-wr1-f54.google.com ([209.85.221.54]:38773 "EHLO
        mail-wr1-f54.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231145AbhFLIfE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 12 Jun 2021 04:35:04 -0400
Received: by mail-wr1-f54.google.com with SMTP id c9so8454737wrt.5
        for <linux-man@vger.kernel.org>; Sat, 12 Jun 2021 01:32:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BBuf0d/5Ak2dGeGOQy9Aoqa+7RlJjBkdL1s1ANsUrcc=;
        b=txeBNeI/gKhSXHWWU4uNJ6p+BPY0bCZ6VUv9BM9XEeGlO62PdCeuBkfj3RswtL4WDi
         JqbJGwtdsk4QVt60II/n3XxpbALyCJ+GTquR5Vkc1/YDSwabZkKdMU+wDSwI1CplEbQZ
         XloUT5r13kcfHkX3kokosb/twk+x4ga+NjNJD0KX04XOC7TJYDh3PHFs7Ud0Ph3fEh8Y
         Tugo9FyToployFiQL3+nezFlq6TRg65FULS0Iubor5SPzvnrS5MUJ+ks38zYZ0ElH/Bo
         LELfICYG63w3k0ExWVpA0ciKCncrjrKARj/ruzUyDprrNKGgnLufgAl6+I9NsxTFvxFB
         8yzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BBuf0d/5Ak2dGeGOQy9Aoqa+7RlJjBkdL1s1ANsUrcc=;
        b=cbRjoT72Nslw3Lpg+d4JROO8zH0um1JH41KpaVl3u5WO8/QJg0uW1PF1TpfaCC2/M5
         kUubRuktmoUcplEO1JFctDBpNOWAyi6aTBs30mkN2PI52ifdruWekkfkJa1vNmjFej8g
         iWBJDSAOy37hIiR7QYl/moxlyuMn8Ox/W8Y+uncUXC9/DqIvwjmIfYKhsMb1aV6dPkav
         weluy6lV63u51wnoNJPptIFZ3AkJn+2jhwcFXX2nawoEL8Ztd7bCxkdWPqROnrZqHl5q
         IfJyQ0cxgrzl1op235ljvHMZaVeGNsfvjskWguFx3zZ22l5thDlTnPg2xDVxDXWogONb
         sLQQ==
X-Gm-Message-State: AOAM532NhF0K0C5O1ihOLSuI+3Kmojx4Kr61uAg/1VC6ivDVa1DIvrfV
        14NyWakNHFB+aOAOjkde8MY=
X-Google-Smtp-Source: ABdhPJwoI/QvQ7Y2v+0q0n4ffxlJRMJK6Z6q3ezL8vS88zN8oszlqOqKQUnFhgZ2duuVstzY4D3wxQ==
X-Received: by 2002:a5d:4291:: with SMTP id k17mr8302185wrq.40.1623486715082;
        Sat, 12 Jun 2021 01:31:55 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id c12sm11165110wrr.90.2021.06.12.01.31.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Jun 2021 01:31:54 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 10/28] swapon.2: SYNOPSIS: Fix includes
Date:   Sat, 12 Jun 2021 10:31:27 +0200
Message-Id: <20210612083145.12485-11-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210612083145.12485-1-alx.manpages@gmail.com>
References: <20210612083145.12485-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

There seems to be no reason to include <unistd.h>.
<sys/swap.h> already provides both the function prototypes and the
SWAP_* constants.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/swapon.2 | 1 -
 1 file changed, 1 deletion(-)

diff --git a/man2/swapon.2 b/man2/swapon.2
index cebeb3cdb..07d5fe86c 100644
--- a/man2/swapon.2
+++ b/man2/swapon.2
@@ -44,7 +44,6 @@
 swapon, swapoff \- start/stop swapping to file/device
 .SH SYNOPSIS
 .nf
-.B #include <unistd.h>
 .B #include <sys/swap.h>
 .PP
 .BI "int swapon(const char *" path ", int " swapflags );
-- 
2.32.0

