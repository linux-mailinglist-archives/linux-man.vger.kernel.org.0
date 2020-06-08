Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 52B791F1C44
	for <lists+linux-man@lfdr.de>; Mon,  8 Jun 2020 17:41:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730333AbgFHPli (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Jun 2020 11:41:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53450 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730332AbgFHPlh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 Jun 2020 11:41:37 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2324CC08C5C2
        for <linux-man@vger.kernel.org>; Mon,  8 Jun 2020 08:41:37 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id c3so17896034wru.12
        for <linux-man@vger.kernel.org>; Mon, 08 Jun 2020 08:41:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=d7R47SM/Fm9nS2O+GFiwvM71xTnatBBIchUUvTW6QUs=;
        b=upQ7S2gWnplwzD2hhvKYhCMmLtLpjxXnNa5HNKcAs0fcKNJyrKH9SWcAXamNKBeoRu
         0cEBGWSa/3GdEMB65n+hsqDVU6rLu+rQ5TfltjztKqdc4zXD61trHIS0R+wnvuPczIVL
         Ssy7UyBDb0YMAZq+C9E4rv2iRVV5KkzJKIi5GqjTW19qnfaNKZXnhIHlA/FSfSsdqsTx
         x6lltj7Q+Hn5VkHp7bf+YfTzDF+iOsEuIBjepAsdmIhQ5U1LyPzSF30xKs+2BAUTzUPl
         rdWkpPcWDKITxIGAE4ZDc/lMT0kU04/EQviYVtmhZTEJ1JvcvC6ILabyV3ILpMwi3HvR
         stfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=d7R47SM/Fm9nS2O+GFiwvM71xTnatBBIchUUvTW6QUs=;
        b=XNS6obsyYGErdlxq0JYll9qmhqlbkw4GYr5owVxLB+AwllCY/6JRlN5mZpm3r3J48A
         cGoyF+Vtq1JIuYZ8j5crZfEdKBFtRouLyuE/JYCsf9B+upJpmuJ6qbPfvXqkfLA/kpVG
         haRnkH11ACWesQXzOqixwI7zKvuteiVBNrEwV6TmejioFkXiUYHIYmnfofSSfd17QfjA
         yHCfZMACyMIfNeMBBteB4uiG3oepSeV0GiSCJiBA7TvUyvV9UxuGeLxmZlrNNw7V64ad
         RN5D6wjQhoF8KglfgBXFhP8Yk7xD4VOy9iBWd2ZgC7Ldn+ikf14Aw/mbEOMt0BmiLDwF
         7WKw==
X-Gm-Message-State: AOAM530TfzOIyipK5k0ATZvvWCzy81Y0XwTz09sD1YiWsq9I8d/Az7ZH
        o7edb0ySdhiFQHG5TWS97EFnp6hpMuU=
X-Google-Smtp-Source: ABdhPJwEvgDjSrxmFNP5+tk5MtvvWSo4IWx+qGIqxfMcSKm2vOpHBydfFY/DI/yTPtDLXX0jlZ8V0g==
X-Received: by 2002:adf:fd4f:: with SMTP id h15mr23798212wrs.397.1591630895331;
        Mon, 08 Jun 2020 08:41:35 -0700 (PDT)
Received: from [192.168.178.63] (x5f734b84.dyn.telefonica.de. [95.115.75.132])
        by smtp.gmail.com with ESMTPSA id h27sm172043wrb.18.2020.06.08.08.41.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Jun 2020 08:41:34 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] proc.5: ffix
To:     Jakub Wilk <jwilk@jwilk.net>
References: <20200530155841.9627-1-jwilk@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <084648b1-9b57-286c-62c6-4768aa144901@gmail.com>
Date:   Mon, 8 Jun 2020 17:41:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200530155841.9627-1-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 5/30/20 5:58 PM, Jakub Wilk wrote:
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
> ---
>  man5/proc.5 | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/man5/proc.5 b/man5/proc.5
> index 5886bac99..485b3dfc7 100644
> --- a/man5/proc.5
> +++ b/man5/proc.5
> @@ -532,8 +532,8 @@ Furthermore, a process may change the memory location that this file refers via
>  .BR prctl (2)
>  operations such as
>  .BR PR_SET_MM_ARG_START .
> -+.IP
> -+Think of this file as the command line that the process wants you to see.
> +.IP
> +Think of this file as the command line that the process wants you to see.
>  .TP
>  .IR /proc/[pid]/comm " (since Linux 2.6.33)"
>  .\" commit 4614a696bd1c3a9af3a08f0e5874830a85b889d4

Thanks, Jakub. Patch applied.

Cheers,

Michael



-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
