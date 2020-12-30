Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1A9B02E79E9
	for <lists+linux-man@lfdr.de>; Wed, 30 Dec 2020 15:18:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726261AbgL3OSP (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 30 Dec 2020 09:18:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51626 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725814AbgL3OSO (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 30 Dec 2020 09:18:14 -0500
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C942C061799
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 06:17:34 -0800 (PST)
Received: by mail-ej1-x62b.google.com with SMTP id qw4so22035041ejb.12
        for <linux-man@vger.kernel.org>; Wed, 30 Dec 2020 06:17:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=fKGbC67cAfM3G/AWSyE2a1JCbV1wdVfcH+HRbjKYhFU=;
        b=vHiVLP62kSAyEJrssWOehgUvM2Vj2MhYcKoMuE0PmRDWU2EpcmhljVl64CFYi7LOzv
         ZRta4+dE7A0TQlJwHpkA3wlRyV1va4puyB521c6BezlvnNVzEoSZD+0nh1HouzxPNyun
         Ud4lBUCDa9OhtXvapxuz2f3bhAc82UsccFNE4Cy729dJO1YQ3bpyzUmYDqxl6/PEkcSe
         mRSd8pB+tdHA7lj+Zu6WGKom8XNTCMcOSss+vZ+F7bdvl1puwBBNEAsH0Dy06/whyWhN
         mSm8gBbpbOgx5zUh+tVdvy/bVY3oLhfPuPGhyhEJfDC2wYlQZMZ7zoK7W6ogU9R2DKBz
         uv0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=fKGbC67cAfM3G/AWSyE2a1JCbV1wdVfcH+HRbjKYhFU=;
        b=J/3Rl7y5sK0zuc3aiRmnpCfMO0VzGGZybqZ7L8k+QhAUY/3jF8JeTLRPs0W8apXGuN
         NmWHJ+mydmWuO2qiNyZHZ9kZ3RD8i/L+/EFw5VMmGOc/9Sr0+kT12SBPu+4jT6NunISO
         lI27Tq6yQMRo/3NjapY6Pnl8dapYN5wxIAvFC2r1pa7fsrWpbFHnZgwIDhrEgXjrtuqa
         8UzbPBIU2JtMz22xKC0YWQm8JWGzqxgfqa25Y5sjVVE2749SM3H38KbM+mLArjd4/P7d
         jU4gp0yuca63PPi6SWCYV1YbtGP4SaXQY0WjIPNO1O23yuZY4OCjwJqtHDeqyTRjTDnn
         n7ig==
X-Gm-Message-State: AOAM531MP5PbJGLdjpvnbbramNVv5jJ5Le9g3K6kjE86fWvaYDddbilQ
        3PHwgMpx3LflECIkAkyH7ew=
X-Google-Smtp-Source: ABdhPJxDEv9MBsHzdssRHkcLgqgwBZUw6pb+XtutNwkq0dD9DC/4l4Tz8uLOIPz/t05jlAE4+eWQKQ==
X-Received: by 2002:a17:906:1a5a:: with SMTP id j26mr50015403ejf.225.1609337853197;
        Wed, 30 Dec 2020 06:17:33 -0800 (PST)
Received: from ?IPv6:2001:a61:2467:2f01:faca:3d43:5e40:30d1? ([2001:a61:2467:2f01:faca:3d43:5e40:30d1])
        by smtp.gmail.com with ESMTPSA id n16sm38874493edq.62.2020.12.30.06.17.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Dec 2020 06:17:32 -0800 (PST)
Cc:     mtk.manpages@gmail.com, Amir Goldstein <amir73il@gmail.com>,
        Matthew Bobrowski <mbobrowski@mbobrowski.org>,
        linux-man@vger.kernel.org, Steve Grubb <sgrubb@redhat.com>
Subject: Re: [PATCH] fanotify.7: fix outdated description
To:     Jan Kara <jack@suse.cz>
References: <20201124152109.30027-1-amir73il@gmail.com>
 <d698116e-4f7f-1b50-538f-7f5d83c9e697@gmail.com>
 <20201126132912.GE422@quack2.suse.cz>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <32752c59-fd33-447d-a212-c255b6f32c0f@gmail.com>
Date:   Wed, 30 Dec 2020 15:17:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20201126132912.GE422@quack2.suse.cz>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 11/26/20 2:29 PM, Jan Kara wrote:
> On Thu 26-11-20 10:48:09, Michael Kerrisk (man-pages) wrote:
>> On 11/24/20 4:21 PM, Amir Goldstein wrote:
>>> Signed-off-by: Amir Goldstein <amir73il@gmail.com>
>>> ---
>>>  man7/fanotify.7 | 7 ++++---
>>>  1 file changed, 4 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/man7/fanotify.7 b/man7/fanotify.7
>>> index c4f5397e4..5804a1f30 100644
>>> --- a/man7/fanotify.7
>>> +++ b/man7/fanotify.7
>>> @@ -29,11 +29,12 @@ fanotify \- monitoring filesystem events
>>>  The fanotify API provides notification and interception of
>>>  filesystem events.
>>>  Use cases include virus scanning and hierarchical storage management.
>>> -Currently, only a limited set of events is supported.
>>> -In particular, there is no support for create, delete, and move events.
>>> +In the original fanotify API, only a limited set of events was supported.
>>> +In particular, there was no support for create, delete, and move events.
>>> +The support for those events was added in Linux 5.1.
>>>  (See
>>>  .BR inotify (7)
>>> -for details of an API that does notify those events.)
>>> +for details of an API that did notify those events pre Linux 5.1.)
>>>  .PP
>>>  Additional capabilities compared to the
>>>  .BR inotify (7)
>>
>> Thanks, Amir. Applied, with Jan's Reviewed-by.
>>
>> By the way, I see that there's still no documentation for
>> FAN_AUDIT/FAN_ENABLE_AUDIT, added in:
>>
>>     commit de8cd83e91bc3ee212b3e6ec6e4283af9e4ab269
>>     Author: Steve Grubb <sgrubb@redhat.com>
>>     Date:   Mon Oct 2 20:21:39 2017 -0400
>>
>>         audit: Record fanotify access control decisions
>>
>>
>> Can anyone help with that?
> 
> Thanks for a notification. If Steve doesn't beat me to it, I'll write the
> doc likely next week.

Ping!


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
