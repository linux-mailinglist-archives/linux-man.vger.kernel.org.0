Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2E0363DA636
	for <lists+linux-man@lfdr.de>; Thu, 29 Jul 2021 16:23:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236191AbhG2OXC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Jul 2021 10:23:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234975AbhG2OXB (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Jul 2021 10:23:01 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62067C061765
        for <linux-man@vger.kernel.org>; Thu, 29 Jul 2021 07:22:58 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id b128so3847209wmb.4
        for <linux-man@vger.kernel.org>; Thu, 29 Jul 2021 07:22:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Rj63brmMpXwLU66+A2CB5ZlL9SuI5aaGU/iJaCocuh4=;
        b=b5fP4I9ji1xf969a68fT0OM1p7ek6om8bERkTgNPqY8Q/LzHKfgGWb/CmFYBoEsFWa
         V97qRZBZaSaHeMFQlgU1THWx4F9djZ3B/9G9LbFrh2dC5CZJB5YOYxIXICuDJjO1YEhw
         eulvWDPFRJjm1tKjdAnJUL+w82zBNA2uyHbdQ+qlFX1GbM4DQBTuAAOzZ7vUWD7HSGIL
         ZCV5Gy4o4QhzG1QqA6kUJb2bMvNA37Mp2qIiTBvrUUr0pYRnqDnAUROTXf7k5ucvEt2Y
         Mq7R7eI2jnkimOqmCEoOprmttuWMFAUsasciwmQ3syO6zlvLzWzruiYSmygrlWwr8e+W
         Bgig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Rj63brmMpXwLU66+A2CB5ZlL9SuI5aaGU/iJaCocuh4=;
        b=ML/5WMcz3EJETF16UAkl8mPjn5FIZEiinDM2PF5/5honTn6o+1x7fFEQXm+oO0o1Ri
         PFxNxdZUTnt7fCeyqEY8+z0jerH0QebCkFlUJPMiXdIlrzxxsOE/vP+JKB8KUKka0pIR
         6Kexk4hjQzrJiDnT/h3JSCwCMw8j497BIHjesUQ7Q52In7XXm3ojWMWynTGCYXAPcSiY
         YReRtfVEYwqWQ4sZg496TJoKrTofFhgI8VY2C/sJqgD6OyEp/vGP3hpO9BoYnMtMNKK8
         h/3F10T1QnrRTdFPqy1FD3v1NLyZKI7ZUVyK86YLbNhEebU6i0PEQWPcks9QyfAGDv56
         JJ6A==
X-Gm-Message-State: AOAM533KDCkuZqAZvPwb7akkvX3ZF4PvcuhnKjNSfqsTTMhrxk3DQMsK
        sUGkFqGGEWyic2/lvCNl2aAH1OenkNE=
X-Google-Smtp-Source: ABdhPJyeiQB7V1KwPXGqIl78REeCQEN853suymjtfXZkWGS8U7Qm/tEx9p4o2tFNOPp9cc5XljG9aw==
X-Received: by 2002:a1c:a7d2:: with SMTP id q201mr15113028wme.61.1627568577011;
        Thu, 29 Jul 2021 07:22:57 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id u11sm3542121wrr.44.2021.07.29.07.22.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jul 2021 07:22:56 -0700 (PDT)
Subject: Re: nonbreaking spaces (was: [patch] nscd.conf.5: describe reloading,
 clarifications)
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
References: <BL0PR2101MB13161790A220976723139258A1E99@BL0PR2101MB1316.namprd21.prod.outlook.com>
 <cca56558-7749-e15b-3f97-85a304674a29@gmail.com>
 <20210729115508.pt6btsqd7g5tuhg6@localhost.localdomain>
 <594e480c-96d4-669c-081e-d3075d5a6e7d@gmail.com>
 <20210729135829.jpylwkatquhpn53o@localhost.localdomain>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <90d6fcc8-70e6-5c44-5703-1c2bf2ad6913@gmail.com>
Date:   Thu, 29 Jul 2021 16:22:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210729135829.jpylwkatquhpn53o@localhost.localdomain>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 7/29/21 3:58 PM, G. Branden Robinson wrote:
> Hi, Alex!
> 
> At 2021-07-29T14:18:30+0200, Alejandro Colomar (man-pages) wrote:
>> On 7/29/21 1:55 PM, G. Branden Robinson wrote:
>> Can you provide some examples of rendered output with '\ ' and '\~'?
>> I think I understand it, but a graphical example might be better.
> 
> Sure.  Here you go.
> 
> [[
> demo(1)                     General Commands Manual                    demo(1)
> 
> Name
>         demo - an illustration
> 
> Description
>         Observe  the  distinction  between the handling of the “\ ” (backslash-
>         space) and \^ (backslash-tilde) escapes.

I guess \^ is just a typo and you meant here \~.

> 
>         Today I was troubleshooting a segmentation fault and  had  occasion  to
>         run    the    “ps -fC troff”    command.     I    also   had   to   run
>         “gdb  ./build/troff  ./build/core”.   Here  is  some   filler:   XXXXXX
>         Mandatory  for  this  illustration  is the filling and adjusting of the
>         previous line.
> 
> nonce 1.0                         2021-07-29                           demo(1)
> ]]

Yes, that's what I thought you were saying.  Thanks for confirming.

> 
> In the foregoing, the spaces in "ps -fC troff" do not participate in
> adjustment, which leads to somewhat jarringly large inter-word gaps on
> the rest of the line.
> 
>>> It's also, in my opinion, confusing to see and to write and speak
>>> about.
>>
>> I'm not sure I understood this sentence :)
> 
> I mean that it "\ " can be difficult to recognize in practice; you
> _have_ to quote it or describe it somehow or the syntactically
> significant space (to roff) gets lots among the regular word-separating
> spaces in prose.

Got it now.

> 
>> I'm not sure I understood the difference completely, I'll comment
>> about it when you provide some examples.
> 
> Sure.  I hope the above helps.  Here's the source of the example.

Yes.  Well, before seeing the example above, I thought that I preferred 
having a single space inside commands, as then the command itself is a 
bit more readable.  But since that slight increase in readability can 
come with a considerable decrease in readability of the surrounding 
text, I'm going to accept your proposal.

Would you mind sending a patch for man-pages(7)? :)

Thanks!

Alex

> 
> .TH demo 1 2021-07-29 "nonce 1.0"
> .SH Name
> demo \- an illustration
> .SH Description
> Observe the distinction between the handling of the
> .RB \[lq] \[rs]\~ \[rq]
> (backslash-space) and
> .B \[rs]\[ha]
> (backslash-tilde) escapes.
> .P
> Today I was troubleshooting a segmentation fault and had occasion to run
> the
> .RB \[lq] ps\ -fC\ troff \[rq]
> command.
> I also had to run
> .RB \[lq] gdb\~./build/troff\~./build/core \[rq].
> .
> Here is some filler:
> XXXXXX
> \%Mandatory for this illustration is the filling and adjusting of the
> previous line.
> 
> Regards,
> Branden
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
