Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D0AE03C25BC
	for <lists+linux-man@lfdr.de>; Fri,  9 Jul 2021 16:17:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231925AbhGIOTz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 9 Jul 2021 10:19:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57626 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231857AbhGIOTz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 9 Jul 2021 10:19:55 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20165C0613DD
        for <linux-man@vger.kernel.org>; Fri,  9 Jul 2021 07:17:12 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id j34so6415224wms.5
        for <linux-man@vger.kernel.org>; Fri, 09 Jul 2021 07:17:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=kGSZa4qnpw4wqIIi1BgrShtvlW6d2FBNyhwLRHxsbXc=;
        b=KVUQMcZgatA8zNMMilAV06b8otl2DZiM8QDS//NUcQgCSx0QsZXLoiroxc3J7el3qG
         KUmCLfhXm+G10HpWYT4tHWPvqpOH+iiL3A+935zas8rqwrozDfBXmt/nrm/ZUkn5yGmW
         1JG83VHu4mg31n19GnAPIJ+kwhpPU1Z0X0Bec7unN2o7sKQl3SKFYsSIBXAXcMpIZldz
         1+pb162w+rznHKaqE9JwHPv6LElyuAcga4eFlBcWR++V5rN8qqGXSkiizW+upYRbYpYR
         SSA7+6pNyG9PzUDcRalNUwADoyy5G12kSi/qM1tMNcBBhhqJ5mlHPWgIS3MhqOia49YK
         rf7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=kGSZa4qnpw4wqIIi1BgrShtvlW6d2FBNyhwLRHxsbXc=;
        b=k59n9fHCgEKUa8ax31Wf1MZSktPj+vIIRrcbEoUBo7Nk9IgCLhM9qJ9q0KsHpqo6MP
         9GlqY/n3VRMx1SDi/OEwuk2S4lLv6qN21M/UPY8y4myAfs6WX4o1Z5q8h39C+EyOQb0s
         hfNKDwKOfk1pXQflZwi+Le18bIBShctmHe3QaY4fzQ0kKKckuB1g4uvStYxyJIT/93Fg
         pWwC6iH6Y7dgCHVYFRzxhhD6B9vVsaS23K6HIoEBU9BvjlCSRiyZQ+OowNjZE8W3HtgD
         B4yDsvGLK6gS52YTICHGGN2/HPbEyti4wU8cty0H4FAQWzj6YD5LXwy0zFbbJGx7q8IH
         5gHg==
X-Gm-Message-State: AOAM532g9gUwo9Y+lZogNjPq8BDMpybe20i51HlUAavNbKsiDAB4P7MJ
        RNPEz0TVZOUtlams0bl15cg=
X-Google-Smtp-Source: ABdhPJwpeHm9blzSR25wyuR+mNc5BemO2Lsn2B02MUppxAF2ou00TQ53L7LUgsw88otYjopZ8XNBqg==
X-Received: by 2002:a05:600c:4fd0:: with SMTP id o16mr12246916wmq.179.1625840230751;
        Fri, 09 Jul 2021 07:17:10 -0700 (PDT)
Received: from [10.8.0.150] ([195.53.121.100])
        by smtp.gmail.com with ESMTPSA id b12sm5381944wrx.60.2021.07.09.07.17.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jul 2021 07:17:10 -0700 (PDT)
Subject: Re: strlen
To:     Jonny Grant <jg@jguk.org>,
        Segher Boessenkool <segher@kernel.crashing.org>
Cc:     gcc-help@gcc.gnu.org, linux-man <linux-man@vger.kernel.org>,
        Florian Weimer <fw@deneb.enyo.de>,
        Michael Kerrisk <mtk.manpages@gmail.com>
References: <87363whf2z.fsf@mid.deneb.enyo.de>
 <48e874cb-2b95-2783-ddfc-ae12d9aaf8f5@jguk.org>
 <87bl7fozxi.fsf@mid.deneb.enyo.de>
 <23679a28-5986-0af2-4d98-7de68ed0deec@jguk.org>
 <53b3666b-d200-ef97-b050-cc38669c61cd@gmail.com>
 <b6fccca1-6e2b-fb20-d9d6-9df94cd3f05f@gmail.com>
 <564825ed-1e1f-b344-da35-1b83c551ed5f@jguk.org>
 <b71170df-7c6b-4582-c3d1-84b811fe5259@gmail.com>
 <5566b180-1333-d73b-22ee-6c6d32053921@jguk.org>
 <feb6c15d-b242-83fc-c58d-2ebfbcd4f2bd@gmail.com>
 <20210708234929.GU1583@gate.crashing.org>
 <3ddd0291-04d2-b35a-ce81-034bb0d9392a@jguk.org>
From:   "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Message-ID: <fbd62475-fa04-d26e-7d58-bc96180f7e4c@gmail.com>
Date:   Fri, 9 Jul 2021 16:17:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <3ddd0291-04d2-b35a-ce81-034bb0d9392a@jguk.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jonny, Segher,

On 7/9/21 3:54 PM, Jonny Grant wrote:
> Yes, this could work. But it does rely on programmer typing it like that every time... Maybe an inline function better.

I agree on that.

> 
> inline size_t safestrlen(const char * s) {return s?strlen(s) : 0}
> 
> Perhaps there are too many email addresses on this cc list now.
> 
> I'd prefer a Annex K of C11 style function ISO/IEC TR 24731-1 for strlen() - but there isn't one such as strnlen_s.

Please, consider not calling some function safesomething() or similar, 
as it isn't 100% safe.  It's like calling some thing "the new X".  How 
will you call the next version?  "the nova X"? And the next? "the 
supernew X"?

As I said before, unsigned types are unsafe, you may want to accept it 
or not, but they are.

Now, the day you realize that and develop an even safer function that 
doesn't use unsigned size_t, what will you call it?  supersafestrlen()?

Use names that define your functions as closely as possible.

> 
> 
> On 09/07/2021 00:49, Segher Boessenkool wrote:
>> wherever you need it.  If a function name isn't self-explanatory, and

Agree on this

>> even *cannot* be, your factoring is most likely not ideal.  Code is
But not on this.

You could call it strlennull(), that is, a strlen() that special-cases 
NULL.  I find it a good enough name, as long as you document your function.

It saves the problem of repeating yourself every time.

>> primarily there for humans to read, it should be optimised for that.
>>

Agree on this again, but I think the following is readable:

len = strlennull(maybenull);


Regards,

Alex


-- 
Alejandro Colomar
Linux man-pages comaintainer; https://www.kernel.org/doc/man-pages/
http://www.alejandro-colomar.es/
