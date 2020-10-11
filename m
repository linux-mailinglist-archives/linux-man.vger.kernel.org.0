Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 297D528A752
	for <lists+linux-man@lfdr.de>; Sun, 11 Oct 2020 14:24:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387767AbgJKMYr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 11 Oct 2020 08:24:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52416 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387744AbgJKMYr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 11 Oct 2020 08:24:47 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB572C0613CE
        for <linux-man@vger.kernel.org>; Sun, 11 Oct 2020 05:24:46 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id b8so2534977wrn.0
        for <linux-man@vger.kernel.org>; Sun, 11 Oct 2020 05:24:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=EfPLczhxos7+wmkA5ckZ/7ftYLZgGhuwIPPkQkP6Wx8=;
        b=WbyTsJdC+FoAFbG9kYv85hJqu//AHadjteyqSRlieKi+j+4eFLhOWmDr6f3D410q/c
         DX30tznQyyUHZn+0tCpdWVD5CrbrS81bT9584jzK45gsjozhgwM9S/8ilTqMpDxeVoLs
         W8Ok20OwCWFsg4r11kzgl+3xx6Dz1stpg7XRQ07FMSvQNLNHSQR0a/Lbg7/87Vktcul+
         j6RwrIW+EMSwpmQmUOPWOmovroTXmtS1dROXZGkOGvE5+qV/TNgGY2RlWXhOTn7th3LX
         rv/b35EqgQAiQBz7JH69I2xmWyw24VIHMReGEaZlyeZ0CwFDWV1vSd0/EQh1KUmzEVLJ
         1Biw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=EfPLczhxos7+wmkA5ckZ/7ftYLZgGhuwIPPkQkP6Wx8=;
        b=aoi5lJhG+e20j0ukVYyaTAN8xbLuA7VeITyKjCn5p09Qto7WOVvzR5WD8TXIcVBrcG
         dPYOc5asORydkNv8WbpD3d9pyTNwZiowRsu3/Vix9jl1l9z6WmJd54DAsF8NPstS0WMO
         eExgQmlgoCc/iEfheRdPYrf4HlwEeHCUP+vFCzBDg6tu1OvaQcnaL+T/wlR02HDS54Hp
         l3DfzW/WZlk2vniHw7kCSZjbqANisT62sD+kXTTvJFrcKtdEB234BbdSjaxOA4rmD7XM
         MIlc/Gex5GS6feP3HG5UUhFaZBJlZmY4BthxJ2Mj806XsWeC60+j81L+DDfAZHYrIaY3
         PsQw==
X-Gm-Message-State: AOAM5322i94Frqnbrg+pIFrs5gf1reF36AJtCt8YXiTZj5W04fhJZ+35
        dTmG1jJ4o8xu+UcEJ5fVBb8=
X-Google-Smtp-Source: ABdhPJyD/szMibrDaGB+JfI7pZIKHXuMn5yp3y5MH6dmtGEVgnFFsRmo8AgwJPQU1kcazKU/Lmdi1g==
X-Received: by 2002:adf:e744:: with SMTP id c4mr2412221wrn.222.1602419085260;
        Sun, 11 Oct 2020 05:24:45 -0700 (PDT)
Received: from [192.168.1.10] (static-176-175-73-29.ftth.abo.bbox.fr. [176.175.73.29])
        by smtp.gmail.com with ESMTPSA id 24sm19075088wmg.8.2020.10.11.05.24.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Oct 2020 05:24:44 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH] queue.3: Replace incomplete example by a complete example
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
References: <20201010190226.19236-1-colomar.6.4.3@gmail.com>
 <899bb60e-368b-e7dd-9a87-715d094a8a10@gmail.com>
 <9bc990f9-1605-b1c3-09d0-0a2dd68bd8f2@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <0ddfc89e-66c6-267a-c482-d2e59da1d07a@gmail.com>
Date:   Sun, 11 Oct 2020 14:24:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <9bc990f9-1605-b1c3-09d0-0a2dd68bd8f2@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Alex,

On 10/11/20 11:03 AM, Alejandro Colomar wrote:
> 
> 
> On 2020-10-11 08:00, Michael Kerrisk (man-pages) wrote:
>> Hello Alex:
>>
>> On 10/10/20 9:02 PM, Alejandro Colomar wrote:
>>> I added the EXAMPLES section.
>>> The examples in this page are incomplete
>>> (you can't copy&paste&compile&run).
>>> I fixed the one about TAILQ first,
>>> and the rest should follow.
>>>
>>> Signed-off-by: Alejandro Colomar <colomar.6.4.3@gmail.com>
>>
>> I have not (yet) applied this patch, because...
> 
> 
> Hi Michael,
> 
> I thought that we could do it in the following steps:
> 
> 1) Fix the current page:
> 	- Complete examples
> 	- Use standard sections (such as EXAMPLES)
> 2) Move the code from this page to new separate pages
> 3) Fix the code in all of those pages to use "man" macros
> 
> This way, the history can be easily followed in git,
> instead of having a few commits breaking everything.
> 
> Also, I think this way it might be easier,
> and the improvements (such as better examples)
> can be seen from the beginning.
> Part 1 could be applied directly,
> while parts 2 & 3 should be applied at once.
> 
> If the change was done abruptly, you couldn't apply any commits
> until all of the work is finished
> (otherwise, you would have broken pages).
> 
> So I think this patch can be applied as part of this change.
Thanks for the excellent clarification. Patch applied!

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
