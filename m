Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0F91E53B287
	for <lists+linux-man@lfdr.de>; Thu,  2 Jun 2022 06:23:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229753AbiFBEWy (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 2 Jun 2022 00:22:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48540 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229660AbiFBEWx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 2 Jun 2022 00:22:53 -0400
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com [IPv6:2607:f8b0:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8C8B13CC9
        for <linux-man@vger.kernel.org>; Wed,  1 Jun 2022 21:22:50 -0700 (PDT)
Received: by mail-ot1-x32a.google.com with SMTP id t22-20020a0568301e3600b0060b333f7a1eso2691451otr.0
        for <linux-man@vger.kernel.org>; Wed, 01 Jun 2022 21:22:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=4uS/jhtVhxW14XX96pWClMn6NOZWkiOHoJGEPF2/5do=;
        b=Ip4bGkeaoOm7fGKgt37lKfeFdXVzsAXn398n8d4aR16CJAH+DxPqYWsZIeeD90p/+B
         /YxYo1UJ0WltvU4ACFxfyq/fRw3tqAXbnvUyI31AWQ68Z0k02vx+nTnxRV+g3ZfZinNx
         9eJkwsPAjFvyFJajSLwtzYYMa2No0sShhAfK+gg2OQP4iDaO4Mj0DkhFQSocz3irjEC9
         er2Om1rX1hk8PW/BT7v6wLCFDBWBr5Yd1Ui+1rjC/e0GRRvr+AM+yPU2LwCfJ5pvI8Tw
         0LxpKuCa3eFf4IZaxfg1j3ZF9kPs2YwslDI5sVCBhF/Woknl8kv+iFbjG714xm7AAUs0
         v4OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=4uS/jhtVhxW14XX96pWClMn6NOZWkiOHoJGEPF2/5do=;
        b=kgRuNy1n550ehox0/EuyXkmbTQrh2RQyL2/kg7xIU7uxsr/2gT5pSUCVFJ1N0IeFru
         g6jeL3UjppE2AXhISEAGnmizbNcz8v7GbgQw08i74HcAfOXZ8ScaWpmqxz7eW7VMrTOu
         F0Z66HatJDpuDh+yad/7Rz3b0KynFLv9fTG8s6GHj8Af1WYCHSUOgYnPhbnKJqPP1k6V
         272VML4eZhwFh5TW7oTAVwIe3WSbLep8o+L+T2OqJzV0rR58A3ecjbFo4dmB4Kdn8BZk
         /bL2xqqhEdalitWa4W/JAqPlMdd95wr/YS1y0sSe38T3VeZFxzfn180jFQSbiI+Fb7Ne
         SM9Q==
X-Gm-Message-State: AOAM530OcbUi3VRNE8VxQYTqLN3NwByA03MHfZAYUizvDaWYhctoW49J
        /OF8gDbKLFJN6PR83Zn7trQi6WY/vGacgJKP+BE=
X-Google-Smtp-Source: ABdhPJx6YQOhDY+fIT327BTR7ZyVSLKyxC8AnPh2Ra+LM8HMsgrGxHITIxsMx3EQwFSpEVUCqNYNHbb40s3oSHdusWA=
X-Received: by 2002:a9d:6ac8:0:b0:60b:cce:eff0 with SMTP id
 m8-20020a9d6ac8000000b0060b0cceeff0mr1322422otq.75.1654143770247; Wed, 01 Jun
 2022 21:22:50 -0700 (PDT)
MIME-Version: 1.0
From:   "Joseph C. Sible" <josephcsible@gmail.com>
Date:   Thu, 2 Jun 2022 00:22:33 -0400
Message-ID: <CABpewhHabbxi=+h+pXbSBnwmbkpaZvCo5Vm3vujMg4UvxhtmkA@mail.gmail.com>
Subject: close_range.2: misleading what CLOSE_RANGE_UNSHARE unshares
To:     Michael Kerrisk-manpages <mtk.manpages@gmail.com>,
        alx.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The DESCRIPTION section of close_range.2 makes it sound like
CLOSE_RANGE_UNSHARE will only unshare the file descriptors that you
specified for it to close, but unsharing actually operates at the
granularity of the file descriptor table, so any FDs that remained
open as well as any opened in the future will be unshared too.

Joseph C. Sible
