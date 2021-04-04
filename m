Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E5A773537E6
	for <lists+linux-man@lfdr.de>; Sun,  4 Apr 2021 13:59:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230373AbhDDL7n (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Apr 2021 07:59:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230307AbhDDL7m (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Apr 2021 07:59:42 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40107C061756
        for <linux-man@vger.kernel.org>; Sun,  4 Apr 2021 04:59:38 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id o20-20020a05600c4fd4b0290114265518afso1566573wmq.4
        for <linux-man@vger.kernel.org>; Sun, 04 Apr 2021 04:59:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=q7IOiVrQjHRTRmbdVaEa4LKpd5wHcjiuSaqgIJt7lkc=;
        b=n6xMrLXepeTXa3/2qmr304uYeD4icQo+QVq+IoXdpb/Fv+etYtg0v/KoUeUn4XBbkl
         BCAVLA01HqO2DEKUOWZteHhTAEwM+liBRC3r6g/mNY15suIKgLJXIVmSDzXjf5MP4RG/
         /me4ejck/4RLSxV9Cckn54fUl+rF2DrMC51tVSqAdy0iuyGOXXrS4KmYpCouMsTQ5FYK
         uobyItEavHSo3yCpo1H4HQlOUORd7y9Y1BiZqyPxJYh6GgoIx+ue9tBpafUE48s+/vk0
         cEixpomebd1yDEKjsR+P9mbOZZ+oOzd12p7AaRauaKFULuosODJyaVU/Sxq1o2kigIBL
         IuLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=q7IOiVrQjHRTRmbdVaEa4LKpd5wHcjiuSaqgIJt7lkc=;
        b=JhQu7NV76qXs9/e22k0+ZiYKWQ9JXmj7x+OumoI1ISqmV5pnskyTAuQ+S6fe/kNiBz
         it74pb8V0/ypwFRWmARj6Tv9anIE+ebj+5XIWvaY/wx7HW9jbM+Is/TvF9OVuX7pgssr
         57ehTezSxVvztU+48zjU+DooWF+Ij5Tmp3OOV6zGPT/1JDRASl47lPw/mMvICnB/R1dM
         R13uK440+nlzRIygfARRFa26kQTC4WSi1Jhd/iuB9ZGw5PZQRWM2eSxeBP2hAkgG7Zd0
         Q/zCVZ0fIRANF51FgvJk7LKDtOCTz4COgwQKUUnTM6UnBAP4upveNX8aAUPqQBFWU4aR
         tu9A==
X-Gm-Message-State: AOAM533RQj7G7IUlxm7D/YDDJvAPg431UKu4XsTiLIAfhSHMP5RhHPdE
        7gF3KbkRa01i2zaDM318Dc2MSQiYzus=
X-Google-Smtp-Source: ABdhPJxpYHMLYHCfgMiTP1E0zo01aFo5aNlPCTHQkRrjZtftztzKodb5x/KaD5fuQMB0Gb6sq/kWNg==
X-Received: by 2002:a05:600c:4656:: with SMTP id n22mr5045188wmo.30.1617537577109;
        Sun, 04 Apr 2021 04:59:37 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u2sm23786967wrp.12.2021.04.04.04.59.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Apr 2021 04:59:36 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v5 06/35] add_key.2: Remove unused include
Date:   Sun,  4 Apr 2021 13:58:19 +0200
Message-Id: <20210404115847.78166-7-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210403194026.102818-1-alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

<sys/types.h> was only needed for size_t, AFAIK.  That is already
(and more precisely) documented in system_data_types(7).  Let's
remove it here, as it's not really needed for calling add_key().

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/add_key.2 | 1 -
 1 file changed, 1 deletion(-)

diff --git a/man2/add_key.2 b/man2/add_key.2
index f3d803adf..dca44b8e7 100644
--- a/man2/add_key.2
+++ b/man2/add_key.2
@@ -14,7 +14,6 @@
 add_key \- add a key to the kernel's key management facility
 .SH SYNOPSIS
 .nf
-.B #include <sys/types.h>
 .B #include <keyutils.h>
 .PP
 .BI "key_serial_t add_key(const char *" type ", const char *" description ,
-- 
2.31.0

