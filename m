Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2615A280EB5
	for <lists+linux-man@lfdr.de>; Fri,  2 Oct 2020 10:24:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726017AbgJBIYn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 2 Oct 2020 04:24:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54926 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725961AbgJBIYn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 2 Oct 2020 04:24:43 -0400
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A6D38C0613D0;
        Fri,  2 Oct 2020 01:24:42 -0700 (PDT)
Received: by mail-wm1-x344.google.com with SMTP id 13so736866wmf.0;
        Fri, 02 Oct 2020 01:24:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=uepnmvkaBYFWZFNuqOI3SwkTneUXrVb8dyGb7Wp5nmM=;
        b=Lr4iaoyucrYzxBxbatoVRF+8FVgj1FznYmnJmf87m2qvfXdmKyULjbqmxYQrkszGOq
         2y7ARzNj0/bQEzAQN9UaSPkhXsG2CzxZcm47C0dYQgD/79YOE9cr0pimndUCxGuIDXPv
         0FnzpzT2acTxh2P7ddEV1DkJF4v2SeogNdntutGcczjFRzGorYdz9uYvbAlyjJ3T6BPS
         Xd3KwvwaaGTx0ooOn2h/tYlF1Ynsm+YlltCgA2HxjHctwAqd0UAbGnb7FzvkTxzBW/mP
         uyhppFQDFwhSNR/4zRL5Zqxe5Xx921HIf2f9obf7tlxaOL1GY08XcBMZ85cuVNx8sl5K
         m//g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=uepnmvkaBYFWZFNuqOI3SwkTneUXrVb8dyGb7Wp5nmM=;
        b=r4rxELGtCLMu5/W307PHrqVKHdRN6LyLMXBhNaaXRdpXakzmbKN69sXhXAYbD7DprU
         OxJtGJvWC2Pv5H7e4vikFp2UGChKFoBFpqMMvgxfRQNdG8PCok8trQssYRIepYjnuDup
         Mi6/1StcQzHyQ04MRH37N5m/3eAB2Cx5QADz09X50yoXDTR3Z3nVvfXq3hvPxN4508WW
         mwZindn/GU6NWJMBHR10zRGrEB5F0bFNZZcyTYIE4fWLTYCz95nMDzRF7AzJtJqgSwb2
         9tU60b1lc0J+fH8qGyWITfaJOqUA4oyLdF8bXLnHrYErfHjBm9fKw3rO0zWzel9CtjIR
         /buQ==
X-Gm-Message-State: AOAM532v0WnEMeXEOYNMFbY9gWrMEoizp8xS9YtqFS7Yt0OKWFCoIPlq
        AyIp+EP7jcKHqvVNBAfzfk2y78McQyY=
X-Google-Smtp-Source: ABdhPJzJ6/QDMUZwbNSfl/vi9c5VAWusWGQJp8tIld00GRV3yGHvAK35ofyqOe1YWmNaK3fY5LEKlg==
X-Received: by 2002:a1c:f311:: with SMTP id q17mr1630701wmq.168.1601627081017;
        Fri, 02 Oct 2020 01:24:41 -0700 (PDT)
Received: from [192.168.1.143] ([170.253.60.68])
        by smtp.gmail.com with ESMTPSA id l4sm1047135wrc.14.2020.10.02.01.24.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 02 Oct 2020 01:24:40 -0700 (PDT)
Subject: Re: [PATCH v2 1/2] system_data_types.7: Add 'void *'
To:     Paul Eggert <eggert@cs.ucla.edu>
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        libc-alpha@sourceware.org, gcc@gcc.gnu.org,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <41affebd-3354-9420-0048-bffd14535e95@gmail.com>
 <20201001154946.104626-2-colomar.6.4.3@gmail.com>
 <538b683f-01d2-6148-4f1d-1b293eb5cd6b@cs.ucla.edu>
From:   Alejandro Colomar <colomar.6.4.3@gmail.com>
Message-ID: <4b86f6e9-0d8a-f14a-73ce-ebbdc9d9edba@gmail.com>
Date:   Fri, 2 Oct 2020 10:24:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <538b683f-01d2-6148-4f1d-1b293eb5cd6b@cs.ucla.edu>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Paul,

On 2020-10-01 19:32, Paul Eggert wrote:
 > If you're going to document this at all, I suggest documenting 'void' as
 > well as 'void *', and putting both sets of documentation into the same
 > man page.
 >

All the types we're documenting are in the same page:
system_data_types(7).
And then we have links with the name of each type.

And yes, I also pretend to document 'void'.


 > For 'void *' you should also mention that one cannot use arithmetic on
 > void * pointers, so they're special in that way too.

Good suggestion!

 > Also, you should
 > warn that because one can convert from any pointer type to void * and
 > then to any other pointer type, it's a deliberate hole in C's
 > type-checking.

Also good.  I'll talk about generic function parameters for this.

 > It might not also hurt to mention 'void const *', 'void
 > volatile *', 'void const volatile *', etc.

Those are qualifiers for the type,
and I don't see how any of them would apply differently to 'void *'
than to any other pointer type (or any type at all),
so I think they don't belong to system_data_types(7).

However, it might be good that someone starts a page called
'type_qualifiers(7)' or something like that.

I would love that someone documents 'volatile' correctly,
as there aren't many good sources about it.
If someone who knows when to use --and especially when not to use--
'volatile', is reading this, think about it :-)
I still wonder if I used it correctly in the few cases I've had to.

BTW, I'll CC the LKML.

 >
 > For 'void' you can mention the usual things, such as functions returning
 > void, and functions declared with (void) parameters, why one would want
 > to cast to (void), and so forth.

Yes, I was thinking about that.

 >
 > You're starting to document the C language here, and if you're going to
 > do that you might as well do it right.

I'm trying to do so :)

Thanks,

Alex
