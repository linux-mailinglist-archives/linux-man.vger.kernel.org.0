Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B44D91B43FC
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2020 14:08:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726158AbgDVMIF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 22 Apr 2020 08:08:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51842 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726110AbgDVMIF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 22 Apr 2020 08:08:05 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23C18C03C1A8
        for <linux-man@vger.kernel.org>; Wed, 22 Apr 2020 05:08:05 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id k13so2091598wrw.7
        for <linux-man@vger.kernel.org>; Wed, 22 Apr 2020 05:08:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Udvo7olY6I80UYD7PISEitAEBqNg6n4BW+MMc5vDb2o=;
        b=J4Tb7lIRSSxKLVEaTWooGrxC3aR6Fk4CX9gMnGILDn+Z0RhSlRADYsZYScN1k1P88U
         tW3ZBTnGNlOqYFQcv9P86IKsiW7q1VDmEJrLdvf36y31gIF/ZwFkCWpaqozWAW9Vwejz
         M14dQFjpn4Xui3Hq0WKjnziCIvgpqspqY7ZCU7Lnm7eLNJQMKQoZ4zeBaMoBrqZTxqDX
         1TEgaXNpieKWgluKb+S07HvYK7e/10nM0okCue9hJ0Ohv3CVPIcnU7Mzga6+GDkXMLQX
         Jcu+uxmi+NkFFqZwcX12fdQoE5Ml0Dar1T6bSkHvvq43TNPaN5tR97Qaa1OXS3Hhkep1
         EWwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Udvo7olY6I80UYD7PISEitAEBqNg6n4BW+MMc5vDb2o=;
        b=bZkkM4XhELEnxG/v+3BijzOiAQ+3knGIk7q3aZhOuMbDomgiyH4gI5cstEqhuCgpQG
         4PACGNuenJrDf03X3VC3wf1XMJlx6tYTO4Ntb9hGjAx7PnNminu+dALdhy3znUWZlO4p
         tP3QcahGDfDMrol5hjR5+jeHKvt34veePIQhhexamO+qeY43AmljxaWswrWd4NkiTDfo
         U9MSdmGWMacbzT2GGJyrJooe41ODuY6VISQsWsbYZYt9vvX01FIWnEcnhzus3FN8kRmf
         XH+XSJIU//OcIIMBAxmCcKcaYiIDLSRfysaniHhOhWQwXzZbqV5ReuK9BtXiuI8r5m9t
         zB+g==
X-Gm-Message-State: AGi0PuYBoTIBuzbY2qBtm64x4Bb4lZxXutDYok1Ltr/+2rsDMgaDwJ1+
        vLlhYc1bkTcjK8KAoB7G9Ok=
X-Google-Smtp-Source: APiQypIVwaS2fJGDtmHx7y/VrSJMM327C0E/1JjnYsQZsX3Yw1hMuwxnjR+NCfZ1vpDCdv3xrklWLw==
X-Received: by 2002:adf:cd04:: with SMTP id w4mr30956434wrm.357.1587557283685;
        Wed, 22 Apr 2020 05:08:03 -0700 (PDT)
Received: from ?IPv6:2001:a61:2482:101:3351:6160:8173:cc31? ([2001:a61:2482:101:3351:6160:8173:cc31])
        by smtp.gmail.com with ESMTPSA id b22sm7451421wmj.1.2020.04.22.05.08.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Apr 2020 05:08:03 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        Sonny Rao <sonnyrao@google.com>,
        Jesse Barnes <jsbarnes@google.com>,
        Vlastimil Babka <vbabka@suse.cz>,
        Minchan Kim <minchan@kernel.org>,
        "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Subject: Re: [PATCH v2] mremap.2: Add information for MREMAP_DONTUNMAP.
To:     Lokesh Gidra <lokeshgidra@google.com>,
        Brian Geffon <bgeffon@google.com>
References: <20200415164949.44562-1-bgeffon@google.com>
 <092fc948-4adb-cda8-f525-7d16a85674e7@gmail.com>
 <CADyq12xA69pSZ=JfMuG_c8T1UHepmdSqBwLLPgFrOyXeveVk4w@mail.gmail.com>
 <CA+EESO6ODSQV4QA0-ZpyvmHb2395Gutt0ac5uBYNyTdWKdSY1Q@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <f7592167-06d5-5f81-9d9e-07afd6704e31@gmail.com>
Date:   Wed, 22 Apr 2020 14:08:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CA+EESO6ODSQV4QA0-ZpyvmHb2395Gutt0ac5uBYNyTdWKdSY1Q@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Brian and Loresh,

>>>> +Possible applications for this behavior might be garbage collection or
>>>
>>> Can you elaborate the garbage collection use case a little, please?
>>
>> Lokesh, who is CCed, can probably expand better than I can, Lokesh
>> would you mind elaborating on how the JVM plans to use this.
>>
> There are many GC algorithms in literature which use PROT_NONE+SIGSEGV
> trick to implement concurrent compaction of java heap. In Android
> Runtime we plan to use userfaultfd instead. But this requires a
> stop-the-world, wherein Java threads are paused, right before starting
> the compaction phase. Within this pause, the physical pages in the
> Java heap will be moved to another area, so that the Java heap, which
> is already registered with userfaultfd, can start 'userfaulting' (as
> Java heap pages are missing) once application threads are resumed.
> 
> In the absence of MREMAP_DONTUNMAP, I'd have to do it by first doing
> mremap, and then mmaping Java heap, as its virtual mapping would be
> removed by the preceding mremap. This not only causes performance
> issues as two system calls need to be made instead of one, but it also
> leaves a window open for a native thread, which is not paused, to
> create a virtual mapping for its own usage right where Java heap is
> supposed to be.

Thank you both for your explanations.

I added some text to the page. Does the following look okay?

   MREMAP_DONTUNMAP use cases
       Possible applications for MREMAP_DONTUNMAP include:

       *  Non-cooperative userfaultfd(2): an application can yank  out  a
          virtual  address range using MREMAP_DONTUNMAP and then employ a
          userfaultfd(2) handler to handle the page  faults  that  subse‐
          quently  occur  as  other threads in the process touch pages in
          the yanked range.

       *  Garbage collection: MREMAP_DONTUNMAP can be used in conjunction
          with  userfaultfd(2) to implement garbage collection algorithms
          (e.g., in a Java virtual machine).  Such an implementation  can
          be  cheaper  (and simpler) than conventional garbage collection
          techniques that involve marking pages with protection PROT_NONE
          in  conjunction with the of a SIGSEGV handler to catch accesses
          to those pages.

Cheers,

Michael

-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
