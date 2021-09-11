Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EC045407955
	for <lists+linux-man@lfdr.de>; Sat, 11 Sep 2021 18:01:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232635AbhIKQDB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 11 Sep 2021 12:03:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55770 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233085AbhIKQDA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 11 Sep 2021 12:03:00 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2EAF0C061574
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:47 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id l7-20020a1c2507000000b002e6be5d86b3so3459071wml.3
        for <linux-man@vger.kernel.org>; Sat, 11 Sep 2021 09:01:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=bTil2Ww+gGcx3HmBQWrpDSY4QVrkY5O6TFVeBlWLdOs=;
        b=iMgo124HtAzhHE6lukxMiEWfT5RIJ5PBdeSTqnL+4mc2LeVsPLY7lzS4KHuZ/PGXpH
         4BfTUFiQwqQ1jQkIuhiSIaGRW905fGN4n7bu/zngBcV5X0ZmfJ2IRPyqwvx5O0cQ8m++
         z66PcCNeEqyNaJEv0yImXJUrT+GhUy+uACCWd0Vzuz/H0S+MdDqly6GMryJaWD0gsglR
         mqi1p82ftp4/w22LjjGB86gLLpXwNX1grdnOXwYrzJV9OF+Ft6fRKSw9SBT9RHC1z8kI
         KdFhtexw0hh+UzQMwTds04XcQASvAueGedj8d25tkGWsQBlBjYLBNAPGiAwVwDKCa+yU
         60Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=bTil2Ww+gGcx3HmBQWrpDSY4QVrkY5O6TFVeBlWLdOs=;
        b=S+PmEegoh2a1B4zuz7NC0ehMiRRXHsh2Sky0SPNBSwrqhsIie/ij9w+KjXt988fHWa
         eNZLm1djUjtO7lc02pnUs2Is1GCQP+94pzcP9wR74UjYBanWAgmHm1WcqJ2CEDnI5udt
         3FNaSnDkdFJ+DSAuPod5KnKMe20UYyAmy+9FcuhAEkO+z6+Y9TyZqo2Ug+jo3j+xZWtE
         /zvwsP3ivC7AHZxAUzMNCRFgMZqzPK2E5gvniX0utGkxCJuRssw9Xs5RD51KbglLta2Y
         qA7cW8aWrrzsQUy3NRa70kj0pYfIUEHZpNJWeYyst/TX10wNAetYuZUTOMfKtpa66Var
         v82w==
X-Gm-Message-State: AOAM532N1O+lgiSfV92b5FurSmHAjbn4SVN3h8JGHGfPjBd2mdXgn8x9
        TQHw0IGlchZMJ/GCmVyfmQiBBroiafE=
X-Google-Smtp-Source: ABdhPJzRJxvWSGJgISc+dJShwbnovZ4byr7zFG9BstE+lOkuyn5a0TCIzj4MwzOLMYrxCEH6pmSRyA==
X-Received: by 2002:a1c:21c3:: with SMTP id h186mr3290341wmh.18.1631376105868;
        Sat, 11 Sep 2021 09:01:45 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id i9sm1947313wmi.44.2021.09.11.09.01.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Sep 2021 09:01:45 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [PATCH 21/45] unlink.2: Add LIBRARY section
Date:   Sat, 11 Sep 2021 18:00:53 +0200
Message-Id: <20210911160117.552617-21-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210911160117.552617-1-alx.manpages@gmail.com>
References: <20210911160117.552617-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/unlink.2 | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/man2/unlink.2 b/man2/unlink.2
index 97b71f6e7..dbb0774cb 100644
--- a/man2/unlink.2
+++ b/man2/unlink.2
@@ -33,6 +33,9 @@
 .TH UNLINK 2 2021-08-27 "Linux" "Linux Programmer's Manual"
 .SH NAME
 unlink, unlinkat \- delete a name and possibly the file it refers to
+.SH LIBRARY
+Standard C library
+.RI ( libc ", " -lc )
 .SH SYNOPSIS
 .nf
 .B #include <unistd.h>
-- 
2.33.0

