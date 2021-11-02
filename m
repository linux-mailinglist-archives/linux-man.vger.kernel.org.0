Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0F78C44354A
	for <lists+linux-man@lfdr.de>; Tue,  2 Nov 2021 19:15:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234974AbhKBSRw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 2 Nov 2021 14:17:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37418 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234975AbhKBSRv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 2 Nov 2021 14:17:51 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C409C061203
        for <linux-man@vger.kernel.org>; Tue,  2 Nov 2021 11:15:16 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id b184-20020a1c1bc1000000b0033140bf8dd5so25769wmb.5
        for <linux-man@vger.kernel.org>; Tue, 02 Nov 2021 11:15:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=jGS3jVNL3/Pfeb0zYdGIIeK7U8u5MfjCi+YXCfumDs0=;
        b=DAhmTSFQMaelRVXbA/8dQxBwU77jtro7nioN8pL7CgOeIShrKwd63SJJ96KQATTBuw
         9BuXbIPOcNNOJa6vkWhkDcqZVXW9PwlNkhWeOD6CrKkSkYFXOHLcL3RpDs+chHVyf4kg
         AK3IKI54EzNR6+ZePC/C1NSZfnceuwBNlyfjW5c3SULAh/wF0DUqhHxK8PzTeKdfhD3p
         JYNT07O+Iz0DpVWC9WVNiOeWfbf8pzz9ZDDAnmoN2eNOQmjOpbC+Y3/2n218KXLhCzF4
         TJm9hXhKOWaa5HBYOJ42VBIqLemQhnEsEA8FSuwOrw+H1uDjXUVWDiw7/mc7Wrp0A/P4
         HCbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jGS3jVNL3/Pfeb0zYdGIIeK7U8u5MfjCi+YXCfumDs0=;
        b=ZXjfr/Ujq4mGHqbkXwNfJaZ+f8ql7ounTf9pvtmIjakEUtXJ6qJAU+mv03s2jr2Z5s
         JRh1a3X9XoETOAEknthWNEG86oIyQPBgRQLLPJVugxc1aLF+mENwrM6lpT+spLjiNjI3
         HJQ+IGrJBKR37tGbQFa9+s0uBpeGyNTpMYHJDeqvxYQg54tQESFqG5HMqZfQQ7VtCxQa
         IoDfv/SXlAOWpJwyK1Xkur0KS9kpGa0ayHQSiHKUfKQeJFSkevVUQuxlE9Px7qgjAZDe
         cviuoiw4h2ebP7uZfwFhN5TNKdnkXfomiNynurGAaL4/oMLu1SwDl9Neqs/kN1t5inBO
         0qaA==
X-Gm-Message-State: AOAM530zxO0fSBnoi0nd8H9yaA4nnRp2cAqu6t9A1swQiuWY4xeXO6LE
        rvjy6A9OuO2LUlnyhW44t+w=
X-Google-Smtp-Source: ABdhPJyP3Pdg+5N+CoKE9Mulw293W19XHM7BKFDHu4eZFU38U1mN5+YJFm66KDNq5ug4Bzs0K8lDiA==
X-Received: by 2002:a7b:cf0f:: with SMTP id l15mr9173404wmg.92.1635876914837;
        Tue, 02 Nov 2021 11:15:14 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id f18sm18467445wrg.3.2021.11.02.11.15.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Nov 2021 11:15:14 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com,
        "G . Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: [RFC 14/37] clockid_t.3, system_data_types.7: Move text to a separate page
Date:   Tue,  2 Nov 2021 19:14:31 +0100
Message-Id: <20211102181454.280919-15-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211102181454.280919-1-alx.manpages@gmail.com>
References: <20211102181454.280919-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/clockid_t.3         | 25 ++++++++++++++++++++++++-
 man7/system_data_types.7 | 22 ----------------------
 2 files changed, 24 insertions(+), 23 deletions(-)

diff --git a/man3/clockid_t.3 b/man3/clockid_t.3
index db50c0f09..5d56fc0ac 100644
--- a/man3/clockid_t.3
+++ b/man3/clockid_t.3
@@ -1 +1,24 @@
-.so man7/system_data_types.7
+.TH CLOCKID_T 3 2021-11-02 Linux "Linux Programmer's Manual"
+.SH NAME
+clockid_t \- clock ID for the clock and timer functions
+.SH SYNOPSIS
+.nf
+.B #include <sys/types.h>
+.PP
+.BR typedef " /* ... */ " clockid_t;
+.fi
+.SH DESCRIPTION
+Used for clock ID type in the clock and timer functions.
+According to POSIX,
+it shall be defined as an arithmetic type.
+.SH CONFORMING TO
+POSIX.1-2001 and later.
+.SH NOTES
+The following header also provides this type:
+.IR <time.h> .
+.SH SEE ALSO
+.BR clock_adjtime (2),
+.BR clock_getres (2),
+.BR clock_nanosleep (2),
+.BR timer_create (2),
+.BR clock_getcpuclockid (3)
diff --git a/man7/system_data_types.7 b/man7/system_data_types.7
index e320c44ca..f41ebc73f 100644
--- a/man7/system_data_types.7
+++ b/man7/system_data_types.7
@@ -56,28 +56,6 @@ system_data_types \- overview of system data types
 .\"------------------------------------- cc_t -------------------------/
 .\"------------------------------------- clock_t ----------------------/
 .\"------------------------------------- clockid_t --------------------/
-.TP
-.I clockid_t
-.RS
-.IR Include :
-.IR <sys/types.h> .
-Alternatively,
-.IR <time.h> .
-.PP
-Used for clock ID type in the clock and timer functions.
-According to POSIX,
-it shall be defined as an arithmetic type.
-.PP
-.IR "Conforming to" :
-POSIX.1-2001 and later.
-.PP
-.IR "See also" :
-.BR clock_adjtime (2),
-.BR clock_getres (2),
-.BR clock_nanosleep (2),
-.BR timer_create (2),
-.BR clock_getcpuclockid (3)
-.RE
 .\"------------------------------------- dev_t ------------------------/
 .TP
 .I dev_t
-- 
2.33.1

