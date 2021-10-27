Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 090AE43C66D
	for <lists+linux-man@lfdr.de>; Wed, 27 Oct 2021 11:28:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231795AbhJ0Jas (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 27 Oct 2021 05:30:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230195AbhJ0Jas (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 27 Oct 2021 05:30:48 -0400
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com [IPv6:2607:f8b0:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D056C061570
        for <linux-man@vger.kernel.org>; Wed, 27 Oct 2021 02:28:23 -0700 (PDT)
Received: by mail-pg1-x535.google.com with SMTP id l186so2326311pge.7
        for <linux-man@vger.kernel.org>; Wed, 27 Oct 2021 02:28:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=YwJpTciCOkvH8iZU6M69ehyqki0D7ZBIm2vNTrsNJYU=;
        b=WIm3z1++nw6FSkBTBIeo5vs/CbPZ92uJpoWjnhXOdvRIZnE1rTwW7NXjjkfHT/7Yif
         qOHaCPjhyWpSYAy7lbW6dR/fh+qBKSTFR9leKe0XCJ8xIgtnvQCRMSIs8YBPNWw8cjLm
         UzzrlPBm92mtuGmpVCrFqJqxvoVrrENe/g+Q5VMsxxjRXMAy5lyHSo04ECTPFI6703ti
         pzdi5pWBBkpWr7St4CNSEKLltyaa5J78cVZAbqiEe0Aex7QgMsQDh+BPA2HNMKQUJNW1
         yhOBW0PcSEjoZpR/JydQ1SduWEOK7PiLW1bUuEZHquMvvbMOrS2B3P6Ss1Y0D1MdaAG/
         KLwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=YwJpTciCOkvH8iZU6M69ehyqki0D7ZBIm2vNTrsNJYU=;
        b=d5KRSq73KgnM4Fbde8ilqMCBduoEwnp9ecijO+SYu73NIvJjM1CTsws6YLMLyenuXW
         slG5C3KLIslpdXJ81mj/Nh2xGMMq3gxmv/Evnjq4ByMUwdiMDg4AldlXzZXv/+0j0p5c
         AiQded/UVjj0erH9bT/lK621xWHew8UmD4Xml9tXw+Gyn06LRxTnDmWeCFmCNszXPVQa
         xm5DmQ1T5e9AHUXqtr+4iplMF8JOH+8IuM7XFyGzeJr/vr5T8wM0kP8YMvkosr/Arbf6
         1TcT+AhSm5xmeq1lNbmlBisGLW9Vq97G2VRAMsQyKzNfKvv+06VtHdnyWNDaR345OErk
         fJJw==
X-Gm-Message-State: AOAM530PPYlVDfIr32tOF6Xr99DI0Rhp1qiboUiZJmD8kJ2eDaoqupTj
        2OaYm85IlSlaXjNJ83qJ6IvC6w==
X-Google-Smtp-Source: ABdhPJxeBPtLPunjUFp/rWnThxUFby4bEGvrlElpT/XmN1Dr+0HiVUwELCFisr/lWdpPhbiFZJRYMw==
X-Received: by 2002:a62:1b8e:0:b0:44c:9318:f6e1 with SMTP id b136-20020a621b8e000000b0044c9318f6e1mr32063113pfb.84.1635326902706;
        Wed, 27 Oct 2021 02:28:22 -0700 (PDT)
Received: from google.com ([2401:fa00:9:211:ac4c:4230:ca81:632e])
        by smtp.gmail.com with ESMTPSA id q9sm27712230pfj.88.2021.10.27.02.28.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Oct 2021 02:28:22 -0700 (PDT)
Date:   Wed, 27 Oct 2021 20:28:04 +1100
From:   Matthew Bobrowski <repnop@google.com>
To:     mtk.manpages@gmail.com, alx.manpages@gmail.com
Cc:     linux-man@vger.kernel.org, jack@suse.cz, amir73il@gmail.com
Subject: [PATCH 0/1] fanotify: Document FAN_REPORT_PIDFD Feature
Message-ID: <cover.1635135968.git.repnop@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

This patch series documents the new FAN_REPORT_PIDFD feature that is
available from v5.15.

Note that this patch series is diffbased against the FANOTIFY_UNPRIV
[0, 1] man page updates that are yet to be merged with upstream. That
said, if you could please merge the FANOTIFY_UNPRIV updates first
followed by the FAN_REPORT_PIDFD updates, that would be much
appreciated.

[0] https://lore.kernel.org/linux-man/20210318160817.3586288-1-amir73il@gmail.com/
[1] https://github.com/amir73il/man-pages/commits/fanotify_unpriv

Matthew Bobrowski (1):
  Document the new fanotify initialization flag FAN_REPORT_PIDFD.

 man2/fanotify_init.2 | 54 +++++++++++++++++++++++++
 man7/fanotify.7      | 95 +++++++++++++++++++++++++++++++++++++++++++-
 2 files changed, 147 insertions(+), 2 deletions(-)

-- 
2.33.0.1079.g6e70778dc9-goog

/M
