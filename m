Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A9E0E5ABF06
	for <lists+linux-man@lfdr.de>; Sat,  3 Sep 2022 14:54:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229504AbiICMyT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Sep 2022 08:54:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54532 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229594AbiICMyS (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Sep 2022 08:54:18 -0400
X-Greylist: delayed 422 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Sat, 03 Sep 2022 05:54:15 PDT
Received: from mailrelay.tugraz.at (mailrelay.tugraz.at [129.27.2.202])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C9F5326C8
        for <linux-man@vger.kernel.org>; Sat,  3 Sep 2022 05:54:15 -0700 (PDT)
Received: from [192.168.0.150] (84-115-222-2.cable.dynamic.surfer.at [84.115.222.2])
        by mailrelay.tugraz.at (Postfix) with ESMTPSA id 4MKZKw6bRWz1LLF5;
        Sat,  3 Sep 2022 14:47:00 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailrelay.tugraz.at 4MKZKw6bRWz1LLF5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tugraz.at;
        s=mailrelay; t=1662209221;
        bh=Bagu+LpsnQuxes2s9Vn4Tx99g+u6lQQnYNh/4oC/bys=;
        h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
        b=nwOZZxxHofSvVRhkrKnVvngLMHx7kRg5apbwjYyJHzLNAxqNc3+m+9gl/qFUW2KW8
         3thFUKFA2EKmVpDafFHeY20saq8bMmblJlqg2LmthiCAIHpiE9mZY8odEn4U+BbuSq
         rQBcQqxAVJJISIJercKAuPStIkVKdUlndmh/ROfc=
Message-ID: <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
From:   Martin Uecker <uecker@tugraz.at>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        JeanHeyd Meneide <wg14@soasis.org>
Cc:     Ingo Schwarze <schwarze@usta.de>, linux-man@vger.kernel.org,
        gcc@gcc.gnu.org
Date:   Sat, 03 Sep 2022 14:47:00 +0200
In-Reply-To: <2abccaa2-d472-4c5b-aea6-7a2dddd665da@gmail.com>
References: <20220826210710.35237-1-alx.manpages@gmail.com>
         <Ywn7jMtB5ppSW0PB@asta-kit.de>
         <89d79095-d1cd-ab2b-00e4-caa31126751e@gmail.com>
         <YwoXTGD8ljB8Gg6s@asta-kit.de>
         <e29de088-ae10-bbc8-0bfd-90bbb63aaf06@gmail.com>
         <5ba53bad-019e-8a94-d61e-85b2f13223a9@gmail.com>
         <CACqA6+mfaj6Viw+LVOG=nE350gQhCwVKXRzycVru5Oi4EJzgTg@mail.gmail.com>
         <491a930d-47eb-7c86-c0c4-25eef4ac0be0@gmail.com>
         <2abccaa2-d472-4c5b-aea6-7a2dddd665da@gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-TUG-Backscatter-control: G/VXY7/6zeyuAY/PU2/0qw
X-Spam-Scanner: SpamAssassin 3.003001 
X-Spam-Score-relay: -0.4
X-Scanned-By: MIMEDefang 2.74 on 129.27.10.116
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

...
> > 
> >        Whether or not you feel like the manpages are the best place to 
> > start that, I'll leave up to you!
> 
> I'll try to defend the reasons to start this in the man-pages.
> 
> This feature is mostly for documentation purposes, not being meaningful 
> for code at all (for some meaning of meaningful), since it won't change 
> the function definition in any way, nor the calls to it.  At least not 
> by itself; static analysis may get some benefits, though.


GCC will warn if the bound is specified inconsistently between
declarations and also emit warnings if it can see that a buffer
which is passed is too small:

https://godbolt.org/z/PsjPG1nv7


BTW: If you declare pointers to arrays (not first elements) you
can get run-time bounds checking with UBSan:

https://godbolt.org/z/TvMo89WfP


> 
> Also, new code can be designed from the beginning so that sizes go 
> before their corresponding arrays, so that new code won't typically be 
> affected by the lack of this feature in the language.
> 
> This leaves us with legacy code, especially libc, which just works, and 
> doesn't have any urgent needs to change their prototypes in this regard 
> (they could, to improve static analysis, but not what we'd call urgent).

It would be useful step to find out-of-bounds problem in
applications using libc.


> And since most people don't go around reading libc headers searching for 
> function declarations (especially since there are manual pages that show 
> them nicely), it's not like the documentation of the code depends on how 
> the function is _actually_ declared in code (that's why I also defended 
> documenting restrict even if glibc wouldn't have cared to declare it), 
> but it depends basically on what the manual pages say about the 
> function.  If the manual pages say a function gets 'restrict' params, it 
> means it gets 'restrict' params, no matter what the code says, and if it 
> doesn't, the function accepts overlapping pointers, at least for most of 
> the public (modulo manual page bugs, that is).
> 
> So this extension could very well be added by the manual pages, as a 
> form of documentation, and then maybe picked up by compilers that have 
> enough resources to implement it.
> 
> 
> Considering that this feature is mostly about documentation (and a bit 
> of static analysis too), the documentation should be something appealing 
> to the reader.
> 
> 
> Let's take an example:
> 
> 
>         int getnameinfo(const struct sockaddr *restrict addr,
>                         socklen_t addrlen,
>                         char *restrict host, socklen_t hostlen,
>                         char *restrict serv, socklen_t servlen,
>                         int flags);
> 
> and some transformations:
> 
> 
>         int getnameinfo(const struct sockaddr *restrict addr,
>                         socklen_t addrlen,
>                         char host[restrict hostlen], socklen_t hostlen,
>                         char serv[restrict servlen], socklen_t servlen,
>                         int flags);
> 
> 
>         int getnameinfo(socklen_t hostlen;
>                         socklen_t servlen;
>                         const struct sockaddr *restrict addr,
>                         socklen_t addrlen,
>                         char host[restrict hostlen], socklen_t hostlen,
>                         char serv[restrict servlen], socklen_t servlen,
>                         int flags);
> 
> (I'm not sure if I used correct GNU syntax, since I never used that 
> extension myself.)
> 
> The first transformation above is non-ambiguous, as concise as possible, 
> and its only issue is that it might complicate the implementation a bit 
> too much.  I don't think forward-using a parameter's size would be too 
> much of a parsing problem for human readers.


I personally find the second form not terrible.  Being
able to read code left-to-right, top-down is helpful in more
complicated examples.



> The second one is unnecessarily long and verbose, and semicolons are not 
> very distinguishable from commas, for human readers, which may be very 
> confusing.
> 
>         int foo(int a; int b[a], int a);
>         int foo(int a, int b[a], int o);
> 
> Those two are very different to the compiler, and yet very similar to 
> the human eye.  I don't like it.  The fact that it allows for simpler 
> compilers isn't enough to overcome the readability issues.

This is true, I would probably use it with a comma and/or
syntax highlighting.


> I think I'd prefer having the forward-using syntax as a non-standard 
> extension --or a standard but optional language feature-- to avoid 
> forcing small compilers to implement it, rather than having the GNU 
> extension standardized in all compilers.

The problems with the second form are:

- it is not 100% backwards compatible (which maybe ok though) as
the semantics of the following code changes:

int n;
int foo(int a[n], int n); // refers to different n!

Code written for new compilers could then be misunderstood
by old compilers when a variable with 'n' is in scope.


- it would generally be fundamentally new to C to have
backwards references and parser might need to be changes
to allow this


- a compiler or tool then has to deal also with ugly
corner cases such as mutual references:

int foo(int (*a)[sizeof(*b)], int (*b)[sizeof(*a)]);



We could consider new syntax such as

int foo(char buf[.n], int n);


Personally, I would prefer the conceptual simplicity of forward
declarations and the fact that these exist already in GCC
over any alternative.  I would also not mind new syntax, but
then one has to define the rules more precisely to avoid the
aforementioned problems. 


Martin




