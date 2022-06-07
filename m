Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0EBF553F78D
	for <lists+linux-man@lfdr.de>; Tue,  7 Jun 2022 09:45:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237907AbiFGHpq (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Jun 2022 03:45:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237891AbiFGHpm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 7 Jun 2022 03:45:42 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 549DB46B01
        for <linux-man@vger.kernel.org>; Tue,  7 Jun 2022 00:45:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1654587927;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=H/qeKH0MBX0+V/o7nmRVHxbDhi2eUjiD2PMo/8z1qdM=;
        b=Q8eFQ/m/OLVRJiGCjMj76eJ+/QUhJscjsHjajY0hiQ0tWK9IPvqJn/FT9hIalyaqG+ycOq
        W91Bw+oZky9DS7tZbtWD87G1k9VA/TADhsp3sNxtYaZbK81kDaeX5CA2ReuAtL9Q9ldMuZ
        LXRzqwPq/Z94rWDgH0sI1xWBicvkpS8=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-505-YWCC-xKSMjyxUCMA-PqELA-1; Tue, 07 Jun 2022 03:45:26 -0400
X-MC-Unique: YWCC-xKSMjyxUCMA-PqELA-1
Received: by mail-wm1-f72.google.com with SMTP id e19-20020a05600c4e5300b0039c4b6acd83so3882701wmq.2
        for <linux-man@vger.kernel.org>; Tue, 07 Jun 2022 00:45:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent
         :content-language:to:cc:references:from:organization:subject
         :in-reply-to:content-transfer-encoding;
        bh=H/qeKH0MBX0+V/o7nmRVHxbDhi2eUjiD2PMo/8z1qdM=;
        b=8OjtwfMSxhL3CeJty9BVOSB/Pb8RD2SWTsrG7Xbyp3o+QzUYkGeV1mQDYB67+ioz6r
         sj7rrX5LJRBU6iBshsv5069djs/xJxgbSB/42oELegzC9kf1RXIcpExi18Snimi9zUTK
         Gy+qRu7FLx/ROKJuU4Ou+nNQkwjvs1f9SRCPZfoQd2zM24wlMovz2r8dgVF0sFYKO1IM
         7wqjeFTkb+sF0Z0yv1teO0ZahY800fkB7f3X5EdbAHxTw5jAlErFh/tq7UwrmXrbERR2
         ydmxJmwlx7GcKSX8iwoQxB63L9U0EMsq04mg9oKsycRzPXB3s0GL9gFwI82Lf4umspAl
         z5aQ==
X-Gm-Message-State: AOAM531fUb46CPeaCce1geSNxFNZnkvoCUaSSFJ4xFKIG/SGeeMjSu0q
        R1HV84NWvgCQa1eqpwE36oQQwZ9evTCQJkv1Nn9aT9UcCxS/CcWgGiaD8Nn/nsXWeXUDXjsRpWU
        wASC/vj7SmEMcNo9d5I1c
X-Received: by 2002:a5d:59af:0:b0:20f:d6e8:a5e with SMTP id p15-20020a5d59af000000b0020fd6e80a5emr25951059wrr.507.1654587924913;
        Tue, 07 Jun 2022 00:45:24 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzy7eNts5JrkgWsxKcAQHN/HhIAxV5Lz/WSZwAFlsVE9/Lou2tfOjWRJJ/MiVzZbWN/aAOieQ==
X-Received: by 2002:a5d:59af:0:b0:20f:d6e8:a5e with SMTP id p15-20020a5d59af000000b0020fd6e80a5emr25951038wrr.507.1654587924631;
        Tue, 07 Jun 2022 00:45:24 -0700 (PDT)
Received: from ?IPV6:2003:cb:c709:500:4c8d:4886:f874:7b6f? (p200300cbc70905004c8d4886f8747b6f.dip0.t-ipconnect.de. [2003:cb:c709:500:4c8d:4886:f874:7b6f])
        by smtp.gmail.com with ESMTPSA id v190-20020a1cacc7000000b003975c7058bfsm19601294wme.12.2022.06.07.00.45.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jun 2022 00:45:20 -0700 (PDT)
Message-ID: <7eb14472-d269-ecc6-1ef4-6ea81949efb1@redhat.com>
Date:   Tue, 7 Jun 2022 09:44:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        Mike Kravetz <mike.kravetz@oracle.com>,
        linux-man@vger.kernel.org, linux-mm@kvack.org
Cc:     Michael Kerrisk <mtk.manpages@gmail.com>,
        Axel Rasmussen <axelrasmussen@google.com>,
        Peter Xu <peterx@redhat.com>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Konstantin Ryabitsev <konstantin@linuxfoundation.org>
References: <20220526180950.13916-1-mike.kravetz@oracle.com>
 <4ee30efe-4975-66ef-a05c-c5baa7242e98@redhat.com>
 <fef84382-8fd5-92f6-5625-60852c32ea72@gmail.com>
 <1257e092-79af-3624-2f6a-fb5fd69e5c18@gmail.com>
From:   David Hildenbrand <david@redhat.com>
Organization: Red Hat
Subject: Re: man-pages maintainership (was: Re: [PATCH v2] madvise.2: Clarify
 addr/length and update hugetlb support)
In-Reply-To: <1257e092-79af-3624-2f6a-fb5fd69e5c18@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-6.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 03.06.22 19:42, Alejandro Colomar wrote:
> On 6/3/22 19:02, Alejandro Colomar wrote:
>> Hi David!
>>
>> On 5/31/22 11:10, David Hildenbrand wrote:
>>  > BTW, the git repository [1] was last updated 2021-09-02. One of my
>>  > patches [2] was apparently picked up (reply via mail) but doesn't appear
>>  > in that repository.
>>  >
>>  > Is the project currently dead/unmaintained or am I just staring at the
>>  > wrong repository?
>>  >
>>  > [1] https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git
>>  > [2] https://lkml.kernel.org/r/20210823120645.8223-1-david@redhat.com
>>  >
>>
>> Your patch has been applied here:
>> <http://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/commit/man2/madvise.2?id=9f307c06efc8c40a8aff30cf13ef3a8528be9222> 
>>
>>
>> The project is maintained, but the git repository is unmaintained.
>> I keep reviewing and applying patches in my personal git repository, but 
>> I don't have access to kernel.org yet, so the official sites are 
>> unmaintained.  And of course, that also means no releases since 5.13.

Ah, that explains things. The man-page info page [1] was/is still
pointing at that git tree, that's why I wondered what happened.

>>
>> I'm not very concerned about this, since in essence, a fork of the 
>> manual pages is still very well maintained on my server, and free for 
>> anyone interested in reading up-to-date pages.  And since I do this on a 
>> hobby basis (my company doesn't pay me to do this at all), I don't care 
>> at all about not having released in almost a year now.  That's more of a 
>> problem for distros and companies, which need releases.  For 

Heh, including me ;)

>> individuals, I recommend getting a copy of my manual pages' git repo and 
>> `make install`.

The point I was missing is that there is a fork(). I haven't seen notice
of that, that's why I asked.

It might have been helpful to reply with something like "Patch applied
to my man-pages git fork"., including an URL. But you seem to have
access to the official man-pages project now, which is good to know.

>>
>> I applied recently for a kernel.org account, so maybe the official repo 
>> can be maintained again soon.  Still, I don't expect releasing soon even 
>> if I get access to kernel.org and can update the git repo.  I need to 
>> learn how to do a release properly before I'll release a new version, 
>> and that will take a lot more effort and time from my side than updating 
>> the repo.
>>
>> Thanks for your patience!

Thanks for your hard, voluntary work!

> 
> BTW, I just released a signed git tag in my repo, to make it a bit more 
> secure to know that you're getting my manual pages, and not some MITM 
> fake stuff.
> 
> <http://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/tag/?h=man-pages-5.19-rc1>
> 
> My PGP key is signed by mtk.  Only trust it if it has his signature. 
> I'm attaching it in this email, so that it can be found in the list (I'm 
> having some issue with the keyserver).

I can spot it on the official git tree [2] as well, essentially via
alx/main. Nice.


[1] https://www.kernel.org/doc/man-pages/
[2]
https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/tag/?h=man-pages-5.19-rc1

-- 
Thanks,

David / dhildenb

