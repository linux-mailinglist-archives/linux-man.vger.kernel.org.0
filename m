Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 427AB4EB1C1
	for <lists+linux-man@lfdr.de>; Tue, 29 Mar 2022 18:23:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239126AbiC2QZf (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 29 Mar 2022 12:25:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238850AbiC2QZc (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 29 Mar 2022 12:25:32 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26F291F1619
        for <linux-man@vger.kernel.org>; Tue, 29 Mar 2022 09:23:47 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id h4so25574053wrc.13
        for <linux-man@vger.kernel.org>; Tue, 29 Mar 2022 09:23:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Qc9f8f8J4R4HGXXCWak5Mic4E3ZPMVPxY5GxBWY//xg=;
        b=YgBMISP0ad6xYhDLmcKpl/qqe111+VvDsSl1eWafQB1CkhSA1Rvg5uf8Q4JUZTIpbQ
         Ws5fh2coqaHxn9KvVlwTpv7j7IVLDV0RFdqc1g5SEAjtSb02ZWF5wk/XKAxuXlzf2Sgz
         kFX0tqnWU02uYnUsiOThvVg942IkGYjpRqW8La5tAeLzek5vROx2ScvQUOjmJvCpMg4K
         N6dQLutCXQmsk63CgJ4RFFAvUEpAiT18V9w5zqQq+4DYxeGhRbWvtQgmb8Ycqrihy0iF
         4513pxd55Xoujy8i084BC3RFZ7mVvH2MAVvqZxurXYBxDtJgRkkc4a0SmolAX0+2lY9n
         1FJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Qc9f8f8J4R4HGXXCWak5Mic4E3ZPMVPxY5GxBWY//xg=;
        b=PwlzVISg/vPH0fu88YLaT/Y6tA9QpqQroN/nrsbTZitDW8n/XtMkZungChwZrGrcX/
         QsI1hb2XS48Jyo1Ddob7VVlvCkNyUjDpfDz9Vfn8LhJyxwQtNOdGi+jaCvWe5jT60c+r
         vW6pCS8nd67wBgylGWCo0MbDGJ9f/RBsmB/mWojtemC8C5iOUzy5YqBAtm/6YWflYDil
         6Nf+yNs0sQ4wm8jcrfin3lf1jiK4nMMS6qjfJBZLJ1PB7hxnN/Gpe5g1M47LjBJhzxxB
         ywwSUoUdiqr7PTZhQbcJuT9vyYFyKSKWCokT3sPCV5zeA5SqbZcFVVtpQE8rvqY+bH3e
         p4eA==
X-Gm-Message-State: AOAM533C9gvH2+X1rprWHd4VUGp15R06txYfksSWNmoI6HuV4+SMHFVb
        zoK1uBMbucdIaSwqV40GI+o=
X-Google-Smtp-Source: ABdhPJw3dvm2P28AJ/iYlEnzIPkbCI5OV4ORi5d/n32M0+cKhJSCtQWPUgTZZs0OqU7i7PeVE1IVzw==
X-Received: by 2002:a05:6000:186d:b0:204:110a:d832 with SMTP id d13-20020a056000186d00b00204110ad832mr32273753wri.47.1648571025468;
        Tue, 29 Mar 2022 09:23:45 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id v15-20020a056000144f00b002057eac999fsm15692115wrx.76.2022.03.29.09.23.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Mar 2022 09:23:44 -0700 (PDT)
Message-ID: <36b89bec-1def-e87c-5477-c87f2f0e48e9@gmail.com>
Date:   Tue, 29 Mar 2022 18:23:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH] uri.7: The term URL is deprecated, in favor of URI
Content-Language: en-US
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org, NGINX Unit <unit@nginx.org>
References: <20220328182707.6935-1-alx.manpages@gmail.com>
 <20220328221557.njqx4jtbvrgv44lc@jwilk.net>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
In-Reply-To: <20220328221557.njqx4jtbvrgv44lc@jwilk.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jakub!

On 3/29/22 00:15, Jakub Wilk wrote:
> * Alejandro Colomar <alx.manpages@gmail.com>, 2022-03-28, 20:27:
>> See RFCs 4395 (obsoleted by 7595) and 7595.
>>
>> So, since URI and URL have been used as synonims
> 
> s/synonim/synonym/ (here and elsewhere)

Oops.  I always doubt when writing words with two y/i in them.
I should run
	dict -m synonim
or
	echo synonim synonym | spell
before typing! :)

> 
>> the RFCs seem to have explicitly avoided URL, and now use URI as the
>> only term, which still means what it meant (so now URL is just a
>> synonim for URI).
> 
> No, as far as RFCs are concerned, URLs are a proper subset of URIs; they
> are not synonyms.

Hmmm, now I've read a few more RFCs, and it seems you're right.

> 
>> This commit replaces (almost all) occurences of URL by URI, except
>> when it is referring to the old term itself.  Keep some legacy info
>> just for readers to understand this.
> 
> I'm not sure this is a step in the right direction. As a data point, in
> contrast to IETF, WHATWG standardized on the term "URL":
> https://url.spec.whatwg.org/#goals

As you say, it's not.  I'm now more confused than I was before, so I
will revert this change.

If you feel like you could update the page, since you seem to know more
than me in this regard, that would be great.

Thanks for the review!


Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
