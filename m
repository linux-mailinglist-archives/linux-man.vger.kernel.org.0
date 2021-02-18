Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 73D0F31F1AA
	for <lists+linux-man@lfdr.de>; Thu, 18 Feb 2021 22:26:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229953AbhBRVZl (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 18 Feb 2021 16:25:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50716 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229480AbhBRVZi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 18 Feb 2021 16:25:38 -0500
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1CA71C061574
        for <linux-man@vger.kernel.org>; Thu, 18 Feb 2021 13:24:58 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id n4so4555485wrx.1
        for <linux-man@vger.kernel.org>; Thu, 18 Feb 2021 13:24:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=V+Ie+jSD7WGbwld4HODHcBJ+cUe6/AnVx3fAcRgHIJk=;
        b=gCU9hc0SqQ8q01KaGpa3z3X6rxNN2sKgTyBdlDR6ZxqJFYfdq5BGItJVhCWY2IvgYx
         0DLA+KqZNmHcAW5Fmx/kJ5XB4erDJzaR44sVKcbJ723YiXhCFy9Xw0zdlj5feMugPDLt
         bYtBUR5nBp4FRFhGBLvlZuVfk77cDCDMEj/BrkN+9tiwFHScs2fUv74hYaIhRxANUCt2
         iloUxywXwpzEDKnvlgE6WH2ptQ2AIPLDF8ydHDjxw3rPQLyhGsnIq6dXn255cLlS8Iui
         c36/meSKlpk/gFfLbdto+yZlkAbtDmWHvO8BhHVfC+49QWHh14K0r0fyvyG+hqJBpSdy
         bnIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=V+Ie+jSD7WGbwld4HODHcBJ+cUe6/AnVx3fAcRgHIJk=;
        b=IbW9PaJ6rTcPza9j+4VKB0O9fBbfOWGUR4Ysu/M0ZXOhbZ8Pt73dfUHsK6oG64psaV
         Vm/bwivgynBA9uy3Tn4++v939wJbgy5fGvqeU9/rEa/CCrQWIXFsPymhvukZak9dP2QE
         1Oub+EC6ZaTw7EcHrTKmQt1+gHhyHQhDQTnPpYX3JJ7gNCeBrs8nQ7sU6dYHQumEarrJ
         e4zGcIu7t++GxnzcQHea8zcbN2aKzlflMHi+DC9CUMTdPyBikbxIb/SQdh3RiGmkHn1P
         3pQjdj8XaaZDfk8tVw4PPl6Gyaf+k1crcAnjSesTrIrHDfXouiBISfn4Y1yoFvuWFAm5
         oKmw==
X-Gm-Message-State: AOAM5337pOchXLUxvGXV63cdAhQig/11ZVPzdb3644jcV+auR1izwBIP
        GI7fU6k1+2H1sraIXhGlkO8=
X-Google-Smtp-Source: ABdhPJweuYFBrEdm6RnSAUbfNmEVnxiNStg5HuST1N72FbqBmAGS7trB0ogEg0OvouStNaBOYZ3sZg==
X-Received: by 2002:adf:f6d0:: with SMTP id y16mr6134730wrp.351.1613683496893;
        Thu, 18 Feb 2021 13:24:56 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.130])
        by smtp.googlemail.com with ESMTPSA id s11sm7870940wme.22.2021.02.18.13.24.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Feb 2021 13:24:56 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH 0/6] man[23]: SYNOPSIS: Use 'noreturn' in prototypes.
Date:   Thu, 18 Feb 2021 22:23:53 +0100
Message-Id: <20210218212358.246072-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.30.1.721.g45526154a5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

Here's a patch for using 'noreturn' in the prototypes that never return,
such as exit(), abort(), longjmp(), etc, using standard C (C11) syntax.

This patch set fixes all of man2 and man3.

Cheers,

Alex

......

This was useful:

.../glibc$ man_lsfunc ../../linux/man-pages/man[23] \
           |while read -r syscall; do
           	echo "=============================  ${syscall}";
           	grep_glibc_prototype ${syscall} \
           	|sed -e 's/\bextern //' \
           	|pcregrep -M '(?s).*noreturn.*';
           done \
           |less;

---
Alejandro Colomar (6):
  abort.3: SYNOPSIS: Use 'noreturn' in prototypes
  _exit.2: SYNOPSIS: Use 'noreturn' in prototypes
  err.3: SYNOPSIS: Use 'noreturn' in prototypes
  exit.3: SYNOPSIS: Use 'noreturn' in prototypes
  pthread_exit.3: SYNOPSIS: Use 'noreturn' in prototypes
  setjmp.3: SYNOPSIS: Use 'noreturn' in prototypes

 man2/_exit.2        | 4 ++--
 man3/abort.3        | 2 +-
 man3/err.3          | 8 ++++----
 man3/exit.3         | 2 +-
 man3/pthread_exit.3 | 2 +-
 man3/setjmp.3       | 4 ++--
 6 files changed, 11 insertions(+), 11 deletions(-)

-- 
2.30.1.721.g45526154a5

