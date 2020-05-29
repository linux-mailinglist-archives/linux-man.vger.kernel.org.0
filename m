Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 958D01E795E
	for <lists+linux-man@lfdr.de>; Fri, 29 May 2020 11:25:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725795AbgE2JZj (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 29 May 2020 05:25:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725306AbgE2JZi (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 29 May 2020 05:25:38 -0400
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B3D5C03E969
        for <linux-man@vger.kernel.org>; Fri, 29 May 2020 02:25:38 -0700 (PDT)
Received: by mail-wr1-x42a.google.com with SMTP id j10so2667369wrw.8
        for <linux-man@vger.kernel.org>; Fri, 29 May 2020 02:25:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=jEARceR7rH9gSpNt/oXX7WMiSpTw+v7nYbLB2ikgDRk=;
        b=nZ+8a8B/duaqaw+S36paH6Zm83YEe9Wc+MYN5/OnHTDpqgOhuL/tmwqKHm70aIeS0M
         zI3QL8AyHaF4nj6enM1hdfbSWozIk1MaxnpaHbx/OI1FCS83kE0dFSvLKKBkXWp1tiHA
         b5d7O3yXr+Zq6Tvc4hs8W/Z2Kzt6c6eGkDrH8mE3y5h7LT+qQCC9y39Z/IB5PH1tGVD6
         HuoekoTRddRjR6WqJ/ha/fB9+wkUvFzKIrtKSFqPICiIC3+KWR6hnsGIxODCYG0RYFmO
         sKt9lmavYiuo4lQ/6eEQGZRoi/h04ziP1j4efTnFuaqDII+X2fNuVD5+khLvpYWbm+kl
         ouqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=jEARceR7rH9gSpNt/oXX7WMiSpTw+v7nYbLB2ikgDRk=;
        b=B7nDS47b3X1Q10WvF8M9Lv3FGDBmSN+Un6kZ5IX4wm5b5ks45nVlqFf2GaWA8l7jl1
         XrY9/VXt/Ns0Vdzre7KVgEi3NpopWBnSSj6e3wJgJW5+HsTP84NWYhgNP3EM76okujs4
         gXw6c/zT6snhO6uKtn9hp4yaPZZkLfbT2soobsvPqB6bRUjwbLyM8SoJpA4U8nfsEn+i
         ZBhflVqq8t6zFxYO73Breyen0jXkYevWTxHzb8ZJjfp1z3pMet4vKKgM7nN5vz1QZnhC
         CdS1Qteccf6gE/LbrplvDk8zTlRR6QKAcwkklNi4SN8DrswYeBVx5bj1o10ae4isawXO
         F6QQ==
X-Gm-Message-State: AOAM531ezdZTu8lY7YtLx3gIVrDqMHeCmicWlg4hr9VKIzesCIwqaFMF
        VelQWIAiwnA8gAQW4AXL4buWSDdz
X-Google-Smtp-Source: ABdhPJzlcie3rz3fNY0PrEm5ARP9DKkMgfnrsNduypbIHDRPeM0BvYTDIU/2td8Yt8PftCjkTGVOBQ==
X-Received: by 2002:adf:e744:: with SMTP id c4mr8416860wrn.71.1590744337169;
        Fri, 29 May 2020 02:25:37 -0700 (PDT)
Received: from localhost.localdomain ([141.226.12.123])
        by smtp.gmail.com with ESMTPSA id 10sm10645817wmw.26.2020.05.29.02.25.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 May 2020 02:25:36 -0700 (PDT)
From:   Amir Goldstein <amir73il@gmail.com>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>,
        linux-man@vger.kernel.org
Subject: [PATCH 0/3] fanotify man page updates for final v5.7
Date:   Fri, 29 May 2020 12:25:27 +0300
Message-Id: <20200529092530.25207-1-amir73il@gmail.com>
X-Mailer: git-send-email 2.17.1
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

We made a last minute call to disable the FAN_DIR_MODIFY for v5.7.
Here is a man page update with some promissed cleanups.

Thanks,
Amir.

Amir Goldstein (3):
  Revert "fanotify.7, fanotify_mark.2: Document FAN_DIR_MODIFY"
  fanotify_init.2: move out of place entry FAN_REPORT_FID
  fanotify.7, fanotify_mark.2: Clarify FAN_ONDIR in output mask

 man2/fanotify_init.2 | 60 ++++++++++++++---------------
 man2/fanotify_mark.2 | 50 ++----------------------
 man7/fanotify.7      | 91 ++++++++++++++------------------------------
 3 files changed, 61 insertions(+), 140 deletions(-)

-- 
2.17.1

