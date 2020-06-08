Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 423A41F2097
	for <lists+linux-man@lfdr.de>; Mon,  8 Jun 2020 22:18:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726566AbgFHUSS (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Jun 2020 16:18:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726415AbgFHUSS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 Jun 2020 16:18:18 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BFCCBC08C5C2
        for <linux-man@vger.kernel.org>; Mon,  8 Jun 2020 13:18:17 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id y20so892750wmi.2
        for <linux-man@vger.kernel.org>; Mon, 08 Jun 2020 13:18:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=8s1Dcv6ef5AOhVRVKu9eRUBlGJsn1NK69v/xz+NvdAE=;
        b=he2vac6UaLvimwHfLFK1XkKpW95gBZvapJvYk1ktIL4qDCb+2BWmERLmJv88VFGzo+
         jkwqiu91WbT2D5sRs0YpUXA2za2C+8M8GnuD2VToqntwkswAQfWHomKU6CBRB3+OsPWS
         LIGIReoNDbYfvnojAGGkOWdKzkqMUr9qS+6ba/wfhoPEcx/c9LIpE4lcvhm3W0cMLU0X
         EZf2lpaD1HpcPMOwEJItHI0NektT9odTXXakJa/zveujkkDuF4Pamz4+uUlElzYt+3+6
         WXZav40pzrcMeBhwskbVTFow0WgiFeVisryxyVcyqYiv7w0re1yi5mHJZiBH1rWwjS4U
         ZyYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=8s1Dcv6ef5AOhVRVKu9eRUBlGJsn1NK69v/xz+NvdAE=;
        b=XDEzNSPDhei57K6Gk3A5UMcqGOI5BsJyMEt6SVo1DKWjIgA0PEBqY7hr/66df72+Ob
         e+LFlZQIz3pkplELUhWnT7U119JVNa9JFb58GsMKxio7qPYftV8QfNmAIa4wGz8srZQz
         9TwA8uEn7rn+nthT1aLgBaVXS6Oi7J+BUtjLw3ehAz9vOmlhf0zOyIckh3i6gF9IPeWn
         Nkm7d1AVFR/I1dM7XXtbBsrcYHaZXQabNOkh3ptOgvr+7RIhXZRdVoOcDHcdFVyjeU8A
         sa86mqg59EqNX3MZCRtUXmmkSoXWLc/k1FYcmDb1IWmyYggkYo4QfxAWY0QogG8fr5oS
         ENNw==
X-Gm-Message-State: AOAM531L+OE5c+wAFiHenW+aVGoI4aKolIEWfjkxJXppP9kwKt6w690M
        IAJjwxEoJq1ybqHUesQurcOU2XZ4wnw=
X-Google-Smtp-Source: ABdhPJzLKljcsmWBeNUtZd07z9DtEIvNzA6+z82bwTsnCQb1U19isi3NGfK5Y18ncWNuFztJLx63GQ==
X-Received: by 2002:a1c:2e48:: with SMTP id u69mr391846wmu.11.1591647496367;
        Mon, 08 Jun 2020 13:18:16 -0700 (PDT)
Received: from ?IPv6:2001:a61:253c:8201:b2fb:3ef8:ca:1604? ([2001:a61:253c:8201:b2fb:3ef8:ca:1604])
        by smtp.gmail.com with ESMTPSA id r2sm793475wrg.68.2020.06.08.13.18.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Jun 2020 13:18:15 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, Jan Kara <jack@suse.cz>,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH 3/3] fanotify.7, fanotify_mark.2: Clarify FAN_ONDIR in
 output mask
To:     Amir Goldstein <amir73il@gmail.com>
References: <20200529092530.25207-1-amir73il@gmail.com>
 <20200529092530.25207-4-amir73il@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <96176695-8d7f-f29c-8c30-a0071471c88f@gmail.com>
Date:   Mon, 8 Jun 2020 22:18:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200529092530.25207-4-amir73il@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Amir,

On 5/29/20 11:25 AM, Amir Goldstein wrote:
> FAN_ONDIR has been an input only flag before introduing FAN_REPORT_FID.
> With FAN_REPORT_FID it can also be in output mask.
> 
> Move the text describing its role in output mask to fanotify.7 where the
> other output mask bits are documented.

Thanks. Patch applied.

Cheers,

Michael

> Signed-off-by: Amir Goldstein <amir73il@gmail.com>
> ---
>  man2/fanotify_mark.2 | 17 +++--------------
>  man7/fanotify.7      | 18 ++++++++++++++++++
>  2 files changed, 21 insertions(+), 14 deletions(-)
> 
> diff --git a/man2/fanotify_mark.2 b/man2/fanotify_mark.2
> index f3ebb0208..b6c6c34c4 100644
> --- a/man2/fanotify_mark.2
> +++ b/man2/fanotify_mark.2
> @@ -278,30 +278,19 @@ Create events for directories\(emfor example, when
>  (but see BUGS), and
>  .BR closedir (3)
>  are called.
> -Without this flag, only are created only for files.
> -.IP
> -The
> -.BR FAN_ONDIR
> -flag is reported in an event mask only if the
> -.I fanotify_fd
> -file descriptor has been initialized with the flag
> -.BR FAN_REPORT_FID .
> +Without this flag, events are created only for files.
>  In the context of directory entry events, such as
>  .BR FAN_CREATE ,
>  .BR FAN_DELETE ,
>  .BR FAN_MOVED_FROM ,
>  and
> -.BR FAN_MOVED_TO
> -for example, specifying the flag
> +.BR FAN_MOVED_TO ,
> +specifying the flag
>  .BR FAN_ONDIR
>  is required in order to create events when subdirectory entries are
>  modified (i.e.,
>  .BR mkdir (2)/
>  .BR rmdir (2)).
> -Subdirectory entry modification events will never be merged with
> -nonsubdirectory entry modification events.
> -This flag is never reported individually within an event and is always
> -supplied in conjunction with another event type.
>  .TP
>  .B FAN_EVENT_ON_CHILD
>  Events for the immediate children of marked directories shall be created.
> diff --git a/man7/fanotify.7 b/man7/fanotify.7
> index 3c49d67a9..100ec3ebd 100644
> --- a/man7/fanotify.7
> +++ b/man7/fanotify.7
> @@ -381,6 +381,24 @@ This is a synonym for:
>  .IP
>      FAN_MOVED_FROM | FAN_MOVED_TO
>  .PP
> +The following bits may appear in
> +.I mask
> +only in conjunction with other event type bits:
> +.TP
> +.B FAN_ONDIR
> +The events described in the
> +.I mask
> +have occurred on a directory object.
> +Reporting events on directories requires setting this flag in the mark mask.
> +See
> +.BR fanotify_mark (2)
> +for additional details.
> +The
> +.BR FAN_ONDIR
> +flag is reported in an event mask only if the fanotify group has been
> +initialized with the flag
> +.BR FAN_REPORT_FID .
> +.PP
>  The fields of the
>  .I fanotify_event_info_fid
>  structure are as follows:
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
