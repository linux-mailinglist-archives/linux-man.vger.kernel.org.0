Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3991B262B98
	for <lists+linux-man@lfdr.de>; Wed,  9 Sep 2020 11:17:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726036AbgIIJR5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Sep 2020 05:17:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726708AbgIIJRz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Sep 2020 05:17:55 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2368C061573
        for <linux-man@vger.kernel.org>; Wed,  9 Sep 2020 02:17:54 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id w5so2099385wrp.8
        for <linux-man@vger.kernel.org>; Wed, 09 Sep 2020 02:17:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=gqTQWar0jKT86NunZLMamglgT03nu0e5hs5DJxQZyNY=;
        b=gmUMhS7HnwbXqLZmMMCy9DJG3p4VUhO/6qnoICxICRNk98puRD0avTLbPTV2p5nXBP
         p5H5ptKdJFTK61RtjiZ8Jyh+XJhanXQeOTj6NmgRkdBYbkVb80+uXfaIcdC4F8Z3P7b+
         Rq94hFsWK6Axlwd6scYcKJ/a6HnpHp7/rW/0FEULgNfMHQ18Or9uOYFQW/+NYMCcuTl/
         YvI3FlzxjiiHAuAF4/lLHNWrHil6gbLP8D/LBweBXwS+azZE/CaxwmNAXTE86sqOnJQb
         MFufoocgA9Yun+8ebJIQjuO/JED9kWviMdFGsU0Z5qSwlnbkkwtCXOnUbdFLBIaL7ypD
         /0vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=gqTQWar0jKT86NunZLMamglgT03nu0e5hs5DJxQZyNY=;
        b=bCeGCHmlIQ3d9IcXg6PoCphJLqqoQOIn/zb09o+5dSDQBuQtKpEUFWzz1R4wZKVXHn
         4e4WyuTZCumsPdrLmiBnWF0vO4yl0gLUOYW+xSWFN3prGr9FnLhxToNiygXkfgVePsqU
         50yAc6WFYdqr+6b6vvs4xuD2dnMlwMxzqHSF5+VmJ7FsXk3S4vVSgxXCy2UpV+cJa36t
         4oR/j4vGnsQaaEPhtqbZMCFYMYWFou0XWnkHeAQSGNfKmyOidZU6uG74uGDTb9aehiGv
         rvFtzCTRfny9+TZ0yujfwPmM/I+i4SgyQS6pso9YCnlCRhj2SU4Gh+9r5cF7FMLfnPrs
         FjMA==
X-Gm-Message-State: AOAM532yMwbEUdfrIbxl8+ch9DcNv0E6F5I/WTzoy/44YBf+PusR/+Kp
        ERsZ9SZM7GkyzwlagR7SBJc=
X-Google-Smtp-Source: ABdhPJzc2rvDOqHxUMRIiiJk/pUTH/rY0/k33v790m6LJZRR0aQslKotZ4IYFREqUN0L9frGwP+7wQ==
X-Received: by 2002:adf:f14f:: with SMTP id y15mr2751628wro.69.1599643073517;
        Wed, 09 Sep 2020 02:17:53 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id v17sm3246530wrr.60.2020.09.09.02.17.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Sep 2020 02:17:52 -0700 (PDT)
Cc:     mtk.manpages@gmail.com
Subject: Re: [PATCH v2 3/3] loop.4: Document loop_configure ioctl
To:     Yang Xu <xuyang2018.jy@cn.fujitsu.com>, linux-man@vger.kernel.org
References: <1596707314-2361-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
 <1596707314-2361-3-git-send-email-xuyang2018.jy@cn.fujitsu.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <5102fd63-a2e0-7bad-e8ef-e310acd65394@gmail.com>
Date:   Wed, 9 Sep 2020 11:17:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <1596707314-2361-3-git-send-email-xuyang2018.jy@cn.fujitsu.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Yang Xu,

On 8/6/20 11:48 AM, Yang Xu wrote:
> Signed-off-by: Yang Xu <xuyang2018.jy@cn.fujitsu.com>
> ---
>  man4/loop.4 | 35 +++++++++++++++++++++++++++++++++++
>  1 file changed, 35 insertions(+)
> 
> diff --git a/man4/loop.4 b/man4/loop.4
> index 41abe0122..44dfd9a8c 100644
> --- a/man4/loop.4
> +++ b/man4/loop.4
> @@ -181,6 +181,41 @@ This value must be a power of two in the range
>  otherwise, an
>  .B EINVAL
>  error results.
> +.TP
> +.BR LOOP_CONFIGURE " (since Linux 5.8)"
> +.\" commit 3448914e8cc550ba792d4ccc74471d1ca4293aae
> +Setup and configure all loop device parameters using the (third)
> +.BR ioctl (2)
> +argument at once.

I suggest rewording as

[[
Setup and configure all loop device parameters in a single step using
the (third)
.BR ioctl (2)
argument.
]]

> +This argument is a pointer to

s/to/to a/

> +.I loop_config
> +structure, defined in
> +.I <linux/loop.h>
> +as:
> +.IP
> +.in +4n
> +.EX
> +struct loop_config {
> +     __u32               fd;
> +     __u32               block_size;
> +     struct loop_info64  info;
> +     __u64               __reserved[8];
> +};
> +.EE
> +.in
> +.IP
> +In addition to doing what
> +.BR LOOP_SET_STATUS
> +can do,
> +.BR LOOP_CONFIGURE
> +can also be used to set the correct block size immediately
> +by setting loop_config.block_size. Explicitly request
> +direct I/O mode by setting
> +.BR LO_FLAGS_DIRECT_IO
> +in loop_config.info.lo_flags. Explicitly request read-only
> +mode by setting
> +.BR LO_FLAGS_READ_ONLY
> +in loop_config.info.lo_flags.

On an earlier version of this patch, I commented that this piece is
unclear (the language is difficult to understand). If I correctly
guess what you are trying to say, then I think it would be better
worded as something like:

[[
In addition to doing what
.BR LOOP_SET_STATUS
can do,
.BR LOOP_CONFIGURE
can also be used to the following:
.IP * 2
Set the correct block size immediately by setting
.IR loop_config.block_size ;
.IP *
explicitly request direct I/O mode by setting
.BR LO_FLAGS_DIRECT_IO
in loop_config.info.lo_flags;
.IP *
explicitly request read-only mode by setting
.BR LO_FLAGS_READ_ONLY
in
.IR loop_config.info.lo_flags .
]]

In other words, I think you mean to say that LOOP_CONFIGURE can be used
to any one of the things in the list, right?

If I'm right, could you redraft the patch please. If I'm not right, I
think we better discuss some more how the text should look :-).

Thanks,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
