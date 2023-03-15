Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 089886BBA31
	for <lists+linux-man@lfdr.de>; Wed, 15 Mar 2023 17:51:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231232AbjCOQvJ (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 15 Mar 2023 12:51:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36852 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231631AbjCOQvI (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 15 Mar 2023 12:51:08 -0400
Received: from omta001.cacentral1.a.cloudfilter.net (omta001.cacentral1.a.cloudfilter.net [3.97.99.32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E0E3422C
        for <linux-man@vger.kernel.org>; Wed, 15 Mar 2023 09:51:03 -0700 (PDT)
Received: from shw-obgw-4002a.ext.cloudfilter.net ([10.228.9.250])
        by cmsmtp with ESMTP
        id cNJxpFAPzuZMScUL8pwtx2; Wed, 15 Mar 2023 16:51:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1678899062; bh=sFfGAtl652GJ+apBJT7W5XrdkP4MTNLrHDhK/tafJdk=;
        h=Date:Reply-To:Subject:To:References:From:In-Reply-To;
        b=Ln1H7+VMbFP2LAnwJqOVp+HZPMg5oTz/JjBlcXnK7nI/t9jKiBUVWFJ8Ne20OCMkv
         wIi1K6m7ds+EBlOA6UI/v5G5cwNzLVzyRZ2qpcnJQRFcQvuYbMNeG03xak9u+fQNYd
         eQBkAYG+4eSNLYzZtfVUqd8eCaCiKYx00E+y3pGAC67ENO08Ql8Knv9rwokNd7tdJd
         8A4vWr1/knogMag+Y9Z7YAJpiC/YtkpEVdl+1tK9/HsSpHOfmFE23dLS9wgvPXTHKE
         vd3xJsiFMGKc1wPFtmLFwr1G2pUsf3Krs0JMRsqGw72BEYHRflzihJ4RT7aZI790FM
         cz2CngiZX+hpw==
Received: from [10.0.0.5] ([184.64.102.149])
        by cmsmtp with ESMTP
        id cUL7pncBzyAOecUL8pbpxa; Wed, 15 Mar 2023 16:51:02 +0000
X-Authority-Analysis: v=2.4 cv=e5oV9Il/ c=1 sm=1 tr=0 ts=6411f776
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=IkcTkHD0fZMA:10 a=m6UvoRncAAAA:8 a=b4LDLZbEAAAA:8 a=qn1SYCEQgjSGkVY21MsA:9
 a=QEXdDO2ut3YA:10 a=lfUPCyLtUyi34tMhaCBG:22 a=20T61YgZp4ItGotXEy2O:22
Message-ID: <6aad40b5-04ca-68d8-7da2-cb4a7bed7ded@Shaw.ca>
Date:   Wed, 15 Mar 2023 10:51:01 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Reply-To: linux-man@vger.kernel.org
Subject: Re: Revert "Many Pages: Remove references to C89"
Content-Language: en-CA
To:     linux-man@vger.kernel.org
References: <20230310015150.3545768-1-Matt.Jolly@footclan.ninja>
 <8899aff7-4193-dd54-4488-234b1a6cee83@gmail.com> <ZAq5gg+aQB5TrDQ3@dj3ntoo>
 <f5aac742-4417-fced-343d-002117d629f1@gmail.com> <ZA5/n8Ix+eCYnNgM@dj3ntoo>
 <591290fb-e78d-ad3a-8b25-4a860d26f775@gmail.com> <ZBAIkHrBm50vjSqL@dj3ntoo>
 <d3aee611-844b-fba3-5642-16b0ddc576a3@gmail.com>
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
Organization: Inglis
In-Reply-To: <d3aee611-844b-fba3-5642-16b0ddc576a3@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfFRWt6qnJCz0HpZWfM6t/Fa5H5YixjRXt8nUdcB7Ta+I0+2r2QjxGnS3B/waFv6Fjvl3r2sdtzkSyqTro1ZcoMe+NAngDevy/UtUslhv0DCYUyUDLYPC
 BvUW55iHpI8ih4Ovr5EDrcdfTHX7AxZy0kBxjFNIAcxCz7P1oly9WjBxpkPYfy+kuB8OFyZ1Yzoqb3N9KLpwo7ei3ZsqlUVumzk=
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2023-03-15 06:30, Alejandro Colomar wrote:
> On 3/14/23 06:39, Oskari Pirhonen wrote:
>> On Mon, Mar 13, 2023 at 13:00:52 +0100, Alejandro Colomar wrote:
>>>>> <https://port70.net/~nsz/c/c89/c89-draft.txt>
>>>>> I suggest you download that file, and use a function like this:
>>>>> $ stdc89() { grep "[[:alpha:]] \**\b$1([[:alnum:]*,. ]*);" /path/to/c89-draft.txt; }
>>>>> $ stdc89 printf
>>>>>           int printf(const char *format, ...);
>>>>>           int printf(const char *format, ...);

>>>> I gave this a quick spin and it seems to work decently well. So thanks
>>>> for that.

>>>> It's still not quite as nice as having C89 mentioned in
>>>> STANDARDS, and couldn't this be leveraged to fix up the inconsistencies
>>>> you mentioned earlier?

>> Looking at the site you linked to for the c89-draft.txt, there's also
>> C99, C11, and C2x. With yet some more work, it'd be possible to have
>> equivalent functions for those standards as well. They could even be
>> combined to create an "std-diff" tool to give, eg, new "str*" functions
>> introduced in C89 -> C99.
>> Perhaps such a tool already exists, but I thought it worth mentioning
>> here in case anyone reading this gets inspired to write it. I've added
>> it to my (ever growing) TODO list, but don't know when I might get
>> around to actually giving it a go.

> Interesting idea.  Sounds fun to do.  I'll check if we can redistribute
> the drafts of the standard in the Linux man-pages repo.  If so, we could
> have the standard .txt files in some directory inside the repo, and then
> have a script that reads those files.

I have an archive of many drafts including (so far):

  1.5M Sep 10  1998 N0843-C1999-CD-1998-08.pdf
  3.4M May  6  2005 N1124-C1999+TC2-CD-2005-05.pdf
  3.7M Sep  8  2007 N1256-C1999+TC3-CD-2007-09.pdf
  1.7M Apr 12  2011 N1570-C201X-CD-2011-04.pdf
  2.3M Oct  9  2017 N2176-C2017-CD-2017-10.pdf
  6.7M Jan 24 11:37 N3088-C2023-CD1-2023-01.pdf

which can be downloaded as:

	https://www.open-std.org/jtc1/sc22/wg14/www/docs/n####.pdf

Package poppler contains pdftotext which with -layout produces easily searchable 
text files.

-- 
Take care. Thanks, Brian Inglis              Calgary, Alberta, Canada

La perfection est atteinte                   Perfection is achieved
non pas lorsqu'il n'y a plus rien à ajouter  not when there is no more to add
mais lorsqu'il n'y a plus rien à retirer     but when there is no more to cut
                                 -- Antoine de Saint-Exupéry
