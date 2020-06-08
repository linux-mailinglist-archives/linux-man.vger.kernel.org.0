Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9CD6D1F1C5E
	for <lists+linux-man@lfdr.de>; Mon,  8 Jun 2020 17:46:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730327AbgFHPqo (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 8 Jun 2020 11:46:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725975AbgFHPqn (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 8 Jun 2020 11:46:43 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E6EEC08C5C2
        for <linux-man@vger.kernel.org>; Mon,  8 Jun 2020 08:46:43 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id r9so3731wmh.2
        for <linux-man@vger.kernel.org>; Mon, 08 Jun 2020 08:46:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=J4aWrAdTXAF883PVRk9xMHxl2ms+CqX4mMfwSIrxkNQ=;
        b=GH14Ew9kLtwJCT63Vr4EjvmPVlVmJYHPB2slfFnSPfYBlOlDkuUc+YKAyupDmAK5T0
         3UsWRi0uU40iQE9x1odVTze/tk4dPXJ9FrtLCHNrEUQOmvxD4wARPwBNCgRzmPUid0LV
         si0bCbhG+nM5M5r62JsiTyF0l05MGL/2Zo9ZJc3bwfCtVYVz+Lq1eSNcaC9a21aGN2Fw
         6v1grlgs+XAjEsrzqbpygbiNpy5abwnOroafp4r90F7UdOXXtVr32jsO7DiO4wogAVfX
         2v8caDNzhPNfysULnptQpRhHTkSOjrSDdz+yeWsTSSrPatsAZyCNhuD+/y0IGvQfv/Mx
         EAbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=J4aWrAdTXAF883PVRk9xMHxl2ms+CqX4mMfwSIrxkNQ=;
        b=mNtJ9OmuhoHzaK+v9T78teIRY0t04E6ViB9G6rqBqyvbdz96hzmMv2V1c2tsKb71w7
         KQJ6aaY2SKvrhd2eo0N21LH+7aP4jiGzmUBu2NVJzQcdrZ1fcEbFUCbGFsMO57MyKn23
         M5caGiOFJn/AybLPuRrjnVomIWpDBO+IvvMyuAkm2Enbrj0coNiRRV2bKTWm0WMXip2+
         XCVWIMi2rSIAdOw+1pv8lEZY8kDTP/sBUMkIEAZQzmItg8gtGcpeLgmtRcJSW0LL0YZO
         rd/X3g0Peg7VCMApUYniCYsCPnpJ/sH0kbPW/FlvrxuiVSx6aOg+WUfG19v0OaNRmx5D
         ySGg==
X-Gm-Message-State: AOAM5314Jlhm8SpCY7XTIDc3NKaRlFSRAZikDMFJ+REj6F9xo6udkiww
        Ikjd32xfxEI9p2wjQi8+j7M=
X-Google-Smtp-Source: ABdhPJy7cfIHPnQQ/C8P7mp7nDV0Y67TN8sFwhgy6cjWI+vC5qRQRdu4w74Ss1HuuexqbnXFO7jPkA==
X-Received: by 2002:a05:600c:2256:: with SMTP id a22mr23166wmm.18.1591631201818;
        Mon, 08 Jun 2020 08:46:41 -0700 (PDT)
Received: from [192.168.178.63] (x5f734b84.dyn.telefonica.de. [95.115.75.132])
        by smtp.gmail.com with ESMTPSA id q4sm23055157wma.47.2020.06.08.08.46.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Jun 2020 08:46:41 -0700 (PDT)
Cc:     mtk.manpages@gmail.com, linux-man <linux-man@vger.kernel.org>,
        Andy Lutomirski <luto@kernel.org>,
        Dave Hansen <dave.hansen@intel.com>,
        Peter Zijlstra <peterz@infradead.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Ingo Molnar <mingo@redhat.com>,
        "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
        "H. Peter Anvin" <hpa@zytor.com>, Borislav Petkov <bp@alien8.de>,
        Dave Hansen <dave.hansen@linux.intel.com>
Subject: Re: [PATCH] ptrace.2: Describe PTRACE_SET/GETREGSET on NT_X86_XSTATE
To:     Keno Fischer <keno@juliacomputing.com>,
        Andi Kleen <andi@firstfloor.org>
References: <20200518030053.GA72528@juliacomputing.com>
 <20200520011900.y4fgsiprg6evaxm4@two.firstfloor.org>
 <CABV8kRy7XTSv=hJbVSyyKPbT6US7y9AgmG5r9g8AjBJCiVSntw@mail.gmail.com>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <8b8cb10d-6d53-d54e-1034-df2cca9a5442@gmail.com>
Date:   Mon, 8 Jun 2020 17:46:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CABV8kRy7XTSv=hJbVSyyKPbT6US7y9AgmG5r9g8AjBJCiVSntw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Keno,

Any progress on a v2 patch?

Thanks,

Michael

On 5/20/20 5:30 AM, Keno Fischer wrote:
>>> +.SS The layout and operation of the NT_X86_XSTATE regset
>>
>> Should rather have a complete table of NT_* entries first. The others
>> can be dummies for now.
> 
> Oh boy, I'm not sure my man-page-formatting-fu is up to the task of
> creating a nice looking table :).
> Michael, can you help?
> 
>>> +Obtain the kernel xsave component bitmask from the software-reserved area of the
>>> +xstate buffer. The software-reserved area beings at offset 464 into the xsave
>>
>> It would be better to put some struct defining this into the kernel uapi
>> and then reference that instead of magic numbers.
> 
> We have user_xstateregs in the kernel, but that's not in the uapi.
> I suppose we should move it, given that it is exposed here.
> 
>>> +buffer and the first 64 bits of this area contain the kernel xsave component bitmask
>>> +.IP 2.
>>> +Compute the offset of each state component by adding the sizes of all prior state
>>> +components that are enabled in the kernel xsave component bitmask, aligning to 64 byte boundaries along the way. This
>>> +format matches that of a compacted xsave area with XCOMP_BV set to the
>>
>> The sizes of these areas should probably also be in the uapi include
> 
> Yes, that seems like a good idea.
> What's the policy on helper functions in uapi includes?
> Can we have helper functions that given a buffer and the kernel xstate mask,
> does this computation for you?
> 
>>> +kernel component bitmask. Further details on the layout of the compacted xsave
>>> +area may be found in the Intel architecture manual, but note that the xsave
>>> +buffer returned from ptrace will have its XCOMP_BV set to 0.
>>
>> The note seems disconnected. You'll have to explain it here.
> 
> Ok, I'll elaborate. The point I wanted to make is that even though the buffer
> looks compressed, XCOMP_BV is 0, so it's not a valid compressed buffer
> that can be xrstor'ed.
> 
>>> +Thus, to obtain an xsave area that may be set back to the tracee, all unused
>>> +state components must first be re-set to the correct initial state for the
>>> +corresponding state component, and the XSTATE_BV bitfield must subsequently
>>> +be adjusted to match the kernel xstate component bitmask (obtained as
>>> +described above).
>>
>> I wonder if we shouldn't just fix the kernel to do this properly on its
>> own.  Presumably it won't break any existing user space.
>>
>> It seems more a bug than something that should be a documented ABI.
> 
> I'd be happy to see this interface improved, since I do think it wasn't quite
> intended to work this way when originally conceived (i.e. originally, before
> the init optimization and before we had flags that turn off various xstate
> components resulting in a compressed buffer).
> 
> As I said in the other email thread, I think it would be reasonable to change
> the offsets to always be non-compressed, which would at least make this
> a normal xsave buffer. No ptracer that I looked at knows that this buffer
> can be compressed, so changing the kernel behavior here would actually
> make it closer to what existing userspace expects ;).
> 
> I'm not sure what to do about the getregset/setregset mismatch. On the one
> hand it's pretty bad, but on the other hand, I'm not really sure what to do
> about it, short of introducing a different NT_X86_* constant that behaves
> differently.
> 
>>> +
>>> +The value of the kernel's state component bitmask is determined on boot and
>>> +need not be equivalent to the maximal set of state components supported by the
>>> +CPU (as enumerated through CPUID).
>>
>> Okay so how should someone get it? Looks like that's a hole in the
>> kernel API that we need to fix somehow.
> 
> The cpuid enumerated value does still represent a maximum so that can be used
> to size the buffer and the actual value can then be read from the software saved
> area as described here. Is that what you were asking? Not sure I understood
> correctly.
> 
> 
> 
> Keno
> 


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
