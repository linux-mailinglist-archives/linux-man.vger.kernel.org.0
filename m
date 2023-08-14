Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5BEF477B0BA
	for <lists+linux-man@lfdr.de>; Mon, 14 Aug 2023 07:29:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232881AbjHNF2c (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Aug 2023 01:28:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33482 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229883AbjHNF2P (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Aug 2023 01:28:15 -0400
Received: from omta002.cacentral1.a.cloudfilter.net (omta002.cacentral1.a.cloudfilter.net [3.97.99.33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09FA0AD
        for <linux-man@vger.kernel.org>; Sun, 13 Aug 2023 22:28:13 -0700 (PDT)
Received: from shw-obgw-4002a.ext.cloudfilter.net ([10.228.9.250])
        by cmsmtp with ESMTP
        id V6Bdqvq4F6NwhVQ7gqPb1A; Mon, 14 Aug 2023 05:28:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1691990892; bh=naG+wgUCJnrZVB/QEcgsnz1FTL/kF7lA/8NX3qJQKYU=;
        h=Date:Reply-To:Subject:To:Cc:References:From:In-Reply-To;
        b=elWEAKm/u6JqYupJoh2XmbQMSTZgl9M6Xoa7MD/E7at7jHa4U7UZUqsV0rKwZfuCq
         tGzRDsqYSAqk+nFEaTlQAdPcRVS3p2NdX8si50He4pP/fr4cuOw/yfVsqEuxNbnZ74
         a6aqwSdrNtAB6bgXPEfmz0khKzRImVZBMMQpGvSRytoSIWFQg8/LMj/jieHCpnj3e6
         Vcn4xtkv7eEPLDZRoYF8uA0odGc+ExphfbQgIQQjnoNJIns2PMH8fsUJXbu/r7HVX8
         MBzjRG29HYK5VI29GDhsroK/vMS8Zqq3zRlZ9sGjzlKtakFJszRm0rUamBc4YKEN8Q
         0ehBRSxQn0PtQ==
Received: from [10.0.0.5] ([184.64.102.149])
        by cmsmtp with ESMTP
        id VQ7gqKud5yAOeVQ7gqtdrR; Mon, 14 Aug 2023 05:28:12 +0000
X-Authority-Analysis: v=2.4 cv=e5oV9Il/ c=1 sm=1 tr=0 ts=64d9bb6c
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=IkcTkHD0fZMA:10 a=g2Nutb1gACIPKhcXADgA:9 a=QEXdDO2ut3YA:10
Message-ID: <fa9715f5-9f47-6ef1-2691-8a727bc4f221@Shaw.ca>
Date:   Sun, 13 Aug 2023 23:28:11 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Reply-To: Brian.Inglis@Shaw.ca
Subject: Re: hyphens at ends of pages (was: No 6.05/.01 pdf book available)
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx@kernel.org>,
        Deri <deri@chuzzlewit.myzen.co.uk>,
        "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <094c0eacf60998465be28c605bef69f2f5742459.1691370798.git.Brian.Inglis@Shaw.ca>
 <21975186.EfDdHjke4D@pip> <7f020624-ebc9-5eb8-b87f-8f954a8084a0@Shaw.ca>
 <3258129.44csPzL39Z@pip> <1b955f49-8181-5bd5-b818-020c6b5287dd@Shaw.ca>
 <20230813214717.su46tr6jqfist26d@illithid>
Content-Language: en-CA
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
Organization: Inglis
In-Reply-To: <20230813214717.su46tr6jqfist26d@illithid>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfEGRa7gYchnoWK/+5mQOeYkIBOqLB0LveXGlDJOEX8ME6b68HlkoDCqP0X3e2tdJv8fJmpH0QNFsBKm93vE7l6cd454VRG9FkvHk3jd97HPdGTPQxnf6
 0i6taFWODhGW1N39CNGLAkg1rfGkfidIVz2qjAgWPN9sTIxrH+qeSJFe4bzV6QV5vggEEqDKr2W3JmjDwlpB/ODRqLyFXhc7knW5WbSIZ3T7T9nJUxNME2j8
 NVYMBLrjPJ1rJTqnUklEx9sP9ZNIVojT20p6dDqoQ7EXjzZFVEmaxOSPQgwfUqVguD3vpY5u1+0ZU0rzV3s+gw==
X-Spam-Status: No, score=-7.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2023-08-13 15:47, G. Branden Robinson wrote:
> At 2023-08-13T14:30:34-0600, Brian Inglis wrote:
>> Please see attached awk script and logs showing pages with end of page
>> "hyphens" in text of PDFs from `pdftotext -layout`: "official" PDF has
>> 47, newer PDFs break only at 5 compound word joins or double dashes.

Later I said:

>> I added a paper variable, made the changes [to NA letter size], it seems
>> to work, and reduces end of page hyphens to one compound word instance in 
>> mbind(2); log attached:
>> 
>>	nodemask ... on-
>>	...
>>	line, ...
>> 
>> There appear to be 24 single word instances of online and 12 outdated
>> hyphenated compound word instances of on-line across all man pages.

Generating a letter size man book using 1.23.0 gropdf eliminates all spurious 
end of page hyphens barring that case, allowed by your doc below.

With ~5% 140 more letter 2964pp than A4 2823pp pages, the latter pages break on 
5 times as many compound words.

Also note that although on-line appears 12 times, and online twice that, offline 
and dial(up|out|ing)? both appear 7 times, with no off-line or dial-up.

> If hyphenation is occurring at the ends of pages but otherwise normally,
> then that is a symptom of the *roff automatic hyphenation mode being set
> wrong.  The most likely suspect is an argument-free `.hy` invocation
> somewhere in the page sources.
> 
> This is why I have nattered on about not messing with the hyphenation
> mode in man page sources in recent mails (and commit messages) to this
> list.[1]
> 
> In groff 1.23.0, we smuggled some of the explanation of *roff
> hyphenation out of our Texinfo manual into the groff(7) page.  I'm
> trimming a few sentences man page authors don't need.
> 
> Hyphenation
>       When filling, groff hyphenates words as needed at user‐specified
>       and automatically determined hyphenation points.  Explicitly
>       hyphenated words such as “mother‐in‐law” are always eligible for
>       breaking after each of their hyphens.  The hyphenation character \%
>       and non‐printing break point \: escape sequences may be used to
>       control the hyphenation and breaking of individual words.  [...]
>       Otherwise, groff determines hyphenation points automatically by
>       default.
> 
>       Several requests influence automatic hyphenation.  Because
>       conventions vary, a variety of hyphenation modes is available to
>       the .hy request; these determine whether hyphenation will apply to
>       a word prior to breaking a line at the end of a page (more or less;
>       see below for details), and at which positions within that word
>       automatically determined hyphenation points are permissible.  The
>       default is “1” for historical reasons, but this is not an
>       appropriate value for the English hyphenation patterns used by
>       groff; localization macro files loaded by troffrc and macro
>       packages often override it.
> 
>       0    disables hyphenation.
> 
>       1    enables hyphenation except after the first and before the last
>            character of a word.
> 
>       The remaining values “imply” 1; that is, they enable hyphenation
>       under the same conditions as “.hy 1”, and then apply or lift
>       restrictions relative to that basis.
> 
>       2    disables hyphenation of the last word on a page.  (Hyphenation
>            is prevented if the next page location trap is closer to the
>            vertical drawing position than the next text baseline would
>            be.  See section “Traps” below.)

I have yet to evaluate the numbers of orphans, widows, and runts (single word 
widows) generated by each gropdf release, but there seems to be little apparent 
difference between 1.23.0 and Deri's 1.23.0+ new gropdf.

-- 
Take care. Thanks, Brian Inglis              Calgary, Alberta, Canada

La perfection est atteinte                   Perfection is achieved
non pas lorsqu'il n'y a plus rien à ajouter  not when there is no more to add
mais lorsqu'il n'y a plus rien à retirer     but when there is no more to cut
                                 -- Antoine de Saint-Exupéry
