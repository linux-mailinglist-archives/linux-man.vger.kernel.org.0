Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E2EA864ADF5
	for <lists+linux-man@lfdr.de>; Tue, 13 Dec 2022 03:54:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234350AbiLMCy6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 12 Dec 2022 21:54:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56010 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234418AbiLMCyt (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 12 Dec 2022 21:54:49 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB6A613CD4
        for <linux-man@vger.kernel.org>; Mon, 12 Dec 2022 18:53:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1670900028;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=0RhDm3KlHkWaiYSwzCX1LN5q6/F6VMFXDyNsycvG1aE=;
        b=MuszqrdHm95CbROfRgPXRJX5NZJ1caHyWdvZhML/LqEZnDQHqvYQyI8Upu4Rt4K3eQ6D/r
        mJHDyuASNcM7knzHATb1qRKCFgr1bLIM262stBYhLJ3a1UD8tGBtpqemwT5RmGNTp3igyd
        TPnzuPclhTesTl0dAlOaua/17lfmPmI=
Received: from mail-io1-f70.google.com (mail-io1-f70.google.com
 [209.85.166.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-294-kW8nCEv2NPCnbQtHhJD6Xw-1; Mon, 12 Dec 2022 21:53:47 -0500
X-MC-Unique: kW8nCEv2NPCnbQtHhJD6Xw-1
Received: by mail-io1-f70.google.com with SMTP id g11-20020a6be60b000000b006e2c707e565so1116883ioh.14
        for <linux-man@vger.kernel.org>; Mon, 12 Dec 2022 18:53:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0RhDm3KlHkWaiYSwzCX1LN5q6/F6VMFXDyNsycvG1aE=;
        b=2sn6aPuVRatYPdUGLM06s6IKm6tUaxFpxUduyEyUibwp6QnwztYyUJOIvoOFUhX3fk
         tnKa5qWFEbjfYlNC4RC8rs+7wcw4c8fzqwOyOGVJis3ycniLc3oOsTypdDwXQbx1e0h6
         lsI8BFwFqhnW2p2OoSuZ3tkJegE5DDbjCjzhVuqMa6JaJz72f+9Q0DHbHwOB/QLYFQs0
         f0q0h8xqCRgn0VGkFiBDZYEgu/NOJIPJOBzuEmbSFyIHKMFk/Do/HOPNv038l0IlpLmq
         R8ioB7E2Bp7w3Fw/3pEIGfI9HCm+F9rijIUCcAVRapyaw6yi216PtjDJL1c1WLirQNI0
         Q5dg==
X-Gm-Message-State: ANoB5pns9ymbOS2uZB4ZS+WoCNoJdlThJX0LkK2an+PWrosJLMHnuJpb
        1wrhFYNSEG5WxdPfwDHQmP6SNmlffxW+3xb35JIoyyd9mhmc0Oc/yk9PpC6QAjuti3ECIi7WOmb
        LBkRsR1GEDrHa8HBsNtVd
X-Received: by 2002:a92:c9c4:0:b0:303:8c18:1283 with SMTP id k4-20020a92c9c4000000b003038c181283mr9899469ilq.31.1670900026987;
        Mon, 12 Dec 2022 18:53:46 -0800 (PST)
X-Google-Smtp-Source: AA0mqf4zIYbu3DDutBNMqQz/nHzlsk7Nv/Zl+bpcEtu/5yQplpP6b2xOl0/lyndBNHuMhDVaop+sFA==
X-Received: by 2002:a92:c9c4:0:b0:303:8c18:1283 with SMTP id k4-20020a92c9c4000000b003038c181283mr9899462ilq.31.1670900026704;
        Mon, 12 Dec 2022 18:53:46 -0800 (PST)
Received: from [192.168.0.241] (192-0-145-146.cpe.teksavvy.com. [192.0.145.146])
        by smtp.gmail.com with ESMTPSA id h12-20020a02cd2c000000b0038a760ab9a4sm462127jaq.161.2022.12.12.18.53.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Dec 2022 18:53:45 -0800 (PST)
Message-ID: <d96be4c5-b8b5-38da-57d0-55e02a41abcd@redhat.com>
Date:   Mon, 12 Dec 2022 21:53:45 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH] clone.2: note EINVAL when exit_signal + bad flags
Content-Language: en-US
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Jack Pearson <jack@pearson.onl>,
        "H.J. Lu" <hjl.tools@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20221202224419.231717-1-jack@pearson.onl>
 <606b744f-131d-15b5-3242-745b400b3fa9@gmail.com>
From:   Carlos O'Donell <carlos@redhat.com>
Organization: Red Hat
In-Reply-To: <606b744f-131d-15b5-3242-745b400b3fa9@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 12/9/22 14:49, Alejandro Colomar wrote:
> Hi Jack,
> 
> On 12/2/22 23:44, Jack Pearson wrote:
>> Document that Linux will report EINVAL when exit_signal is specified and
>> either CLONE_THREAD or CLONE_PARENT is specified.
>>
>>  From clone3_args_valid in Linux:
>> ```
>>     if ((kargs->flags & (CLONE_THREAD | CLONE_PARENT)) &&
>>         kargs->exit_signal)
>>         return false;
>> ```
>>
>> I have verified that this happens on my kernel with a small program, and
>> that this doesn't happen with normal `clone` through the glibc helper.
> 
> Could you please also send a test program with the glibc wrapper?
> 
> BTW, glibc has a clone3(2) wrapper since last year.  It would be interesting to document it instead of the raw syscall.

glibc does not have a clone3 wrapper.

glibc has an internal non-exported __clone3 interface that we use for pthreads,
and likely soon for posix_spawn.

We have not yet chosen to export clone3 as a public global symbol that developers
can use.

-- 
Cheers,
Carlos.

