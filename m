Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4C1521B14E8
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 20:43:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726013AbgDTSnH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 14:43:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32892 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725613AbgDTSnH (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 14:43:07 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B091BC061A0C
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 11:43:06 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id v8so694213wma.0
        for <linux-man@vger.kernel.org>; Mon, 20 Apr 2020 11:43:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Jdi+Ho8LscAYqeaJVRZwmnImddNoXTFOIIYGF/rNPzo=;
        b=mMQnGFYGyxMjvMvG8CQ52sKPiQIJk94BnMsbE+hcqbV+SRM85OfcRuvPdNSqd5oYDe
         qOJmx8TIw05O6F91lnlwtboo/+sUvuXvMrZstIRGkPKB6cdWMkPEzHo7Otc5o2ivXVYL
         2SIHXYSWaWZ+tsEjSH9Pf8ZS6FqbWads4NSN1Nu4mgEHyft7169BQLYg+U7fjHQ0TGLc
         DNHe5kwdlAJZOTxrZxaQOw0QZDgOA5RGVinuXDh7i5PE7MRrkrZi7o033sdSk2oltvJH
         SDKmKZZOjYlyxKESnC9Ea6gqOpJdsfo/CMZOfmEnl2JXe7qsNmCkw259DbRkpIytDeqS
         yo4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Jdi+Ho8LscAYqeaJVRZwmnImddNoXTFOIIYGF/rNPzo=;
        b=HNG0iYJ29av7G5PfXaN4D+rb7lYz94RijsN7ZgA8Iq9c0Jb1+DUWGY2BzTJ2ymVZR/
         qSDcMuN6r1UorLP1KR2nJwFc7Vh76IJUVxdZ+puKJp0LcrwMhLqTDX+y4aAmdNZeLJip
         xB6344V5uCvALCpF/ENmCZT29M1Ch/YZD8IZyWd2fGLP6OwHsnBoS7D66G1THbJWzTXU
         hvSOCeUd5Uh8bCObeU0vkp1JcZmcbCYwO16x+/C6upbyWMUla/DEGOz80FVO+OOxXOBE
         2sWrW9SKC0LpU/pmE9q2KtniQP2M5Ygs27tH/IxyXC6xkeCIg/vXEMeq27A3ErpDDtLw
         WEng==
X-Gm-Message-State: AGi0Puai5xrdQRuCIM9WW11LNV+nxdgz7sopTBQaAVQ8sHRDTn9FB9r0
        F0NjODv6ep2giV3VJalaDv8=
X-Google-Smtp-Source: APiQypL83gaXbhfwemXGUfDONgrCm9Q4b4O1xXuMOzQGJbqtfWxlv3PNDjD5OY4MrWQ4SaxMsEVVZg==
X-Received: by 2002:a1c:7c07:: with SMTP id x7mr729261wmc.63.1587408185431;
        Mon, 20 Apr 2020 11:43:05 -0700 (PDT)
Received: from localhost.localdomain ([141.226.12.123])
        by smtp.gmail.com with ESMTPSA id n9sm438873wrx.61.2020.04.20.11.43.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Apr 2020 11:43:04 -0700 (PDT)
From:   Amir Goldstein <amir73il@gmail.com>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>,
        linux-man@vger.kernel.org
Subject: [PATCH 0/4] fanotify updates for v5.7
Date:   Mon, 20 Apr 2020 21:42:55 +0300
Message-Id: <20200420184259.29406-1-amir73il@gmail.com>
X-Mailer: git-send-email 2.17.1
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Michael,

Following patches include fixes to earlier FAN_REPORT_FID change from
v5.1 and an update for the new event FAN_DIR_MODIFY that has a new
event format.

Those patches were reviewed by Jan and Matthew earlier on github.

Thanks,
Amir.

Amir Goldstein (4):
  fanotify_mark.2: Clarification about FAN_MARK_MOUNT and FAN_REPORT_FID
  fanotify_mark.2: Clarification about FAN_EVENT_ON_CHILD and new events
  fanotify.7: Fix fanotify_fid.c example
  fanotify.7, fanotify_mark.2: Document FAN_DIR_MODIFY

 man2/fanotify_mark.2 |  89 ++++++++++++++++++++++++++++++++---
 man7/fanotify.7      | 107 +++++++++++++++++++++++++++++++++----------
 2 files changed, 165 insertions(+), 31 deletions(-)

-- 
2.17.1

