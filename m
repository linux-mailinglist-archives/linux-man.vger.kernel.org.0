Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ADEC4206EB5
	for <lists+linux-man@lfdr.de>; Wed, 24 Jun 2020 10:10:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390369AbgFXIJ6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 Jun 2020 04:09:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388818AbgFXIJ5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 Jun 2020 04:09:57 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 90AF3C061573
        for <linux-man@vger.kernel.org>; Wed, 24 Jun 2020 01:09:56 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id e15so830924edr.2
        for <linux-man@vger.kernel.org>; Wed, 24 Jun 2020 01:09:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc;
        bh=FPeTR2tbPrHYoQtvo0jhD4BQCA3FPS3AWs/nAbGm0To=;
        b=Bbz1wekTxtwJmWy3+0rqvSCJfWAafQRFBDHE2b7nH/J8cDfxsAvbeUHh1BahO6wQAe
         vDoQudaWylWvsfAuv09hV+BSYt9NqwUPzhujqxOVShlbHp4PNjZV6+cqBTRCSkh1sMk2
         W/QWxR2VM6xTZbQ3UUN9EulJZwvn5o7gGJCnetxQWdapGy6Tjq0y/XkszRl3Qs+prvWe
         NjzaNvrdpSIFZX6uo7DjcDNVEUZUizYPQOEwk3lHSP3A/DcshqeQLdfOwJnLtcTE1IgQ
         ydZCjyAw7GlSHJdij1fTvWh8XDka0uFW528MSJ+2fdYc+PyOfw/7HrlFLyzzZsBv7tpr
         POQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=FPeTR2tbPrHYoQtvo0jhD4BQCA3FPS3AWs/nAbGm0To=;
        b=kRzh1bQrpk0Ls9SKvI6kBFCLqgwL5collgzVpHcK36meMshiZ+EjhuRi3C6jPpbvMV
         nSFweDRtuJaU9uuLcS6jEW4FF4LKbeLu+FwocRasAXWCK7PascaknSquTddWuRr268de
         aX9Q2Rij5vZ7PsVuwy1h1QSjlwqpARtcs6pwtl3H32tvms1CNe1AzlLW2dZpahxMa+s2
         l+ZHAdxjxl+3KdNlZYrML/4Z9tiIGslPdAwPMy8vE2QkthiPiNq+dyRaUgAsDdHsWdDS
         TmlxEYjkQzv1crHkLUBVqdv4P68DUd0w4h/q3APt52s+onYW6n1Xq0PGtnBy9sOtaaon
         PWqg==
X-Gm-Message-State: AOAM5334diCyA4BnKfaaoQFteWsm6TbQDW1pX9+4i18kGRtvPWshtlmr
        zMIJ+xwX3BeI1JkV9bWgEStX85u6mH+KiDCiUqgp8w==
X-Google-Smtp-Source: ABdhPJz6anXKoypRC1X2HgbCIqHFfobxYaYhPzvkrjg7+RnQ44kX81GzX48E/Mlmu96fehglFcwAfcdfWLxe9GTIO8c=
X-Received: by 2002:a05:6402:3106:: with SMTP id dc6mr25004649edb.375.1592986195228;
 Wed, 24 Jun 2020 01:09:55 -0700 (PDT)
MIME-Version: 1.0
References: <5d5d6c55-8736-0eec-aaa4-7ec86f925109@jguk.org>
In-Reply-To: <5d5d6c55-8736-0eec-aaa4-7ec86f925109@jguk.org>
Reply-To: mtk.manpages@gmail.com
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Date:   Wed, 24 Jun 2020 10:09:43 +0200
Message-ID: <CAKgNAkgxGJad18cAJ53eHAow=nJo6bvpAdLUVGA4+vcjZ11FdA@mail.gmail.com>
Subject: Re: cfree
To:     Jonny Grant <jg@jguk.org>
Cc:     linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Tue, 23 Jun 2020 at 17:10, Jonny Grant <jg@jguk.org> wrote:
>
> Hello
> Is it time to remove this old man page? it's two years since it was removed from glibc
>
> 2017-08-02: glibc 2.26 released
>
> https://man7.org/linux/man-pages/man3/cfree.3.html

The general philosophy is to maintain historical info in man-pages,
since new manual pages may be installed on an old system. Also, people
may need to look at old code, and understand what it does.

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
