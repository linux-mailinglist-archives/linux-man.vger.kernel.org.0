Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9006D69BB71
	for <lists+linux-man@lfdr.de>; Sat, 18 Feb 2023 19:41:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229595AbjBRSl2 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 18 Feb 2023 13:41:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42618 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229472AbjBRSl2 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 18 Feb 2023 13:41:28 -0500
Received: from omta002.cacentral1.a.cloudfilter.net (omta002.cacentral1.a.cloudfilter.net [3.97.99.33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3842012BE2
        for <linux-man@vger.kernel.org>; Sat, 18 Feb 2023 10:41:27 -0800 (PST)
Received: from shw-obgw-4004a.ext.cloudfilter.net ([10.228.9.227])
        by cmsmtp with ESMTP
        id TPxgpWdQUjvm1TS9GpSEUF; Sat, 18 Feb 2023 18:41:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1676745686; bh=f+lI6eyZuIurggtJ6V8fV4zLe2uOicTUREsaFCB08Y4=;
        h=Date:Reply-To:Subject:To:Cc:References:From:In-Reply-To;
        b=rZGwVNq/NYpghwFLKVX37SFjM1IQImrNZtt6PQAScxSK7HiLw+SAj8RERzgdHrKA6
         Ehm2ruY0iNpj56dR08MPFgJJT3qnGbF/kGw3xzLjgscH7xqNJ1olyXPyv/DnT0QKer
         tyj0FSRaZsMGEv6bm5NGqt5erpAfs8aV+a8RBwhTs00tCoKIdFQ3u09gdLSNc2FXxu
         ZFc7+29riLXN6JZr7sejyd9YWZxziZYIqxPFlDHAlNL6rF/eyBNaKr9rVCGRC3ECJx
         DWgBXSD3iPDatR3naeaCK2jBZjpyClDbpXzdvolboWHVQ0LOpPufXzBeZRB2DT1IXt
         ggJ8LMUE9Z72g==
Received: from [10.0.0.5] ([184.64.102.149])
        by cmsmtp with ESMTP
        id TS9Fp0kGR3fOSTS9FpkZiM; Sat, 18 Feb 2023 18:41:26 +0000
X-Authority-Analysis: v=2.4 cv=J8G5USrS c=1 sm=1 tr=0 ts=63f11bd6
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=IkcTkHD0fZMA:10 a=LFdp0Ed8Fmkg6W3903gA:9 a=QEXdDO2ut3YA:10
Message-ID: <aed5a585-5a3f-abd9-69bc-4a8d2f327b9c@Shaw.ca>
Date:   Sat, 18 Feb 2023 11:41:25 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Reply-To: Brian.Inglis@Shaw.ca
Subject: Re: [PATCH v3 5/6] man2/chmod.2: add C digit separators to clarify
 POSIX feature release dates and long numeric digit strings
Content-Language: en-CA
To:     Tom Schwindl <schwindl@posteo.de>
Cc:     Linux Man Pages <linux-man@vger.kernel.org>,
        Alejandro Colomar <alx.manpages@gmail.com>
References: <cover.1676489380.git.Brian.Inglis@Shaw.ca>
 <4c53ab820fbbeb3f3170f8d1d81a14713f256dd9.1676489381.git.Brian.Inglis@Shaw.ca>
 <804a2b6d-e1d7-3d23-7768-d0ee4933dd68@gmail.com>
 <CQLVH6DLAYFQ.T4VQOGPPW8CP@morphine>
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
Organization: Inglis
In-Reply-To: <CQLVH6DLAYFQ.T4VQOGPPW8CP@morphine>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfFrz7/ufB6rzVmeT9UkRmmLk2oxHE6Az6T3hr+7Dyc9D/PifG+85pSrGElf+ExPIF9ymclpE6djcyJR3wSw0/1MK0wuMHJJ/nOw8VsFlF1g7cIRoRr/s
 6JkE8ZEYJKgghTRarPmA3tY0ujrIo6PE0bsCre6GKpqH1fr8Xj1+Ot2McxUBuedN9OJf9dOH6FzUh+F/0LodkE56EMBbkf+nnm3SaNvaIqO1uQ/+GrLKcGLN
 aJuDQyqbkdnvt7vYLscvLDCNCz3W61kVwVoiCR3P++M=
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2023-02-18 10:42, Tom Schwindl wrote:
> On Wed Feb 15, 2023 at 10:10 PM CET, Alejandro Colomar wrote:
>> On 2/15/23 21:17, Brian Inglis wrote:
>>> ---
>>>   man2/chmod.2 | 30 +++++++++++++++---------------
>>>   1 file changed, 15 insertions(+), 15 deletions(-)
>>>
>>> diff --git a/man2/chmod.2 b/man2/chmod.2
>>> index 8b5db74ed7e3..674b54368314 100644
>>> --- a/man2/chmod.2
>>> +++ b/man2/chmod.2
>>> @@ -37,7 +37,7 @@ Feature Test Macro Requirements for glibc (see
>>>   .nf
>>>   .BR fchmod ():
>>>       Since glibc 2.24:
>>> -        _POSIX_C_SOURCE >= 199309L
>>> +        _POSIX_C_SOURCE >= 1993\[aq]09L
>>
>> Please keep all POSIX dates in a single separate patch
>> (unless there's another reason that I'm not seeing).
> 
> As long as I'm not completely lost, those values are often passed on the command
> line via `-D`. Wouldn't a random \[aq] interfere with shell quoting and result in
> hard to find bugs and unexpected bahavior? So is it really a good idea to present
> those values in such a way in the manpage? Or am I simply underestimating the
> intelligence of the readers? :-)

Hi Tom,

As \[aq] renders as aprostrophe/single-quote "'" the value can be "1993'09L" 
quoted if required.

I would expect these values to most often be set and tested in headers and 
sources, mainly from systems, compilers, or libraries, to indicate support of 
certain features or enable their interfaces to be defined.

I would expect these to be rarely set nowadays in hopes of enabling otherwise 
disabled features required to build a package or application, more likely to 
change or disable undesired interfaces, and instead expect them to be configured 
by compiler options e.g. -std=gnu23 and/or in library headers, and tested by 
application or package sources.

-- 
Take care. Thanks, Brian Inglis			Calgary, Alberta, Canada

La perfection est atteinte			Perfection is achieved
non pas lorsqu'il n'y a plus rien à ajouter	not when there is no more to add
mais lorsqu'il n'y a plus rien à retirer	but when there is no more to cut
			-- Antoine de Saint-Exupéry
