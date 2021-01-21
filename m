Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 365C82FECF5
	for <lists+linux-man@lfdr.de>; Thu, 21 Jan 2021 15:36:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728126AbhAUOeC (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 21 Jan 2021 09:34:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53484 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731163AbhAUOdx (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 21 Jan 2021 09:33:53 -0500
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1FB9BC061756;
        Thu, 21 Jan 2021 06:33:12 -0800 (PST)
Received: by mail-ej1-x62a.google.com with SMTP id by1so2930982ejc.0;
        Thu, 21 Jan 2021 06:33:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=cc:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=QsNjptOAVVYO9KiOg4/fiGX/bp8DDMERuPTaOc1PYl4=;
        b=ow8xPMdwgtn9FONEslThnqFudP2qrgDXV6Eq0QdubgrDm3UIGl6bsC6S1WlpjpF1Gk
         lXg0cWSIxDldfZVV2tgqRTVqfnGUyLotoHmfJJvkxFbSlEbVsKy3fTrZi7yMUUv0iQE7
         M9IHj8+Eh2x242mWt/5oK1twXYu/yiXy1M/JEtdrRGoj3B1PrTBT8LYhozfnqi+4G1ay
         bsKWv7G29WBE8365frNQTQnHmsQ6R6vg8jlOdFwtHs3djJQTZEW5AymVeNxH08IeT9TY
         iE9UDuw83c5tejEbSNYAynQh8QhzLOFGioJnB8TwJoRlLGKHW7gpHBErWp2N3ZvrFrEW
         DK4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:cc:subject:to:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=QsNjptOAVVYO9KiOg4/fiGX/bp8DDMERuPTaOc1PYl4=;
        b=uGJSZU4XbkwBXDSjm8u3/fKrJNDDcc0o7mJBcgnv94Lq/59+xvfbBa6alLa8Nmulhk
         vLkdc4hjQtZa73e9ngf8O18Kb9ELjQJNolzUOPqApYwKVnazzyn0UCAIfHiszBVoRJK4
         vus+Ley/VsVAnoRexpEDyZ9ugkmIRuD+EwBky4+jZhQZX6GWpc+1wJTHOoPhIHkAJaq1
         /JWWucDosSSZoRKtjSx+w+JmwPS+jYqWLUbnPIP5qErGFlSj68n9LGJniJhkrbAdqpoj
         2+NgB+cg1aF+uWMyTp/s/pgfVanaAWlzYyt54mOCCCzPmAN94/dRVilgcBe//dPmNfOH
         j4FA==
X-Gm-Message-State: AOAM533vdVIKUDPEIMSLAWDym9wwlJLw378oCC8/koWSOKrg0uMtSk/7
        MK6XmXaIFjD3h+3emBMDxhsSDrjiDh8=
X-Google-Smtp-Source: ABdhPJzuVH6lGiFyFcIa5H+I+Wjivb4opQd1CZJdxVouqjFKgPsSm3gAUukqaKwhFDdQQCo5GgcMmw==
X-Received: by 2002:a17:906:1712:: with SMTP id c18mr9724470eje.417.1611239590729;
        Thu, 21 Jan 2021 06:33:10 -0800 (PST)
Received: from ?IPv6:2a02:2455:e0:e000:3005:efab:c884:ced0? ([2a02:2455:e0:e000:3005:efab:c884:ced0])
        by smtp.gmail.com with ESMTPSA id x17sm2774395edd.76.2021.01.21.06.33.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jan 2021 06:33:07 -0800 (PST)
Cc:     mtk.manpages@gmail.com, linux-man@vger.kernel.org,
        linux-sgx@vger.kernel.org, dave.hansen@linux.intel.com
Subject: Re: [PATCH v2] sgx.7: New page with overview of Software Guard
 eXtensions (SGX)
To:     Jarkko Sakkinen <jarkko@kernel.org>
References: <20201222004108.49159-1-jarkko@kernel.org>
 <16f13aee-a966-ecd4-6f08-d9d7b0e869f3@gmail.com>
 <YAli9syKOwVTYeh6@kernel.org>
From:   "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Message-ID: <cb04f65c-7598-e5c0-6aa9-421b8e37c8db@gmail.com>
Date:   Thu, 21 Jan 2021 15:33:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <YAli9syKOwVTYeh6@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Jarko,

On 1/21/21 12:18 PM, Jarkko Sakkinen wrote:
> On Tue, Dec 22, 2020 at 07:53:24PM +0100, Michael Kerrisk (man-pages) wrote:
>> Hi Jarkko
>>
>> Thanks for revising the patch. I have many comments.
>> I must admit that I'm struggling to understand much here,
>> and so I'll probably have more comments on a future draft.
>> Could you please revise in the light of my comments
>> below (and hopefully the revisions will help me better
>> understand the topic when I look at the next draft).
> 
> I'm truly sorry of this incredibly long latency.

No problem. I appreciate your detailed notes below.

> I put the man page as my top priority up until it is good enough to be
> merged.
> 
>> On 12/22/20 1:41 AM, Jarkko Sakkinen wrote:
>>> Signed-off-by: Jarkko Sakkinen <jarkko@kernel.org>
>>> ---
>>> v2:
>>> * Fixed the semantic newlines convention and various style errors etc.
>>>   that were reported by Alenjandro and Michael.

s/Alenjandro/Alejandro/  :-)

>>> * SGX was merged to v5.11.
>>
>> I think we better have a VERSIONS section in the page noting that this
>> feature is supported since Linux 5.11.
> 
> I added:
> 
> .SH VERSIONS
> The SGX feature was added in Linux 5.11.
> 
> I also changed the copyright year to 2021.
> 
>>> Link: https://lore.kernel.org/linux-sgx/f6eb74cf-0cb6-0549-9ed3-3e3b2af23ad1@gmail.com/
>>> Link: https://lore.kernel.org/linux-sgx/f6eb74cf-0cb6-0549-9ed3-3e3b2af23ad1@gmail.com/
>>>  man7/sgx.7 | 218 +++++++++++++++++++++++++++++++++++++++++++++++++++++
>>>  1 file changed, 218 insertions(+)
>>>  create mode 100644 man7/sgx.7
>>>
>>> diff --git a/man7/sgx.7 b/man7/sgx.7
>>> new file mode 100644
>>> index 000000000..5e8d3d959
>>> --- /dev/null
>>> +++ b/man7/sgx.7
>>> @@ -0,0 +1,218 @@

[...]

>>> +Each of them can hold a single hardware thread at a time.
>>
>> "them" is unclear. Do you mean "Each of the entry points" 
>> or "Each enclave"?
> 
> TCS pages are a bit like locks. You reserve one and its held up until
> you leave the enclave address apce. It also tells you where to start
> execution.
> 
> I wrote a wrote a new paragraph that introduces ENCLU and tries
> to explain this in length in the v3 of this patch.

Okay.

>>> +While the enclave is loaded from a regular binary file,
>>> +only the threads inside the enclave can access its memory.
>>> +.PP
>>> +Although carved out of normal DRAM,
>>> +enclave memory is marked in the system memory map as reserved and is not
>>> +managed by the Linux memory manager.
>>> +There may be several regions spread across the system.
>>
>> I presume you mean "There may be several enclave regions"? I think it
>> would be clearer to say that.
> 
> Not sure.
> 
> So the thing is that there is reserved memory, consider it as a bit like
> VRAM. This memory can be oversubscribed. Then when you create an enclave
> you consume these pages. When running out of them, the kernel swaps pages
> from enclaves across the system currently based on a trivial FIFO policy.
> So these regions define kind of the memory pool for all enclaves running in
> the system.

SO, is there some suitable change for the manual page text?

>>> +Each contiguous region is called an Enclave Page Cache (EPC) section.
>>> +EPC sections are enumerated via CPUID instruction.
>>
>> BY "CPUID instruction" do you mean the interface described in the
>> cpuid(4) manual page? If yes, I think you better include a reference 
>> to that page.
> 
> Kernel uses a set of CPUID leaves to enumerate the available EPC.  The base
> leaf SGX specific functions is EAX=0x12, and enumeration leaves for EPC
> start from ECX=2 and onwards.
> 
> This CPUID is documented in the pages 313-14 of the Intel SDM:
> 
> https://software.intel.com/content/www/us/en/develop/download/intel-64-and-ia-32-architectures-sdm-combined-volumes-2a-2b-2c-and-2d-instruction-set-reference-a-z.html
> 
> And its usage is implemented in sgx_page_cache_init() internal function:
> 
> https://elixir.bootlin.com/linux/v5.11-rc4/source/arch/x86/kernel/cpu/sgx/main.c#L664
> 
> I'll just remove that sentence. I don't think it's relevant here.
>
Okay.

>>> +These regions are encrypted when they leave the Last Level Cacche (LLC).
>>
>> Maybe better: s/These regions/EPC regions/ ?
>>
>> s/Cacche/Cache/
> 
> I changed this to
> 
> "The pages belonging to the EPC sections are encrypted when they leave the
> Last Level Cache (LLC)."

Okay.

[...]

>>> +.SS Enclave management
>>> +.PP
>>> +An enclave's life-cycle starts by opening
>>> +.I /dev/sgx_enclave.
>>
>> Remove the "." at the end of the preceding line.
> 
> Fixed.
> 
>>> +and ends once all the references to the opened file have been closed.
>>
>> I presume here that you mean to say that the lifecycle ends
>> when all duplicate file descriptors that refer to the open
>> file description (i.e., 'struct file') have been closed, right?
>> If that's correct, please modify the text. If it's not correct,
>> then I don't understand the text, and so some other fix is
>> probably needed.
> 
> I changed this to:
> 
> "and ends when all the file descriptors referring to the opened file
> have been closed."

Okay.

[...]

>> You suddenly use the term "ENCLS" here with no previous introduction or
>> definition.
> 
> It's a mnemonic for x86 opcode. Not exactly sure how to improve.

I think then it would be helpful to write something like "the x86
ENCLS opcode [or instruction]". That would help the less knowledgeable
reader orient themselves bit.

>>> +managing enclave memory,
>>> +and the ioctl interface provides a wrapper for it.
>>> +.PP
>>
>> [I find the next paragraph very hard to understand. So I'm going
>> to ask lots of silly questions...]
> 
> Thank you, I appreciate these questions. This is somewhat complicated
> topic, and when you've upstreamed a patch set literally for years, you
> become blind for many things.
> 
>>> +Enclave construction starts by calling
>>> +.B SGX_IOC_ENCLAVE_CREATE,
>>> +which takes in the initial version of SGX Enclave Control Structure
>>
>> What do you mean by "takes in"?
> 
> It's the 'src' field in struct sgx_enclave_create:
> 
> https://elixir.bootlin.com/linux/v5.11-rc4/source/arch/x86/include/uapi/asm/sgx.h
> 
> This address is given to ENCLS[ECREATE], which copies to an EPC
> page. It's the root of the enclave, not visible in the actual
> address space of the enclave. It contains data such as the base
> address and size of the enclave addree space.
> 
> I changed "takes in" to "copies".

Okay.

>>> +(SECS).
>>> +SGX Enclave Control Structure (SECS) contains the description of the
>>
>> s/SGX Enclave Control Structure (SECS)/The SECS/
>>
>> This all made weird because the current terminology includes
>> "Structure" in the name.
> 
> I agree. It's also asymmetrical to TCS. Either TCS should be
> STCS or SECS should be ECS. I'm just using the naming convetions
> from the Intel software developement manual.

I see :-/.

>> And yes, "the SECS" reads weirdly. What I'd really like to say
>> is "the SECS structure" or (even better) "the SEC structure".
>> Is either of those acceptable? (This would imply global changes 
>> in the following text.)
> 
> I'd still stick to the terminology that is common to what is used
> in the SDM and also in all the documentation, academic paper etc.
> Essentially, all the literature on SGX uses the same terminology.
> Drifting from that would be IMHO even more confusing.

Okay -- I'll see what I think of this when I review V3.


>>> +enclave.
>>> +The ioctl calls ENCLS[ECREATE] function,
>>
>> What is "ENCLS[ECREATE] function"? This needs some explanation.
> 
> We have ENCLS, which x86 opcode, and you EAX id's of various functions that
> is contains. One of them is ECREATE.
> 
> I rephased it as:
> 
> "The ioctl calls the ECREATE subfunction of ENCLS,"

Maybe s/ENCLS/the ENCLS opcode/?

[...]

>> But what is this "ENCLU[EGETKEY] function"? Where does it come from?
>> And what is ENCLU?  I think some more detail is needed here.
> 
> I refined this a lot for v3. I hope it makes a bit more sense. I introduce
> ENCLU early on in the when I talk about TCS in the new version of the
> patch.

Okay.

[...]

>>> +.PP
>>> +The vDSO function calling convention uses the standard RDI, RSI, RDX,
>>> +RCX, R8 and R9 registers.
>>> +This makes it possible to declare the vDSO as a C prototype,
>>> +but other than that there is no specific support for SystemV ABI.
>>
>> What do you mean by "SystemV ABI"?
> 
> I'm referring to the calling convention of x86-64 psABI.
> 
> I rephrased this as:
> 
> "but other than that there is no specific support for the x86-64
> calling convention,"

Okay.

>> Thanks,
>>
>> Michael
> 
> Thank you!

You're welcome. I doubt that I will truly understand this stuff 
by the time we're done, but I hope to help you beat the page into
better shape :-).

Thanks,

Michael


-- 
Michael Kerrisk
Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
Linux/UNIX System Programming Training: http://man7.org/training/
