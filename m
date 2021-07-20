Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2E9FC3CF249
	for <lists+linux-man@lfdr.de>; Tue, 20 Jul 2021 04:58:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234346AbhGTCR4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 19 Jul 2021 22:17:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55896 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345468AbhGTCRM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 19 Jul 2021 22:17:12 -0400
Received: from mail-io1-xd2e.google.com (mail-io1-xd2e.google.com [IPv6:2607:f8b0:4864:20::d2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0915BC061574
        for <linux-man@vger.kernel.org>; Mon, 19 Jul 2021 19:57:49 -0700 (PDT)
Received: by mail-io1-xd2e.google.com with SMTP id z11so22505249iow.0
        for <linux-man@vger.kernel.org>; Mon, 19 Jul 2021 19:57:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=FNcUGq14q2lrKh/R5zcFqK9O3eWGttcXMLTPBFX1xR8=;
        b=LxxG9nS2A4UhRb+AtLOGEAn3ymMYkZt8jiAUV1MQhhTyYsQyV28OHoqlQzIyA5L0ZA
         deQGG9j9yqnF97GWTpnCkmjBrJyI/uc8tzwnpxOQpLMP97QJwkmBXKL0VWA8pWbg+BsH
         gI4HzDYwTmeIKum7RopJ4g8nUYh2VEyCiR6IC2iwHM4g4nryQuYKy1d2mG5QSSgWEV+/
         KJSoskW2XmkFGX37/bl1Ah6CF8wEaSuGTplJipN7U5aE6H40J10zBOzfJPl1X5gKpd8s
         h8zSHcA+hTFEL0CIuvqcytPOVuiF7G7zvLYxFqGWIKV3MufVJKXjuagKNd04fHi4RK/A
         Sw9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=FNcUGq14q2lrKh/R5zcFqK9O3eWGttcXMLTPBFX1xR8=;
        b=ShrpcpVQoP0xQGcpz+tLUKJYOZktbUHD6jpvlzwV06flvsxvHc63zpHKNpcxH1oM0A
         SDt3HbmrkKC4gbTL9z2BXguLOjJ95K4Hgjx8C+OAc5rs+39WXnzs7OUnvZ6D4o84Cd2G
         4ZBaODeoYDoueYRSAo9ZsBRRxQcUoMBMjN5mFLJ5eN2hTi36bSKqG8wpiMUDF35XTTtv
         xi/X8rg6adoxpITE/5ZT7S8hSKByabvOZQg2Nqk7imTkdj/LBEudvPq9yTKIE25dydI8
         /6d+qhM2tU0px8lQp5AVA+IgEfyDXjrxfg0gXvYtpvebdxxNy7uNDC4wIecpNE9C/nNh
         mBXA==
X-Gm-Message-State: AOAM533Z1/OPsVjHMN1xbPa4Y80Gagiyh1064y/GdypNtUsfJs8h+gfw
        iQ5Q6ch0SHclwHAlADS/rHrnAySWDz6uFkrDT4g=
X-Google-Smtp-Source: ABdhPJyJYS0Vpi1SOgJ7brZ2JSMqWt4uQWQQPutd6Rl9ajNaR7K0Rr1BQgthlTV4tAhuwN7MEJYdzzZzlTPQo8tlwnw=
X-Received: by 2002:a5d:93d3:: with SMTP id j19mr20950596ioo.184.1626749868522;
 Mon, 19 Jul 2021 19:57:48 -0700 (PDT)
MIME-Version: 1.0
From:   snow under <hikigaya58@gmail.com>
Date:   Tue, 20 Jul 2021 10:57:35 +0800
Message-ID: <CALBoereYSTo=9qfsWN-FSbRtdtYsqSKrkZAYuQRA_fBj0Nhq2Q@mail.gmail.com>
Subject: typo in systemd.unit(5)
To:     mtk.manpages@gmail.com
Cc:     linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

location: [UNIT] SECTION OPTIONS > Upholds= > first line "but as long
a this unit is up"
checked from online page:
https://man7.org/linux/man-pages/man5/systemd.unit.5.html#[UNIT]_SECTION_OPTIONS
thanks for your great work.
