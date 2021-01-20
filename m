Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 007F32FCD11
	for <lists+linux-man@lfdr.de>; Wed, 20 Jan 2021 10:03:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729061AbhATJAY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 20 Jan 2021 04:00:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38636 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726931AbhATI7w (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 20 Jan 2021 03:59:52 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4BACC0613D6
        for <linux-man@vger.kernel.org>; Wed, 20 Jan 2021 00:48:56 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id w5so22223143wrm.11
        for <linux-man@vger.kernel.org>; Wed, 20 Jan 2021 00:48:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=3fGIs4rGRjFzKjbw+vkWqS4g5hIqqCHeeRFmn4HkAjk=;
        b=PKzVhsgYJeYDTu/sIw1Od+Voz5ePrNjorSwio+lp3pZpGpcSA5Uwiw0dYpLHfIGLCy
         4IcEylZl59cUHm4wCIgo1i3uhflnvvcCnvbcETJQEydx4m0c0NJKva+z9+XhPofqqpOR
         Su331OkVBBtZBjoVkUSUGUA3mpAc+uS8+QKKcJ5rb1FkRugbeKQEkY5Px6uDO+iI0T+Z
         woxfU3qtY3HspQcxgiLmCZuy0md7I1qmWat8Zapfrjss/lMJDX+pPFzunLtTxF8eYYWV
         1004xW/7PsQ5WD4WDE9AHG4lOAFnbasJ9POyLky2KYUH2yFl/Z2aYYUjkzG1dk8vTwnW
         aLXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=3fGIs4rGRjFzKjbw+vkWqS4g5hIqqCHeeRFmn4HkAjk=;
        b=lg+rMOEA3KuBDZOufmE96VkYX/gZRLLeodEu91HDJZULO+JbbYoutz+H/Ya0xPCkvM
         9JoQQBN7zvwvYUw3wk+gSE+UfulQBBXdGNosY9kXCmdTVAB17d2w1hUHZBQ6YM0DLDH0
         XonJRv8qZYKrvbek+bt59GfpMeqpAHemK8jgeU1HKQoPIizyhm5jl87q+u07gAcPUeYd
         CfdpGjZ7UyjQ7Xp7Th6CVz/Em6CP6Jue25jssDz0LhTijqHJMzqyjsW5yL2x4pE1jw6X
         1N7IH6jyO2U0UFgRS11GjkrWljjAwL7CZzqPmQhyQP3Ig47yONOv2Ufmi/bXcqwKCN5y
         6AnA==
X-Gm-Message-State: AOAM531wvK+WtWURHsHcsWDn+W70DG5QB+8T4RZlTsD3WMcX7GNW0nap
        8Y6x86wFZ1KRAlCqk2OXnx/jSooVi0c=
X-Google-Smtp-Source: ABdhPJwizPWXUIFeBEJP23uTR5qcctWlyJ6TTzT5vVpWQmrfKNzBGZkcIJ5iLSXNlnXcjQLp+VkvEw==
X-Received: by 2002:adf:fdcc:: with SMTP id i12mr8034277wrs.317.1611132535578;
        Wed, 20 Jan 2021 00:48:55 -0800 (PST)
Received: from ?IPv6:2a02:2455:e0:e000:3005:efab:c884:ced0? ([2a02:2455:e0:e000:3005:efab:c884:ced0])
        by smtp.gmail.com with ESMTPSA id a62sm2702399wmh.40.2021.01.20.00.48.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Jan 2021 00:48:54 -0800 (PST)
Cc:     mtk.manpages@gmail.com, roucaries.bastien@gmail.com,
        =?UTF-8?Q?Bastien_Roucari=c3=a8s?= <rouca@debian.org>,
        linux-man@vger.kernel.org,
        "Dr . Tobias Quathamer" <toddy@debian.org>,
        Vincent Lefevre <vincent@vinc17.net>
Subject: Re: [PATCH] environ.7: Document the valid values of pathnames for
 SHELL, PAGER and EDITOR/VISUAL
To:     Alejandro Colomar <alx.manpages@gmail.com>
References: <20210119204459.401313-1-alx.manpages@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <093134fe-22a5-1aaa-990f-3ec339ad220d@gmail.com>
Date:   Wed, 20 Jan 2021 09:48:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210119204459.401313-1-alx.manpages@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On 1/19/21 9:45 PM, Alejandro Colomar wrote:
> From: Bastien Roucariès <rouca@debian.org>
> 
> The environ(7) man page says:
> 
>        SHELL  The pathname of the user's login shell.
> 
>        PAGER  The user's preferred utility to display text files.
> 
>        EDITOR/VISUAL
>               The user's preferred utility to edit text files.
> 
> but doesn't say whether the pathnames must be absolute or they can
> be resolved using $PATH, or whether they can have options.
> 
> Note that at least for SHELL, this is not specified by POSIX.
> This issue was raised in the Austin Group mailing-list, and the answer
> is that "what constitutes a valid value for a platform
> should be documented" [1].
> 
> Since OpenSSH assumes that $SHELL is an absolute pathname (when set),
> it is supposed that the documentation should be:
> 
>        SHELL  The absolute pathname of the user's login shell.
> 
> For PAGER, POSIX says: "Any string acceptable as a command_string
> operand to the sh -c command shall be valid."
> 
> For EDITOR, it does not need to be an absolute pathname since POSIX
> gives the example:
> 
>   EDITOR=vi fc
> 
> and since it is specified as "the name of a utility", It assumes that
> arguments (options) must not be provided. Page 3013 about "more", it
> is said: "If the last pathname component in EDITOR is either vi or ex,
> [...]", thus again, it is assumed to be a pathname.
> 
> For VISUAL, POSIX says: "Determine a pathname of a utility to invoke
> when the visual command [...]", thus it is also a pathname. It is not
> clear whether the pathname must be absolute, but for consistency with
> EDITOR, it will be resolved using $PATH.
> 
> [1] https://www.mail-archive.com/austin-group-l@opengroup.org/msg01399.html
> 
> Reported-by: Vincent Lefevre <vincent@vinc17.net>
> Signed-off-by: Bastien Roucaries <rouca@debian.org>
> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>

Thanks. Patych applied.

Cheers,

Michael

> ---
>  man7/environ.7 | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/man7/environ.7 b/man7/environ.7
> index 7d2bc5a86..b30f9a38e 100644
> --- a/man7/environ.7
> +++ b/man7/environ.7
> @@ -113,16 +113,22 @@ The current working directory.
>  Set by some shells.
>  .TP
>  .B SHELL
> -The pathname of the user's login shell.
> +The absolute pathname of the user's login shell.
>  .TP
>  .B TERM
>  The terminal type for which output is to be prepared.
>  .TP
>  .B PAGER
>  The user's preferred utility to display text files.
> +Any string acceptable as a command_string operand to the
> +.I sh -c
> +command shall be valid.
>  .TP
>  .BR EDITOR / VISUAL
>  The user's preferred utility to edit text files.
> +Any string acceptable as a command_string operand to the
> +.I sh -c
> +command shall be valid.
>  .\" .TP
>  .\" .B BROWSER
>  .\" The user's preferred utility to browse URLs. Sequence of colon-separated
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
