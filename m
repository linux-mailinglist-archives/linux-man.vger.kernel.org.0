Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0E3E22B178E
	for <lists+linux-man@lfdr.de>; Fri, 13 Nov 2020 09:52:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726270AbgKMIwK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 13 Nov 2020 03:52:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33624 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726176AbgKMIwK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 13 Nov 2020 03:52:10 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD45AC0613D1
        for <linux-man@vger.kernel.org>; Fri, 13 Nov 2020 00:52:09 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id h2so7402273wmm.0
        for <linux-man@vger.kernel.org>; Fri, 13 Nov 2020 00:52:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=rb1UuvTxBCiuXAR7EZi9N/x04kga+FDjbhPfTlDJ8ZU=;
        b=a0ZLbpGlzrgZCyYEiDcGUdv/EShWlLhVHI89mkQzJnq0vsyA/4DZcG/t0zbQYm6n13
         vW4C7UCgpo0WO6aCrf6cpeoCiIogMpuEtdtrq+dmng7PtJuF4T0ja9Ny4P/v7bAJ74Lt
         eTIjjRhuPyIHm6xWm38XTmgDcJ1QYDkWKsIFiPoGyfQLqcZjH2FY7le5AM63wS/FGtPK
         uI5aKEf6PjBOh78B4UiThT95EunoTSiokYu/ebqAsL0ou8qO01BmX1xd8Vc1O/HcmNlQ
         7zm2eS127pLuY6GEuSPTq1hfXqB4WQr1gE1lZ507pm3yPvn9Apsz6MlxCGZMBlwQHYd6
         uDEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=rb1UuvTxBCiuXAR7EZi9N/x04kga+FDjbhPfTlDJ8ZU=;
        b=j6VAaxXN5Zd6Ip2yNPGNXwJRuJgXgpQDED+oANof1G983IrjTXNTru1WDmNxA0Ki7x
         g8t7b+4u3xLZBgnJdpZ1k5PHJZv9lQh4tr7gvQG3VZFsD7EVlCWe6L5rUuJH6uYKBB4p
         wax8z1UlnP2UHaXmXMP2RtQUe+HlCKKu1WTzU5pjfV6VP2xNJdYpe/iB1i1eF6jKmVsV
         JIDKVbOKuGQfj6LaH1KJ13JkHMgB8ArNaRkCvHbmq7/L8D9A+SZJ4xjhHO2nr9emHTBs
         IIwx6RT6SrPjU865j/Jk8HlWh1jjdkWf7nESjzxYe2WJZTZd7Y3a9ZRqWE8rIYEMf5Lm
         vOfQ==
X-Gm-Message-State: AOAM5311HqXl5mG/lY/IzGmEDSkHRys38xs56+37B6D1W8q1pxs4nB9/
        v/uf9fdGh4WS3yDBPFkK0RXZIHOGZGY=
X-Google-Smtp-Source: ABdhPJwCtS2Emz6X88wyH5I7gbsmHOI+xcEnHCFJpWuUB24Wy7BKJIfehwbqh0FJWmTudFQA43UBBQ==
X-Received: by 2002:a1c:7fd7:: with SMTP id a206mr1421488wmd.135.1605257528449;
        Fri, 13 Nov 2020 00:52:08 -0800 (PST)
Received: from ?IPv6:2001:a61:24b3:de01:7310:e730:497d:ea6a? ([2001:a61:24b3:de01:7310:e730:497d:ea6a])
        by smtp.gmail.com with ESMTPSA id v6sm11152928wrb.53.2020.11.13.00.52.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Nov 2020 00:52:07 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        colomar.6.4.3@gmail.com
Subject: Re: .RS
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <ae05d6bd-af93-9b49-25a6-e9c69ae402ec@gmail.com>
 <20201111150950.u7lf3xeulydbd2vr@localhost.localdomain>
 <c6919fec-4a95-888d-93fd-ecb254ec2377@gmail.com>
 <20201112070915.ejttfz3lu3sphkkp@localhost.localdomain>
 <1ae93b8f-c6e2-f11d-0844-a8cf702f933b@gmail.com>
 <60a7fa20-d41e-12d9-a81e-558512a74f0c@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <ab209b21-a93e-fd7c-e447-c8ff507cb062@gmail.com>
Date:   Fri, 13 Nov 2020 09:52:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <60a7fa20-d41e-12d9-a81e-558512a74f0c@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 11/12/20 8:57 PM, Alejandro Colomar (man-pages) wrote:
> Hi Branden and Michael,
> 
> Okay, after some testing:
> 
> * [.in 4] simply doesn't seem to work at all.
> * [.RS 4] and [.RS +4n] seem to be equivalent.
> * [.RS 4] is different (worse) than [.in +4n]
>           in some very specific scenario:
> 
> [[
> .IP * 2
> Lorem ipsum dolor sit amet, consectetur adipiscing elit,
> sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
> Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
> nisi ut aliquip ex ea commodo consequat.
> .\""""""""""""""""""""""""""""""""""""""""""
> .IP		\" Indent is 2n after this
> .in +4n		\" Indent is 6n after this
> .EX
> I am indented 6n from normal paragraphs.
> .EE
> .in		\" Return to normal
> .\"""""""""""""""""""""""""""""""""""""""""""
> .IP *
> Augue interdum velit euismod in pellentesque.
> Tristique senectus et netus et malesuada fames ac turpis egestas.
> Gravida arcu ac tortor dignissim convallis.
> .\"""""""""""""""""""""""""""""""""""""""""""
> .IP		\" Indent is 2n after this
> .RS 4		\" Indent is _4n_ after this
> .EX
> I am indented 4n from normal paragraphs!!!
> .EE
> .RE		\" Return to normal
> .\"""""""""""""""""""""""""""""""""""""""""""
> ]]
> 
> This happens in perf_event_open.2,
> where [.in +4n] is used,
> and when I changed it to [.RS/.RE] I saw this change in behavior.
> 
> Do you know why is that?

Hmmm -- I don't know. I was going to ask, doesn't s/>RS 4/.RS +4n/
fix the problem? But I see that it does not.

By the way, your comments (\") actually cause the rendered
output to change, as far as I can see! In particular,
the \" on the final .RE leads to some strangeness:

[[
.IP * 2
Lorem ipsum dolor sit amet, consectetur adipiscing elit,
sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
nisi ut aliquip ex ea commodo consequat.
.\""""""""""""""""""""""""""""""""""""""""""
.IP             \" Indent is 2n after this
.in +4n         \" Indent is 6n after this
.EX
I am indented 6n from normal paragraphs.
.EE
.in             \" Return to normal
.\"""""""""""""""""""""""""""""""""""""""""""
.IP *
Augue interdum velit euismod in pellentesque.
Tristique senectus et netus et malesuada fames ac turpis egestas.
Gravida arcu ac tortor dignissim convallis.
.\"""""""""""""""""""""""""""""""""""""""""""
.IP             \" Indent is 2n after this
.RS 4
.EX
I am indented 4n from normal paragraphs!!!
.EE
.RE             \" nom
.\"""""""""""""""""""""""""""""""""""""""""""
.PP
Augue interdum velit euismod in pellentesque.
]]

Gives:

[[
       * Lorem  ipsum dolor sit amet, consectetur adipiscing elit, sed do
         eiusmod tempor incididunt ut labore et dolore magna aliqua.   Ut
         enim  ad minim veniam, quis nostrud exercitation ullamco laboris
         nisi ut aliquip ex ea commodo consequat.

             I am indented 6n from normal paragraphs.

       * Augue interdum velit euismod in pellentesque.  Tristique  senec‐
         tus et netus et malesuada fames ac turpis egestas.  Gravida arcu
         ac tortor dignissim convallis.

           I am indented 4n from normal paragraphs!!!

Augue interdum velit euismod in pellentesque.
]]

No indent at all on the final line!

Thanks,

Michael
-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
