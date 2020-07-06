Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CB1FF215689
	for <lists+linux-man@lfdr.de>; Mon,  6 Jul 2020 13:41:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728849AbgGFLl4 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 Jul 2020 07:41:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728441AbgGFLl4 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 Jul 2020 07:41:56 -0400
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com [IPv6:2a00:1450:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04601C061794
        for <linux-man@vger.kernel.org>; Mon,  6 Jul 2020 04:41:56 -0700 (PDT)
Received: by mail-ed1-x541.google.com with SMTP id dm19so28217837edb.13
        for <linux-man@vger.kernel.org>; Mon, 06 Jul 2020 04:41:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=7BNhtNlOJqS3XyMi0cjAeAbjhfzPBXRcKnlezOfHxf8=;
        b=GUe/dWaoAJkr3WlXAV5Jd3r3BiMdM+AOaK33gc40x8NPSXNifi7vo5rvNYLIxLYK6z
         USlpvZalnagI0QxigsI2f7S1ZK2+QRL9OAWlRDbOZCxlGKDwaZpSnekzSA35iL4cPFKo
         eKCqjXkfgohV4NC8c1AF4KbLbeqeiKkuOSgEKP7H4gVmutykTBaep3HJgISOGWwCEwIz
         VCU7IR24zPFW1nNgAO+JoedMzRsdny2DawRfDXyRjcJG1r9+QjgsDu00ZIsQPXnaxCjN
         5mPueBzahfyBO4YKDsUnF+4pXGS4Eo8rmGuv+xjaF1TTpLBbBRLTcznc9ORXUzi6rkwA
         odCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=7BNhtNlOJqS3XyMi0cjAeAbjhfzPBXRcKnlezOfHxf8=;
        b=Fl1eu4qcBWTWw1LvPX2WkehmO5nZ5yL5mtyCcc6QVEcySPMZgw72jGLh0KxyGivR1S
         7tU08fBb+0Rr4BYj/Tz6oOKmArsLOZLUh0N0N/FPPqFzbHP96gP3pCwZTZLpi3KMYJsF
         ID7anzL55BBe0fN/UW0MXcfI3mHf8hhxYdoOeij2iW0V5YiINev3pwWnZ2m9NW/+wCgo
         MBX8ZO90iMYdRmws3jL/ZD38A8Ax3D23uIhxbAt9Q1sKisaaZRmRMMfjzeOVXCk1U0MV
         twGZPJAYOfh6ctxxwAvmC7m7JfzZJZUgybUwX4l19mSXKTGiYFYW9R0NDaUBtR5S9O95
         jErg==
X-Gm-Message-State: AOAM53388Gy67TXIFNPFBGJpodeESOtpgyUy8c19nilAx8CSPzbNWqEV
        wd9znBPgiZO7hBb+YePqPObM6l27
X-Google-Smtp-Source: ABdhPJyyZOfaDMaJigDqyjfRV0t7MM0hI18iudBKXqG1UiAassoh5BtlAF/edvEQRUYyfKgDcDWjag==
X-Received: by 2002:a05:6402:3049:: with SMTP id bu9mr42249742edb.232.1594035714565;
        Mon, 06 Jul 2020 04:41:54 -0700 (PDT)
Received: from ?IPv6:2001:a61:3adb:8201:9649:88f:51f8:6a21? ([2001:a61:3adb:8201:9649:88f:51f8:6a21])
        by smtp.gmail.com with ESMTPSA id kt4sm16127326ejb.48.2020.07.06.04.41.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2020 04:41:54 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 3/3] Changes.old: tfix
To:     Jakub Wilk <jwilk@jwilk.net>
References: <20200706043907.9667-1-jwilk@jwilk.net>
 <20200706043907.9667-3-jwilk@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <80cd84be-9382-bcb9-bc39-44c683f256b3@gmail.com>
Date:   Mon, 6 Jul 2020 13:41:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200706043907.9667-3-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/6/20 6:39 AM, Jakub Wilk wrote:
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
> ---
>  Changes.old | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)


Thanks, Jakub. Patch applied.

Cheers,

Michael


> diff --git a/Changes.old b/Changes.old
> index 43b0cc844..0e67fe3c8 100644
> --- a/Changes.old
> +++ b/Changes.old
> @@ -41677,7 +41677,7 @@ core.5
>  locale.5
>      Marko Myllynen
>          Adjust LC_IDENTIFICATION / abbreviation
> -            Tiny tweak to locale.5 based on the on ISO/IEC TR 14652:
> +            Tiny tweak to locale.5 based on ISO/IEC TR 14652:
>  
>              http://www.open-std.org/jtc1/SC22/WG20/docs/n972-14652ft.pdf
>      Marko Myllynen
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
