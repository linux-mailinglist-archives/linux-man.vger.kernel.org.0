Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EBE3D27FA5D
	for <lists+linux-man@lfdr.de>; Thu,  1 Oct 2020 09:37:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726992AbgJAHhq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 1 Oct 2020 03:37:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725878AbgJAHhq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 1 Oct 2020 03:37:46 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F181C0613D0
        for <linux-man@vger.kernel.org>; Thu,  1 Oct 2020 00:37:44 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id j136so611687wmj.2
        for <linux-man@vger.kernel.org>; Thu, 01 Oct 2020 00:37:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=JDy1iD504EEbh7870dDmKQEzONn2gF6oL69vnKbkJvw=;
        b=sRgQqidqXmTViIz6IEyi4ncAwb08ZeXE1kWQc4O+gmNq/01AVDicVHIxbPZB+cpbPw
         CXYx3LbyfO2gkCAvJaTGhvy/7Ug8m7ZzNH9fPztZu8/2JcMh7Io608l0/baq6PPfS/VZ
         nsvniCIS0AKp+uWnyHcarRoa5LuMakfVJU8AlGNFmg8n6l5DGIST3DchTHFWQYPGY/sw
         gAT6LlL94FWz7m5vzXDKcmG/Z2HdoKp/QFeu8arEn0SBtU6lVOy6871aPSJcu0ljxrtw
         v9ImFN++Ejd9s7h4GokaFOMVKTLi1Buec7v9Bp9ta5qaaKWfPaYhLF7n9viKACrKSfBh
         Q10Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=JDy1iD504EEbh7870dDmKQEzONn2gF6oL69vnKbkJvw=;
        b=s6dkXGQjwB+SluFInKyxDr4Cj7VDrlvtxby3c/n9HDjV9n1vzpt9B00ZSEcIWGGfEl
         oU65Uv6XjDtwn3j/H2bgajguy3XXAteCWb2LcCxF3Hs5zZb6SqW4GIBcsWcsRzoHVKca
         22tQluMxZOIiThlHx7e32k/Ov/TmqdEJddRgklFXXdgPKqsl6r/5ru21vth+2jMo8Fx5
         xdp//YiMrYT34UVH2zDIJvF3lI0fR1FmTfDYzdp+wnDdrjMJiohofmMUeYddQ6SGWU/b
         8qwXRsc4sQlDQ3PmH+tCo82syNCGPhfykj5qthd8Im8dzlFYwgDBTsIh83Fw6LNbeKs8
         iHNQ==
X-Gm-Message-State: AOAM531FvHa2pZZ2UoX3EZ1PtGRyV/oTqjw7eG9/qpdwNtQcNPMiPdFv
        8dCSvm23/h1lWbukcZdbX30=
X-Google-Smtp-Source: ABdhPJyTWM+PpGZe1bz3rap94xJeJnRpHUX/ejMOiB2/FN9Abo+G5orqaJaU3re5jUMoRXi33F2neQ==
X-Received: by 2002:a1c:5f54:: with SMTP id t81mr1327708wmb.142.1601537862901;
        Thu, 01 Oct 2020 00:37:42 -0700 (PDT)
Received: from ?IPv6:2001:a61:2479:6801:d8fe:4132:9f23:7e8f? ([2001:a61:2479:6801:d8fe:4132:9f23:7e8f])
        by smtp.gmail.com with ESMTPSA id 88sm7561868wrl.76.2020.10.01.00.37.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Oct 2020 00:37:42 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org
Subject: Re: [PATCH v2 1/3] system_data_types.7: ffix
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <836b6d7d-4433-18d0-78aa-542c419c02f2@gmail.com>
 <20200928090322.2058-1-colomar.6.4.3@gmail.com>
 <20200928130558.4qi6jitfwxg6ccm7@localhost.localdomain>
 <1fe937db-8874-a8fb-5e65-88b4b15702fe@gmail.com>
 <20200930104322.6ffed5lw3uqmlzph@localhost.localdomain>
 <f9871768-cc7a-fac0-3500-6a0ccaa78099@gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <d145931a-3bea-7924-e353-08834cc592f0@gmail.com>
Date:   Thu, 1 Oct 2020 09:37:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <f9871768-cc7a-fac0-3500-6a0ccaa78099@gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex, Branden,
On 9/30/20 11:32 PM, Alejandro Colomar wrote:
> Hi Branden & Michael,
> 
> On 2020-09-30 12:43, G. Branden Robinson wrote:
>  >> However, if using .br is a big headache, I would rather not use
>  >> workarounds (as you proposed in an earlier email),
>  >> and instead just live with the blank line.  It's not much of a
>  >> problem.
>  >
>  > Was an actual decision taken on this?  I see patches continuing to roll
>  > in containing this .br-based pattern.  I think if the extra line is
>  > live-withable, it should be lived with (or one of my four proposed
>  > alternatives could be used :) ), in preference to setting the bad
>  > example of the "naked" .br requests.
> 
> No decision yet.
> We continued with the patch,
> considering that we might revert it
> or change it to a different approach in the future.

Yes. I figure we can easily clean up the inconsistency later.

> Actually I thought Michael would have hold the patches until the decision,

I didn't want to slow you down,...

> but he merged them, and it may be easier this way...
> we'll fix it when we decide.

Yes.

> For me, I can live with the extra blank line.
> Michael, what are your thoughts?

I can live with it too.

[...]


> 
>  >
>  > Regards,
>  > Branden
>  >
>  > [1] https://lists.gnu.org/archive/html/groff/2019-03/msg00047.html
>  > [2] 
> https://gitlab.com/procps-ng/procps/blob/7ac9a0e1f5606696dc799b773d5ec70183ca91a3/ps/ps.1
>  >
> 
> 
> I was writing about the different options and testing them,
> when by accident I discovered that .RS alone, which I introduced lately,
> already fixed the problem we had in the beginning:
> .RS forces a line break after the tag
> (so .br is actually redundant right now).
> 
> I guess we'll all be happy with just .RS, right? :-}

I think so.

Cheers,

Michael

PS Alex, I believe we are at a sync point right now (i.e., I think
that I do not have any unprocessed patches from you). Let me know if
I'm wrong.

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
