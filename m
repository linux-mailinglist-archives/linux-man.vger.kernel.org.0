Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7E9974451ED
	for <lists+linux-man@lfdr.de>; Thu,  4 Nov 2021 12:02:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230148AbhKDLFV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 4 Nov 2021 07:05:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52576 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229809AbhKDLFU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 4 Nov 2021 07:05:20 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9621AC061714
        for <linux-man@vger.kernel.org>; Thu,  4 Nov 2021 04:02:42 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id j21so19745844edt.11
        for <linux-man@vger.kernel.org>; Thu, 04 Nov 2021 04:02:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Aw3zgeD9yUuvfwBjpp4cSkzoByrp4J8XxsY7iF/9ZLs=;
        b=irUTVMACT4tXZVvSPsXgJsNX6bBusgk1KeEb6+kLAz2NhSHE9NOMymJ6gKIsJQMq4K
         KHU+xJVCbU2ieunmAXRwQT9Zooc0We6BshCikmQ5UWmvlvE5tLTxrr7YhrWP8bjxWQSX
         Hb6qP58+oMQ0QZZ3ex1sPZ6IwH4lIo6A7PDfnZgIUTH6wRMeeb5vSQhILOAVcQPOZ+rU
         UZnkFBqGMCiieIDC/n7YGGoA5qch6J4RVROUxH//DRDUgn2VlHvjQKtychuJeFdnkuTV
         9RMGmsxNioVyBGyrcM/H8RuLwwlLoy54c0Gd9/5kJQm3B9BmLnqxnyQlW5Yr9J/yfVZy
         FdSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Aw3zgeD9yUuvfwBjpp4cSkzoByrp4J8XxsY7iF/9ZLs=;
        b=BImACSg3+tjdJGURjZsVpLD8JJTB57c13ze0KnSZcLlmAfWz3P/+/9pY3Oo3fvF+eC
         O+qvNLzyyGWgQp6yFnMEwyAizZhcJxYxbvlEqc8fMLUETQZUWX866kvTKOb5Y7eG3D4s
         27WYn76vEQsGOM503i3oOrYckIOZ84iSyRZJEsLFYUiuLmuwNBtr21jMyWvul8i9eQ5o
         yQadhzu3fIfKsdrGvTrgp0CNeEf9Iou79NTiEHPyP/N2+8PsnU+uzyMs9NEHYi2zMR0U
         /55m/5uKwQohmh2si9IFAkXijJsMwByNPDjh7QPW4yQ2Q1pz1lM2nfgf9Pwnso9vcl5P
         Pi8Q==
X-Gm-Message-State: AOAM53377fQp3he3IjZfvk7lKrXS9Vx0BJxwh29F3kt0cCo4Yv9XQxAO
        CQSohbxRbnKPGys++qcsZ+BepIPJzREOwEdCnu4=
X-Google-Smtp-Source: ABdhPJyVgs0sDoU9swZkN7DQSJmSAgJBZSLl04K6cMKjrZUnNPAu2V1Ijou7sVRVOd24KtPkYZbooI4BDxqPX1OhB3M=
X-Received: by 2002:a17:906:76d4:: with SMTP id q20mr6526970ejn.380.1636023761007;
 Thu, 04 Nov 2021 04:02:41 -0700 (PDT)
MIME-Version: 1.0
References: <1634694386-2137-1-git-send-email-xuyang2018.jy@fujitsu.com>
 <617F6138.5040601@fujitsu.com> <61825419.1080502@fujitsu.com>
 <6182568B.30705@fujitsu.com> <3dfbc2c2-72d9-89f2-1c72-e54ab2f610e7@gmail.com>
 <6183302D.8080102@fujitsu.com> <CACGkJdvcBPZK2eOMaSuKnE3KEYFEv4aUGznweDD8T5fqPxJBew@mail.gmail.com>
In-Reply-To: <CACGkJdvcBPZK2eOMaSuKnE3KEYFEv4aUGznweDD8T5fqPxJBew@mail.gmail.com>
From:   Eugene Syromyatnikov <evgsyr@gmail.com>
Date:   Thu, 4 Nov 2021 12:02:24 +0100
Message-ID: <CACGkJdtoh1Ygzu56-U148FcsdZzjSYQq9Z6MWd3kHXq7hNUC=g@mail.gmail.com>
Subject: Re: [PATCH] quotactl.2: Remove kernel version for Q_XQUOTARM ioctl
To:     "xuyang2018.jy@fujitsu.com" <xuyang2018.jy@fujitsu.com>
Cc:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        Jan Kara <jack@suse.cz>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Thu, Nov 4, 2021 at 11:43 AM Eugene Syromyatnikov <evgsyr@gmail.com> wrote:
> Q_XQUOTARM was added as part of the initial quotactl(2) implementation
> in commit v2.5.17~10^2~6[1].

s/initial/generic/


-- 
Eugene Syromyatnikov
mailto:evgsyr@gmail.com
xmpp:esyr@jabber.{ru|org}
