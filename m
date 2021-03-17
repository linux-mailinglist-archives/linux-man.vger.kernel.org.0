Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 76DC733F259
	for <lists+linux-man@lfdr.de>; Wed, 17 Mar 2021 15:13:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230448AbhCQONG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 17 Mar 2021 10:13:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231241AbhCQOMg (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 17 Mar 2021 10:12:36 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 35FEEC06174A
        for <linux-man@vger.kernel.org>; Wed, 17 Mar 2021 07:12:35 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id e9so1968981wrw.10
        for <linux-man@vger.kernel.org>; Wed, 17 Mar 2021 07:12:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flodin-me.20150623.gappssmtp.com; s=20150623;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=7Yczj5kR5rDRS8F8+ZPw1vJeVO/RzxKMp+zgOhHE2LE=;
        b=fQlWsEkVoCrdguFb8LfA7cwmxYqXh8y+Db0sDyIeb8zP3tlwGgz1Lr2qlgx85kg07L
         zLGaaC4EMI5JNhbyqe91HMfNGitQWlgN7Q33/W9/Ch11oMOKvhUwHs+zmqzfdlYoe6/0
         Y61kzftqVqAuh90p0YZMJacPPWobEohAPcOSsUYcdXRQKH1QPLdZjiyW1h0gmDU6HqVO
         SuVMVX/aQfV5DFeV90hOx3amlvpbcvo/coCQwJwYUJn60Eqwilq7pnfkQ3NU7/W7Okj0
         r9gArmT+2ZEGdB0e28Q1pvbxhXhlz/q7sTMe8BMpcGa+qZQKlVtEo6X5FsHBjgVTf9A+
         TCzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=7Yczj5kR5rDRS8F8+ZPw1vJeVO/RzxKMp+zgOhHE2LE=;
        b=AiMpg3dnBTVEQosz98VIM4YA0HMNuV/gCa6PKa4I4MBh2T/JWGMce85UcVv+o7BzWL
         468NU+5KUtTQ7pCuJxIIUtWbmacLqW1H+/gapvT2OkW7+01ffx5w3TrW92/BWDT+SpBY
         QC6gyxt6cJ7E29DCHJEd0c/TG08RD/yT33oCeYURTyGitvnZDVS7Gls7dJHDMbjmAubb
         gn2axUiViClgl1PLqd+T9JcUw2QyD52RIjersIAKP98BDwjM11/P3784lv3f8f1ZcyMm
         nwPEcGzTodkymrMg1F+1rtrcaxxzHNAbO85mz71AfqLcoiwW7USVYrrLGRqRjktiwqwZ
         uCXA==
X-Gm-Message-State: AOAM530ExuRcqLyqgkqhkvgTiX9/VGQd9u1jnc1stfkS+p975w8BASV1
        Vxgw7EQO1mwu7hLkL+hbvwmza7ZKJLtnDyFipX6ShA==
X-Google-Smtp-Source: ABdhPJxvXgxD5ezb93365l5/kcY8Fb4uA9JJgjWUt2elw0DIR4+73SYbaeVYR1m23QyyhnfO89wFZRFL3430DRcTpZ8=
X-Received: by 2002:a5d:64ae:: with SMTP id m14mr4663114wrp.153.1615990354018;
 Wed, 17 Mar 2021 07:12:34 -0700 (PDT)
MIME-Version: 1.0
From:   Erik Flodin <erik@flodin.me>
Date:   Wed, 17 Mar 2021 15:12:23 +0100
Message-ID: <CAAMKmof+Y+qrro7Ohd9FSw1bf+-tLMPzaTba-tVniAMY0zwTOQ@mail.gmail.com>
Subject: netdevice.7 SIOCGIFFLAGS/SIOCSIFFLAGS
To:     mtk.manpages@gmail.com, alx.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

The documentation for SIOCGIFFLAGS/SIOCSIFFLAGS in netdevice.7 lists
IFF_LOWER_UP, IFF_DORMANT and IFF_ECHO, but those can't be set in
ifr_flags as it is only a short and the flags start at 1<<16.

See also https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=746e6ad23cd6fec2edce056e014a0eabeffa838c

Thanks,
// Erik
