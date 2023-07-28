Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A5D147678F5
	for <lists+linux-man@lfdr.de>; Sat, 29 Jul 2023 01:26:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231504AbjG1X0f (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 28 Jul 2023 19:26:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37528 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230019AbjG1X0e (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 28 Jul 2023 19:26:34 -0400
Received: from mail.ljabl.com (mail.ljabl.com [IPv6:2a01:4f8:173:2dd8::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7B804222
        for <linux-man@vger.kernel.org>; Fri, 28 Jul 2023 16:26:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ljabl.com; s=20220906;
        t=1690586777;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=RaftsjirNzV6f/xtLwtFSyF5thflhKBsB39FAfaygEc=;
        b=Hl2JKo4cpWqTK0S8mVwnwKQioeZbleVpAvXDZDGhXmVNTsDvbvIdJlCf0HJAETh9RpBZRY
        zlyF+g2b2uaap0zucyZ6CHBHK3O6rwVSnb/QbCFirxKVHHufQo5LPBIA79LV7qqN6Y+cq3
        NmvZjM2+CBFwhpqt3h8CKWqsuzMAilU=
Received: by ljabl.com (OpenSMTPD) with ESMTPSA id 1c507d6b (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
        Fri, 28 Jul 2023 23:26:17 +0000 (UTC)
Received: by fluorine.ljabl.com (OpenSMTPD) with ESMTPA id a02881a8;
        Sat, 29 Jul 2023 01:26:16 +0200 (CEST)
Date:   Fri, 28 Jul 2023 23:26:15 +0000
From:   Lennart Jablonka <humm@ljabl.com>
To:     Alejandro Colomar <alx@kernel.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     linux-man@vger.kernel.org
Subject: Re: [PATCH] string_copying.7: tfix
Message-ID: <ZMROl_ZM80HoB9Ss@fluorine.ljabl.com>
Mail-Followup-To: Alejandro Colomar <alx@kernel.org>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        linux-man@vger.kernel.org
References: <ZMQL2bAg5p2no9ir@beryllium>
 <b6ce1d14-528f-cbe9-8117-be684526e36f@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b6ce1d14-528f-cbe9-8117-be684526e36f@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

>> diff --git a/man7/string_copying.7 b/man7/string_copying.7
>> index da1fc6752..04426ef77 100644
>> --- a/man7/string_copying.7
>> +++ b/man7/string_copying.7
>> @@ -280,9 +280,9 @@ instead of
>>  In programs that make considerable use of strings or character sequences,
>>  and need the best performance,
>>  using overlapping character sequences can make a big difference.
>> -It allows holding subsequences of a larger character sequence.
>> +It allows holding sub-sequences of a larger character sequence,
>
>In this case, man-pages(7) advises to not hyphenate:

I see.  I stumbled a little, “subsequences” being similar to 
“subsequent.”  I don’t have a strong opinion.

>>  while not duplicating memory
>> -nor using time to do a copy.
>> +or using time to do a copy.
>
>Is nor incorrect here?

It’s not exactly incorrect here.  Such a usage is common; who 
am I to say that it’s wrong?  It’s not useful to use it here, 
either.  The most common use of nor is a neither-nor construction:  
The weather is neither good nor bad.  Not good and not bad.  Not 
either good or bad.  Admire the construction’s elegance:  two 
little conjunctions, forming a pair (though a pair it need not be) 
to give you the anticipated meaning, clear in every word along the 
way.  Though that construction isn’t what’s used here.

Here, compare

	while (not ((duplicating memory) or (using time to do a copy)))

to

	while not duplicating memory nor using time to do a copy

which you might imagine as expanding to

	while not duplicating memory and not using time to do a copy

with imagined precedence as

	while ((not (duplicating memory)) and (not (using time to do a copy)))

where, thus, the word “nor” seems to be split in half.  It works.  
It’s correct.  And yet it instills in me a strange feeling of 
unorderedness.

Your mileage may vary.

>I'm not a native English speaker

Neither am I.

>and would like to understand why it is incorrect.

>> @@ -444,8 +444,8 @@ is a more useful alternative to this function.
>>  .\" ----- DESCRIPTION :: Functions :: zustr2ustp(3) --------------------/
>>  .TP
>>  .BR zustr2ustp (3)
>> -This function copies the input character sequence
>> -contained in a null-padded wixed-width buffer,
>> +This function copies the input character sequence,
>
>I believe the below is like a parenthetical, which is why I put it
>between commas; isn't it?  Although your version also looks good.
>
>> +contained in a null-padded fixed-width buffer,
>
>Ok
>
>>  into a destination character sequence.

The “contained in a null-padded fixed-width buffer” indeed looks 
like a parenthetical (or rather, a non-restrictive participial 
clause—the “contained” is the participle), which is why it should 
be between commas.  You didn’t do quite that:  You put a comma 
after it, but not before.

This case is what I tried to explain:  You set off the “into 
a destination character sequence” prepositional phrase (the “into” 
being the preposition) by a comma.  You did not surround the 
participial clause by commas.  That’s what I did.
