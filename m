Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B7BAD59FFCA
	for <lists+linux-man@lfdr.de>; Wed, 24 Aug 2022 18:48:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239629AbiHXQsm (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 24 Aug 2022 12:48:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49004 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239643AbiHXQsf (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 24 Aug 2022 12:48:35 -0400
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 410504E84E
        for <linux-man@vger.kernel.org>; Wed, 24 Aug 2022 09:48:34 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id e20so20979853wri.13
        for <linux-man@vger.kernel.org>; Wed, 24 Aug 2022 09:48:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=isovalent-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=+vc4wgvN93lLTqjnzKrYhwklTHMChxGC0LGuJUKq5uo=;
        b=BOChIk25rDGwNsyUXgGxSOzyR6JuXgYTocN45+HaYSISx3JqKqDfV55hIhR8LeLOOR
         tx+OJN4nxueVdu+dUSdAlyRHgFv/Y1KEdkSXc1JZsbv5v1UkayIdVEltji74CSo6u9gz
         RyVH7/VHB8qoyD0tTY0I43l2VPUYzM6kyrJrtGuqVa7p3nTrBlVg+wt08f0ONVK918IE
         oijm8t4yTWKtacwbHqKL2UfzHB2NmuRiEwilAoSbx/NFYUoW5JOot+X73kHLxxhnRvjn
         bMoN2LDeGj57KaBNkkkuUs7pqWv4B4we1SArZQLDOZK4XdIgkVv349FGPwTTy437Oo/A
         026w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=+vc4wgvN93lLTqjnzKrYhwklTHMChxGC0LGuJUKq5uo=;
        b=4gNV9i14j3bKnNwL60Qxyvp1Q9Pwu2ITq1rUojDeRAxil+ozEuKOKIFRmdumSECKnW
         NoDjsnUUHSoBwWFhak7T1Hn6/HlE6+btDa6PgbX7wMHcWy8beX3Hbs3QX8L5PhgQ+hep
         DA8Qfq1XLP4Kbom9dMhxF/6j4d+jMEcyoNojr9YHvvboyiyYWCOEKZ1yiaG0UjCcaVfQ
         iP7nVXSS7OLXl9oGtWlsEjtOjnyAQbj8Y30HL2VU1W3DDim6f0JykUn3gc/vnKYahFk7
         xRNfW+h0H2eHyWI/upT9J4JXk6hMsfdBKYVcEuGigDvXYjWLeCw9hlP9qfnXdsHwFWAs
         Vm9w==
X-Gm-Message-State: ACgBeo24Ciu7mb62pNPKbFHa52hgVSgTJWdkGU7y4AF96QYa+XzBZ0oa
        l9WBREcVqInvl/nuyiDXB7XKjQ==
X-Google-Smtp-Source: AA6agR5rhtcBeY+/UuJeA/WBaAb389NT1DK09diLJxnSlGMNH5PZypBS6KP1tVDXpHE19f8gAu3L4w==
X-Received: by 2002:adf:e10c:0:b0:225:3168:c261 with SMTP id t12-20020adfe10c000000b002253168c261mr53609wrz.159.1661359712506;
        Wed, 24 Aug 2022 09:48:32 -0700 (PDT)
Received: from [192.168.178.32] ([51.155.200.13])
        by smtp.gmail.com with ESMTPSA id r18-20020a05600c425200b003a603f96db7sm2557941wmm.36.2022.08.24.09.48.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Aug 2022 09:48:31 -0700 (PDT)
Message-ID: <32665572-6128-82e7-27b2-eb3817fe5ac7@isovalent.com>
Date:   Wed, 24 Aug 2022 17:48:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: Update bpf-helpers(7) man page
Content-Language: en-GB
To:     Jakub Wilk <jwilk@jwilk.net>, linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Rumen Telbizov <rumen.telbizov@menlosecurity.com>,
        Daniel Borkmann <daniel@iogearbox.net>
References: <CA+FoirBpBrvp7Qme_sqViKf-90tG+s+tUZNy9fmZXEF5u4sx8w@mail.gmail.com>
 <a62a00a3-e673-8874-73b2-57e8d9c362c4@gmail.com>
 <CA+FoirA75vZgYaDdNfJGUwR6sVCYZ6YL4T3mN_LNPpzeJ5pYhg@mail.gmail.com>
 <6310b542-3a92-e072-b369-25e370036626@gmail.com>
 <CACdoK4KwzbRFZ+_HDd6wybzePAHy40Pc3p19uu3XburddOuC3A@mail.gmail.com>
 <b62b15e5-398d-6d17-dedf-532b70208299@gmail.com>
 <CACdoK4KuoRpTdyLqtPTbctHWHtfQTNgZoKunVC_f7T_y4ATF5g@mail.gmail.com>
 <7d125b8d-9873-b001-dae2-a78d3891f144@gmail.com>
 <CA+FoirA-FeYeA5ZPgCvo55Hg_dfe7dT54Co8CkU9wW8yemFcJA@mail.gmail.com>
 <fdec5bc8-1204-db0f-1f3e-86d7a2de8b5c@gmail.com>
 <20220824160259.bxyr6pxagaaoqaev@jwilk.net>
From:   Quentin Monnet <quentin@isovalent.com>
In-Reply-To: <20220824160259.bxyr6pxagaaoqaev@jwilk.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 24/08/2022 17:02, Jakub Wilk wrote:
> The latest bpf-helpers(7) man page update introduced a few misspellings:
> 
>> -EFAULT on failrue to parse the existing header options.
> 
> failrue -> failure
> 
>> this helper enforces the key must be an task_struct
> 
> an -> a
> 
>> Returns the stored IMA hash of the inode (if it's avaialable)
> 
> avaialable -> available
> 
>> Providing an len_diff adjustment that is larger than the actual packet
>> size (resulting in negative packet size) will in principle not exceed
>> the MTU, why it is not considered a failure.
> 
> an -> a
> 
> But I can't parse the subordinate clause. I think it should be:
> 
> ..., which is why it is not considered a failure.
> 
>> Other BPF-helpers are needed for performing the planned size change,
>> why the responsability for catch a negative packet size belong in
>> those helpers.
> 
> I can't parse this subordinate clause either. I guess it was meant to say:
> 
> ..., which is why the responsibility for catching a negative packet size
> belongs in those helpers.
> 
> Any volunteers to fix the misspellings on the kernel side?
> 

I'll have a look at these and send a fix. It's likely that some of those
are my mistakes anyway.

Thanks for the report,
Quentin
