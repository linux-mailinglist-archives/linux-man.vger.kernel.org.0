Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5C898260A10
	for <lists+linux-man@lfdr.de>; Tue,  8 Sep 2020 07:30:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728474AbgIHFaL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 8 Sep 2020 01:30:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41984 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726387AbgIHFaJ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 8 Sep 2020 01:30:09 -0400
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com [IPv6:2a00:1450:4864:20::542])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09083C061573
        for <linux-man@vger.kernel.org>; Mon,  7 Sep 2020 22:30:08 -0700 (PDT)
Received: by mail-ed1-x542.google.com with SMTP id l17so14613311edq.12
        for <linux-man@vger.kernel.org>; Mon, 07 Sep 2020 22:30:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=zjgrhtLf58MWXlJqX+OU5ZT+zcP1f13grNsQ/1MYgtw=;
        b=WANNEpSOj8zUTAjirXJtHgo8rkD7zvNGdxmvCDf6pLpRR0dlnK/H1THWGM2mOYOP+N
         kogkeLjNM/OfDtk1UHUf5LroQAijUM1zfW11CyOX8VTNTGxvkDPJgk2Q7IoTijzGodEf
         UoJAUl65IfMz/h1wmkYjlCKuLOQD9CqbZprPkkrpCYMVq/9HC+/JU9h8D4B/SbldmAWG
         TsuSo4a2TqwodFkK6se8cBPPIpdLYOqLCjW6dKUBtJeAym0HlIuD5yHSaz3MDsKqPA/1
         SDd/W6oxCyKLrW6RF6QkXnvGWS7M8FIL/+lkrBh60QpPij/8cHWFlF5vJ+OUb62KOIto
         YVww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=zjgrhtLf58MWXlJqX+OU5ZT+zcP1f13grNsQ/1MYgtw=;
        b=tylwr95/bNEh0kQchwD2Cf9rfN5uvv7F5B4IK8mMc4T6gashHAG7TXbMTaJeJ+4SvB
         KeYGCU0H33MSBvUGMTGydDVVXBCMaWblvS/3plDQW7Bw/xGOzE5T7Xmr1xxTsDRVCVGg
         PRqDegyP3d1/gIpxAa8s4/62kI9GsR2sg7ujjNJs1/IpQbvzyLJmfcKbB2NsThcshwjq
         nwk4YCuIIxQBExz0IuATBjTKjAaavNcLbKNKazUi8X5YseJ0TBVgP0ed3wVHr9yi7F58
         ybsg3VQkUe90sMWwp9VHdQ8/IpC7vVfMMeh4z9CP7g/6a0Nm+DoCQ1fGKCxkiQcWyA3w
         wlqA==
X-Gm-Message-State: AOAM533zlCG4MYqZyJNHgPAHMDbjbmstblWftAZ7qVxkZtDSn7P6gQOS
        /re7k+PK/36d68mHEF5no29fM+gUmRc=
X-Google-Smtp-Source: ABdhPJwPzaRdURGuw7wbqz3aExdaxZMVI0zwNU+Ve6NvGKzFkRlZkYlCRuq18GhRZC4XquKC8g39lQ==
X-Received: by 2002:aa7:d4d2:: with SMTP id t18mr24851807edr.55.1599543007347;
        Mon, 07 Sep 2020 22:30:07 -0700 (PDT)
Received: from ?IPv6:2001:a61:3ab0:7001:e081:d401:3da8:e4bc? ([2001:a61:3ab0:7001:e081:d401:3da8:e4bc])
        by smtp.gmail.com with ESMTPSA id b20sm16886136ejv.9.2020.09.07.22.30.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Sep 2020 22:30:06 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] posix_spawn.3: tfix
To:     Mike Frysinger <vapier@gentoo.org>
References: <20200907234622.13350-1-vapier@gentoo.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <82ae01aa-7249-f326-35da-8359c03b4935@gmail.com>
Date:   Tue, 8 Sep 2020 07:30:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200907234622.13350-1-vapier@gentoo.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 9/8/20 1:46 AM, Mike Frysinger wrote:
> From: Mike Frysinger <vapier@chromium.org>
> 
> Signed-off-by: Mike Frysinger <vapier@gentoo.org>


Thanks, Mike. Patch applied. I did have to look at the patch for
a moment to work out what it was about. Just a few words in the
message body like "fix indentation" would speed things up for me.

Cheers,

Michael


> ---
>  man3/posix_spawn.3 | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/man3/posix_spawn.3 b/man3/posix_spawn.3
> index 820d5cef5768..a7472bce5ed3 100644
> --- a/man3/posix_spawn.3
> +++ b/man3/posix_spawn.3
> @@ -41,9 +41,9 @@ posix_spawn, posix_spawnp \- spawn a process
>  .BI "                char *const " argv[] ", char *const " envp[] );
>  .PP
>  .BI "int posix_spawnp(pid_t *" pid ", const char *" file ,
> -.BI "                const posix_spawn_file_actions_t *" file_actions ,
> -.BI "                const posix_spawnattr_t *" attrp ,
> -.BI "                char *const " argv[] ", char *const " envp[] );
> +.BI "                 const posix_spawn_file_actions_t *" file_actions ,
> +.BI "                 const posix_spawnattr_t *" attrp ,
> +.BI "                 char *const " argv[] ", char *const " envp[] );
>  .fi
>  .SH DESCRIPTION
>  The
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
