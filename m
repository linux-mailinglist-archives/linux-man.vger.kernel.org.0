Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0E057783679
	for <lists+linux-man@lfdr.de>; Tue, 22 Aug 2023 01:45:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229892AbjHUXpM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 21 Aug 2023 19:45:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229610AbjHUXpM (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 21 Aug 2023 19:45:12 -0400
Received: from omta001.cacentral1.a.cloudfilter.net (omta001.cacentral1.a.cloudfilter.net [3.97.99.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 091D8183
        for <linux-man@vger.kernel.org>; Mon, 21 Aug 2023 16:45:06 -0700 (PDT)
Received: from shw-obgw-4003a.ext.cloudfilter.net ([10.228.9.183])
        by cmsmtp with ESMTP
        id Y4U3qAgsFLAoIYEa2quATh; Mon, 21 Aug 2023 23:45:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1692661506; bh=ocHHos8GJvd2mSFciVCoUCgGieen62ucgfTfOFn4rQg=;
        h=Date:Reply-To:Subject:To:References:From:Cc:In-Reply-To;
        b=mrZJh5NQWQphpdArpDnWlYCQUXY3Jujz4YVD0Z3UAvAs7Tdy/92pBsGLx65bmfBWh
         Dwx9XwphOBizwjw3lCh7LMVxNcSFDEWGV+951lZQStMUjIDVDjiXo/8GnxqYSAi5hf
         9lQ0JO6PSDjanwdgbhB1CRDBNDAtl8CWdxbT/xx/wc/XwGzzgmp7tgjoVmIDv1vxXr
         RmF+qvAWGUP5Q3QFKoQoCTO+Mn805CHPzY10TizVr4iMJ4VzQ1/KFnE0w4toCcmKl+
         idmJwV3oI84gsltVvcLFUTtFSOmZteZay6YpVWCQfyTQnjK19bq8J+vqxUbe0EtiQq
         RfoBJhNnXKzsw==
Received: from [10.0.0.5] ([184.64.102.149])
        by cmsmtp with ESMTP
        id YEa1qbkPzcyvuYEa1qbWeR; Mon, 21 Aug 2023 23:45:06 +0000
X-Authority-Analysis: v=2.4 cv=VbHkgXl9 c=1 sm=1 tr=0 ts=64e3f702
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=IkcTkHD0fZMA:10 a=WziHFQi5-XwcKkKpbk8A:9 a=QEXdDO2ut3YA:10
Message-ID: <d373a66b-8312-fcb4-103d-b6ce22a6b40f@Shaw.ca>
Date:   Mon, 21 Aug 2023 17:45:05 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Reply-To: Brian.Inglis@Shaw.ca
Subject: Re: No 6.05/.01 pdf book available
Content-Language: en-CA
To:     linux-man@vger.kernel.org
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
 <2704680.mvXUDI8C0e@pip> <a1550f24-6b0f-0173-967a-7dd31dbafd05@Shaw.ca>
 <3262525.44csPzL39Z@pip> <54945a93-399e-620f-be6e-bbe740abb21e@kernel.org>
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
Organization: Inglis
Cc:     Alejandro Colomar <alx@kernel.org>,
        Deri <deri@chuzzlewit.myzen.co.uk>
In-Reply-To: <54945a93-399e-620f-be6e-bbe740abb21e@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfKBO7hgm1Xb1tugJ4c+IqXO4jrEvRFtmrOcz4P98GY3fOU2/b1GAnYKq2Pl/ESkjUyji9NRrUPglScp8bvkI7WHYeuwHZFAYg/4riMSkhuShc11j4Xbu
 xS7kQMWaGmbCiInFHOmf3APlj4bRzVusEn1avqc0wY8gmc8Megly5Fy6w4oNh/c0k6jZySzZQ+Uw5h7IG4ksE7TwYrCnBylWirrQjoE3UH1kkcKIuCiTdaoD
 ipxzZuc0xrfSTT07eZ04WW8yy0ZnjSuX2Ed2qpQ8isI=
X-Spam-Status: No, score=-5.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2023-08-21 16:02, Alejandro Colomar wrote:
> Hi Deri,
> 
> On 2023-08-21 01:39, Deri wrote:
>> Hi Brian,
>>
>> I have created the tar files again with the latest sort.
>>
>> Both are intended to be used with groff 1.23.0, but the plus version includes
>> the latest gropdf, so produces more compact output. It also has the narrower
>> gap between the heading on the intro(1) page, I have not investigated the
>> reason yet!
>>
>> Also I have a small bone to pick with your "official" sort order - it's not
>> consistent. Most people expect a short word like "cat" to appear before a word
>> like "catatonic", and we see "hosts" does appear before "hosts.equiv", so why
>> does "man" come after "man-pages"! I've also strayed from the official sort
>> order in the 6.05.01 pdf by arranging the latin and iso character code pages
>> in proper numerical order so "latin10" comes after "latin9" rather than
>> following "latin1". I hope this makes sense.
> 
> Is "official" the Book for 6.5.1?  Or is it the scripts/sortman in git HEAD?

Yes - the latest official distributed version uniq page heads;
sortman-no-aliases is your uniq page heads excluding pages aliases;
rpmvercmp and versioncmp are the perl modules providing those functions;
check out the attched diffs in the last couple of emails to see the differnces 
in the orders, and which one you think matches your expectations.

> I've found that scripts/sortman had this problem that you report, and fixed it:

> $ ./scripts/sortman << __EOF__
> man7/cat.7
> man7/catatonic.7
> man7/cat_or_dog.7
> man7/cat_alike.7
> man7/hosts.7
> man7/hosts.equiv.7
> man7/intro.7
> __EOF__
> man7/intro.7
> man7/cat.7
> man7/catatonic.7
> man7/cat_alike.7
> man7/cat_or_dog.7
> man7/hosts.7
> man7/hosts.equiv.7
> 
> Is this order a good one?  Should maybe cat_alike go right after cat?

I am in favour of all punctuation being treated as word spaces and sorting
"cat ..." before "cat..." but find the real orders more evocative and easier to 
decide about than examples.

-- 
Take care. Thanks, Brian Inglis              Calgary, Alberta, Canada

La perfection est atteinte                   Perfection is achieved
non pas lorsqu'il n'y a plus rien à ajouter  not when there is no more to add
mais lorsqu'il n'y a plus rien à retirer     but when there is no more to cut
                                 -- Antoine de Saint-Exupéry
