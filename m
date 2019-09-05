Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A12E6AA563
	for <lists+linux-man@lfdr.de>; Thu,  5 Sep 2019 16:05:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726008AbfIEOFu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 5 Sep 2019 10:05:50 -0400
Received: from mail-lj1-f195.google.com ([209.85.208.195]:41658 "EHLO
        mail-lj1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725945AbfIEOFu (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 5 Sep 2019 10:05:50 -0400
Received: by mail-lj1-f195.google.com with SMTP id a4so2622440ljk.8
        for <linux-man@vger.kernel.org>; Thu, 05 Sep 2019 07:05:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=kWeEdM6zHJdggMhfCUPbu4Ilg8byt0CDVQzfCjPoVIM=;
        b=ai8JqKOh9WwxSnjLRwVgcdSLlQxtpcOV7sbzmJySh4JbQkd7sN1dKhqLKtog0qday4
         I/MGl8VDp5gWWAqYt+UOnBcaxyIqTopZarJgMhL8IQrDuOt9qXsa6Aj5N6/ox3Q3A/+x
         iMrnGI+PM0HNBlZVl075vvlo3LwbGnwZRLQlCxbYgxNry1iMGKlMTJTY993dQVlN5I6E
         vYmHt/bWnXX3E+LHDFQIowo3Yy7HXSA8UCDIPriveI8X58oInyEPdeOzSlZSYS/vmT1V
         mfx1BfhnS0H0Q9g8lwZELRaTObH7AWVVHivbd4vBDt5dCwpEDEtscGOHLyviCKdd4Hu1
         E6hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=kWeEdM6zHJdggMhfCUPbu4Ilg8byt0CDVQzfCjPoVIM=;
        b=dNAsGaX5M+lcTsossMGyuxQ3k244VlywgqNeaq5PaCHLmy0VVimFPxYh/9Qi4GCuYS
         seTtErkvNvIbRq7dqC32+35iXst1g/sCBDAkoqsvgwQ/ZDO20FnVH5fsmAfgeuOUTp1i
         x21PhRBWpXh/tkgshhnNzAAQiEp17zJbU3nQ2XCxhP3+nO6f1eZykbizfjRo4WRdx+y5
         bSUc/db7yx4S3vEcfzq6DoGIKFIz9DiVKK5hKqB7r4BQ1BEiz0U5HfTK/wptMVWk4Evy
         LIhFaTIWNMUR97cWaqvThIz/ffsJla5Qorst+JbOb4XesefdPRd8iOvog292tvb/PpUx
         JhMg==
X-Gm-Message-State: APjAAAWbyQEtCmaOQhD2wlbE/qlmE0Hu+NVTvXJPJNVm9QbISmSeY2xH
        HgLO58JNv6Mv/4NJK36nHZrWDULP9t4=
X-Google-Smtp-Source: APXvYqzAfG/wMbc3+v3id5HUZVYThshUEMfPPjsgTaXjZcwf5XSdtYy3VTwLpnyxsMMkVxQClE7BcQ==
X-Received: by 2002:a2e:974f:: with SMTP id f15mr2273501ljj.114.1567692348467;
        Thu, 05 Sep 2019 07:05:48 -0700 (PDT)
Received: from [192.168.101.104] ([138.62.237.153])
        by smtp.gmail.com with ESMTPSA id p10sm400717lji.71.2019.09.05.07.05.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Sep 2019 07:05:48 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH 4/4] fanotify_mark.2: Document FAN_MOVE_SELF
To:     Jakub Wilk <jwilk@jwilk.net>
References: <20190902065536.4878-1-jwilk@jwilk.net>
 <20190902065536.4878-4-jwilk@jwilk.net>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <009dce08-607b-bddf-dcd1-aa55f5e5415f@gmail.com>
Date:   Thu, 5 Sep 2019 16:05:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190902065536.4878-4-jwilk@jwilk.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Jakub,

On 9/2/19 8:55 AM, Jakub Wilk wrote:
> Signed-off-by: Jakub Wilk <jwilk@jwilk.net>

Patch applied.

Thanks,

Michael

> ---
>  man2/fanotify_mark.2 | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/man2/fanotify_mark.2 b/man2/fanotify_mark.2
> index e62b6d2c2..7c21cc22b 100644
> --- a/man2/fanotify_mark.2
> +++ b/man2/fanotify_mark.2
> @@ -209,6 +209,10 @@ parent directory.
>  Create an event when a file or directory has been moved to a marked parent
>  directory.
>  .TP
> +.BR FAN_MOVE_SELF " (since Linux 5.1)"
> +.\" commit 235328d1fa4251c6dcb32351219bb553a58838d2
> +Create an event when a marked file or directory itself has been moved.
> +.TP
>  .B FAN_Q_OVERFLOW
>  Create an event when an overflow of the event queue occurs.
>  The size of the event queue is limited to 16384 entries if
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
