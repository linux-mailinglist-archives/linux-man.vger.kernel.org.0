Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A0A69772A6F
	for <lists+linux-man@lfdr.de>; Mon,  7 Aug 2023 18:21:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231340AbjHGQVH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 7 Aug 2023 12:21:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230001AbjHGQVG (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 7 Aug 2023 12:21:06 -0400
Received: from omta002.cacentral1.a.cloudfilter.net (omta002.cacentral1.a.cloudfilter.net [3.97.99.33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D083310CE
        for <linux-man@vger.kernel.org>; Mon,  7 Aug 2023 09:21:03 -0700 (PDT)
Received: from shw-obgw-4003a.ext.cloudfilter.net ([10.228.9.183])
        by cmsmtp with ESMTP
        id SyG0qq5yU6NwhT2ycq9FAD; Mon, 07 Aug 2023 16:21:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1691425262; bh=aLAel4Lrt4GiYwQrHMBQEdWw974XT++I5ArWclanMPY=;
        h=Date:Reply-To:Subject:To:References:From:In-Reply-To;
        b=O8jKsFgQz34OIhOD7ZnFtPWwbGHQu7YuAdODGzak0kN+vWdPnaqUcR1eB8GF+w0l+
         qSxqMTDtmNNf1AezuLQISKDRy2/G9/eecSOLOIz30aXm+DB5I1cG+xdgB9uFwMeUZj
         N6Owm/DwVQscUKbJ8cY7AQp4eULhSVW2B+IP7nbW/CCw/hrxwmhWlWPK2Wgfr8NXmV
         EFrzHMkWZedUIklAWpzp+YkHYZ0kdZluyBC3q8/KsZuU+7oZjPQRDs0MmMeR617ArK
         kW/bZIaJ47ywj7h70k4+eNTAKsIaTvqKMxauDpoQsreqPFLoF7cAmdpHsPTsfjyVhi
         PzyPUaGFZYuTQ==
Received: from [10.0.0.5] ([184.64.102.149])
        by cmsmtp with ESMTP
        id T2ycqNcD0cyvuT2ycq9RXr; Mon, 07 Aug 2023 16:21:02 +0000
X-Authority-Analysis: v=2.4 cv=VbHkgXl9 c=1 sm=1 tr=0 ts=64d119ee
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=IkcTkHD0fZMA:10 a=z-bdYiXYMVD5-_7Nf9EA:9 a=QEXdDO2ut3YA:10
Message-ID: <01d3855b-65dc-8b99-83cf-ebe1f97a2d83@Shaw.ca>
Date:   Mon, 7 Aug 2023 10:21:01 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Reply-To: Brian.Inglis@Shaw.ca
Subject: Re: No 6.05/.01 pdf book available
Content-Language: en-CA
To:     Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org,
        Deri <deri@chuzzlewit.myzen.co.uk>
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
 <82937367-538d-46c7-19c8-5bab403fefd5@Shaw.ca>
 <ceb2c7f6-fd7e-467e-5837-c197357339fb@kernel.org>
 <ab67aa6d-712a-47f0-e694-01592bb72cd1@kernel.org>
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
Organization: Inglis
In-Reply-To: <ab67aa6d-712a-47f0-e694-01592bb72cd1@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfE90wnmNb0xuseZxJ4Pr9iQOt8u+/Q+0Yi8V4NFfHykfd2aLvRDf15Wmg2xblXx4Zapw/3az5N9ae58ReD+55UcvqWiy8v8kSygPuWr5lt68fjvoYOiY
 2cY4mKyLl1HYqitj7TAcS0Z4jfgPQfpja/32+OfWwRlIOKBgssIt2RpchPOWjCHFOIeWbuGOKNNzJl7vKsvic4WBBKEibL8aeb/7ln/ifKmWk4NshDVyuGAW
 ruZhhAwigL1MZS8vAzNm2BhGskKUYgByR/jMHpwdwaY=
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2023-08-07 03:16, Alejandro Colomar wrote:
> On 2023-08-07 10:45, Alejandro Colomar wrote:
>> On 2023-08-07 04:46, Brian Inglis wrote:
>>> I noticed there appears to be no 6.05/.01 pdf book available yet.
>>> Are there build issues?

>> Yup.
>>
>> $ pwd
>> /home/alx/src/linux/man-pages/man-pages/6.04/scripts/LinuxManBook
>> $ ./BuildLinuxMan.pl  ../../
>> [...]
>> Failed to open 'DESC'

That annoyingly minimal message provoked the patch submitted.

>>> When I run the script/LinuxManBook/BuildLinuxMan.pl, after applying the gropdf
>>> patch, manually in the build dir, I get a pdf, but without any man page footers.

>> Hmm, that's weird.  After applying your patch, It works fine for me.
>> I do see the page footers.  However, I have old builds of groff in my
>> system, which I haven't cleaned up, so maybe they interfere positively
>> to that outcome.  Maybe from a clean installation of Debian Sid I
>> wouldn't be able to reproduce that.

> I have uploaded the 6.05.01 book now.

Nice - with current page footers!

>> Nevertheless, now I remember Deri told me he hardcoded a lot of stuff
>> for 1.22.4 which should be removed after the release of 1.23.0, so it
>> seems that the time has come to chop a lot of stuff from there.
>>
>> Deri, would you mind simplifying the scripts assuming a Build-dep of
>> groff(>=1.23.0)?

Resent the patch cc Deri.

Would it make sense to merge changes into/from groff 1.23 grodpf, which I also 
tried, and also did not produce page footers, but did produce lots of 
*different* messages.
It seems likely that changes made to build the huge man book might also benefit 
other projects with large docs.

>>> Are there any other scripts which need to be run and/or groff commands or data
>>> which need to be supplied?

>> No.  It's just:
>>
>> $ cd scripts/LinuxManBook/
>> $ ./BuildLinuxMan.pl ../../

>>> It would be nice to see this eventually added to your RELEASE doc, and maybe
>>> also to the make scripts.

>> Yes.  I first want to put it in the Makefiles, and then add it to
>> INSTALL.  Then something to RELEASE.  But I first want to simplify
>> the script so I can understand it.

See below ;^>

-- 
Take care. Thanks, Brian Inglis              Calgary, Alberta, Canada

La perfection est atteinte                   Perfection is achieved
non pas lorsqu'il n'y a plus rien à ajouter  not when there is no more to add
mais lorsqu'il n'y a plus rien à retirer     but when there is no more to cut
                                 -- Antoine de Saint-Exupéry
