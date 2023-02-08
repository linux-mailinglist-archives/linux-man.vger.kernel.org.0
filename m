Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0D9A968FA1A
	for <lists+linux-man@lfdr.de>; Wed,  8 Feb 2023 23:10:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232349AbjBHWKr (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 8 Feb 2023 17:10:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232284AbjBHWKq (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 8 Feb 2023 17:10:46 -0500
Received: from omta002.cacentral1.a.cloudfilter.net (omta002.cacentral1.a.cloudfilter.net [3.97.99.33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3A952CC51
        for <linux-man@vger.kernel.org>; Wed,  8 Feb 2023 14:10:45 -0800 (PST)
Received: from shw-obgw-4002a.ext.cloudfilter.net ([10.228.9.250])
        by cmsmtp with ESMTP
        id PoYNpyemsl2xSPseKpcBYL; Wed, 08 Feb 2023 22:10:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=shaw.ca; s=s20180605;
        t=1675894244; bh=98YI7NDCXG6FBuTB+tUQ/9aXiDjLVK3qf452ZXOhpws=;
        h=Date:Reply-To:Subject:To:Cc:References:From:In-Reply-To;
        b=aqiemihGkX91k2VsaqHQsNp7VNs4vHV0HJ5i6yHEw5A4gehQtW2Ermhe1ZvFnKP6q
         sBHrmf14Mnztfgj3A/T2isVlq3qHPzBwt1Rvg0RWlwqb0cvAQnmNjrdUS6tgR0dHpM
         2pzU9S6MwERnZNmY10OHR01oVgdFK7U8UlUvgTF4zwe9xpcYvMZzWoQu1kNlc90gvA
         I7Jp77KLXN6U+tKjM+OaQzqHBCfAis4NTz+6gWDb6kX9cEd/FnXBF9T5byYwzP9UdY
         uH5aocMI3nDPZ9Nsh5ue+WoRoDvMZgOqtXde/u3UTpyeexhjnv87PofAY3p9meGBaz
         Mlb4Az8BzGdGg==
Received: from [10.0.0.5] ([184.64.102.149])
        by cmsmtp with ESMTP
        id PseJpEjCGyAOePseJpKFUm; Wed, 08 Feb 2023 22:10:44 +0000
X-Authority-Analysis: v=2.4 cv=e5oV9Il/ c=1 sm=1 tr=0 ts=63e41de4
 a=DxHlV3/gbUaP7LOF0QAmaA==:117 a=DxHlV3/gbUaP7LOF0QAmaA==:17
 a=IkcTkHD0fZMA:10 a=b4LDLZbEAAAA:8 a=5ilgbltCAAAA:8 a=8ezUVUwJJVjfI4SYd3IA:9
 a=QEXdDO2ut3YA:10 a=KGeJLd_XHnkA:10 a=20T61YgZp4ItGotXEy2O:22
 a=4QqBhJPHXUa_YllFK7Ai:22
Message-ID: <0a6773fa-257e-ed5c-f951-39a0876b9dcb@Shaw.ca>
Date:   Wed, 8 Feb 2023 15:10:43 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Reply-To: Brian.Inglis@Shaw.ca
Subject: Re: Using C23 digit separators not locale digit grouping characters
Content-Language: en-CA
To:     linux-man@vger.kernel.org
Cc:     Alejandro Colomar <alx.manpages@gmail.com>,
        Jakub Wilk <jwilk@jwilk.net>, Tom Schwindl <schwindl@posteo.de>
References: <19a71139-7807-2692-3eec-16a0f754911d@Shaw.ca>
 <717e8fb9-9159-65f8-093e-a117c82be704@gmail.com>
 <aebef9ae-1bd0-b0e7-b333-7269dbaf50a2@Shaw.ca>
 <5c2be1e7-4c75-dc20-8d2e-a528edea7e32@gmail.com>
 <f93b5307-4f11-eeeb-3a52-1dc1b4ea0ac8@Shaw.ca>
 <8ecb3f01-2035-9408-9605-1e64e6f25b5a@gmail.com>
 <CQ8YOCHX1IZ1.C1YACUOT0QD3@morphine>
 <20230208210047.53poygyjqxffxodn@jwilk.net>
 <cef9233c-3b00-7b0c-6446-cb55b0f4d3ed@gmail.com>
From:   Brian Inglis <Brian.Inglis@Shaw.ca>
Organization: Inglis
In-Reply-To: <cef9233c-3b00-7b0c-6446-cb55b0f4d3ed@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CMAE-Envelope: MS4xfOZ6XfTzODPg8xVmNLQ0B4gnob2OLuippDA3cL6nnv2VZ1qhcBawEVwwB8QPrBF7sZSCRR8Kk3dAkBoDoMlC34/1NrV36Ki7pW7OsB48AXFqQoALJiYN
 lYCYuW+5Ne1kzP0x9b5xsLOZBO6/gGnes6HD/CN8ANDP8xHqcRaAbNJeyLXXrxuY2tyzQVyygLtq4n+5NRJqs3xb4M7Chsm4h48XlBXvFMrR3QqW3HfXddbO
 Fg9j6e6U2aAE7+AZLHJ9HJRdRLbS2uci9lheCHuigftxngHI76bupd+u62Dod3AP
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2023-02-08 14:06, Alejandro Colomar wrote:
> Hi Jakub!
> 
> On 2/8/23 22:00, Jakub Wilk wrote:
>> * Tom Schwindl <schwindl@posteo.de>, 2023-02-03 13:27:
>>> I wonder if I'm the only one who thinks that the digit separators look
>>> irritating for both, hex and octal.
>>
>> Not only you.
>>
>> I think C23's choice of separator is particularly bad. I found underscores
>> (used in Perl, Ruby, Python 3, Java, Rust, and likely many others) more
>> palatable.
> 
> IIRC, that was suggested at some point for C23, but don't remember; maybe it's a glitch in my memory (I think it was suggested for separating binary (0b) input).  I can't understand how they chose ', especially when in some countries it's used as the decimal point  (I don't know if that's official, but I've seen it in hand-written text quite often here in Spain).  I agree that it's probably one of the worst separators they could have chosen.
> 
> Do you think we should use an underscore in the manual pages?  Or what would you do?

See discussion 10 years ago in WG21 C++:

	https://open-std.org/jtc1/sc22/wg21/docs/papers/2013/n3499.html

where ambiguity with C++ user-defined literal unit operators and "_" was an 
issue, and Objective C/C++ parsing problems with using whitespace.

So in 2020 WG14 C, opting for compatibility with WG21 C++; quoting:

	Prior Art: C++, Intel ICC, EDG, Microsoft Visual Studio
in
	https://www.open-std.org/JTC1/SC22/WG14/www/docs/n2606.pdf
	https://www.open-std.org/JTC1/sc22/wg14/www/docs/n2626.pdf

FYI see comment in:

	https://thephd.dev/c-the-improvements-june-september-virtual-c-meeting

"Guess who uses apostrophes for digit separators! The SWISS! And who is in 
Switzerland? ISO! I see WG14 is no less corrupt than WG21.
	— Miro Knejp"	;^>

We are going to be seeing these used a lot in future from GCC , and as man-pages 
are immersed in a sea of C, we might as well start getting used to it, which is 
why I made that suggestion.

-- 
Take care. Thanks, Brian Inglis			Calgary, Alberta, Canada

La perfection est atteinte			Perfection is achieved
non pas lorsqu'il n'y a plus rien à ajouter	not when there is no more to add
mais lorsqu'il n'y a plus rien à retirer	but when there is no more to cut
			-- Antoine de Saint-Exupéry
