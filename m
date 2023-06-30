Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C398E74373F
	for <lists+linux-man@lfdr.de>; Fri, 30 Jun 2023 10:32:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232470AbjF3Icv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Jun 2023 04:32:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42400 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232568AbjF3Ico (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Jun 2023 04:32:44 -0400
Received: from smtp.gentoo.org (woodpecker.gentoo.org [140.211.166.183])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ADF9DF5
        for <linux-man@vger.kernel.org>; Fri, 30 Jun 2023 01:32:43 -0700 (PDT)
References: <20230628175329.GA16113@brightrain.aerifal.cx>
 <add1e27e-e10c-e70d-ed5e-85bb0d4d4101@cs.ucla.edu>
 <20230628191525.GS20050@brightrain.aerifal.cx>
 <8e65a459-a933-38b4-5f82-f7016c107d91@cs.ucla.edu>
 <CACb0b4nkLFOi4q=SSBSD_7aH4FRt9H4sRHQz6wF5O-x9PiwnFA@mail.gmail.com>
 <CACb0b4=uq=Sa=SdqbAu4KovfsJfowm6cz4tjyQ-YYaHX9z_Fxg@mail.gmail.com>
User-agent: mu4e 1.10.4; emacs 29.0.92
From:   Sam James <sam@gentoo.org>
To:     Jonathan Wakely <jwakely@redhat.com>
Cc:     libc-coord@lists.openwall.com, Rich Felker <dalias@libc.org>,
        linux-man@vger.kernel.org, musl@lists.openwall.com,
        libc-alpha@sourceware.org
Subject: Re: [libc-coord] Re: regression in man pages for interfaces using
 loff_t
Date:   Fri, 30 Jun 2023 09:30:57 +0100
In-reply-to: <CACb0b4=uq=Sa=SdqbAu4KovfsJfowm6cz4tjyQ-YYaHX9z_Fxg@mail.gmail.com>
Message-ID: <87a5wh2vvc.fsf@gentoo.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org


Jonathan Wakely via Libc-alpha <libc-alpha@sourceware.org> writes:

> On Fri, 30 Jun 2023 at 09:02, Jonathan Wakely wrote:
>>
>> On Fri, 30 Jun 2023 at 08:11, Paul Eggert wrote:
>>>
>>> On 2023-06-28 12:15, Rich Felker wrote:
>>>
>>> > There's also the problem that off64_t is "exactly 64-bit" which makes
>>> > it unsuitable as an interface type for cross-platform functions where
>>> > one could imagine the native type being larger (rather horrifying but
>>> > possible).
>>>
>>> Although we won't have files with 2**63 bytes any time soon, this is the
>>> best argument for preferring "loff_t" to "off64_t".
>>>
>>> But come to think of it, it'd be better to document the type simply as
>>> "off_t", with a footnote saying the equivalent of "this assumes that on
>>> 32-bit glibc platforms you compile with -DFILE_OFFSET_BITS=64 like any
>>> sane person would." The intent really is off_t here, and that will
>>> remain true even if off_t ever widens past 64 bits.
>>>
>>> All the apps I know that use the syscalls in question simply pass
>>> values that fit in off_t to these functions, and this will work
>>> regardless of whether these apps are compiled with 64- or (horrors!)
>>> 32-bit off_t. Admittedly the footnote solution would not be perfect, but
>>> it's good enough, and it would sidestep the loff_t vs off64_t confusion.
>>
>>
>> For APIs like copy_file_range(2) and splice(2) the arguments are
>> loff_t* so you can't just "pass arguments that fit in off_t" to
>> them. You have to get the pointer type correct, because writing
>> 64-bits through a 32-bit off_t would be bad. And in C++ it won't
>> even compile unless you get the pointer types exactly right (C
>> compilers will typically allow the mismatch with just a warning).
>>
>> People miss footnotes. I would really prefer if the signature shown
>> in the man page used a type that will actually compile. If it shows
>> off_t, that won't compile for 32-bit systems without LFS support
>> enabled.
>
> Apologies for sending the mail above as HTML - replying as text/plain
> for those it didn't reach.

Yes, please. The footnote is likely to be misunderstood at best (if
people even see it, they'll think it's some obscure portability issue
and try to #ifdef or something).

Apparently we got confused by this before as well: https://github.com/gentoo/portage/commit/1a7aeb58c4e687e4d4012054b56373f27941a067
(https://bugs.gentoo.org/617778), so I'll need to look at that now too.
