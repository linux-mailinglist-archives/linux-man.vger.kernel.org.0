Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6C5BB169A47
	for <lists+linux-man@lfdr.de>; Sun, 23 Feb 2020 22:34:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726678AbgBWVem (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 23 Feb 2020 16:34:42 -0500
Received: from mail-wm1-f67.google.com ([209.85.128.67]:40051 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726534AbgBWVel (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 23 Feb 2020 16:34:41 -0500
Received: by mail-wm1-f67.google.com with SMTP id t14so7321061wmi.5
        for <linux-man@vger.kernel.org>; Sun, 23 Feb 2020 13:34:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=xw6LlaqM1KZF7MWmOEgfoJ4PBxCxahRaz7K807cSlT0=;
        b=tmxpav2BD/V1fpqPLO6cWvXsOMp0Xh6Wy4UG0X1x7+aEST7K5qm2Yl4r3255PJIh7x
         hNoGfrDfuwk1CLdBqoSU18ScWA6aLyZ0bJa9LnLc8rVrgzyQW/fzUQ/XCsopgnU2Iuby
         To9HjT/ta8SzG5OQvZ0pkYhiZc94rJ0A0gOD6Dz0aYSH6Txp4pNpC8PZtvSpLg4P5w51
         kOMNVRzztsdi4bzRlBVo3Qzhzu15cweMFd8CN+LC1VaNi1ScMqogQaiLsbY8ElZKe7Ce
         jaUsj6Qxc7p2U8ULklpByPkSt35pfPJunZ06cLQz7tRlqTD/Vlnz/BJQpApyWtBDp14V
         GN2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=xw6LlaqM1KZF7MWmOEgfoJ4PBxCxahRaz7K807cSlT0=;
        b=qrPwwiFIOJzQCVUIAh8EMFejD2V4I8i2SEhDrBmVB+QSwDGVnT5r5Eo0U51dE1y1jU
         5HRHYfaiyN454g1UjcK1ikJ2S0Ig8dJGJa1LLr16KXAYFWWR5HwxzuQLq/1dM+OWe9ow
         ZWOTsuiBtHCiNpCNRUppyVpnPUkvinhTXZ34O2czCguohpNnQ8cVdsw5Ro2q9VLiWyGw
         NkQ3w3v2wcdgb6OXbu45ftwJPAR18802kohMC5mQLBX0yF7tXNNpEwHMBWWkDSm+DC/B
         Q9VblzGeRHNRLUSyCi0DYG0XlQ5XwqyUsoK3zMG25iRBEFW0TbSjpRppkV/7WU+sO5xP
         cSHg==
X-Gm-Message-State: APjAAAWTu4xD53t5SqgOlAhNCr8c4W5tS/5yFN343QaaVjilrqRx16TZ
        9RaE185Vb9FoeJA2hH5g5lY=
X-Google-Smtp-Source: APXvYqxXrPHhQY8cT8bnZ/Jzq4q/XKYveCLntLJPXwN4jlaPlfgdof5N6WMtd31Q3lSWDG2s046NyA==
X-Received: by 2002:a1c:df09:: with SMTP id w9mr16801183wmg.143.1582493680035;
        Sun, 23 Feb 2020 13:34:40 -0800 (PST)
Received: from ?IPv6:2001:a61:3ab0:601:eabf:519f:11af:545d? ([2001:a61:3ab0:601:eabf:519f:11af:545d])
        by smtp.gmail.com with ESMTPSA id l131sm15682797wmf.31.2020.02.23.13.34.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Feb 2020 13:34:39 -0800 (PST)
Cc:     mtk.manpages@gmail.com
Subject: Re: [PATCH] pidfd_open.2: wfix
To:     Alexander Miller <alex.miller@gmx.de>, linux-man@vger.kernel.org
References: <20200223013956.5f3f3add.alex.miller@gmx.de>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <0b9a2d8b-07b5-3553-3043-88b235866d11@gmail.com>
Date:   Sun, 23 Feb 2020 22:34:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200223013956.5f3f3add.alex.miller@gmx.de>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alexander,

On 2/23/20 1:39 AM, Alexander Miller wrote:
> Signed-off-by: Alexander Miller <alex.miller@gmx.de>

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man2/pidfd_open.2 | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/man2/pidfd_open.2 b/man2/pidfd_open.2
> index 3c847f7e1..8c4635508 100644
> --- a/man2/pidfd_open.2
> +++ b/man2/pidfd_open.2
> @@ -146,7 +146,7 @@ flag.
>  .PP
>  A PID file descriptor returned by
>  .BR pidfd_open ()
> -(of by
> +(or by
>  .BR clone (2)
>  with the
>  .BR CLONE_PID
> --
> 2.24.1
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
