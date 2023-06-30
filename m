Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 923037435A3
	for <lists+linux-man@lfdr.de>; Fri, 30 Jun 2023 09:18:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230436AbjF3HSD (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 30 Jun 2023 03:18:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229967AbjF3HRy (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 30 Jun 2023 03:17:54 -0400
X-Greylist: delayed 391 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Fri, 30 Jun 2023 00:17:53 PDT
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E7DA10EC
        for <linux-man@vger.kernel.org>; Fri, 30 Jun 2023 00:17:53 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
        by mail.cs.ucla.edu (Postfix) with ESMTP id B073F3C02213D;
        Fri, 30 Jun 2023 00:11:21 -0700 (PDT)
Received: from mail.cs.ucla.edu ([127.0.0.1])
        by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10032)
        with ESMTP id c0zTpjrBosWI; Fri, 30 Jun 2023 00:11:21 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
        by mail.cs.ucla.edu (Postfix) with ESMTP id 3C1BB3C09FA21;
        Fri, 30 Jun 2023 00:11:21 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu 3C1BB3C09FA21
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
        s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1688109081;
        bh=zxpMGfMak2e6fPlpd3KfrxdoC1DGm9WDuQgEbnZ5Q7s=;
        h=Message-ID:Date:MIME-Version:To:From;
        b=mSGMd7y2mZNXivMym3dWdp6TjHIz09km/lpHKVZ7Fk9cxN3UEyufGNjZsuThu/WvC
         6lLHgvA61HGaSycpJSZoNBKtDfyJSe1KZztGrbtrLMM0PheD9AQJ4TKnFOUQjH2sJt
         dLp3D2KJB27ol7RqH6mKLbOD00ORF6XflI20xry/NXTqejKlICrzWkuPnpYXk236Zo
         Jt9PiwKiybuDO3v4S0jsD1y3XUh6J251MsfOR3WUlkltpQq27jEHm9piv8MHg+QyZw
         uJUVXTGf+KKcm3QTbWQfe4QtdYbZjFzig/OK5bqZFlHaKLQpTRusGrw29FEyklODQp
         aaeFJ909WhMAA==
X-Virus-Scanned: amavisd-new at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
        by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavisd-new, port 10026)
        with ESMTP id 1zTvO6zJ2fg5; Fri, 30 Jun 2023 00:11:21 -0700 (PDT)
Received: from [192.168.1.9] (cpe-172-91-119-151.socal.res.rr.com [172.91.119.151])
        by mail.cs.ucla.edu (Postfix) with ESMTPSA id 093343C02213D;
        Fri, 30 Jun 2023 00:11:21 -0700 (PDT)
Message-ID: <8e65a459-a933-38b4-5f82-f7016c107d91@cs.ucla.edu>
Date:   Fri, 30 Jun 2023 00:11:20 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To:     Rich Felker <dalias@libc.org>
Cc:     linux-man@vger.kernel.org, musl@lists.openwall.com,
        libc-alpha@sourceware.org, libc-coord@lists.openwall.com
References: <20230628175329.GA16113@brightrain.aerifal.cx>
 <add1e27e-e10c-e70d-ed5e-85bb0d4d4101@cs.ucla.edu>
 <20230628191525.GS20050@brightrain.aerifal.cx>
From:   Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
Subject: Re: regression in man pages for interfaces using loff_t
In-Reply-To: <20230628191525.GS20050@brightrain.aerifal.cx>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2023-06-28 12:15, Rich Felker wrote:

> There's also the problem that off64_t is "exactly 64-bit" which makes
> it unsuitable as an interface type for cross-platform functions where
> one could imagine the native type being larger (rather horrifying but
> possible).

Although we won't have files with 2**63 bytes any time soon, this is the 
best argument for preferring "loff_t" to "off64_t".

But come to think of it, it'd be better to document the type simply as 
"off_t", with a footnote saying the equivalent of "this assumes that on 
32-bit glibc platforms you compile with -DFILE_OFFSET_BITS=64 like any 
sane person would." The intent really is off_t here, and that will 
remain true even if off_t ever widens past 64 bits.

All the apps I know that use the syscalls in question simply pass 
values that fit in off_t to these functions, and this will work 
regardless of whether these apps are compiled with 64- or (horrors!) 
32-bit off_t. Admittedly the footnote solution would not be perfect, but 
it's good enough, and it would sidestep the loff_t vs off64_t confusion.


> As for why off64_t is not an appropriate type, it's defined by and
> associated with the LFS64 summit and the related intefaces, and
> governed by them. Using it makes these interfaces non-standardizable,
> because no standard is going to adopt a function whose public
> interface depends on another optional thing they don't want to
> mandate.

I don't see why not. For example, POSIX-2018 requires int32_t even 
though C17 says it's optional. So there's precedent for POSIX adopting a 
type that's optional elsewhere.

Also, to POSIX loff_t is just as optional as off64_t is. glibc defines 
neither type if the app #defines _POSIX_C_SOURCE as POSIX requires. So 
from a standardization viewpoint there's no reason to prefer one type 
over the other.


> This is exactly the problem why ISO C is stuck with the
> broken and unusable fseek/ftell that take long, and hasn't adopted
> fseeko/ftello from POSIX -- their public interfaces use the
> POSIX-governed type off_t, and as such, ISO C adopting them without
> adopting the whole POSIX off_t is out of the question.

I'm not sure what the point is here, as far as standardization goes. 
Neither ISO C nor POSIX use loff_t, and neither is likely to ever use 
it: ISO C won't even adopt off_t much less loff_t, and POSIX works just 
fine with off_t and doesn't need loff_t. (The same goes for off64_t of 
course.)


> As a particular practical concern, applications performing
> configure-like tests may use the existence of an off64_t type to
> conclude that the LFS64 API is supported on the system they're being
> built on.

Which apps do that?


But anyway this is all moot if we simply document the arguments as off_t 
with a footnote.
