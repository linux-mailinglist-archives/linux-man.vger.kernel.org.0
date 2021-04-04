Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 57075353803
	for <lists+linux-man@lfdr.de>; Sun,  4 Apr 2021 14:00:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230364AbhDDMAD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 4 Apr 2021 08:00:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37926 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230463AbhDDMAD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 4 Apr 2021 08:00:03 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9823C061756
        for <linux-man@vger.kernel.org>; Sun,  4 Apr 2021 04:59:58 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id c8so8594309wrq.11
        for <linux-man@vger.kernel.org>; Sun, 04 Apr 2021 04:59:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZQywSc5f7Ase0WomGyVU9XWh1gCOn0/9NhoiSEBuDk0=;
        b=PwqG9mEfFjak2JnV94p94WstpAkZKN+Cue/VphQepLNylsT+B8TT7YzDJvRuuCw7l+
         Dlwb5ziYnoczpqhTwdn79cUNlRnlukwuAjLnd4WBqiDNX3wtGvSXjy0+zoApfmI9Z2/v
         fAO+5kucJRDQuZwdmSrmJ3N7TxyzkJFz499a/qbFwCQJfHS+7byPmRxQ6V5fxr0Szk00
         F3NH+Fpen9gelzGv+IHOPkRb/PNP85j9F272SEv1Ko+1SfjEPWzTMFuC+8FAenWmhi8H
         fLWPweB5w2AePY/9nDNvQGPYpPbjDDl3kGicoaS0ipogYgl1cdSEmKIzQKnlicAih7D3
         bbSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZQywSc5f7Ase0WomGyVU9XWh1gCOn0/9NhoiSEBuDk0=;
        b=L+0wiuxxfJpVXCxVcLhSL+x/w5+kYoicmlAKBW/PaD8MRlHDIMxKCVmCZGXRckDa9+
         CVzesc5Fj1Vz/BOHj/C8RjFD55UPi654h11uKvCJUz+BTby8mnklveHeow+lADITsE3u
         BsEbZBVie2+sJYRkPfZDEHKBB7YBhYVUqnKo7NhcOz8yn5AvuNOqsIBp6AxrpkqZiDWL
         K/r+2wnAqVAPOYtz8JLwA/57zNixCAaw59C6b2O13TceldrjhjQ7/i3ffbpF5zMvoMfY
         Czr0YKTKSmMJwd/iAPzBRPFYjfvMR52N5m44oP8b0E0Nq4QbQeU45EkAdCyAnI5vVrbf
         MOog==
X-Gm-Message-State: AOAM530Tqqu4f3JKKupdNYePviy1gX9XmC+Za28dAFhS2vFhjEjfksdN
        xUSYlhwmjrj/IhQKay8UhNw=
X-Google-Smtp-Source: ABdhPJz9CtjEgGn/nuLrrYXWsgDnVgLToHbVdIMWQzGfz8COO17wipMIWERibR3YQa1jOzBV+XRC0A==
X-Received: by 2002:a5d:4d89:: with SMTP id b9mr7771489wru.356.1617537597614;
        Sun, 04 Apr 2021 04:59:57 -0700 (PDT)
Received: from localhost.localdomain ([170.253.36.171])
        by smtp.googlemail.com with ESMTPSA id u2sm23786967wrp.12.2021.04.04.04.59.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Apr 2021 04:59:57 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org, libc-alpha@sourceware.org
Subject: [PATCH v5 35/35] ioctl_getfsmap.2: Make clear why exactly is each header needed
Date:   Sun,  4 Apr 2021 13:58:48 +0200
Message-Id: <20210404115847.78166-36-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210403194026.102818-1-alx.manpages@gmail.com>
References: <20210403194026.102818-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

<linux/fs.h> doesn't seem to be needed!
Only the include that provides the prototype doesn't need a comment.

Also sort the includes alphabetically.

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/ioctl_getfsmap.2 | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/man2/ioctl_getfsmap.2 b/man2/ioctl_getfsmap.2
index 4ff1c8a90..f87fb5c7a 100644
--- a/man2/ioctl_getfsmap.2
+++ b/man2/ioctl_getfsmap.2
@@ -25,9 +25,10 @@
 ioctl_getfsmap \- retrieve the physical layout of the filesystem
 .SH SYNOPSIS
 .nf
-.B #include <sys/ioctl.h>
-.B #include <linux/fs.h>
+.RB " /* Definition of " FS_IOC_GETFSMAP ", " FM?_OF_* ", and " *FMR_OWN_* \
+" constants */"
 .B #include <linux/fsmap.h>
+.B #include <sys/ioctl.h>
 .PP
 .BI "int ioctl(int " fd ", FS_IOC_GETFSMAP, struct fsmap_head * " arg );
 .fi
-- 
2.31.0

