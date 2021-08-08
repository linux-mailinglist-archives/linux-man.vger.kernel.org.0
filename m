Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 86DF93E39A7
	for <lists+linux-man@lfdr.de>; Sun,  8 Aug 2021 10:42:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231368AbhHHImW (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 8 Aug 2021 04:42:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45468 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231378AbhHHImW (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 8 Aug 2021 04:42:22 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68391C061760
        for <linux-man@vger.kernel.org>; Sun,  8 Aug 2021 01:42:03 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id m12so17091279wru.12
        for <linux-man@vger.kernel.org>; Sun, 08 Aug 2021 01:42:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=NA6URMWcpVUh0GE4ANghInt7Pg5dk5jLrDnFOloiD+A=;
        b=twF3Dq6zmORQoqSlYlInBY1MxOXc/axToIp43F92Zx0NLrVBFcVb6chEDFrjmD2RL5
         WVxAlVntLoYab/PgqTxv0naBsEESv5N/GospgmTWHSaYTJCpz4IwOq+rDAlYjSd04XSi
         FzqTC2trI/SIkWtvyAtuB78R56B2RwQuyS8HXT8ifMCCNbkB4m/rRVFrZqQAe3cpoMGg
         5JXCK4IfTUpuK6bwH/RkSuKGSX0O9Uv6fPMSWv7mnj3LZhWRl2C9262Ux0oVk4zGjFoU
         TttGgJoxxPlLFJ4GyCwBnjShyVtHqWd3CAh4haqIgp/Bf2HtzbYhv1LRAzzzhX8S98kT
         w35A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=NA6URMWcpVUh0GE4ANghInt7Pg5dk5jLrDnFOloiD+A=;
        b=DIYdFqPJU/x6rSuj0GWxONafhTHymz28l+PActowmeynd+ygCz306Qe1MJ1Cg8ec0m
         cwfBNq+0CWljaogDSuOfasisp4nSdWcmcn9/ylCD0ntGSYUpd/pxgz+nIM0Q5lXL/b1I
         LFuNCIlffRajwtJlliiOEP5m5PVY511XAZcpeUJ3x4I7N5UvS2wovnr5akwc9L+Q1A8Q
         vnkuT4eCiPZjxtM2wkLTT+CI2QQxVtNToQlicqEckGu1AJ5OJvYnDjvo/Y511RbhecwB
         il9396Vk/qN5+jNhGAORmF0fWhGgfRlcJnr/y/fTi1f9W7AVseU/MQHSXc0lX/SANOkY
         Sq5A==
X-Gm-Message-State: AOAM533zoksNIstzPJJ9PrFERJN0k4F7ELKsDDXjaHFfDqXvMHrltrVR
        z/eB/2hEWq5BA5D+y/rGuA8=
X-Google-Smtp-Source: ABdhPJxbIaSiQb5TGkv5w+WwXzhmAKuKtOzJdYYZZzTx1JhKkpd1uBrDfshv00ayEy0NiczUZ+fX0A==
X-Received: by 2002:a5d:6447:: with SMTP id d7mr19355812wrw.72.1628412122138;
        Sun, 08 Aug 2021 01:42:02 -0700 (PDT)
Received: from sqli.sqli.com ([195.53.121.100])
        by smtp.googlemail.com with ESMTPSA id h12sm15592004wrm.62.2021.08.08.01.42.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Aug 2021 01:42:01 -0700 (PDT)
From:   Alejandro Colomar <alx.manpages@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     =?UTF-8?q?=D0=BD=D0=B0=D0=B1?= <nabijaczleweli@nabijaczleweli.xyz>,
        linux-man@vger.kernel.org,
        Alejandro Colomar <alx.manpages@gmail.com>
Subject: [PATCH 19/23] regex.3: wfix
Date:   Sun,  8 Aug 2021 10:41:29 +0200
Message-Id: <20210808084133.734274-20-alx.manpages@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210808084133.734274-1-alx.manpages@gmail.com>
References: <20210808084133.734274-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

From: наб <nabijaczleweli@nabijaczleweli.xyz>

"address of regcomp() initialized buffer" ->
"address of regcomp()-initialized buffer"

Signed-off-by: Ahelenia Ziemiańska <nabijaczleweli@nabijaczleweli.xyz>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man3/regex.3 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man3/regex.3 b/man3/regex.3
index b6a83271c..368f48d78 100644
--- a/man3/regex.3
+++ b/man3/regex.3
@@ -66,8 +66,8 @@ All regular expression searching must be done via a compiled pattern
 buffer, thus
 .BR regexec ()
 must always be supplied with the address of a
-.BR regcomp ()
-initialized pattern buffer.
+.BR regcomp ()-initialized
+pattern buffer.
 .PP
 .I cflags
 is the
-- 
2.32.0

