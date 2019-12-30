Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A6B0E12D389
	for <lists+linux-man@lfdr.de>; Mon, 30 Dec 2019 19:50:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727571AbfL3SuD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 30 Dec 2019 13:50:03 -0500
Received: from mail-pg1-f196.google.com ([209.85.215.196]:45413 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727278AbfL3SuD (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 30 Dec 2019 13:50:03 -0500
Received: by mail-pg1-f196.google.com with SMTP id b9so18392104pgk.12
        for <linux-man@vger.kernel.org>; Mon, 30 Dec 2019 10:50:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=4KSEyoVO99g/YB0i3Xm7t6pJQuoLKfABoKBRCidCwok=;
        b=t9zWquYyVs8+44O1squ9R9mN5jB9wqSGACg7xXi5N2gzwtf6xHoFLMS84tZ7R9ebMI
         2f4mWz9kiROwrPiQFwJBFcKFAnwLXAc72NENqvZ6Zp//ObUGvObthk8BmPhkcucm/K28
         nf/6FFR/o87WxqT2XKhDqNi8F0b9fTtEKAPpnK8v9+SWtAIiVshQlkMHnyrtyG1ZFbvv
         dyArjano9tmEFVXTFl4m8CAdLR3P+bL5xM6t7zXjRfc50m20yMcLVZe2KEnrkwvpLFAO
         OHjh8YYVR5GrgIqlxQXXtIvsNZp6NgHn3+7ZoQlvRw4SFwEQc6t6GUnUN9r4hzz9yTTq
         iuqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=4KSEyoVO99g/YB0i3Xm7t6pJQuoLKfABoKBRCidCwok=;
        b=skS3E5hnYA2DL+YsgNopjSRe7LhZQyRTkbrGStsrCSYXfeAND9eWSfJofEnl1GhFty
         wbW75o9kmQffEqhkP9UkZxUtou1omytTRsO6zf0w1qsWYIiv54TcLMzdWpTjR4MWNtHM
         7/8g3wJfd/dDMCYmaNM+bvDSQ504OhV2FqXCsUmk6J5eIbWONj5WuBFlvK4RAapEd1g8
         3uyPxIgcqf0BZzAEt4EMBhhsXwg7pWkJMeBpuxn/roo90acczR6yHRdyvgwOPLKLcidq
         Zprolfc1Opq0exI5eVdmiQfqrGbtHXougn0IBgSRp+JEBygEaF92Iq1Y/MVjMvY6EMt7
         tIew==
X-Gm-Message-State: APjAAAVrsna71KMID5FQBXVBbTtXM8ucqiL+q5fn50o1WL7BLMfv195L
        uFfjweL4lrON/9NRllsG15uWJ9X2
X-Google-Smtp-Source: APXvYqx7ko4JO9c280Hv4FOD3CWzh8Wy70DWht1CiEpHZzEd1u/d44PdAypO4kZtA0JO03jIKX+9jQ==
X-Received: by 2002:a63:e84d:: with SMTP id a13mr76698463pgk.274.1577731802704;
        Mon, 30 Dec 2019 10:50:02 -0800 (PST)
Received: from [192.168.178.94] ([121.98.29.40])
        by smtp.gmail.com with ESMTPSA id y197sm53528389pfc.79.2019.12.30.10.50.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Dec 2019 10:50:02 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org
Subject: Re: [PATCH] netlink.7: fix alignment issue in example
To:     =?UTF-8?Q?Antonin_D=c3=a9cimo?= <antonin.decimo@gmail.com>
References: <CAC=54BKOz_ReXURKh8HCzA67SN=vO9439G7K8J0P19dn-PX_mg@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <eb5aefe0-ab56-d37b-96c5-cec03e373007@gmail.com>
Date:   Mon, 30 Dec 2019 19:49:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <CAC=54BKOz_ReXURKh8HCzA67SN=vO9439G7K8J0P19dn-PX_mg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Antonin,

On 12/27/19 10:15 PM, Antonin Décimo wrote:
> PVS-Studio reports that in
> 
>     char buf[8192];
>     /* ... */
>     nh = (struct nlmsghdr *) buf,
> 
> the pointer 'buf' is cast to a more strictly aligned pointer
> type. This is undefined behaviour. One possible solution to make sure
> that buf is correctly aligned is to declare buf as an array of struct
> nlmsghdr. Other solutions include allocating the array on the heap,
> use an union, or stdalign features.
> With this patch, the buffer still contains 8192 bytes.
> 
> This was raised on Stack Overflow:
> https://stackoverflow.com/questions/57745580/netlink-receive-buffer-alignment

Thanks. Patch applied.

Cheers,

Michael

> ---
>  man7/netlink.7 | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/man7/netlink.7 b/man7/netlink.7
> index 81d4249..853dee6 100644
> --- a/man7/netlink.7
> +++ b/man7/netlink.7
> @@ -533,8 +533,9 @@ And the last example is about reading netlink message.
>  .in +4n
>  .EX
>  int len;
> -char buf[8192];     /* 8192 to avoid message truncation on
> -                       platforms with page size > 4096 */
> +/* 8192 to avoid message truncation on platforms with
> +   page size > 4096 */
> +struct nlmsghdr buf[8192/sizeof(struct nlmsghdr)];
>  struct iovec iov = { buf, sizeof(buf) };
>  struct sockaddr_nl sa;
>  struct msghdr msg;
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
