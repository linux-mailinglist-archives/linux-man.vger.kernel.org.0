Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 63DE02DE0EA
	for <lists+linux-man@lfdr.de>; Fri, 18 Dec 2020 11:24:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728249AbgLRKYL (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 18 Dec 2020 05:24:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725897AbgLRKYK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 18 Dec 2020 05:24:10 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45AA3C0617A7
        for <linux-man@vger.kernel.org>; Fri, 18 Dec 2020 02:23:30 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id d13so1524225wrc.13
        for <linux-man@vger.kernel.org>; Fri, 18 Dec 2020 02:23:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=61I1L4T8vsLRY4w120kRJSfuKqXjSFBZUkDefyuOm7U=;
        b=EgpJnYUFxa6L1TtCXML5CGDqPWMf9JEDBeOG5/Okg5pMxc+g3b2DuCufWQ4Z5wwwoH
         WLWOK7/qUycuK3d/kWl70ndOr2Wx4YgVuuapczqPbgBE9tpsce46pIb+evkoNJjmDuou
         IwjVLK0GnPbhzSFqXEmq8QGKswdfvw8NkHqAQs5vE89rHabZuNqoX6sP6bT5wxKHa6Wg
         xSczBpMB67amPoWAtkzvBQ+KHsi79E7t+T7mDy2wA9oA3T2qrCdvpHkr1mWqCt7Ek9+2
         smQKREPd5VGXYUFB4PjuAdpW7oWKvgQuFx0lcieeIx+sm8zUi4Pfob7DUjNZ+Ib39Wk0
         ZdcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=61I1L4T8vsLRY4w120kRJSfuKqXjSFBZUkDefyuOm7U=;
        b=WqYUgHemvD9fiTfwMUgTu89Bd9KJPdzxV3Q4Os4cdpYz0wIVpjlAip8zo++ebaQeYU
         IguW77M50OrAQIQ97iAfTSHUoNl1XE2YmHnzw4PW5/niYJhXSwLyq2tpwPuv5ETg9taq
         Lakirg1IlcaVCYPcnfjbkKHXEZUDEhfbp6EoW0iuap7LCP3BcloNUdC5p7ozEvulYend
         faTW+isMbzOuYt9/s1PPJb5uy/WvcTSV5ahfFFwCMXFJOohLYnwT0Gnb4gGdVOfNMXbW
         CZBv4tleaKQ24uERLKtiLjyToUHDxqx/CqScWTHeGMj0beqepf3P+s0bom4saRDmQ1FN
         oZJA==
X-Gm-Message-State: AOAM530NoG5iMLyshb1nFVYRxjfCsaYlfbi4VLZgxvWrrjrhBH3Ir2R6
        Md5xC8xXgVvwsS14W5hC/Nkm7DP5zc0=
X-Google-Smtp-Source: ABdhPJwF+EltDSdRLnUcsdP0Z7aaJ+ubYBAUdwr5NS7b/fGM0ZhZgp8FKOs6SLhCzL0wX1Zh3+xD2A==
X-Received: by 2002:adf:8285:: with SMTP id 5mr3445037wrc.289.1608287009033;
        Fri, 18 Dec 2020 02:23:29 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with ESMTPSA id c10sm13393172wrb.92.2020.12.18.02.23.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Dec 2020 02:23:28 -0800 (PST)
Subject: Ping: [PATCH] fanotify: Document FAN_AUDIT flag
To:     Jan Kara <jack@suse.cz>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        Amir Goldstein <amir73il@gmail.com>,
        Steve Grubb <sgrubb@redhat.com>, linux-man@vger.kernel.org
References: <20201202154354.30778-1-jack@suse.cz>
 <d7a6ab1f-c852-700f-c88b-93baef1ca148@gmail.com>
 <20201202161959.GB3534@quack2.suse.cz>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <9a1ef164-4bee-ebf3-0cff-9641c96fec57@gmail.com>
Date:   Fri, 18 Dec 2020 11:23:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <20201202161959.GB3534@quack2.suse.cz>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Honza,

Linux 5.10 has been recently released.
Do you have any updates for this patch?

Thanks,

Alex

On 12/2/20 5:19 PM, Jan Kara wrote:
> Hi!
> 
> On Wed 02-12-20 16:57:23, Alejandro Colomar (man-pages) wrote:
>> Please break lines at significant points,
>> instead of just when it wraps at the right margin;
>> as I did in this little paragraph.
>>
>> See man-pages(7)::STYLE GUIDE::Use semantic newlines
> 
> OK, I'll do that for the submission of the next patch version.
> 
> 								Honza
> 
>> On 12/2/20 4:43 PM, Jan Kara wrote:
>>> Document FAN_AUDIT and related FAN_ENABLE_AUDIT flags.
>>>
>>> Signed-off-by: Jan Kara <jack@suse.cz>
>>> ---
>>>  man2/fanotify_init.2 | 7 +++++++
>>>  man7/fanotify.7      | 9 ++++++++-
>>>  2 files changed, 15 insertions(+), 1 deletion(-)
>>>
>>> OK, here's my attempt to document the FAN_AUDIT flag. It would be nice if
>>> Steve glanced over it from the audit side to check things are sane.
>>>
>>> diff --git a/man2/fanotify_init.2 b/man2/fanotify_init.2
>>> index ca03b11dc98a..6becc7a680db 100644
>>> --- a/man2/fanotify_init.2
>>> +++ b/man2/fanotify_init.2
>>> @@ -155,6 +155,13 @@ supplied to
>>>  (see
>>>  .BR fanotify (7)).
>>>  .TP
>>> +.BR FAN_ENABLE_AUDIT " (since Linux 4.15)"
>>> +.\" commit de8cd83e91bc3ee212b3e6ec6e4283af9e4ab269
>>> +Enable generation of audit log records about access mediation performed by
>>> +permission events. The permission event response has to be marked with
>>> +.B FAN_AUDIT
>>> +flag for audit log record to be generated.
>>> +.TP
>>>  .BR FAN_REPORT_FID " (since Linux 5.1)"
>>>  .\" commit a8b13aa20afb69161b5123b4f1acc7ea0a03d360
>>>  This value allows the receipt of events which contain additional information
>>> diff --git a/man7/fanotify.7 b/man7/fanotify.7
>>> index 5804a1f30d6c..b5f096304cf4 100644
>>> --- a/man7/fanotify.7
>>> +++ b/man7/fanotify.7
>>> @@ -588,7 +588,14 @@ to deny the file operation.
>>>  .PP
>>>  If access is denied, the requesting application call will receive an
>>>  .BR EPERM
>>> -error.
>>> +error. Additionally, if the notification group has been created with
>>> +.B FAN_ENABLE_AUDIT
>>> +flag,
>>> +.B FAN_AUDIT
>>> +flag can be set in the
>>> +.I response
>>> +field. In that case audit subsystem will log information about the access
>>> +decision to the audit logs.
>>>  .\"
>>>  .SS Closing the fanotify file descriptor
>>>  When all file descriptors referring to the fanotify notification group are
>>>

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
