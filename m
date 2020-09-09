Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 78072262F88
	for <lists+linux-man@lfdr.de>; Wed,  9 Sep 2020 16:10:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730396AbgIIOHs (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 9 Sep 2020 10:07:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54054 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726535AbgIINL3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 9 Sep 2020 09:11:29 -0400
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com [IPv6:2a00:1450:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A09FC061755
        for <linux-man@vger.kernel.org>; Wed,  9 Sep 2020 06:11:34 -0700 (PDT)
Received: by mail-wr1-x444.google.com with SMTP id o5so2848931wrn.13
        for <linux-man@vger.kernel.org>; Wed, 09 Sep 2020 06:11:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=VaTgBsz1FM9x7f+iUySsHC292o9OSz8Rz2iYRuKvm8I=;
        b=BG/jIrECHM5b1Ab1LvxbAUatrVLCLvpeB2hD1J+VurihJDoD1xt1IlZUU7t8MFH2Jw
         LNZpjKdQOoNZBKqsdtxlEwlzNjaRA+YWNUbLm3eJb05n1EaH2vBPqaIu5vUY3Eusn/ud
         r4qZHv4juJdoGKUnURXziF9MH1ibMz2xGU9Y7Gp/mHT5w3BVUm2y+Ziz25gzuncMaI5i
         o248c4gkxYyZF5/SK2HDRmtAm49DHPoENJP8t356yOWUQpbkYYJY6uhW6wj16ao9Rtc/
         4p9sattQZLf1WPBKFbU/urUhq1W7imXK07iL2zv8l8CQZ+YjqfDbe96nh1/HreS5WdJL
         M/rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=VaTgBsz1FM9x7f+iUySsHC292o9OSz8Rz2iYRuKvm8I=;
        b=mXaAVrxncYzUBFivfNT5Kf4SyILqvW3N5PoI0zk6oINvMTmSLbcM9K0efFiammYDQU
         Mq0Ai04uJ8ujf32Fc7xEo59JQIBcJCLzLYKTJHKyfmfpK+uuInikWA8VsdsH4XZIQ/1U
         kCrmvCxRTVrEEc+tj8LUXVW3Z+dlRYViIZWXYtI4VPP0zhuxJuFP8V1y6C8J+kpKimgm
         /nOy6EDDk9Y8ruKXHAMyGSTDGXlkAI/y8GbQLDETkS5evLITgF+vkx6hfHW9568Fp0QR
         cK8GRaX9fJ5VFiRVLNT4ErX/jvvm72KvGTyMWQOzrBGw9ocssoHMpJDzjUsx1AwVFg+Q
         KL8g==
X-Gm-Message-State: AOAM533HtSZgGufVqJW1FtzPG4887/PrMQl47lFJyMe3YiEeeK3kEOdq
        4btAxFoki4Ys3uoCSwh/0YedrzmYBe0=
X-Google-Smtp-Source: ABdhPJwzBanC3zawdCK2p4dDxz2xva4cPyWDE/4vVVSokq3QKvqLSvsi6woTFnzomdVXnIjRhJzMjw==
X-Received: by 2002:adf:f101:: with SMTP id r1mr3816965wro.314.1599657093049;
        Wed, 09 Sep 2020 06:11:33 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id m1sm3991803wmc.28.2020.09.09.06.11.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Sep 2020 06:11:32 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org, wharms@bfs.de
Subject: Re: [PATCH v3 2/2] loop.4: Document LOOP_CONFIGURE ioctl
To:     Yang Xu <xuyang2018.jy@cn.fujitsu.com>
References: <5102fd63-a2e0-7bad-e8ef-e310acd65394@gmail>
 <1599653156-13115-1-git-send-email-xuyang2018.jy@cn.fujitsu.com>
 <1599653156-13115-2-git-send-email-xuyang2018.jy@cn.fujitsu.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <ac413216-c886-1cb1-dcb5-ebf2f4f4195f@gmail.com>
Date:   Wed, 9 Sep 2020 15:11:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <1599653156-13115-2-git-send-email-xuyang2018.jy@cn.fujitsu.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/9/20 2:05 PM, Yang Xu wrote:
> Signed-off-by: Yang Xu <xuyang2018.jy@cn.fujitsu.com>
> ---

Thanks, Yang Xu. Patch applied.

Cheers,

Michael

>  man4/loop.4 | 43 +++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 43 insertions(+)
> 
> diff --git a/man4/loop.4 b/man4/loop.4
> index 5cc9a7e79..c935be749 100644
> --- a/man4/loop.4
> +++ b/man4/loop.4
> @@ -186,6 +186,49 @@ This value must be a power of two in the range
>  otherwise, an
>  .B EINVAL
>  error results.
> +.TP
> +.BR LOOP_CONFIGURE " (since Linux 5.8)"
> +.\" commit 3448914e8cc550ba792d4ccc74471d1ca4293aae
> +Setup and configure all loop device parameters in a single step using
> +the (third)
> +.BR ioctl (2)
> +argument.
> +This argument is a pointer to a
> +.I loop_config
> +structure, defined in
> +.I <linux/loop.h>
> +as:
> +.IP
> +.in +4n
> +.EX
> +struct loop_config {
> +    __u32               fd;
> +    __u32               block_size;
> +    struct loop_info64  info;
> +    __u64               __reserved[8];
> +};
> +.EE
> +.in
> +.IP
> +In addition to doing what
> +.BR LOOP_SET_STATUS
> +can do,
> +.BR LOOP_CONFIGURE
> +can also be used to the following:
> +.RS
> +.IP * 2
> +Set the correct block size immediately by setting
> +.IR loop_config.block_size.
> +.IP *
> +Explicitly request direct I/O mode by setting
> +.BR LO_FLAGS_DIRECT_IO
> +in loop_config.info.lo_flags.
> +.IP *
> +Explicitly request read-only mode by setting
> +.BR LO_FLAGS_READ_ONLY
> +in
> +.IR loop_config.info.lo_flags.
> +.RE
>  .PP
>  Since Linux 2.6, there are two new
>  .BR ioctl (2)
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
