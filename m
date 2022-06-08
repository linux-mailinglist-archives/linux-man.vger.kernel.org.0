Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 91B49542CE1
	for <lists+linux-man@lfdr.de>; Wed,  8 Jun 2022 12:15:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236402AbiFHKPB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Jun 2022 06:15:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236646AbiFHKNd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Jun 2022 06:13:33 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 7A7E223CCD1
        for <linux-man@vger.kernel.org>; Wed,  8 Jun 2022 03:01:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1654682484;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=ai4/mydlubhazG9HxtBQLY4E30VOz2EnC8iG9kxiMxs=;
        b=dJ59hfQwmkQz4iMio1KXSTAyr23rGILhDE4XNkPlmxggdjnvMmJkKBRbq/kTim4WIf+Q+B
        0Y4Ve8gfL2pJ5JjGWDtb5L96h7PnS8eHmeGg4+3tHLesCXlMXroskx/iCpdraP5x11cnqB
        jUoZZhbCbG5qHse1MYyPeSKsTaMN7jo=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-93-GaNxms8tNaWRRFsAl5lRQg-1; Wed, 08 Jun 2022 06:01:23 -0400
X-MC-Unique: GaNxms8tNaWRRFsAl5lRQg-1
Received: by mail-wm1-f69.google.com with SMTP id k15-20020a7bc40f000000b0039c4b7f7d09so3952934wmi.8
        for <linux-man@vger.kernel.org>; Wed, 08 Jun 2022 03:01:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:organization:in-reply-to
         :content-transfer-encoding;
        bh=ai4/mydlubhazG9HxtBQLY4E30VOz2EnC8iG9kxiMxs=;
        b=aINns4u7aVKThIIXhSofdPDn77cv38xUr4Bc44VSukG6DzwJml0VgZCLbz9faN99xJ
         cFE8Qea2/yAieFB7BXVe7O6kOqh1GzdphLSZyIoEZg5PESBjnG/tSKNz/OV+sRfTxw25
         0GKFj2SWoYXf1hoYb7Um88EY2aCtb9znlWIABvbRTb31gbiFIvieDUhNBBUaJ4RvMj7c
         4Oec4WxGrB4KHUG9N5nClChISFARDhIqHeQRnVIFwRBAAjVkoM9JKSrFbsebeO6uRvvJ
         NnDFMeJczEnutD5b+E/h064tlKI+wbA4rrOe2tCduMm5vliyZ+I7hTdMfOauKnxYOn0t
         R7Jw==
X-Gm-Message-State: AOAM530ksZD4ENl21yj5H53GjjATJMXzuqy4ENwnNEcDbfelL6qsLngm
        O0Jcu5o9JEmfjnBwiC8C7O9PpA5iosJLpBN9uxaz6cpB4MqEPG77XFv9xhS8mUwhmnBVn8bpZHk
        l7ipXdNh3H5+Jupa6QtMW
X-Received: by 2002:a5d:4a88:0:b0:214:1e17:9993 with SMTP id o8-20020a5d4a88000000b002141e179993mr24761285wrq.608.1654682481948;
        Wed, 08 Jun 2022 03:01:21 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJysi/9XcEhit9yrKvTNQL+Bv3N4jejT5qmtSTyLw314oAP9isZR9sDt1dTMA3rnHaZnwdXN1Q==
X-Received: by 2002:a5d:4a88:0:b0:214:1e17:9993 with SMTP id o8-20020a5d4a88000000b002141e179993mr24761258wrq.608.1654682481700;
        Wed, 08 Jun 2022 03:01:21 -0700 (PDT)
Received: from ?IPV6:2003:cb:c705:ad00:db2:4c6:8f3a:2ec4? (p200300cbc705ad000db204c68f3a2ec4.dip0.t-ipconnect.de. [2003:cb:c705:ad00:db2:4c6:8f3a:2ec4])
        by smtp.gmail.com with ESMTPSA id r21-20020a05600c425500b0039c41686421sm15579014wmm.17.2022.06.08.03.01.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jun 2022 03:01:10 -0700 (PDT)
Message-ID: <9915bba2-ca15-aa4d-eab7-686cd991cd62@redhat.com>
Date:   Wed, 8 Jun 2022 12:00:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: man-pages maintainership (was: Re: [PATCH v2] madvise.2: Clarify
 addr/length and update hugetlb support)
Content-Language: en-US
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org,
        Axel Rasmussen <axelrasmussen@google.com>,
        Peter Xu <peterx@redhat.com>, linux-mm@kvack.org,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Konstantin Ryabitsev <konstantin@linuxfoundation.org>,
        Mike Kravetz <mike.kravetz@oracle.com>
References: <20220526180950.13916-1-mike.kravetz@oracle.com>
 <4ee30efe-4975-66ef-a05c-c5baa7242e98@redhat.com>
 <fef84382-8fd5-92f6-5625-60852c32ea72@gmail.com>
 <1257e092-79af-3624-2f6a-fb5fd69e5c18@gmail.com>
 <7eb14472-d269-ecc6-1ef4-6ea81949efb1@redhat.com>
 <b961003a-0e32-cc6b-9f87-66ae21d37f35@gmail.com>
From:   David Hildenbrand <david@redhat.com>
Organization: Red Hat
In-Reply-To: <b961003a-0e32-cc6b-9f87-66ae21d37f35@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 07.06.22 11:37, Alejandro Colomar wrote:
> Hi David,
> 
> On 6/7/22 09:44, David Hildenbrand wrote:
>> Ah, that explains things. The man-page info page [1] was/is still
>> pointing at that git tree, that's why I wondered what happened.
> 
> Yup.  BTW, that reminds me I need to ask how to update that website. 
> Now that everything goes back to normal, I don't need to; but still 
> should know how to.
> 
>>>> I'm not very concerned about this, since in essence, a fork of the
>>>> manual pages is still very well maintained on my server, and free for
>>>> anyone interested in reading up-to-date pages.  And since I do this on a
>>>> hobby basis (my company doesn't pay me to do this at all), I don't care
>>>> at all about not having released in almost a year now.  That's more of a
>>>> problem for distros and companies, which need releases.  For
>>
>> Heh, including me ;)
> 
> Which part of that text includes you?  "interested in reading up-to-date 
> pages"?  Or "need releases"?  Or both?  :-)

A little bit of everything. Obviously, I'm interested in up-to-date man
pages for Red Hat Linux users :)

>>
>>>
>>> BTW, I just released a signed git tag in my repo, to make it a bit more
>>> secure to know that you're getting my manual pages, and not some MITM
>>> fake stuff.
>>>
>>> <http://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/tag/?h=man-pages-5.19-rc1>
>>>
>>> My PGP key is signed by mtk.  Only trust it if it has his signature.
>>> I'm attaching it in this email, so that it can be found in the list (I'm
>>> having some issue with the keyserver).
>>
>> I can spot it on the official git tree [2] as well, essentially via
>> alx/main. Nice.
> 
> Yes, and soon in master. :)
> Still far from a release, however; I need help with that.

What kind of help would you be needing?

-- 
Thanks,

David / dhildenb

