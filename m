Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A1B624A5E69
	for <lists+linux-man@lfdr.de>; Tue,  1 Feb 2022 15:36:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239386AbiBAOg6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 1 Feb 2022 09:36:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239399AbiBAOg5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 1 Feb 2022 09:36:57 -0500
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 424FEC061401
        for <linux-man@vger.kernel.org>; Tue,  1 Feb 2022 06:36:57 -0800 (PST)
Received: by mail-wr1-x42b.google.com with SMTP id w11so32411483wra.4
        for <linux-man@vger.kernel.org>; Tue, 01 Feb 2022 06:36:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:cc:from:in-reply-to:content-transfer-encoding;
        bh=IWG0rcuHVD0vLxqbvp4YjPmwQGDouH3aevAIdUHmWA4=;
        b=PiVw7biQucJXpfdR8bmwRcUqnlFBDSw7emR/eF4AvJxXWV7Uc+f3ne/TJvm8yWDikX
         L4dB++JLORJ8TzIiJu/pXWrWmtgjjYU60X8DlOFSsCOVW8fQ4ILILG++Sac8SEz9yLkP
         rGs7lZ9h7aoWAl8eBrgQEe4nmOS41vHGTCw+gE0mjxasNkk3wIWR6zRXEZyDbSVDCn64
         yw8ydcmJIHpEezrCH+Mg7AOLQyZz0yZ3dtK55NmdzVWcufVirD+zAiSKJRXKEN/TKK11
         U1XnRbo/Bz+w6Js25reQD9zmtrw9v3swqB3rU94Sl+y0BMmwVt9V7Jp9CVMgE6vyHb6A
         j2DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:cc:from:in-reply-to
         :content-transfer-encoding;
        bh=IWG0rcuHVD0vLxqbvp4YjPmwQGDouH3aevAIdUHmWA4=;
        b=OtpjAm7A7gWthhweHIR/EuVEBr8A74VKkzj78rZG8qdazwNaXgGfBvMAGh99GC7Vzd
         1gCL8Bwd5xRGNaXMF2wjw2y2a0Wwrcmsw7KWzkAklGd6nFf1q+iYPS97vOIGC2DZwjbs
         KQaE7VsbdbNZK5GhO/xmS4nzy+XTJHpljOaxCHbaON1zbeq1JYsHyuhVizK5C7SzlHBo
         ZmWYa/JKKIlpKUolXrC+ZjW+jW8kAxCG8GzBVYgVSw7DZDBT1MqSSA+LSh6/oUMGEKfU
         ELAbBxKKg+d+Du2znbz82/cJ0lHsTteHBCKNHG081WAm1aYVtK9gFKpEAf8ayHnP7ZZm
         WYLQ==
X-Gm-Message-State: AOAM530K+A86m16ncgRFVJTEY23onNY7jT5n5dwL9LIEDTuXaCeXaHsq
        vfDMCTFrSv6oyFjx+oKFXO+1Wd5t2DQ=
X-Google-Smtp-Source: ABdhPJxS5LGUMODJ7HK3DTc7CM/0S+A4zCJkJwK2wfcKiEQ/WnyuiG50AaMPDMlL3jCs3Zz9kSTUjA==
X-Received: by 2002:a5d:47c2:: with SMTP id o2mr21824279wrc.81.1643726215828;
        Tue, 01 Feb 2022 06:36:55 -0800 (PST)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id m6sm2591545wmq.6.2022.02.01.06.36.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Feb 2022 06:36:55 -0800 (PST)
Message-ID: <e43bf747-a486-749c-3171-39dddb6250c2@gmail.com>
Date:   Tue, 1 Feb 2022 15:36:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.1
Subject: Re: EINTR for fsync(2)
Content-Language: en-US
To:     Mathnerd314 <mathnerd314.gph@gmail.com>
References: <CADVL9rE70DK+gWn-pbHXy6a+5sdkHzFg_xJ9phhQkRapTUJ_zg@mail.gmail.com>
 <55d40a53-ad40-0bbf-0aed-e57419408796@gmail.com>
 <CADVL9rH+4ptFTnJwD7u5b=j-H7VkOaya7Cd49EdhxPNH-6=T6w@mail.gmail.com>
Cc:     linux-man@vger.kernel.org
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <CADVL9rH+4ptFTnJwD7u5b=j-H7VkOaya7Cd49EdhxPNH-6=T6w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Mathnerd314,

On 2/1/22 00:17, Mathnerd314 wrote:
> On Mon, Jan 31, 2022 at 1:44 PM Alejandro Colomar (man-pages)
> <alx.manpages@gmail.com> wrote:
>>
>> Mathnerd314:  Thanks for the report!  It's useful to CC the relevant
>> kernel developers when reporting non-trivial bugs such as this one.
>> They know better than we do.  :)
> 
> Ah, but then I would have had to know that this is a non-trivial
> question, as opposed to a 2-line patch.

It's very subjective.  But when it's a technical bug about very specific
knowledge, they know better than us.  When it's a typo or a formatting
issue in the manual page, it's trivial. ;)

> And CC'ing kernel developers
> is not mentioned on
> https://www.kernel.org/doc/man-pages/reporting_bugs.html.

Hmm, yes, I should fix that.  Thanks!

> 
> Oh well, there's always next time.

Yup, don't worry, I meant it for next time.  Anyway, it's easy for me to
add them to the CC if you don't or forget.

> 
> -- Mathnerd314

Cheers,

Alex

-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
