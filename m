Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 977222E09E2
	for <lists+linux-man@lfdr.de>; Tue, 22 Dec 2020 12:56:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726549AbgLVLz6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 22 Dec 2020 06:55:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726131AbgLVLz5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 22 Dec 2020 06:55:57 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3FB67C0613D3
        for <linux-man@vger.kernel.org>; Tue, 22 Dec 2020 03:55:17 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id y17so14249564wrr.10
        for <linux-man@vger.kernel.org>; Tue, 22 Dec 2020 03:55:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=UXZIAjlwksvB6r0MAJDbQc6s0NkSnkbB7/1aOk/LOZo=;
        b=e4We1Z+1UOUvcXBjeZFQSEqFz+iuzmchhJpdBm8EooKSuM5IuimcDeaMP/Yd+DnmeJ
         c3Nk41WEGVUyzyMzz9f74JrXxq2jZnelV3sqVKSNNhEK/eHp2ajadls0/zeprW50uF5R
         EoEK3aBP4mCGKxEnj9l2Vy3JCKQQkDgK0+HR4TsB6L3NFeUh2AKtSv+a5U5gnHIqyRcv
         of1kvHwIznlzqXGNw3ja6/uhp2XRjdWbJEjg8NrZnHdSeU+MsTm3WIbBfkvo72PQZAvz
         GqV6wFkcriYTvtQkjQ962KYP5Ofnw6vkTImMlxa8dGRCFxs5LTZoc3vyWzh58SHxN4lO
         5s3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=UXZIAjlwksvB6r0MAJDbQc6s0NkSnkbB7/1aOk/LOZo=;
        b=fmgDpHpqBgSluOlD38ogYvY5I3y7sff/5gWEdSUrsRXIlWh6S/HmR5+ua8fW+Zbetc
         AEcFbKuGss7wOEimyCiWrdeqNA4Js8gbELpJF2eYWVpyH8IqR1UgS/wjd8z2Je+maSEq
         DQXAIAj5fnpKnSAhRGKH3DlgqvJc89HevON8zBLZNe6QMx0y+xFsjI/n062/Fqrah6gL
         zCs2aGXSpTfiAIAHv/wqyHS/kQA7/8LjqKwX5ZbPRoyx0cLgQBj0QVMinYUuluLYkSUo
         2BeP2bDbTOvGmjMt0hxMB1wEr9VBibqmyLonEXRK36fA3nkLrRiwCHQ2XzC9UhCbgKkY
         7X1A==
X-Gm-Message-State: AOAM530oL6YOqaNJl+T7P49I9i4hu164x2RjfGpSXtHexU2oES7YboOn
        onaYEsEeXJ7VipYU5qmuCHM=
X-Google-Smtp-Source: ABdhPJzKLnITK1zbVpZ3mXWen9NXJ7aRFSo7gdYtJJPyb4oc3gkY7yPUd9i3vcG87U0tRMDSI99XKw==
X-Received: by 2002:a5d:6106:: with SMTP id v6mr23369003wrt.173.1608638115764;
        Tue, 22 Dec 2020 03:55:15 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id c10sm32266357wrb.92.2020.12.22.03.55.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Dec 2020 03:55:15 -0800 (PST)
Subject: Re: [PATCH] semctl.2: Correct SEM_STAT_ANY description
To:     Yang Xu <xuyang2018.jy@cn.fujitsu.com>, mtk.manpages@gmail.com,
        Davidlohr Bueso <dbueso@suse.de>
Cc:     linux-man@vger.kernel.org, Joe Lawrence <joe.lawrence@redhat.com>,
        Robert Kettler <robert.kettler@outlook.com>,
        "Eric W. Biederman" <ebiederm@xmission.com>,
        Kees Cook <keescook@chromium.org>,
        Manfred Spraul <manfred@colorfullife.com>,
        Michal Hocko <mhocko@kernel.org>
References: <1608616543-21436-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
From:   "Alejandro Colomar (mailing lists; readonly)" 
        <alx.mailinglists@gmail.com>
Message-ID: <746deff0-e919-173b-25f6-34fc465a7ba0@gmail.com>
Date:   Tue, 22 Dec 2020 12:55:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <1608616543-21436-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Yang,

It looks good to me.
I'll add a few people that might want to comment.

Thanks,

Alex

On 12/22/20 6:55 AM, Yang Xu wrote:
> Since kernel commit a280d6dc77eb ("ipc/sem: introduce semctl(SEM_STAT_ANY)"),
> it only skips read access check when using SEM_STAT_ANY command. And it should
> use the semid_ds struct instead of seminfo struct. Fix this.
> 
> Signed-off-by: Yang Xu <xuyang2018.jy@cn.fujitsu.com>
> ---
>  man2/semctl.2 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man2/semctl.2 b/man2/semctl.2
> index dd3fb077b..a7462c5cc 100644
> --- a/man2/semctl.2
> +++ b/man2/semctl.2
> @@ -297,8 +297,8 @@ all semaphore sets on the system.
>  .TP
>  .BR SEM_STAT_ANY " (Linux-specific, since Linux 4.17)"
>  Return a
> -.I seminfo
> -structure containing the same information as for
> +.I semid_ds
> +structure as for
>  .BR SEM_STAT .
>  However,
>  .I sem_perm.mode
> 
