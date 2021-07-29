Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9601C3DAFD2
	for <lists+linux-man@lfdr.de>; Fri, 30 Jul 2021 01:23:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232869AbhG2XXa (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Jul 2021 19:23:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49364 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229975AbhG2XX3 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Jul 2021 19:23:29 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98ED5C061765
        for <linux-man@vger.kernel.org>; Thu, 29 Jul 2021 16:23:25 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id l18so8838249wrv.5
        for <linux-man@vger.kernel.org>; Thu, 29 Jul 2021 16:23:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=o0XQeO2gLXgTrsnLjHD1VEgY6VwX+5QmEvSEEKt5N7E=;
        b=B+70KAld3nNJzBBoFymPaKE3WPDsPhiMwZuU/X9QWXLur58NmqO9+IAj0Kd12oQjhN
         +NAoEQ1+aBeFALuA/54obY8RxioQUb0sLe9W1vFA+kdWIbfXCxvY7JLdj9JQqLYBgPlw
         d3KRa4BMUPpVpB6I+WDSmFbvkPUCJfjNJUDnCw5QlYYVabRa2BX0kCAGRsmkZChviGkL
         604JHJTv4y7r5hmeK9/aVXzqb3vJ4EZwaDRr5kw8aFLeJg4s6jQ7hUh4S+5727swhaKT
         cTcubQYUE7G3M6IIlSdCwfPpE0IpG1NF0cWtawoAOJ9LbTeYREzHe3sw80UCC2/hIwNn
         sEUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=o0XQeO2gLXgTrsnLjHD1VEgY6VwX+5QmEvSEEKt5N7E=;
        b=BfWCF+eS4RBU/jU9H2gqZgNDKBN3FXVc3GfRx3EE7IZbv218WGuBy6EjW9pihcxVjo
         WbbxK3n9yGc/z+aTcOfuRV4gVgA775T5ct7wnxCTewsjCqcmTF7CY4CGoc3FpZcLH8CQ
         yqTQ5tFE2XPOEkM1kQm7D8Whjn2UcqeKmC3ZA7LHAWjpvzJzEGsab0WMTD517O197y9O
         2fE6UAeak0BEGgXo/L8sbVcDvVfm9U6XtGuZ++XU0DlFr3aYugy09TtJwUgAwkQgDjyr
         d+VWZtSMwMijg3kTCKvowd4Yjli1BhGTNAxeJlWJ6I7GMDoDxSky42WvmY6pGns1mxb9
         etxQ==
X-Gm-Message-State: AOAM531iYLb215UAnkz+hBiJA40dPAgWyUl+3+0FblUl+WyA2O3ML5lN
        69eEray+93lbcRgtq6yCU2Z/be8tq9Y=
X-Google-Smtp-Source: ABdhPJz8lT/pBKYC08xEFvx3F8Yn8L+iU0Ks1Hh5yOWDSBZnHMNkFAg8vxJCZe8PmX7LU3LAHvm6GA==
X-Received: by 2002:a5d:5048:: with SMTP id h8mr7303180wrt.292.1627601003680;
        Thu, 29 Jul 2021 16:23:23 -0700 (PDT)
Received: from [10.8.0.10] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id t1sm4673508wma.28.2021.07.29.16.23.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jul 2021 16:23:23 -0700 (PDT)
Subject: Re: [PATCH v3] getrlimit.2: old_getrlimit/ugetrlimit and
 RLIM_INFINITY discrepancies
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org, Eugene Syromyatnikov <evgsyr@gmail.com>
References: <20210729154401.GA22699@asgard.redhat.com>
 <20210729223535.qvyomfqvvahzmu5w@localhost.localdomain>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <f69ba7ed-27fb-ad24-8b40-7450b303f59f@gmail.com>
Date:   Fri, 30 Jul 2021 01:23:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210729223535.qvyomfqvvahzmu5w@localhost.localdomain>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden,

Thanks for reviewing this!
I didn't have more time today.

Also seeing reviews from different people helps improving my reviews too :)


On 7/30/21 12:35 AM, G. Branden Robinson wrote:
> Hi, Eugene!
> 
> I thought I'd offer some style suggestions since Alex hasn't yet.
> 
> At 2021-07-29T17:44:01+0200, Eugene Syromyatnikov wrote:
>> +The corresponding infinity value constant is provided in
>> +.I <linux/resource.h>
>> +as
>> +.BR RLIM64_INFINITY.
>> +.PP
>> +Original Linux implementation used signed types for limits; that was changed
> 
> Grammatically, you need an article at the beginning of this sentence.
> More broadly, however, what constitutes "*the* original Linux
> implementation" may not be well-defined and is not as relevant to the
> discussion as Linux kernels that were widely deployed.  The earliest
> conveivable Linux attested, what Torvalds produced on his 80386 in 1991
> ("Freax") is less important than Linux 2.4.
> 
> So I would recast and use semantic newlines [see man-pages(7)]:
> 
> 	Linux 2.4 and earlier used signed types for limits;
> 	that was changed
> 
> Alex will surely direct you to the semantic newline advice in
> man-pages(7).

:-)

> 
>     Use semantic newlines
>         In the source of a manual page, new sentences should be started
>         on new lines, and long sentences should  split  into  lines  at
>         clause  breaks  (commas,  semicolons, colons, and so on).  This
>         convention, sometimes known as "semantic  newlines",  makes  it
>         easier to see the effect of patches, which often operate at the
>         level of individual sentences or sentence clauses.
> 
> I won't point out every instance where a semantic newline is preferred.
> 
>> +(along with the value of the
>> +.B RLIM_INFINITY
>> +constant)
> 
> I see there is some precedent in the Linux man-pages to call a
> preprocessor symbol that is replaced with a C language literal a
> "constant".  I would not employ this usage myself, since C has the
> "const" type qualifier that suggests, and is is widely interpreted, as
> "constant".  I think it would be helpful if we referred to as "constant"
> only C objects bearing such a declaration.  Does anyone think this would
> be a worthwhile shift in usage?  (The most important virtue that
> constants in the sense I'm using them have over preprocessor symbols is
> that the former survive the translation process into executable format,
> and (if not optimized out) will appear in a symbol table, which means a
> debugger can know about them.)

I had a look at the Standard to check what wording is used there.  It 
uses "constant" too.  You can find many cases of "decimal constant", 
"double constant", "character constant" in contexts containing also 
"string literal".  Have a special look at the "Constants" section.

https://stackoverflow.com/questions/81656/where-do-i-find-the-current-c-or-c-standard-documents

> 
>> +.\" http://repo.or.cz/davej-history.git/blobdiff/129f8758d8c41e0378ace0b6e2f56bbb8a1ec694..15305d2e69c3a838bacd78962c07077d2821f255:/include/linux/resource.h
>> +during 2.4 development cycle, as it wasn't compatible
> 
> s/during/& the/
> 
>> +with Single UNIX Specification.
> 
> s/with/& the/
> 
>> +However, in order to preserve backward compatibility, the routine
> 
> s/routine/function/ ?
> 
>> +.IR sys_old_getrlimit
>> +has been implemented under
> 
> s/has been/was/
> s/under/using the/
> 
>> +.B __NR_getrlimit
>> +syscall slot, with infinity checks being performed against hard-coded 0x7fffffff
> 
> s/hard-coded/a literal/
> 
>> +value, and the routine
> 
> s/the routine//
> (it will be clear from context that this is another function)
> 
>> +.I sys_getrlimit
>> +has been exposed under a new name,
> 
> s/has been/was/
> s/exposed/made available/
> 
>> +.BR ugetrlimit ().
>> +Note that most newer architectures don't have the latter, with
> 
> s/Note that most/Most/
> 
> I call this a "Kemper notectomy", after my colleague in groff
> development, Dave Kemper, who has pointed out that we tend to massively
> overuse the phrase "note that" in software documentation.  We write for
> impatient readers.  Everything we say in a manual should be worthy of
> note; if it is not, it should be deleted or moved to a place in the text
> reserved for supplemental commentary (a footnote; a (sub)section entitled
> "Background", "History", or "Notes"; or similar).
> 
>> +.BR getrlimit ()
>> +providing proper implementation.
> 
> What's "proper" about it?  That it's unsigned, or that it's conforming?
> Say so.  Again, an article is needed.
> 
> s/proper/a conforming/
> 
>> +Also worth noting that several architectures decided not to change
> 
> I'd condense this.
> 
> s/Also worth noting that/However,
> /
> 
>> +.B RLIM_INFINITY
>> +value: 32-bit mips and sparc (but not 64-bit variants, that switched
> 
> s/mips/MIPS/
> 
> The Linux man-pages are mostly consistent about this casing[1], and it
> is normative[2].
> 
> s/sparc/SPARC/
> 
> The Linux man-pages are mostly consistent about this casing[3], and it
> is normative[4].
> 
>> +to the new value of (~0UL)) retained the old 0x7fffffff value,
>> +and alpha retained 0x7ffffffffffffffful.
> 
> s/alpha/Alpha/
> 
> You can probably guess what I'm going to say.  ;-)

Thanks for this.  I had doubts about how to write those a few months ago 
when I wrote some patches, as I found a mix of them in the pages, and 
wasn't sure which form was more correct.

Cheers,

Alex

> 
>> +.\" ...along with a request to call when one runs into it:
>> +.\" https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/alpha/include/uapi/asm/resource.h#n15
>>   .SH BUGS
>>   In older Linux kernels, the
>>   .B SIGXCPU
> 
> Thank you for your patience with my comments.  I hope they've been
> helpful.
> 
> Regards,
> Branden
> 
> [1] vdso(7) may be an exception.
> [2] https://booksite.elsevier.com/9780124077263/downloads/historial%20perspectives/section_4.16.pdf
> [3] clone(2), syscall(2), and exec(3) may be exceptions.
> [4] https://sparc.org/timeline/
> 


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
