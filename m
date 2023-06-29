Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 14A69742AFB
	for <lists+linux-man@lfdr.de>; Thu, 29 Jun 2023 19:02:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229991AbjF2RCn (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 29 Jun 2023 13:02:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51196 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229459AbjF2RCm (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 29 Jun 2023 13:02:42 -0400
X-Greylist: delayed 90 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Thu, 29 Jun 2023 10:02:40 PDT
Received: from omta002.cacentral1.a.cloudfilter.net (omta002.cacentral1.a.cloudfilter.net [3.97.99.33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD5773593
        for <linux-man@vger.kernel.org>; Thu, 29 Jun 2023 10:02:40 -0700 (PDT)
Received: from shw-obgw-4002a.ext.cloudfilter.net ([10.228.9.250])
        by cmsmtp with ESMTP
        id Eu5PqFSpW6NwhEv13qZjzS; Thu, 29 Jun 2023 17:01:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1688058069; bh=9kPenNvda89OHqbXPkkcdQ66QV06AYDeD8vOaSfW06Y=;
        h=Date:Reply-To:Subject:To:Cc:References:From:In-Reply-To;
        b=QwrQyOeOm1m33l/SMSuPuO1+FL5MGmWFlwNXsJjBWNMhAQb3rI72EjSS0Ok2cFe3Z
         hQoS5UTEgSKSTjw7Ba1rkWOtPgCbeUhpZN0molFa5k646N0/CvgUusj5xwMK4g2z0H
         JSbmbtelppK5qgORJRer08fqFxVxxH4SL+aiaO9AV4iosWI/KVrS6N9qiAsLxze6Kx
         kOlGMcL8J1um5BUVUSORsXWxd4FCl89Gg09EIMSS++bONYnrdaFkFvIjV102GeiEnG
         cNls4RYGFo8SeoSEH0GIZy++Hnnrv0y60/e6QHWmeutgTE98kObTlFE7wYFoC9s/AQ
         ss8ZE4FGvhQvw==
Received: from [10.0.0.5] ([184.64.102.149])
        by cmsmtp with ESMTP
        id Ev11qO2bByAOeEv11qPO1B; Thu, 29 Jun 2023 17:01:09 +0000
X-Authority-Analysis: v=2.4 cv=e5oV9Il/ c=1 sm=1 tr=0 ts=649db8d5
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=IkcTkHD0fZMA:10 a=pGLkceISAAAA:8 a=p0WdMEafAAAA:8 a=NEAV23lmAAAA:8
 a=pkkXEeoOdO91yhAzRuIA:9 a=QEXdDO2ut3YA:10
Message-ID: <e8f9685b-ef42-6d0f-c18e-861a26922f6e@Shaw.ca>
Date:   Thu, 29 Jun 2023 11:01:07 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Reply-To: linux-man@vger.kernel.org
Subject: Re: SPDX license review requests
Content-Language: en-CA
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Andi Kleen <ak@linux.intel.com>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Matthew Wilcox <willy@infradead.org>,
        Alan Cox <alan@lxorguk.ukuu.org.uk>,
        Heinrich Schuchardt <heinrich.schuchardt@canonical.com>,
        Adam Dobes <adobes@redhat.com>, Chris Lameter <cl@linux.com>
References: <CADeQ=2-ZsaSCEPfTHUO6AAZ_+H8ob4LJ5x5MuGaX=jdOVpdCog@mail.gmail.com>
 <bd1a81d0-456a-bc19-7df0-fdbcc2a51395@gmail.com>
 <a7ed2025-b896-bbce-f36b-0a681f38c542@gmail.com>
 <ca053426-bd13-055a-88ab-9a4873f13f7e@gmail.com> <ZHXweLNKqHKoybXM@tassilo>
 <eda85fda-6182-fc13-3943-9084b187433e@gmail.com>
 <CAK719L2PjTr=-c_AEi89TVrJV7DHwyfBJjH6z6Bozc0Rk+rOfQ@mail.gmail.com>
 <b164d81c-225f-f450-c28a-f4aa9f219448@os.amperecomputing.com>
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
Organization: Inglis
In-Reply-To: <b164d81c-225f-f450-c28a-f4aa9f219448@os.amperecomputing.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfFjXJz+ueSwDSy8oNwH3yWN50iAn86et7YPcYoZz6W28yIIgLzOcVlbbVaQYh9B2iNcaGaMtXu5GuxEmCMQcawBRYh+d4XqFIMxPiSuuyYG5gbwxi7Bv
 JLm3U8yElLhXA0S/n6X1yJ7M5WRvggBemWUchomdoMYLh0KGyhjWf6VGI+FdOzaX0YPogn36w//8vpbBKvvND739BcxmYuy2wJCN0NCxva7dZzfq+IkfpHOa
 u6fnxZavwt6CVHRTnT8NWZ7K4bTrqZN50tWJAgLCxqdsOHtcFZqXfIJU6WcGY1ReIXQ8i1rW2GPzOYfRpWPeYO7NK49leNlTTNP4rcAGG8c8RAPbzOYxDwZ4
 xyhjsg/m+v/1c4npcARzjMchN7Qn2bWlp0gBaxmkxMPHrSX/fyhXT3cRAcznUf3ltKvMPM9BfpxAcFydW7EA6KK2pg5KlTjbJhTvCni+k3KmDlWfLj+WuMQk
 7oW9ksxCIXSc0WGUSVsP622HHYRmh7vyojM6Xw==
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2023-06-29 10:01, Lameter, Christopher wrote:
> On Thu, 29 Jun 2023, Lukas Javorsky wrote:
>>       >> VERBATIM_TWO_PARA
>>       >>      This license was first used in the Linux man-pages in version
>>       >>      3.07 (year 2008) in a single page:
>>       >>
>>       >>              move_pages.2
>>       >>                      Added by Michael Kerrisk <mtk.manpages@gmail.com>,
>>       >>                      but Copyright (C) 2006 Silicon Graphics, Inc.
>>       >>                                        Christoph Lameter
>>       >>
>>       >>      It was later reused in another page:
> The manpage was written by me and later edited by Michael as far as I remember.
>>       >>
>>       >>              migrate_pages.2
>>       >>                      Copyright 2009 Intel Corporation
>>       >> .\"                Author: Andi Kleen
>>       >> .\" Based on the move_pages manpage which was
>>       >> .\" This manpage is Copyright (C) 2006 Silicon Graphics, Inc.
>>       >> .\"                               Christoph Lameter
>>       >>
>>       >>      This license is the one considered non-free by Fedora, and which
>>       >>      we need to drop.  Luckily it's only two pages, so they could be
>>       >>      reasonably rewritten in a worst case.
> The licensing was GPL and not a proprietary one.
>>       So, given this, if you give consent to change your pages to use
>>       Linux-man-pages-copyleft, I'll do so provided for the pages that are
>>       completely yours, and will keep in mind that when others agree, I'll also
>>       change the pages that are shared.
> I have no objections.

Updating these licences are really nice to haves for this project.

Just to be clear, the FSF and Fedora issue is only with *dir_colors*(5) licensed 
under *LDPv1* which contains the contentious clause:

	"c) You must not add notes to the Document implying that the reader had better 
read something produced using Texinfo."

	https://gitlab.com/fedora/legal/fedora-license-data/-/issues/211

	https://github.com/spdx/license-list-XML/issues/1957

which restricts modification, especially by GNU or other projects which may wish 
to offer and promote alternative doc formats or interfaces.

LDPv2 requires notifying the author of modifications by email if provided, and 
suggested authors could add a generic clause c) prohibiting modifications 
without author consent.

TLDP is now by default under GFDLv1.2+.

Another problematic licence is *JSON*, which contains the clause:

	"The Software shall be used for Good, not Evil."

restricting use with non-specific subjective terms, unlike similar licences with 
specific objective restrictions, like not being used for anything related to 
animal testing or nuclear weapons.

-- 
Take care. Thanks, Brian Inglis              Calgary, Alberta, Canada

La perfection est atteinte                   Perfection is achieved
non pas lorsqu'il n'y a plus rien à ajouter  not when there is no more to add
mais lorsqu'il n'y a plus rien à retirer     but when there is no more to cut
                                 -- Antoine de Saint-Exupéry
