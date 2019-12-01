Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B08CF10E1CB
	for <lists+linux-man@lfdr.de>; Sun,  1 Dec 2019 13:16:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726340AbfLAMQV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 1 Dec 2019 07:16:21 -0500
Received: from mail-wm1-f48.google.com ([209.85.128.48]:54991 "EHLO
        mail-wm1-f48.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725993AbfLAMQV (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sun, 1 Dec 2019 07:16:21 -0500
Received: by mail-wm1-f48.google.com with SMTP id b11so18650346wmj.4
        for <linux-man@vger.kernel.org>; Sun, 01 Dec 2019 04:16:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=BhBb19N0eU/3xSZBbS1GKOmYGwuIY2bqzn96ceP5PPo=;
        b=pgFYsf/lH/iJqIQNsfnkeP06aifu3JR3Zn/CAd8OgPrSXBWU63exBPd5UTQPslm+9l
         rE3upZAybOJVjBULeaVxzG9kIDbOdYJ27leYzxEETpUyvVjBdSGCptU9ZkaYdeLNskJz
         /tPGL7VSM3enK6/xQDD5h9fprug+vCsOhhTBdjglvzgWGK0biEVdur26EemZ2CUZPfUi
         fHEjq9kg9phWZ6RWsmssk+CMeJuhX9RIGFXzBLiBzZwlpWp/zLBh7aJojFux5V5UiDbd
         lkZdCgoimxGnEX981uVaqfpPQ1GUFUd8ur58bulYC9AwjdV1rKEiTaATD+8NNMIpH6zG
         HS5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=BhBb19N0eU/3xSZBbS1GKOmYGwuIY2bqzn96ceP5PPo=;
        b=f3G7U9MFC13RPj+DtlV58kyNLugsQrygcfpt0KV4qP7f2VCwiia0PZF6Mz1TUqANVE
         +m0ZU9P85V9TMSPyrwn2RkIYNN3kghQCOh4cW8Q9oajeNElCGIZS4Aq+db0L6u0xmCZi
         cpWfcdCRlWR6iJlj+wCeJcU02fXaZXp1GydiPzkeEYeAm+xK5POnxB8G1Kh3prSSKr6Q
         7K/zKiKJDzj0yYzd5jZcOVoGAae3mN0F5m57aSryqM6XbVt1Z50gxRoGWoHIN03Wmhr7
         p4irQQW4goOzcxu2a0q4ACutT2LaVeRfVeP6sxF227sXwmwaH8xOabP0jcUn+Yf1I+WF
         WeQA==
X-Gm-Message-State: APjAAAWuj2FFFxWG/zZXuVZb+hwTNlMcZNvrT+hy+n2TThj0gXdANGeB
        bFcTRP6KZ455BTwudCiNIZX7bfNK
X-Google-Smtp-Source: APXvYqzVl8mWW6RdCisIEQ7lQwAQXO5qY433OAHWxXgNWcrRSIn1kAmn9FzSiAAyM4SuNhGXJfvg/w==
X-Received: by 2002:a05:600c:cd:: with SMTP id u13mr14427592wmm.24.1575202579347;
        Sun, 01 Dec 2019 04:16:19 -0800 (PST)
Received: from localhost.localdomain (cpc73834-dals21-2-0-cust682.20-2.cable.virginm.net. [82.0.142.171])
        by smtp.gmail.com with ESMTPSA id a14sm1934956wrx.81.2019.12.01.04.16.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Dec 2019 04:16:18 -0800 (PST)
Subject: Re: Manpages for C11 thrd_* functions (threads.h)
To:     Lelanthran Manickum <lelanthran@gmail.com>,
        linux-man@vger.kernel.org
References: <CAA+p7YbEJTxyoBHVqjbG66O4PiAiwF8HtnBYj9hnbfzuk2BVzQ@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <bdb87666-2864-d638-d89d-12c29dde6183@gmail.com>
Date:   Sun, 1 Dec 2019 13:16:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <CAA+p7YbEJTxyoBHVqjbG66O4PiAiwF8HtnBYj9hnbfzuk2BVzQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Lelanthran

On 11/27/19 3:34 PM, Lelanthran Manickum wrote:
> Hello
> 
> I'm unable to find manpages for the C11 thread functions.
> 
> If anyone is not working on this I have a little time I can devote to
> writing these pages using the libc docs as a starting point.

No one is currently working on this. I suggest to start by submitting 
one or two pages (rather than a large number), so we can iron out any
layout, style issues etc.

Thanks,

Michael
