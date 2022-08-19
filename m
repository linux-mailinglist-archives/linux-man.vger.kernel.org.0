Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 98E2D59A9B9
	for <lists+linux-man@lfdr.de>; Sat, 20 Aug 2022 02:01:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243665AbiHSXxV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 19 Aug 2022 19:53:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39952 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243289AbiHSXxU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 19 Aug 2022 19:53:20 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B04589FF1
        for <linux-man@vger.kernel.org>; Fri, 19 Aug 2022 16:53:17 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id b5so2510650wrr.5
        for <linux-man@vger.kernel.org>; Fri, 19 Aug 2022 16:53:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc;
        bh=aEHiC/elqCjZ6jDOIJvO7G7sO8WY22VjfdJAfQtT/Yg=;
        b=ShZ2hQI204d4yPd7DU+UHgFZNZz3YT+LBQZLWd9lNaHIJvo74R0vUtlHgtu5j47l5R
         mMK719OHOgSg0B9UYzW5TnNXbKdfgQ0+lWPRgwPY7A/Z1dLSgMlnJGw2XfEy+nqMxu0v
         b9VGNthvGCvYjSX8jw1hw+2GZMlGdyqsgvWd+1rHe1Y7tAMocmZwZGtxiqx+g+owkcf9
         0Moc1nivFxEdRBZjQXKueE4LBt/g7UTsIBWSPMrtDeLC5ZUzYRmhJyp5ENHcNYnPeFTc
         AlqvI3EqfU+/Lmy4lyap2Q1PKerIoVdNf5HKfmnohvOkCxpz86xc23qqatRJRcVpaPks
         NWKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-message-state:from:to:cc;
        bh=aEHiC/elqCjZ6jDOIJvO7G7sO8WY22VjfdJAfQtT/Yg=;
        b=aQKSp4+qX8F2mQ04S/RQP2QGkq0sPJ0Z3gnDbyvdyt3N1DqoXFWsFCS64UgmfU2IZI
         oyZVGdCl/qhGzV2c7oKHA24ihs3pZazMSRMv5sWYiigR4W2IuHijwywd+lTEbl6k0inL
         syRtJwxs2HafUGSB2dkHtGGmxaH/MCgLtTJKXlnVE3yyPfAnRHNorMF7LQwRXM3IXdnA
         LWN8xEgP03mG5T9vd6nqlpF88u+BGNNYQxdNPDBGgPzTvnXNFULt/OhI0TS4v7TDv9wy
         qnljBjN8lKmtcBOjRfltpiVpi5i5Ve4NF1ah3zPIxgcN112WGGDniYvjcmev1JPZ+Koc
         zD+Q==
X-Gm-Message-State: ACgBeo1GxZAtZ5wUEEJl5cbdTRVEBJy99I7Whvo/JKkZpoiHn2D5XVKE
        /GddNcPecAE02GSBgvtmAHE=
X-Google-Smtp-Source: AA6agR7EVpDt9GvaDXdTMerq2oavfQGESSMy6tKVyz0SPWeFbNxybILGXK3jQE5e8n3qc9ANciUKlA==
X-Received: by 2002:adf:f48d:0:b0:225:2c4d:74d1 with SMTP id l13-20020adff48d000000b002252c4d74d1mr5348530wro.588.1660953196196;
        Fri, 19 Aug 2022 16:53:16 -0700 (PDT)
Received: from [192.168.0.160] ([170.253.36.171])
        by smtp.gmail.com with ESMTPSA id 22-20020a05600c231600b003a5260b8392sm7764640wmo.23.2022.08.19.16.53.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Aug 2022 16:53:15 -0700 (PDT)
Sender: Alejandro Colomar <alx.mailinglists@gmail.com>
Message-ID: <71b2afb8-6e53-9fd2-89ff-049d81fee898@gmail.com>
Date:   Sat, 20 Aug 2022 01:53:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH 1/2] system_data_types.7: srcfix
Content-Language: en-US
To:     Jakub Wilk <jwilk@jwilk.net>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org
References: <20200925080330.184303-1-colomar.6.4.3@gmail.com>
 <20200927061015.4obt73pdhyh7wecu@localhost.localdomain>
 <20200928132959.x4koforqnzohxh5u@jwilk.net>
 <9b8303fe-969e-c9f0-e3cd-0590b342d5bf@gmail.com>
 <20200930101213.2m2pt3jrspvcrxfx@localhost.localdomain>
 <20220819180323.dbsgxh5qvcjabjm6@jwilk.net>
From:   Alejandro Colomar <alx.manpages@gmail.com>
In-Reply-To: <20220819180323.dbsgxh5qvcjabjm6@jwilk.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jakub,

On 8/19/22 20:03, Jakub Wilk wrote:
> * G. Branden Robinson <g.branden.robinson@gmail.com>, 2020-09-30 20:12:
>> +\(bu Do I ever need to use an empty macro argument ("")?
>> +Probably not.
> 
> FWIW, man-pages(7) says it's OK to use empty string for the 4th argument 
> of .TH:
> 
> "For library calls that are part of glibc or one of the other common GNU 
> libraries, just use GNU C Library, GNU, or an empty string."
> 
> There used to be a lot of such .TH calls; now there's only a few left:

Yeah, I fixed most of them to silence a warning, IIRC.

The below, I couldn't fix them for 2 different reasons.

In posixoptions(7), I don't know what to use.  POSIX?

The other pages are taken from other projects; we don't maintain them:

$ cat MAINTAINER_NOTES
Externally generated pages
==========================

A few pages come from external sources. Fixes to the pages should really
go to the upstream source.

tzfile(5), zdump(8), and zic(8) come from the tz project
(https://www.iana.org/time-zones).

bpf-helpers(7) is autogenerated from the kernel sources using scripts.
See man-pages commits 53666f6c3 and 19c7f7839 for details.


> 
> $ grep -r '[.]TH .*""' man*/
> man7/posixoptions.7:.TH POSIXOPTIONS 7 2021-08-27 "" "Linux Programmer's 
> Manual"
> man7/bpf-helpers.7:.TH BPF-HELPERS 7 "" "" ""
> man8/zdump.8:.TH ZDUMP 8 2020-04-27 "" "Linux System Administration"
> man8/zic.8:.TH ZIC 8 2020-08-13 "" "Linux System Administration"
> 


Cheers,

Alex
