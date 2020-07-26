Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A2B9222E26A
	for <lists+linux-man@lfdr.de>; Sun, 26 Jul 2020 22:01:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726427AbgGZUB6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 26 Jul 2020 16:01:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726292AbgGZUB6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 26 Jul 2020 16:01:58 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1630C0619D2
        for <linux-man@vger.kernel.org>; Sun, 26 Jul 2020 13:01:56 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id k20so5070074wmi.5
        for <linux-man@vger.kernel.org>; Sun, 26 Jul 2020 13:01:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:cc:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=DdBm+Lk6kWPH3BMLZ2RaAnb3Uptti217lWUE/VYHR+E=;
        b=L9OJMGvxSUrVXAzdY5xuBo1fitY1aTLhcxGb0U6IPSDBUZ27FGfXdd8r8SiPZkpunt
         2Tae16sjWvZ4D+NQapahOUT/XEVAn/fEuHzTZukqocS9zfgdAXsJ3T9iFEARRJgRLcNx
         Dr8YM14t8WT8Z6ACFnsY5yUHYxz8EJh8CHC1CtbAnIJYFOiGbq7q90/ThPRvoWtElbLz
         P152uoAm7+UagLuCjBpLS+HKul8F9yf+I/BxSYwuLtliyL9/9NK08ePB3QgYKPXgzYgL
         HgEk+STy5wOtDRrvpIpXj4L2FM9G6x3avS+2JIzzfENeedWZ9EFqZyx74mVlyRYBqc3o
         CfLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:cc:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=DdBm+Lk6kWPH3BMLZ2RaAnb3Uptti217lWUE/VYHR+E=;
        b=ARfjeNu4cqxtV+eZdPTpsg4tDOkF375FXNZEsx/bR3MIaExLWta44gTbRu3IQ5keA9
         iuqae8cltX0SaCkOKBkUQtiA9CBV1vysx/2t1x9YyirARIcbCf9bZQYMnCzKUHZs5B4c
         pj5aN3zdzpm49Lgf4c8d6CCaF+XLraPFYl6qxHSqagSgj/2JZMAIRVoeFCEflE5fQZ4p
         2CT+zDffPzbP9lm9+M1ZtzzNXVCtkdBpmsQNceURbFfpjEwW1d8lDWMHue+oJksydlMt
         ZKmjnByrRzWPpJXnilRAi2AotA88UbIGr3zx2SOfKsB72RAGB5scYSuIx6q8tHM9XesP
         +XDg==
X-Gm-Message-State: AOAM5331kK7BPanxTv0b7cH/7aCWw4zpgFfORQvBTenK7fL0yvXiye9D
        vVt7E8WFtKTwfNekhV9xKwNkerxb
X-Google-Smtp-Source: ABdhPJwgBABWvw3LFJIpMlFhy6E36tBbegs6sCROUKBh49KNSGJP2kAVhGfEaNEvh5JpChYia5R64Q==
X-Received: by 2002:a1c:2dc6:: with SMTP id t189mr18573802wmt.26.1595793715183;
        Sun, 26 Jul 2020 13:01:55 -0700 (PDT)
Received: from [192.168.0.160] ([93.115.133.118])
        by smtp.gmail.com with ESMTPSA id k126sm16127640wme.17.2020.07.26.13.01.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Jul 2020 13:01:54 -0700 (PDT)
Subject: Re: queue.3: Document CIRCLEQ_ macros
To:     mtk.manpages@gmail.com
References: <581130f1-f6eb-5845-40e1-220f7edae526@gmail.com>
 <CAKgNAkiCbfZjjTGp6Dy02ejMKRz5+NbKeNN8Et9yW8yvSbuVhA@mail.gmail.com>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Cc:     linux-man@vger.kernel.org
Message-ID: <e842e268-09ad-80c2-5324-7efd5610c8ef@gmail.com>
Date:   Sun, 26 Jul 2020 22:01:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAKgNAkiCbfZjjTGp6Dy02ejMKRz5+NbKeNN8Et9yW8yvSbuVhA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hola Michael,

On 7/25/20 9:15 PM, Michael Kerrisk (man-pages) wrote:
> Hello Alejandro
> 
> On Sat, 25 Jul 2020 at 12:13, Alejandro Colomar <colomar.6.4.3@gmail.com> wrote:
>>
>> Hi all,
>>
>> I'm going to use CIRCLEQ and I found out that it's undocumented.  I'm
>> going to document it in queue.3 and I would like to know if someone is
>> already working on that to not duplicate efforts.
> 
> No one is working on this, so it would be great if you could document CIRCLEQ.

Genial!  Lo haré entonces.

I found out that there was documentation in the past and it got removed 
at commit ``c0f21a05f0c6cbd25677fdeef5dc1f1b2e9ffbb8``, probably by 
accident, when reimporting from the FreeBSD man page to fix some other 
problem.  I'll base my changes on those old docs.

> 
> Thanks,
> 
> Michael
> 

De nada.  Encantado de colaborar :)

Alex

PS: Me dijiste que tenías que hablar un poco de español, así que aquí 
estoy para ayudarte ;)
