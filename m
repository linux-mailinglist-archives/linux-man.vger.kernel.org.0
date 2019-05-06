Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B1756154A0
	for <lists+linux-man@lfdr.de>; Mon,  6 May 2019 21:50:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726101AbfEFTub (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 6 May 2019 15:50:31 -0400
Received: from mail-vs1-f65.google.com ([209.85.217.65]:33318 "EHLO
        mail-vs1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726346AbfEFTub (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 6 May 2019 15:50:31 -0400
Received: by mail-vs1-f65.google.com with SMTP id z145so8918639vsc.0
        for <linux-man@vger.kernel.org>; Mon, 06 May 2019 12:50:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=yFzcqUjGppr07NGWaSm9Ai+vS9T+oUZ5YaOyEAGUkeo=;
        b=Cvw45heTIkJxu0v5wZBPDPUM32CpAjtNxyv1hMCJdCzamAYRZJP/XkXS1CFCCGoCwY
         RY7JLC1fv1wh6yycwf04eGXTSyQvqh0GHhNLD/RY9aJTGFa4pZIeNr3kSzi9iavStyHS
         JFZBJvSr/maFizahi11wYIbyEIq8yEm4yrIb3GOOX2hx590Z6APXbzbd8MYmiLNDptPz
         W5WoZXyqRLY2PpyAPvb8jKrn/veff+E0K2vwO+8lvuFHkXpBVqFL5R9iOPswv/gqxo8j
         aNdprrXARzSphsX/P8Jqk1PbYxRTqeRV1YhnZ+xiLS0MEgB6jBB/0fFWHXZDOupJGxL5
         fVRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=yFzcqUjGppr07NGWaSm9Ai+vS9T+oUZ5YaOyEAGUkeo=;
        b=M4IRyTHhW5eMWm+JvbXo1SH60UiNLe6JdMS6vvJbZ2tN9Qy1DtSpJ61BRcSPwVgH/s
         k+6q1o97K2mJDZ93HNYrocc2WY+VbfRVQuUru7s6TpzzVvrqnnt8CBipZ9nhhaGiN5G8
         1me1MKv/n8bzaefsEQG4lojm/JyJbBwOAWQE5QNkc5LsUoei+ojREhyS/0di/gnUPWYP
         /7jpln8VsTVAh9U7TK+hp36c1/E1z7/WrDmUTO46m4i+++2N9Y6nAK46Q5/7t+QD59wN
         A2TklxWKcbvc0lXq7IU7Bd8EnpMco6xUOsEXe50+wZJwicHHL7uV+9lMgP2jNFx5ADI5
         RV6Q==
X-Gm-Message-State: APjAAAWqK7tKsF1oDPN6sGsuReH8p3iF1NmexsBCrMOB9DZwkEyU7A3Z
        U9H9VWXfCgyJMBn5KHGEvDMYvgxN
X-Google-Smtp-Source: APXvYqzsBBOsARdlFZgrSr0OGxqjcq6Dknay8DU2Chrjm1Ng0ltjcSB7Y7+leMpXnTGeuSukQjgOAA==
X-Received: by 2002:a67:a46:: with SMTP id 67mr14832273vsk.127.1557172229760;
        Mon, 06 May 2019 12:50:29 -0700 (PDT)
Received: from [192.168.0.8] (dynamic-190-25-35-141.dynamic.etb.net.co. [190.25.35.141])
        by smtp.gmail.com with ESMTPSA id 124sm2778310vkn.10.2019.05.06.12.50.18
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 May 2019 12:50:29 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] intro.1, execve.2, getcontext.3, passwd.5, bpf-helpers.7:
 wfix
To:     Jakub Wilk <jwilk@jwilk.net>
References: <20190316141540.6708-1-jwilk@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <300534aa-020e-c525-d52e-275ae9d87091@gmail.com>
Date:   Mon, 6 May 2019 14:50:12 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190316141540.6708-1-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Jakub,

On 3/16/19 9:15 AM, Jakub Wilk wrote:
> Use gender-neutral pronouns.

Patch applied.

Thanks,

Michael

> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>
> ---
>   man1/intro.1       | 2 +-
>   man2/execve.2      | 2 +-
>   man3/getcontext.3  | 2 +-
>   man5/passwd.5      | 2 +-
>   man7/bpf-helpers.7 | 2 +-
>   5 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/man1/intro.1 b/man1/intro.1
> index 03649841d..63fcf5dea 100644
> --- a/man1/intro.1
> +++ b/man1/intro.1
> @@ -61,7 +61,7 @@ One types commands to the
>   the command interpreter.
>   It is not built-in, but is just a program
>   and you can change your shell.
> -Everybody has her own favorite one.
> +Everybody has their own favorite one.
>   The standard one is called
>   .IR sh .
>   See also
> diff --git a/man2/execve.2 b/man2/execve.2
> index 082bcb1a4..324e26a3d 100644
> --- a/man2/execve.2
> +++ b/man2/execve.2
> @@ -555,7 +555,7 @@ The result of mounting a filesystem
>   varies across Linux kernel versions:
>   some will refuse execution of set-user-ID and set-group-ID
>   executables when this would
> -give the user powers she did not have already (and return
> +give the user powers they did not have already (and return
>   .BR EPERM ),
>   some will just ignore the set-user-ID and set-group-ID bits and
>   .BR exec ()
> diff --git a/man3/getcontext.3 b/man3/getcontext.3
> index 7e6b2f230..141b6e98a 100644
> --- a/man3/getcontext.3
> +++ b/man3/getcontext.3
> @@ -184,7 +184,7 @@ there is no easy way to detect whether a return from
>   is from the first call, or via a
>   .BR setcontext ()
>   call.
> -The user has to invent her own bookkeeping device, and a register
> +The user has to invent their own bookkeeping device, and a register
>   variable won't do since registers are restored.
>   .PP
>   When a signal occurs, the current user context is saved and
> diff --git a/man5/passwd.5 b/man5/passwd.5
> index 70b1105e1..469d29260 100644
> --- a/man5/passwd.5
> +++ b/man5/passwd.5
> @@ -67,7 +67,7 @@ the shadow record should be obtained from an NIS+ server.
>   .PP
>   Regardless of whether shadow passwords are used, many system administrators
>   use an asterisk (*) in the encrypted password field to make sure
> -that this user can not authenticate him- or herself using a
> +that this user can not authenticate themself using a
>   password.
>   (But see NOTES below.)
>   .PP
> diff --git a/man7/bpf-helpers.7 b/man7/bpf-helpers.7
> index 7112b4536..6f07f476e 100644
> --- a/man7/bpf-helpers.7
> +++ b/man7/bpf-helpers.7
> @@ -2250,7 +2250,7 @@ Depending on the BPF program type, a local storage area
>   can be shared between multiple instances of the BPF program,
>   running simultaneously.
>   .sp
> -A user should care about the synchronization by himself.
> +A user should care about the synchronization by themself.
>   For example, by using the \fBBPF_STX_XADD\fP instruction to alter
>   the shared data.
>   .TP
> 
