Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 17B332EF170
	for <lists+linux-man@lfdr.de>; Fri,  8 Jan 2021 12:37:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725816AbhAHLgr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 8 Jan 2021 06:36:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725791AbhAHLgr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 8 Jan 2021 06:36:47 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94683C0612F4
        for <linux-man@vger.kernel.org>; Fri,  8 Jan 2021 03:36:06 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id i9so8698743wrc.4
        for <linux-man@vger.kernel.org>; Fri, 08 Jan 2021 03:36:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=G7rWkCkzB4Dfs3Rv7dbykjAqzXicFqXfYG1GIYTmL0s=;
        b=ATpSpwDMu1l6wZ8mPu214Rr1UC42M9VaGUywTsVhBHGsWr1yLOPKppsGh9bh2vPa8r
         vuQszeax886vzixooidE6+b+PsW65lIu19roziiK6jpqG/W+FdaeFYqSnyYpCxwmSJWh
         i5jfGsvViCxXY8YjFH+nPTaIzek/JUXbxD1Kk4t1rlSAYZYLKThf4e1MPnFvhoGMPiC2
         dvou8j7PEbC6BJMTVKlKeWqvuNOgULDvDkYT0nCpeESwrVJ8Bi+ziTYrRspY14Uj32eF
         M0AWgQ7rYRw9FzWprMVechbycC/pkvsqXqv+iuqy0oT0dn8ErkuOm/Pb4eIYDsd6KhGx
         Vygg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=G7rWkCkzB4Dfs3Rv7dbykjAqzXicFqXfYG1GIYTmL0s=;
        b=DLFkpE/vHf8tnYsXrrcDENr3X4pZU+LRniY8PEVDHMWSjmVKUMsYaVbZhdffHzTg8l
         qfNlJA9PYGeyZll06G7wM1sPt1KSwUMQzCi3MFLAx5pN0ZTtJYK9FEu4ajwRc+eZNBYK
         d9KJm2n5em5dW/UBnyaL1bxg5JGzQfQ+0aOHM1Z6j0NJdS3PIApKExnKku0HledXc2N+
         JJYvgdiZOGvAcn+ux+3zf4YsssMoX6kB4M/e3xbsJRjyAsIkca14cc5H0zAwIbQphF23
         p9+TRGSodn6sBLKNagPiPxMZynYAv+bcLMyi1XYz3IiW+ackJxa8z0MNFWpnJsM740hi
         k3fg==
X-Gm-Message-State: AOAM530fS5OozCFqawBKB1s6e1tdQn1aQ63hnOIODjHo4CAyfchiHro0
        pC7dwpXM+4PvZ+Q6MFSfIwrm2xZpYjI=
X-Google-Smtp-Source: ABdhPJyBQT75ysWgiHo/6+Mq0kk31a44/9gULjk/7VxoAQ1cfQIJcF2q+arRvyyAzcE/TKhiAPRcKQ==
X-Received: by 2002:a05:6000:1624:: with SMTP id v4mr3336055wrb.210.1610105765367;
        Fri, 08 Jan 2021 03:36:05 -0800 (PST)
Received: from [192.168.1.143] ([170.253.51.130])
        by smtp.gmail.com with UTF8SMTPSA id p9sm11789519wmm.17.2021.01.08.03.36.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Jan 2021 03:36:04 -0800 (PST)
Subject: Re: [PATCH] netlink.7, tcp.7: tfix: s/acknowledgment/acknowledgement
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20210107165518.36629-1-alx.manpages@gmail.com>
 <ffe209ee-809c-10ea-c077-12669ff0f5ab@gmail.com>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <59156288-13c4-ca10-ade3-5b83cd7c0902@gmail.com>
Date:   Fri, 8 Jan 2021 12:36:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:84.0) Gecko/20100101
 Thunderbird/84.0
MIME-Version: 1.0
In-Reply-To: <ffe209ee-809c-10ea-c077-12669ff0f5ab@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


On 1/8/21 11:29 AM, Michael Kerrisk (man-pages) wrote:
> Hi Alex,
> 
> On 1/7/21 5:55 PM, Alejandro Colomar wrote:
>> Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
> 
> Take a look at
> 
> https://books.google.com/ngrams/graph?content=acknowledgment%2Cacknowledgement&year_start=1800&year_end=2000&corpus=5&smoothing=3
> 
> and compare American English vs British English using the drop-down.
> 
> When I inherited man-pages in 2004, it was a hodge-podge mix of 
> American vs British spelling. My native spelling is the latter,
> but I value consistency and felt that things needed to be
> standardized on one or other, and in computing, American is the
> norm so that is what I settled on.hodge-podge
> 
> I'm largely at piece with American spelling these days (it 
> is the spelling I use in most of my writing), but I guess
> the one point that still bothers me are the American spellings
> "acknowledgment" and "judgment". They just feel wrong.

Yup

> 
> However, I now learned from the Ngrams that even in British
> English, the spelling without "e" was historically the norm.
> So it seems that it is British English that has changed, 
> not American English!
> 
> I was about to say that I must decline this patch. And then
> I thought I'd take a look at the POSIX standard. It seems
> to largely follow American spelling (e.g., "color", "canceled",
> "recognize", "analog").[1] But, it uses "acknowledgement"!
> (There are even a couple of instances of "judgement" in 
> the standard.) It seems like others like to have the
> extra "e' in those words...
> 
> So, I'm not sure what to do with this patch. 

Hey Michael,

D'oh, I thought it was a typo! :-)

American English surprises me.

Yes I prefer American English, but I've also learn_ed_ British at
school, (and learnt American through the internet), so I have a weird
hodge-podge in my head too :p

I guess many people though it was a typo from the data you put.  Also see:

$ grep -r acknowledgement \
  |wc -l;
grep: man7/.hostname.7.swp: binary file matches
69
$ grep -r acknowledgment \
  |wc -l;
23

Nevertheless, I prefer American too, so I'd invert the patch.
What about s/acknowledgement/acknowledgment/?

Cheers,

Alex

> 
> Thanks,
> 
> Michael
> 
> [1] It's also worth noting that there is a gradual movement
> toward American spellings even in British English.
> 
> 
>> ---
>>  man7/netlink.7 |  8 ++++----
>>  man7/tcp.7     | 10 +++++-----
>>  2 files changed, 9 insertions(+), 9 deletions(-)
>>
>> diff --git a/man7/netlink.7 b/man7/netlink.7
>> index 6559d4d96..f10582d79 100644
>> --- a/man7/netlink.7
>> +++ b/man7/netlink.7
>> @@ -221,7 +221,7 @@ The message is part of a multipart message terminated by
>>  .BR NLMSG_DONE .
>>  T}
>>  NLM_F_ACK:T{
>> -Request for an acknowledgment on success.
>> +Request for an acknowledgement on success.
>>  T}
>>  NLM_F_ECHO:T{
>>  Echo this request.
>> @@ -315,7 +315,7 @@ For reliable transfer the sender can request an
>>  acknowledgement from the receiver by setting the
>>  .B NLM_F_ACK
>>  flag.
>> -An acknowledgment is an
>> +An acknowledgement is an
>>  .B NLMSG_ERROR
>>  packet with the error field set to 0.
>>  The application must generate acknowledgements for
>> @@ -494,11 +494,11 @@ is sent to user space via an ancillary data.
>>  .BR NETLINK_CAP_ACK " (since Linux 4.2)"
>>  .\"	commit 0a6a3a23ea6efde079a5b77688541a98bf202721
>>  .\"	Author: Christophe Ricard <christophe.ricard@gmail.com>
>> -The kernel may fail to allocate the necessary room for the acknowledgment
>> +The kernel may fail to allocate the necessary room for the acknowledgement
>>  message back to user space.
>>  This option trims off the payload of the original netlink message.
>>  The netlink message header is still included, so the user can guess from the
>> -sequence number which message triggered the acknowledgment.
>> +sequence number which message triggered the acknowledgement.
>>  .SH VERSIONS
>>  The socket interface to netlink first appeared Linux 2.2.
>>  .PP
>> diff --git a/man7/tcp.7 b/man7/tcp.7
>> index d6836f3a8..8b78cb6e1 100644
>> --- a/man7/tcp.7
>> +++ b/man7/tcp.7
>> @@ -264,22 +264,22 @@ meaning that the option is disabled.
>>  Control the Appropriate Byte Count (ABC), defined in RFC 3465.
>>  ABC is a way of increasing the congestion window
>>  .RI ( cwnd )
>> -more slowly in response to partial acknowledgments.
>> +more slowly in response to partial acknowledgements.
>>  Possible values are:
>>  .RS
>>  .IP 0 3
>>  increase
>>  .I cwnd
>> -once per acknowledgment (no ABC)
>> +once per acknowledgement (no ABC)
>>  .IP 1
>>  increase
>>  .I cwnd
>> -once per acknowledgment of full sized segment
>> +once per acknowledgement of full sized segment
>>  .IP 2
>>  allow increase
>>  .I cwnd
>> -by two if acknowledgment is
>> -of two segments to compensate for delayed acknowledgments.
>> +by two if acknowledgement is
>> +of two segments to compensate for delayed acknowledgements.
>>  .RE
>>  .TP
>>  .IR tcp_abort_on_overflow " (Boolean; default: disabled; since Linux 2.4)"
>>
> 
> 

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
