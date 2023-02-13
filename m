Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DFE2E695093
	for <lists+linux-man@lfdr.de>; Mon, 13 Feb 2023 20:24:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230440AbjBMTYu (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 13 Feb 2023 14:24:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230458AbjBMTYr (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 13 Feb 2023 14:24:47 -0500
X-Greylist: delayed 389 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 13 Feb 2023 11:24:33 PST
Received: from smtp-bc0d.mail.infomaniak.ch (smtp-bc0d.mail.infomaniak.ch [IPv6:2001:1600:3:17::bc0d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D352B206A7
        for <linux-man@vger.kernel.org>; Mon, 13 Feb 2023 11:24:33 -0800 (PST)
Received: from smtp-2-0000.mail.infomaniak.ch (unknown [10.5.36.107])
        by smtp-2-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4PFvHt3gK1zMqrd4;
        Mon, 13 Feb 2023 20:18:02 +0100 (CET)
Received: from unknown by smtp-2-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4PFvHs6RkszMs4GY;
        Mon, 13 Feb 2023 20:18:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=digikod.net;
        s=20191114; t=1676315882;
        bh=eqcREHTIy0s+5WUvu8sbvMsfZR6oqhPN8RmKN91V8NM=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=uci5w5EoJAGX3/BCZteNip3ADkh9kk/OvO1iNGth4FUoiCJN+bwqLX6/giENhoqrJ
         dvGZrt61/qT2A2RHOGPoyeRVcCtosbf26RFo8gjUO8mSW8+LczmcNTlyicZYZ+eZEX
         Juu7uUKpecW9CkynqrHeC+wXclUaKFRKPxe71gmc=
Message-ID: <9e82602d-3ced-024a-dea6-1cdd6577b97c@digikod.net>
Date:   Mon, 13 Feb 2023 20:18:01 +0100
MIME-Version: 1.0
User-Agent: 
Subject: Re: [PATCH 2/2] landlock.7: tfix
Content-Language: en-US
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        =?UTF-8?Q?G=c3=bcnther_Noack?= <gnoack3000@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org
References: <20230201224224.16378-1-gnoack3000@gmail.com>
 <20230201224224.16378-2-gnoack3000@gmail.com>
 <ca86982e-88ad-9866-6dd9-41659472fb4b@gmail.com>
From:   =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
In-Reply-To: <ca86982e-88ad-9866-6dd9-41659472fb4b@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Infomaniak-Routing: alpha
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Thanks!

On 05/02/2023 14:49, Alejandro Colomar wrote:
> Hi Günther,
> 
> On 2/1/23 23:42, Günther Noack wrote:
>> Signed-off-by: Günther Noack <gnoack3000@gmail.com>
> 
> Patch set applied.
> 
> Thanks,
> 
> Alex
> 
>> ---
>>    man7/landlock.7 | 2 +-
>>    1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/man7/landlock.7 b/man7/landlock.7
>> index 84e422f3c..2b9c2f957 100644
>> --- a/man7/landlock.7
>> +++ b/man7/landlock.7
>> @@ -221,7 +221,7 @@ We first need to create the ruleset that will contain our rules.
>>    For this example,
>>    the ruleset will contain rules that only allow read actions,
>>    but write actions will be denied.
>> -The ruleset then needs to handle both of these kind of actions.
>> +The ruleset then needs to handle both of these kinds of actions.
>>    See below for the description of filesystem actions.
>>    .PP
>>    .in +4n
> 
