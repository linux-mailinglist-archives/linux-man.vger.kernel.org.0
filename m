Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DA23A77FEE3
	for <lists+linux-man@lfdr.de>; Thu, 17 Aug 2023 22:12:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354813AbjHQUME (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 17 Aug 2023 16:12:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1354841AbjHQULz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 17 Aug 2023 16:11:55 -0400
Received: from omta002.cacentral1.a.cloudfilter.net (omta002.cacentral1.a.cloudfilter.net [3.97.99.33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B706235AB
        for <linux-man@vger.kernel.org>; Thu, 17 Aug 2023 13:11:51 -0700 (PDT)
Received: from shw-obgw-4004a.ext.cloudfilter.net ([10.228.9.227])
        by cmsmtp with ESMTP
        id WaVSq03uZ6NwhWjLSqaBFv; Thu, 17 Aug 2023 20:11:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1692303110; bh=jOuVPTAfzIRXQdd3bXaLNWHyVGzaSVha8wJ45wmxXPQ=;
        h=Date:Reply-To:Subject:To:Cc:References:From:In-Reply-To;
        b=sgdxuF6mne1IwICU6ZLz1ow/ALXShULOwAQkO3A54LLZf4PrdWlc7HBkmH4A+sp4T
         yqG784rMCAz1hlZmraxu4wzxJw+39kDxwg/gHaAeTIHpJBpkldSNJD4P58Xz3eg3dB
         PvSRjQ8fe9V2+J3ly4DS3OFU7kUff3oOPkFxofXjdUIpg4VgTQ2XoD2YDKcxSVW62N
         pbdHx0NHcndxluP1j9amv18TbzRa+Q+f77Zpg5im/nzRKU+YF1PgcDs6dIHst8j3K6
         jiEQcG4QqoWN3zViF4Vt7M/LnnTuQgZowerTP28BnSed+u7pmPGNYbMpTbcwSfuT4y
         ZsVG4G1HBvnsg==
Received: from [10.0.0.5] ([184.64.102.149])
        by cmsmtp with ESMTP
        id WjLSqKwDB3fOSWjLSq3dfv; Thu, 17 Aug 2023 20:11:50 +0000
X-Authority-Analysis: v=2.4 cv=J8G5USrS c=1 sm=1 tr=0 ts=64de7f06
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=IkcTkHD0fZMA:10 a=uZvujYp8AAAA:8 a=eeAxXx0tFbIHZ3TJ3xoA:9 a=QEXdDO2ut3YA:10
 a=E-fdvQL-zv4A:10 a=SLzB8X_8jTLwj6mN0q5r:22
Message-ID: <4921fcdb-a11a-3209-3810-dedcf9bcf458@Shaw.ca>
Date:   Thu, 17 Aug 2023 14:11:49 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Reply-To: Brian.Inglis@Shaw.ca
Subject: Re: [PATCH] man-pages-posix-2017/man1p/dd.1p: added missing
 ASCII-EBCDIC tables
Content-Language: en-CA
To:     Linux Man-Pages <linux-man@vger.kernel.org>
Cc:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Eric Blake <eblake@redhat.com>,
        Alejandro Colomar <alx@kernel.org>
References: <084cb8c0074b11327c68fb60b9c5c6238eed7df1.1691960082.git.Brian.Inglis@Shaw.ca>
 <c68f4010-e732-6519-a777-2744eb057887@kernel.org>
 <20230813222035.a5ybcqbpnzlapraz@illithid>
 <033cf8fb-5c84-d9eb-a01e-caff597a951b@kernel.org>
 <eb4161c1-6e57-a9d3-a3c3-fed5db55f004@kernel.org>
 <34ywwugg3sgxlmyrnovuh2co5qbok2dk32hug4r2drfcu3bp33@g62hj2icprgf>
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
Organization: Inglis
In-Reply-To: <34ywwugg3sgxlmyrnovuh2co5qbok2dk32hug4r2drfcu3bp33@g62hj2icprgf>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfAyycEjmAWIgeFvWcEDq2GO4ZhDFdyeLW6Ml4dWtPQJXZBbMHTNfNqB9Nlxp1/vd0lQCDnxLS9Hl6mIyUTt7jGWSEyqVrBZjLAj8ok95hXqbLIhRMWcl
 OaBtxRwOdIkKxkDI8gD37NqzwvvJ1iKd5uR51DJp0SWTh+jGDbnFe/RxuXFzj1ASBEgbZ6nB1eV0QKwLFuTOSIPxj9AMjwvHqnT6RFK4Xw0PVPDfzM/uQvyf
 2BmN40X+QUeoeEOgEzwCnbbtUJaZkXmHptzRlEJOfvmNfsaz1j8xdHiZZsnAx5HL
X-Spam-Status: No, score=-6.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2023-08-17 09:23, Eric Blake wrote:
> On Mon, Aug 14, 2023 at 12:29:23AM +0200, Alejandro Colomar wrote:
>> On 2023-08-14 00:27, Alejandro Colomar wrote:
>>> On 2023-08-14 00:20, G. Branden Robinson wrote:
>>>> At 2023-08-13T23:30:30+0200, Alejandro Colomar wrote:
>>>>> And also, I don't even have the sources, which makes things more
>>>>> complex.
>>>>>
>>>>> I wish that POSIX allowed us to have a copy of the original source
>>>>> code of the POSIX manual in the git repository.  With that, I'd find
>>>>> it more interesting to maintain the project again.
>>>>>
>>>>> I'd also like to know what's the original source code of POSIX's
>>>>> manual, because it may very well be roff(7).  If that happens to be
>>>>> true, I'd like to have access to that source, instead of the HTML.
> 
> I'm not sure if the POSIX original is quite roff, but I just confirmed
> that I have access to the repository where Issue 8 is being worked on
> (it required me to have an Open Group login, so you may not be able to
> access this page):
> 
> https://gitlab.opengroup.org/the-austin-group/sus_base/-/commits/Issue8/
> 
> I can also recommend contacting Andrew Josey (ajosey@opengroup.org -
> admin) and/or Geoff Clare (gwc@opengroup.org - most active committer
> in that project) of the Austin Group, to figure out if there is a way
> for you to get access to that repository.

Hi Eric,

I've had an OG login for a few years and some Austin Group material access, but 
can only see OG gitlab Projects, and Austin Group group, but no projects or 
subgroups, so that appears to be separately authorised - perhaps by repo and 
login or via Plato visibility level: the Mailing List appears to be Public level 
and Drafts are subject to terms.

>>>> My understanding from hermetic comments to the Austin Group mailing list
>>>> over the years is that:
>>>>
>>>> 1. they have used groff for many years (a decade or more);
>>>> 2. they don't use man(7) for their man pages (I was told this directly);
>>>>
>>>> and
>>>>
>>>> 3. they use (a customized version of) mm(7)--or I _think_ I saw someone
>>>>     say this, but I have no citation and I am not even sure it was an
>>>>     Open Group employee who claimed it.
>>>
>>> I'd love to have the ms(7) source then.  That way I would have a reason
>>> to learn ms(7).  :)
>>
>> Oops, mm(7).
> 
> Based on my quick perusal, it is indeed .mm files that form the bulk
> of the content in that repository.  For example, even if you can't
> access the repository yet, I don't think there is any problem under
> the fair use doctrine for sharing a snippet of a recent commit:
> 
> | commit 7fad34c5f734d7a54c6a5fa8124baf819c2b8de5
> | Author: Geoff Clare <gwc@opengroup.org>
> | Date:   Tue Aug 8 10:52:54 2023 +0100
> |
> |     Applied bug 1741
> |
> | diff --git a/Base/Text/Functions/getlocalename_l.mm b/Base/Text/Functions/getlocalename_l.mm
> | index 13af2a5..339bfc5 100644
> | --- a/Base/Text/Functions/getlocalename_l.mm
> | +++ b/Base/Text/Functions/getlocalename_l.mm
> | @@ -12,7 +12,9 @@ const char *getlocalename_l(int \f6category\fP, locale_t \f6locobj\fP);
> |  .sE
> |  .yE
> |  .mH DESCRIPTION
> | -The
> | +If
> | +.Ar category
> | +is not LC_ALL, the
> |  .Fn getlocalename_l
> |  function shall return the locale name for the given locale category of
> |  the locale object
> | ...
> 
>>> It would certainly be better than the HTML files.  It would be
>>> interesting to adapt the Linux man-pages build system to also support
>>> ms(7) pages.
>>>>
>>>> We fixed a bunch of bugs in GNU mm for groff 1.23.0.[1]  I wonder if
>>>> they will be cross with me about that.  Even if they didn't rely on any
>>>> erstwhile misbehavior, the source churned, some internals changed, and
>>>> if they patched the package, I wouldn't count on the patches still
>>>> applying cleanly.

Perhaps originally from AT&T 6th edition sources in mm?

>>> I promise to scrape the rage if I get a name and an email of who to talk
>>> to.  Maybe Eric can help.  :)

I've found OG and Austin Group info and docs to be freely accessible for 
personal use (not necessarily easy to navigate and find), unlike WG14 C F/DIS 
(Final/Draft Intl Std) which are (now) locked in password protected zips prior 
to ISO publication.

> I'm not forwarding this email directly, but I'm happy to be a liaison
> to connect you with other Austin Group members.

-- 
Take care. Thanks, Brian Inglis              Calgary, Alberta, Canada

La perfection est atteinte                   Perfection is achieved
non pas lorsqu'il n'y a plus rien à ajouter  not when there is no more to add
mais lorsqu'il n'y a plus rien à retirer     but when there is no more to cut
                                 -- Antoine de Saint-Exupéry
