Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DD38C7A2470
	for <lists+linux-man@lfdr.de>; Fri, 15 Sep 2023 19:17:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235340AbjIORRY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 15 Sep 2023 13:17:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235529AbjIORRP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 15 Sep 2023 13:17:15 -0400
Received: from omta002.cacentral1.a.cloudfilter.net (omta002.cacentral1.a.cloudfilter.net [3.97.99.33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 893EF83
        for <linux-man@vger.kernel.org>; Fri, 15 Sep 2023 10:17:09 -0700 (PDT)
Received: from shw-obgw-4003a.ext.cloudfilter.net ([10.228.9.183])
        by cmsmtp with ESMTP
        id hAYfqUf3o6NwhhCRIqpVPk; Fri, 15 Sep 2023 17:17:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1694798228; bh=9bOzRG4sDkbH5jpCnbsLiqgop+Dl/bIuxUnha4CXPLM=;
        h=Date:Reply-To:Subject:To:Cc:References:From:In-Reply-To;
        b=ZQ4OYkwqDNatyowNkmL8KkJtu2navcQ6CrXEj5V4D5jGxySQ5OxlLSak5wfqJopIm
         sIOzODxVU0JxW26ArzA/ryMYJmavhynzvSHDXSX2U++A9TFcRMpzYRwFDdv+CRCPfq
         6GndwXz1ANodshtmY+WyO/i65+85SP2NrRZCIaF15uDObeyqU2zSA/dCC46zLuFZ7U
         uRmx7XDabC1msNlI3CcGHxznGvHiGYoBzubp9pXi21n2exrXQFDJhgOq9gr+L5ULKR
         xSgfEzuBfbHxba7+aqZQWBU+y57ikBV0Wn8iDhxPCILwRhSOPUNo3ozCvheY/z6fDu
         ALKS7MQme8tmw==
Received: from [10.0.0.5] ([184.64.102.149])
        by cmsmtp with ESMTP
        id hCRHqrZWocyvuhCRHqSuTK; Fri, 15 Sep 2023 17:17:08 +0000
X-Authority-Analysis: v=2.4 cv=VbHkgXl9 c=1 sm=1 tr=0 ts=65049194
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=IkcTkHD0fZMA:10 a=VwQbUJbxAAAA:8 a=NEAV23lmAAAA:8 a=MEjK9-KKAAAA:8
 a=Cpv8kNIAnbvR5LgV7cIA:9 a=QEXdDO2ut3YA:10 a=AjGcO6oz07-iQ99wixmX:22
 a=wDCLW6yMUrMVbYbmd6V3:22
Message-ID: <6b7e39fe-9f78-ffd3-b19e-e85211c79b1f@Shaw.ca>
Date:   Fri, 15 Sep 2023 11:17:07 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Reply-To: linux-man <linux-man@vger.kernel.org>
Subject: Re: POSIX manual pages
Content-Language: en-CA
To:     linux-man <linux-man@vger.kernel.org>
Cc:     Brian.Inglis@Shaw.ca, Alejandro Colomar <alx@kernel.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Eric Blake <eblake@redhat.com>,
        Geoff Clare <gwc@opengroup.org>,
        Andrew Josey <ajosey@opengroup.org>
References: <25806cfb-8845-e4d4-6c18-6b02cb8c92ab@kernel.org>
 <0ABD21B4-4E03-4EE0-9F6D-D04CDDF00260@opengroup.org>
 <ab297c03-412d-45df-8d7b-6f5223327694@kernel.org>
 <b3f8edc2-aec4-e0e9-e5c9-785183e422ec@Shaw.ca>
 <faade241-51dd-4982-85a8-7729f860f07c@kernel.org>
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
Organization: Inglis
In-Reply-To: <faade241-51dd-4982-85a8-7729f860f07c@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfFdHLSAl0VCVoDTTqO3Xr9uYYyYfQy9F/riYtEIgLQOdI4WZ7WnVkn3LO7ZhJ/c9ZTy8/sBCOd4sutnrtEs93ZT7KgojaXAoKJkYWQBtMQFDPB6TlUyq
 IFt7egJKirVDkn9tSMliPMg/Y54fZlZvD4dV83MzOQ538RqrvEz2Z0HLYNPAZCuimqUqNG2h8twcxNV9hcl5i5kYFlU3xuGVd7FbUxXhMMzH9aE8lJi4Jqci
 bZjoZH1UMdM9JZ+OaUVpbfynh1/hJYAyXItMc2ATh8fkTR0xrS3xvNRjVxcFgxCsNfbG3ii4nUQBPNqWOr8pIVbloP8cJyfXgIGZweh2KBkvQ4HV4tSBzcMb
 D/bk0jd32JIRF2FLMflNHikya4tFPQ==
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2023-09-13 15:37, Alejandro Colomar wrote:
> Hi Brian,
> 
> On 2023-09-13 20:09, Brian Inglis wrote:
>> On 2023-09-13 10:15, Alejandro Colomar wrote:
>>> Hi Andrew,
>>>
>>> [I reordered your answer for my response.]
>>>
>>> On 2023-09-05 14:34, Andrew Josey wrote:
>>>>
>>>> hi Alejandro
>>>>
>>>> Apologies for the delay.
>>>
>>> NP
>>>
>>>>
>>>> Are you in touch with Michael Kerrisk?
>>>
>>> Nope.
>>>
>>>> It also appeared in discussions with Michael in 2020, that he had a way to convert the source format to man page format.
>>>
>>> Yep, this is probably "the way":
>>>
>>> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages-posix.git/tree/posix.py>
>>>
>>>> In the past we have worked with him and made a permissions grant - 
>>>> which outlines the terms we are able to grant — these are limited by
>>>> the copyright holders.

>>> I understand.  Would it be possible to suggest the copyright holders opening a
>>> little bit more?  The C++ standard seems to be more open (it has a public git
>>> repository with the source of the drafts) [1].  Maybe POSIX could do something
>>> similar? It would make contributions to the man-pages-posix project easier,
>>> as contributors would be able to test the script with the original sources;
>>> instead of just blindly trying something, and asking the maintainer to try it
>>> with the secret sources.
>>>
>>> [1]:  <https://github.com/cplusplus/draft>

>> Perhaps you could request terms allowing you to maintain your own downstream
>> repo(s) of the *generated* man pages,

> This does exist: <https://git.kernel.org/pub/scm/docs/man-pages/man-pages-posix.git/>
> Although it would be nice to have the terms be explicitly stated in the repository.

Already there in POSIX-COPYRIGHT?

>> as you do of the linux man pages @ alejandro-colomar.es & git.kernel.org?

> And I have a clone at <http://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages-posix.git/>

>> There would need to be a COPYRIGHT/COLOPHON disclaimer about content issues to
>> be addressed to the Austin group, and man page formatting issues to a posix-man
>> list, if they are or you want to keep them separate, and kernel.org is agreeable
>> to hosting a vger./lore.kernel.org posix-man list and git.kernel.org repo?

> This section also exists:
> 
> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages-posix.git/tree/man-pages-posix-2017/man3p/printf.3p#n24>

>> There are unlikely to be man page changes issued between releases (or released
>> between issues?).

> But I don't want to maintain the generated man(7) pages.  I want to be able to:
> 
> -  Contribute directly to the POSIX source code.

The Austin group has their own mailing list, bug tracker, process for tracking 
defect reports, handling their formatting and content issues, and a sometimes 
prolonged timeframe for doing so.

You can only be responsible for formatting POSIX/SUS/Open Group content in a 
compatible manner.

> -  Maintain the translation script.
> 
>     Alternatively, I'd like to make groff(1) be able to translate files written
>     in any macro package into roff(7), but that's either hard or impossible.
>     Branden, do you regard it as hard or as impossible?  Is the same answer true
>     for a groff(1)-like program written from scratch with this in mind?  :)
> 
> -  Remove the man(7) generated pages from the repo.  One should build the pages
>     with make(1), but they should not be part of any repository.

If there are any formatting issues, that is what you have to maintain.

>     I'd like to include the POSIX source code as a git submodule, or something
>     similar.  Or maybe have the man-pages-posix repo be a fork of it.

That may be a good way to access the upstream, but the file names look to me 
like SCCS edit temp files, so perhaps a strictly POSIX system using only 
strictly POSIX tools, on which they can "eat their own dog food"?

As your upstream content appears from the sample shown by Eric and the 
conversion in posix.py to possibly be a mix of mm and mdoc macros and variants, 
it might be easier to generate POSIX pages in mandoc/groff_mdoc format, if you 
could live with that, and maintain those.

[That is how the other main genre of (BSD) distros do man pages, and most 
systems have a mix from BSD derived packages (and those who prefer mandoc to 
man) e.g. dash(1), dejagnu(1), etc.]

-- 
Take care. Thanks, Brian Inglis              Calgary, Alberta, Canada

La perfection est atteinte                   Perfection is achieved
non pas lorsqu'il n'y a plus rien à ajouter  not when there is no more to add
mais lorsqu'il n'y a plus rien à retirer     but when there is no more to cut
                                 -- Antoine de Saint-Exupéry
