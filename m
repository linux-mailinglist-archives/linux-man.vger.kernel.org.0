Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4D9E278B734
	for <lists+linux-man@lfdr.de>; Mon, 28 Aug 2023 20:25:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232233AbjH1SZR (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 28 Aug 2023 14:25:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232930AbjH1SZE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 28 Aug 2023 14:25:04 -0400
Received: from omta002.cacentral1.a.cloudfilter.net (omta002.cacentral1.a.cloudfilter.net [3.97.99.33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F55613D
        for <linux-man@vger.kernel.org>; Mon, 28 Aug 2023 11:25:01 -0700 (PDT)
Received: from shw-obgw-4002a.ext.cloudfilter.net ([10.228.9.250])
        by cmsmtp with ESMTP
        id aeqHqBmEa6Nwhagv6q1jpD; Mon, 28 Aug 2023 18:25:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1693247100; bh=hbOizwAu+X8Ct4DNrz7yKc8aSC8QPur1SNrGeErf1Qw=;
        h=Date:Reply-To:Subject:To:Cc:References:From:In-Reply-To;
        b=MFLPSi66nUyC9CDDGD3NuOGv1IRpQ+XCy+cuew1LeHju54d9EnYbCckjF29SbcSbC
         C9Lal2Gwpb8ZrlQWDTVoWzwR+b8aYw6haDm+MWv/jTuMweDdfWOngbDnUq3Cpl51jm
         BFtwpV1CCKFnPUB+IvNnU7U756oUSXq/PJ8ZBKeQUvqvUVn+TSDook2Q0Sha511i5Q
         3HvDn2bXWPfPny6R4GDtlVp72VYwELpQjr3mSfZEAYf3T9KbTLhqvRiyUZaeyLSlJW
         uqxXQWL/aTRLotwCH0gB3q5Wd9oQ6VFTVV5GJPu6El4WhvznGiH3yqO0MulCig3plO
         I59Cu+l15mLGw==
Received: from [10.0.0.5] ([184.64.102.149])
        by cmsmtp with ESMTP
        id agv5qdU04yAOeagv5qNSm9; Mon, 28 Aug 2023 18:25:00 +0000
X-Authority-Analysis: v=2.4 cv=e5oV9Il/ c=1 sm=1 tr=0 ts=64ece67c
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=IkcTkHD0fZMA:10 a=QaRHPhJ_M_7LzJioXekA:9 a=QEXdDO2ut3YA:10
Message-ID: <1435b3f6-b4fb-28b1-3c54-547c9a7e919a@Shaw.ca>
Date:   Mon, 28 Aug 2023 12:24:59 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Reply-To: Brian.Inglis@Shaw.ca
Subject: Re: No 6.05/.01 pdf book available
Content-Language: en-CA
To:     linux-man@vger.kernel.org
Cc:     Deri <deri@chuzzlewit.myzen.co.uk>,
        Alejandro Colomar <alx@kernel.org>
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
 <2704680.mvXUDI8C0e@pip> <a1550f24-6b0f-0173-967a-7dd31dbafd05@Shaw.ca>
 <3262525.44csPzL39Z@pip> <54945a93-399e-620f-be6e-bbe740abb21e@kernel.org>
 <d373a66b-8312-fcb4-103d-b6ce22a6b40f@Shaw.ca>
 <ff61e9fb-b2ed-e136-6249-1b8541a75d7a@kernel.org>
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
Organization: Inglis
In-Reply-To: <ff61e9fb-b2ed-e136-6249-1b8541a75d7a@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfB9fWfBLTy6vzYmiOSXaRPrDAqbpUkrl3VP0TGLtVWj8HUSRMJcLvvCnt9IohbxoFwbf8WNzBPZ8lYZLtaZg8djdLlaWAKf5umJkK/gp8r3OkQiK4Cic
 SqrrEQ+2NXrS1VSc8gIKYclyT/xYIjlTT+pPwBD43aLiCxHETPyz5BM4z/OisiqKdZS4uzui9LPh8Uogr7044pkU6H7b8WFYqFR0ifduH2HB3vXbPnjMn5jQ
 TrzTNES/SgR7ehTxSL8o+3tqDyeyiP6g3k/9wITkBlo=
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2023-08-28 06:17, Alejandro Colomar wrote:
> Hi Brian,
> 
> On 2023-08-22 01:45, Brian Inglis wrote:
>> I am in favour of all punctuation being treated as word spaces and sorting
>> "cat ..." before "cat..." but find the real orders more evocative and easier to
>> decide about than examples.
> 
> Here's an excerpt of how treating - and _ as spaces looks like.  I think
> it's a reasonable order.  Should I apply that diff?
> 
> Cheers,
> Alex
> 
> $ git diff
> diff --git a/scripts/sortman b/scripts/sortman
> index a8f70bab5..6d1d92f09 100755
> --- a/scripts/sortman
> +++ b/scripts/sortman
> @@ -9,7 +9,7 @@ sed   -E '/\/intro./  s/.*\.([[:digit:]])/\10\t&/' \
>   | sed -E '            s/\t(.*)/&\n\1/' \
>   | sed -E '/\t/        s/\.[[:digit:]]([[:alpha:]][[:alnum:]]*)?\>.*//' \
>   | sed -E '/\t/        s/\/[_-]*/\//g' \
> -| sed -E '/\t/        s/[_-]/_/g' \
> +| sed -E '/\t/        s/[_-]/ /g' \
>   | sed -E '/\t/        {N;s/\n/\t/;}' \
>   | sort -fV -k1,2 \
>   | cut -f3;
> $ touch man8/ld-z.8
> $ touch man8/ld.8
> $ find man8 | ./scripts/sortman
> man8/intro.8
> man8/iconvconfig.8
> man8/ld.8
> man8/ld-linux.8
> man8/ld-linux.so.8
> man8/ld-z.8
> man8/ld.so.8
> man8/ldconfig.8
> man8/nscd.8
> man8/sln.8
> man8/tzselect.8
> man8/zdump.8
> man8/zic.8
> man8

Looks better, but should your sort *key* field instance also drop the section 
suffix (already in prefix) and also treat "." as space?
Where would you expect to see ld.so?

Also, in `sed`, instead of cloning the line, at the start of a series of 
executions, make them all into a single inline command script, start with `h` to 
*hold* the input line, and end with `G` instead of `N` to append '\n' then the 
held line, convert to `\t`, drop the braces, and you can skip the then redundant 
tests, something like the following should get you close (tried it earlier, now 
sadly already gone from history):

| sed -E '
	h
	/\/intro./  s/.*\.([[:digit:]])/\10\t&/
	s/\.[[:digit:]]([[:alpha:]][[:alnum:]]*)?\>.*//
	s/\/[_-]*/\//g
	s/[_-]/_/g
	s/[_-]/ /g
	G
	s/\n/\t/
	' \
| ...

-- 
Take care. Thanks, Brian Inglis              Calgary, Alberta, Canada

La perfection est atteinte                   Perfection is achieved
non pas lorsqu'il n'y a plus rien à ajouter  not when there is no more to add
mais lorsqu'il n'y a plus rien à retirer     but when there is no more to cut
                                 -- Antoine de Saint-Exupéry

