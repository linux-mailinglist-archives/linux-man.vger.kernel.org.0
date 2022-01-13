Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 08B2748D85D
	for <lists+linux-man@lfdr.de>; Thu, 13 Jan 2022 13:59:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229842AbiAMM7K (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 13 Jan 2022 07:59:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43428 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229579AbiAMM7J (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 13 Jan 2022 07:59:09 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2FBC2C06173F
        for <linux-man@vger.kernel.org>; Thu, 13 Jan 2022 04:59:09 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id x4so9930913wru.7
        for <linux-man@vger.kernel.org>; Thu, 13 Jan 2022 04:59:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=PgS2N+iJ1kukYNDiBMooe18ZalQaeQGpC4ziBfZ/nG4=;
        b=gi7+PT/qGYaQq5jcv6CvijMXfgmIMwCHPrl1HhRQsEj9uiO9pHB+Zc8/clhSDlwUpt
         tOqrYFXDd/X1xOXpLYYjrak5Zn/G+UOv8Pd6z+zUGA9RTJzuogqXazVEAWA76V168DRQ
         V2KoChjT5aZ3UzVeKYICC+5OwJiUnkRmRbQUs26CwkKW3KxLbaP0LgHNkD+4edCz3yQB
         nVkSIQMIrLlpODJkohIuf2cnhLR2ZG860oDQV4z9hbZc/M9PGVMqh8W6JOqkMg8oKe4N
         QTO3GM1HY+iS000seZZ5wakDVJZc84i08HsWTGfbs76EETnHioa2MzB01uMezdsTNeIs
         x9jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=PgS2N+iJ1kukYNDiBMooe18ZalQaeQGpC4ziBfZ/nG4=;
        b=EwS3/g45qvGiz6G/i26u280t7ed9q/Aq2XS+jZ4CqNbKhtb08RBzED+qGtHjBnO1Nq
         44UwOykHShmh5TV3jDWtudfoiearHGF/8MXTaTOqMS02lf7jXzW/Wn8VlFXLzrMgmpBK
         LoBSt4KBERjQ61x4tDk0dMTSTtmF7RYzT3T4LKCE8rCuDYJL3zDFCeq8FK536uXH24Ah
         820VKS3e7O4Ydq8NOH6L5L9moh958TFdM6kyFRErSEMKWI+PiUqbj95t0aaYVvheGiGh
         haKTGppzKjxbaAOod4m+uoL11mYhUuR2tLEInBNS8UYl5vJw49BinJkUzMpYIUKhsLRP
         wQMg==
X-Gm-Message-State: AOAM5311mtQg1YLTxc1mH4zUkig2SoSD7homyo0KTrchpaV64+fKjGYY
        XVqYsriOtzuo+Fx1CkFHK0smleOEK5c=
X-Google-Smtp-Source: ABdhPJwCmUz1zq3T+VfphmRNexD0PCfxamX5E8DPkPxVCE26wmAGlNlzRuLUiiTUFKHg4EXCBtPVvA==
X-Received: by 2002:adf:d1ef:: with SMTP id g15mr4044443wrd.198.1642078747779;
        Thu, 13 Jan 2022 04:59:07 -0800 (PST)
Received: from ady1.alejandro-colomar.es ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id m35sm13081309wms.1.2022.01.13.04.59.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jan 2022 04:59:07 -0800 (PST)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     linux-man@vger.kernel.org,
        Adhemerval Zanella <adhemerval.zanella@linaro.org>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Florian Weimer <fweimer@redhat.com>,
        Carlos O'Donell <carlos@redhat.com>
Subject: [PATCH] epoll_wait.2: epoll_pwait2(2) wrapper added to glibc
Date:   Thu, 13 Jan 2022 13:52:52 +0100
Message-Id: <20220113125251.16920-1-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

glibc's wrapper has the already documented prototype, so no need
to change anything.  Just remove the FIXME.

Reported-by: Adhemerval Zanella <adhemerval.zanella@linaro.org>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
Cc: Florian Weimer <fweimer@redhat.com>
Cc: Carlos O'Donell <carlos@redhat.com>
---

Hi Adhemerval,

Thanks for adding the wrapper, and for telling me :)
I'll add this patch to the man-pages.

Cheers,

Alex

 man2/epoll_wait.2 | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/man2/epoll_wait.2 b/man2/epoll_wait.2
index 69c79d6ec..35f99ef18 100644
--- a/man2/epoll_wait.2
+++ b/man2/epoll_wait.2
@@ -35,9 +35,6 @@ epoll_wait, epoll_pwait, epoll_pwait2 \- wait for an I/O event on an epoll file
 .BI "int epoll_pwait2(int " epfd ", struct epoll_event *" events ,
 .BI "               int " maxevents ", const struct timespec *" timeout ,
 .BI "               const sigset_t *" sigmask );
-.\" FIXME: Check if glibc has added a wrapper for epoll_pwait2(),
-.\"        and if so, check the prototype.
-.\"        https://sourceware.org/bugzilla/show_bug.cgi?id=27359
 .fi
 .SH DESCRIPTION
 The
-- 
2.34.1

