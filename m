Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 16F89BDE33
	for <lists+linux-man@lfdr.de>; Wed, 25 Sep 2019 14:42:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732394AbfIYMmM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 25 Sep 2019 08:42:12 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:39198 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726369AbfIYMmM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 25 Sep 2019 08:42:12 -0400
Received: by mail-wr1-f66.google.com with SMTP id r3so6762105wrj.6
        for <linux-man@vger.kernel.org>; Wed, 25 Sep 2019 05:42:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:references:from:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=5/7T2qDnCjHAOi3oXT5C13mNILq/XQmdx2gBkqli5yQ=;
        b=BvyOG26LZV0znT5Rh5JsjGK6tFjjgUv1wpi8ha/7YXMIX4/nu2Q9gXwyDNttGm5Q1B
         iWFgZBxDGvZB+w1FPgbaNE5HPGma+oFJebBEHs+woqfvpOCPoueoe46HjiGvAkJuSYuy
         405eCD3ESPckHTtj/GOJKB2oaXqM3rVhQoTlSsjHlfdpMfIfd6asMdSEBYWSP2Rc1UhO
         dr7SSgMXYQi5OgTA3H3krbz55Y8GRSASHjJ5AAchCXA+oRq8Sdi0FoYLFBDuXEFyOKtE
         dXHv2FenvWQz0iuGuVXRhWCFbw+/c48ArFwcoPKesYkgWFr+WoYYFMopLqRP00XP+pE+
         AKXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=5/7T2qDnCjHAOi3oXT5C13mNILq/XQmdx2gBkqli5yQ=;
        b=fsUkzc0w8rVKV2S5vPUsgNOsCw1sqV92AizaMnk478dlKA1gjowpZfZXeDTfQpueUL
         pP1eE/cXxDZNXK1SRdKoS5NdHy7MLzFSuwUnY3PUoIA0FlPmJf0vjkg+bBXKGHYnpwJZ
         BjINq8ZiVYEEwQNAAFie7jREdgyuolNrnFqZVxfau7dgJwgMVfMmV6mAMB+sLru91ibm
         fqfR23X/yL8mmSybpHTFvLdvsnwqwQYCl7McGjWvcPFoINekxFZvD8dB83F//7klgSX2
         ax3DXptm03KH2yneCgEHFLgE7OJrdrfd5UTml2Em62OIfqXQ3JYTJvm0VmaqvWetA5D4
         pLDA==
X-Gm-Message-State: APjAAAXFYofS8h3leIXx+uOKSfjXOxisg92nkz/4ssOPUohenTq6/vol
        KIuLLwlTsj1D16La69yV8DbtzIHK
X-Google-Smtp-Source: APXvYqxDw1hK2ZyPuJyfZdxSuWVjdbtCOwyQuCPycWLh2aTsa+P1YSvLEhd6VJoVu6qRy5lH+NkJ8Q==
X-Received: by 2002:a05:6000:108e:: with SMTP id y14mr9201137wrw.344.1569415330007;
        Wed, 25 Sep 2019 05:42:10 -0700 (PDT)
Received: from [10.0.20.253] ([95.157.63.22])
        by smtp.gmail.com with ESMTPSA id y186sm6507278wmb.41.2019.09.25.05.42.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Sep 2019 05:42:09 -0700 (PDT)
Cc:     mtk.manpages@gmail.com,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: Re: Documentation error for "sched_getaffinity"
References: <e5e7506b47e8442492478aadf289979b@mbx03.liveapp.local>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <9097aaf8-e7f6-d173-9148-1f58ca6498f5@gmail.com>
Date:   Wed, 25 Sep 2019 14:42:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <e5e7506b47e8442492478aadf289979b@mbx03.liveapp.local>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit
To:     unlisted-recipients:; (no To-header on input)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Marc,

On 9/25/19 11:33 AM, Marc Brandis wrote:
> Hello,
> 
> I noticed the following documentation error in the online man pages
> (man7.org) for the "sched_getaffinity(2)" system call. It incorrectly
> says that sched_getaffinity returns 0 on success; instead it returns
> the number of bits in the CPU set, which I assume is the number of


I think you mean "bytes", not "bits"

> CPUs (incl. hyperthreading) the system has.

> I am running on Linux kernel 4.15.0-62 in Ubuntu build 18.04. I came
> across it when debugging a multi-threaded program using the call, and
> that program passing a large buffer for the cpuset parameter (8
> kBytes).
> 
> It is not just a typo or grammar issue, but I still was not sure
> whether this should be reported through Bugzilla.

The explanation for what you are seeing is actually covered 
lower in the page:

   C library/kernel differences
       ...
       On  success,  the  raw sched_getaffinity() system call returns the
       number of bytes placed copied into the mask buffer; this  will  be
       the minimum of cpusetsize and the size (in bytes) of the cpumask_t
       data type that is used internally by the kernel to  represent  the
       CPU set bit mask.

But, you're not the first to miss this detail, so I've just now modified
the RETURN VALUE section to make it easier for people to find that text:

       On  success,  sched_setaffinity() and sched_getaffinity() return 0
       (but see "C library/kernel differences" below,  which  notes  that
       the  underlying  sched_getaffinity() differs in its return value).

Thanks,


Michael
-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
