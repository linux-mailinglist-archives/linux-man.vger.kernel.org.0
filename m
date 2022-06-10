Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E99375460B5
	for <lists+linux-man@lfdr.de>; Fri, 10 Jun 2022 11:01:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348280AbiFJJBe (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 10 Jun 2022 05:01:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52160 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344217AbiFJJBd (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 10 Jun 2022 05:01:33 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 43763483BA
        for <linux-man@vger.kernel.org>; Fri, 10 Jun 2022 02:01:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1654851690;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=HtEXO+GIed8HmHtMw93u9qaevp+TbZ6ZLmBndSXD2aU=;
        b=BOrbM1519xSQAMewRfRcR3TTBzdfVREy2fnYpcqdenfynXoMByAfVv6X46oW+pgHqmZmfz
        1zJ6vbc5+54JcbO6Dwyly1UPZPxs+m641sK4vmtkH5RWkZvyFH1B+YVVZMuwRAo5kmd8zQ
        3bp7nAgLYzplJs6Uho4ZrEs3YW2Ww+I=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-558-Vni4zmOoMG225ecayOZuTQ-1; Fri, 10 Jun 2022 05:01:29 -0400
X-MC-Unique: Vni4zmOoMG225ecayOZuTQ-1
Received: by mail-wm1-f71.google.com with SMTP id j31-20020a05600c1c1f00b0039c481c4664so5294527wms.7
        for <linux-man@vger.kernel.org>; Fri, 10 Jun 2022 02:01:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:organization:in-reply-to
         :content-transfer-encoding;
        bh=HtEXO+GIed8HmHtMw93u9qaevp+TbZ6ZLmBndSXD2aU=;
        b=T8ivxxNw5d9tE9Mc02bak9hl/1/9BWOMnfMIzL6Udn2pBtUMppyug25PzG8tLfBa74
         k0Z73G5U//BGy4q7cWjd63+6r3j+1pLNLo7A4Ip9CJxawydWkNcjaA3goWA9KbEKHTZi
         RCsa2SHRyscTIJCN814e2obg7IGlVZpCapJ1vp+mgBkWwBYbXZGKKltJV6v0isVrGDKQ
         9KpWWOXhNKBYAUrhibEfRyDaU3NRoVXSYDRwfq4puW6tl6iv17Px+ln1e+UIAJA6rsuE
         huRtuvp40WevgWg3AAIvu6OJE79g2SsmxU4PAh8d9RCN9odqLBDQOxK8oKEBbfTKW6wx
         8ztg==
X-Gm-Message-State: AOAM530bucPl0x2uX0krivtek4RjbWXoEsQaoorDzpfh3zmgiY6gk77y
        urBb88FAgCIUT2ANI1Sj121+hilYxxYEyaBxMmIq3EgJ0G99cPZMkuv8QWEqaElyiQ945Ozh+8N
        Z/XLcM41+NggF2yv+xORW
X-Received: by 2002:a05:600c:354a:b0:39c:4ebf:fb4c with SMTP id i10-20020a05600c354a00b0039c4ebffb4cmr7830401wmq.142.1654851687785;
        Fri, 10 Jun 2022 02:01:27 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxwCej9HvRZ5HrvY23GNVdzc3yEGlPxHuh1YuQtD1VyfXSrsZpSQ7s/EzwOBAn/DLCELlOfeQ==
X-Received: by 2002:a05:600c:354a:b0:39c:4ebf:fb4c with SMTP id i10-20020a05600c354a00b0039c4ebffb4cmr7830369wmq.142.1654851687440;
        Fri, 10 Jun 2022 02:01:27 -0700 (PDT)
Received: from ?IPV6:2003:cb:c705:1f00:4727:6420:1d4d:ca23? (p200300cbc7051f00472764201d4dca23.dip0.t-ipconnect.de. [2003:cb:c705:1f00:4727:6420:1d4d:ca23])
        by smtp.gmail.com with ESMTPSA id j26-20020a05600c1c1a00b0039c54bb28f2sm2294299wms.36.2022.06.10.02.01.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jun 2022 02:01:26 -0700 (PDT)
Message-ID: <05301a1a-6020-aa52-d539-c2e0ba147181@redhat.com>
Date:   Fri, 10 Jun 2022 11:01:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [PATCH v3] madvise.2: Clarify addr/length and update hugetlb
 support
Content-Language: en-US
To:     Peter Xu <peterx@redhat.com>,
        Mike Kravetz <mike.kravetz@oracle.com>,
        Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, linux-mm@kvack.org,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Axel Rasmussen <axelrasmussen@google.com>
References: <20220608234517.117295-1-mike.kravetz@oracle.com>
 <a711288d-f070-e980-034a-3faee480e689@gmail.com>
 <3cf768b3-4d09-de13-7975-ebb74a68752e@oracle.com>
 <YqJUZcol6c7HL6Dt@xz-m1.local>
From:   David Hildenbrand <david@redhat.com>
Organization: Red Hat
In-Reply-To: <YqJUZcol6c7HL6Dt@xz-m1.local>
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

On 09.06.22 22:13, Peter Xu wrote:
> On Thu, Jun 09, 2022 at 11:48:06AM -0700, Mike Kravetz wrote:
>> On 6/9/22 06:24, Alejandro Colomar wrote:
>>> Hi Mike,
>>>
>>> On 6/9/22 01:45, Mike Kravetz wrote:
>>>> Clarify that madvise only works on full pages, and remove references
>>>> to 'bytes'.
>>>>
>>>> Update MADV_DONTNEED and MADV_REMOVE sections to remove notes that
>>>> HugeTLB mappings are not supported.  Indicate the releases when they
>>>> were first supported as well as alignment restrictions.
>>>>
>>>> Signed-off-by: Mike Kravetz <mike.kravetz@oracle.com>
>>>> Acked-by: Peter Xu <peterx@redhat.com>
>>>
>>> Please check some comments below.
>>>
>>> Thanks,
>>>
>>
>> Thank you!
>>
>> And, my apologies for not looking at formatting requirements.
>> Will send a v4 shortly.
> 
> Alex,
> 
> Do you think we could add some of the semantic newline requirement into
> CONTRIBUTING file explicitly?  Although there's a pointer to man7 man-pages
> but the semantic newlines rules seem to be easily overlooked.
> 
> IMHO there can even be examples as you quoted in the link on "UNIX For
> Beginners":
> 
> https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/man7/man-pages.7?h=alx/main&id=6ff6f43d68164f99a8c3fb66f4525d145571310c
> 
> Maybe that'll ease both the maintainers and the contributors?

Maybe something similar checkpatch in Linux/qemu could point out a lot
of these possible issues and reduce Maintainer overhead. Nobody reads
docs after all if not forced to ;)


-- 
Thanks,

David / dhildenb

