Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A24F95A37C9
	for <lists+linux-man@lfdr.de>; Sat, 27 Aug 2022 15:08:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229840AbiH0NId (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 27 Aug 2022 09:08:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41166 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229677AbiH0NId (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 27 Aug 2022 09:08:33 -0400
Received: from scc-mailout-kit-02.scc.kit.edu (scc-mailout-kit-02.scc.kit.edu [IPv6:2a00:1398:9:f712::810d:e752])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B0252CE35
        for <linux-man@vger.kernel.org>; Sat, 27 Aug 2022 06:08:31 -0700 (PDT)
Received: from hekate.asta.kit.edu ([2a00:1398:5:f401::77])
        by scc-mailout-kit-02.scc.kit.edu with esmtps (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
        (envelope-from <schwarze@usta.de>)
        id 1oRvY5-004K8O-5v; Sat, 27 Aug 2022 15:08:29 +0200
Received: from login-1.asta.kit.edu ([2a00:1398:5:f400::72])
        by hekate.asta.kit.edu with esmtp (Exim 4.94.2)
        (envelope-from <schwarze@usta.de>)
        id 1oRvY4-007h0o-OL; Sat, 27 Aug 2022 15:08:28 +0200
Received: from schwarze by login-1.asta.kit.edu with local (Exim 4.92)
        (envelope-from <schwarze@usta.de>)
        id 1oRvY4-00070p-NP; Sat, 27 Aug 2022 15:08:28 +0200
Date:   Sat, 27 Aug 2022 15:08:28 +0200
From:   Ingo Schwarze <schwarze@usta.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     linux-man@vger.kernel.org, JeanHeyd Meneide <wg14@soasis.org>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
Message-ID: <YwoXTGD8ljB8Gg6s@asta-kit.de>
References: <20220826210710.35237-1-alx.manpages@gmail.com>
 <Ywn7jMtB5ppSW0PB@asta-kit.de>
 <89d79095-d1cd-ab2b-00e4-caa31126751e@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <89d79095-d1cd-ab2b-00e4-caa31126751e@gmail.com>
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alejandro,

Alejandro Colomar wrote on Sat, Aug 27, 2022 at 02:15:32PM +0200:
> On 8/27/22 13:10, Ingo Schwarze wrote:
>> Alejandro Colomar wrote:

>>> -.BI "char *getcwd(char *" buf ", size_t " size );
>>> +.BI "char *getcwd(char " buf [ size "], size_t " size );

>> I dislike this.
>> 
>> Manual pages should show function prototypes as they really are in
>> the header file, or if the header file contains useless fluff like
>> "restrict", a shortened form showing the essence that actually matters
>> for using the API.

> Regarding restrict, it is essential to differentiate memcpy(3) and 
> memmove(3), which are otherwise identical:
> 
>      void *memmove(void *dest, const void *src, size_t n);
> 
>      void *memcpy(void *restrict dest, const void *restrict src,
>                   size_t n);

Actually, the syntax of both is identical, only the semantics differ.

That said, you are right that using memcpy(3) when memmove(3) is
required is a famous and widespread bug.  I doubt putting "restrict"
into the SYNOPSIS will discourage careless programmers from making that
mistake though.

To me, "restrict" feels like a specialized tool for people writing
compiler optimizers, not like something important enough to clutter
API documenation.

> Do you regard the (abused) VLA syntax as something much worse than the 
> use of restrict?  Or are they more or less equivalent to you?

If your implementation really contains "restrict" in the header
file and it's standardized, putting it into the SYNOPSIS seems
acceptable to me.  Not necessary though and maybe somewhat noisy
and distracting.

Putting something that is not in the implementation and/or not
in the standard into the SYNOPSIS seems much worse to me.

And invalid syntax in the SYNOPSIS is even worse than that.
For example, people may attempt to use SYNOPSIS as an example
when designing their own, private function for a similar but
not identical purpose and end up writing non-portable code,
or even code that does not compile anywhere.

They may be wrong if they blame you for that, but i doubt they
will thank you.

>> They should certainly not show something imaginary
>> that does not match reality, and even less so using invalid syntax.

> Well, not that I haven't had those thoughts, but we already use ilegal 
> syntax in some cases for good reasons.  See for example open(2):
> 
>         int open(const char *pathname, int flags);
>         int open(const char *pathname, int flags, mode_t mode);
> 
> Of course, you can't declare two conflicting prototypes like that.

This does not seem quite as horrifying as

  char *getcwd(char buf[size], size_t size);

because at least each of the prototypes is valid.

My main concern about it would be that it is likely to make some people
think (and C++ programmers in particular :-/) that there is type
checking for the third and subsequent arguments, in which case they
will be unpleasantly surprised when accidentally writing something like

  open(pathname, flags, &some_var, mode);

and finding out later that it compiled and ran just fine, but the
resulting file wasn't quite as confidential as they hoped.

Explicitly displaying the ... to indicate the variable number of
arguments, by contrast, makes it very clear that an API is almost
certainly unusually dangerous and needs to be used with especial
diligence.

Either way, certainly not quite as bad as invalid syntax inside
a prototype...

Yours,
  Ingo
