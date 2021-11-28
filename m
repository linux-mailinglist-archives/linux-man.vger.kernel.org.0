Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BC42946068F
	for <lists+linux-man@lfdr.de>; Sun, 28 Nov 2021 14:47:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234103AbhK1NvK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 28 Nov 2021 08:51:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236146AbhK1NtK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 28 Nov 2021 08:49:10 -0500
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70CD7C061574
        for <linux-man@vger.kernel.org>; Sun, 28 Nov 2021 05:45:54 -0800 (PST)
Received: by mail-wm1-x335.google.com with SMTP id c6-20020a05600c0ac600b0033c3aedd30aso10390001wmr.5
        for <linux-man@vger.kernel.org>; Sun, 28 Nov 2021 05:45:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=XeC2uYshWtc4jiEVlIVdxr5oamkOCx2YpKuqNPL1f68=;
        b=Ivw0q6+p1N5Q8FAm3ieu5Q7OvyxZpsobRR+QVZ2JWT9y7HhPgkDWOMcABBF53qifw5
         m2RzxLwOxShIu9Ha2dj+KLuSdAayFt3qfva7GfH6iciz6dLnSaxJ9NNdUKHifKr8INfx
         4JU9ORibqCZI8qidDmyWET0VJorOMn/uFqSTocFfRoYk8CvbJMHckADJ1g5500eZvP1q
         Mzxx+JsmWOTH8ZQndiVhnxa+GW8WQHhgJry45uLWbWSLG/3wPsy2eKNoUjgY3TgdwfPC
         3FEaAexUd+VbPnuwEpTl+wOD5bfIKHCVuZcDQr+yx/paU3FAAbgze6uMstOgObAOrtUB
         oMWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=XeC2uYshWtc4jiEVlIVdxr5oamkOCx2YpKuqNPL1f68=;
        b=U+KTe0YfH02kmtjwgLRtLObum0ECY2Y9+cMnS8GXOcHmM4NFJEOQKy8h61xmoJtcV5
         5RJypQnGs6VSnk4mUQkaT5ugI5B/qgoZLzd4M23yV2lrP4qgh0DEuajUb7BqbiOlriWG
         H/3OUz7jssmfCtxmgK9E6h12IfNmhc7cMKxRonWOjwHBSKzaUyohNHrTzG9kAeHsnbuC
         QAV6p4xecMowGUcX4CqG/nLTDHlisyWp2QJj6BTqTr2uTi0M836b0xVD3J96bEmW/hat
         dGQ5pDi/an/6nCfZ1pv0pA3xVcIlIbBxsB/cbPSc/nI3yMVlF/AmJUJolTl3AMtj7ATB
         oV3Q==
X-Gm-Message-State: AOAM530Nfxx1BouutYZZzGH59CdNAxqrQctWwftRprb6qyUj1JOpkaw5
        MpYdbZPct2KbYUIFNxDHPMC49qEJU6M8Nw==
X-Google-Smtp-Source: ABdhPJzDEyCKP+P777Ljw+E/+/H0lj6Lunh7Y93osDCp+ujjPNbrspUTQLUyLH0S67sllQHFAwtwGQ==
X-Received: by 2002:a1c:f416:: with SMTP id z22mr29759449wma.121.1638107152711;
        Sun, 28 Nov 2021 05:45:52 -0800 (PST)
Received: from localhost.localdomain (IGLD-84-229-75-209.inter.net.il. [84.229.75.209])
        by smtp.gmail.com with ESMTPSA id k13sm10804381wri.6.2021.11.28.05.45.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Nov 2021 05:45:52 -0800 (PST)
From:   Micha Kalfon <smichak.uv@gmail.com>
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, Micha Kalfon <smichak.uv@gmail.com>
Subject: [PATCH] pidfd_open.2: tfix
Date:   Sun, 28 Nov 2021 15:45:40 +0200
Message-Id: <20211128134540.29361-1-smichak.uv@gmail.com>
X-Mailer: git-send-email 2.34.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

See clone(2) on why the CLONE_PID flag is no longer relevant and was
recycled for use as CLONE_PIDFD.
---
 man2/pidfd_open.2 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/man2/pidfd_open.2 b/man2/pidfd_open.2
index fd86015b6..9d9bee471 100644
--- a/man2/pidfd_open.2
+++ b/man2/pidfd_open.2
@@ -161,7 +161,7 @@ A PID file descriptor returned by
 (or by
 .BR clone (2)
 with the
-.BR CLONE_PID
+.BR CLONE_PIDFD
 flag) can be used for the following purposes:
 .IP \(bu 2
 The
-- 
2.34.0

