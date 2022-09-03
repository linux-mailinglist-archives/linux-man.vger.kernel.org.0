Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6E8D65ABF61
	for <lists+linux-man@lfdr.de>; Sat,  3 Sep 2022 16:35:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229594AbiICOfw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Sep 2022 10:35:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51368 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229516AbiICOfv (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Sep 2022 10:35:51 -0400
Received: from mailrelay.tugraz.at (mailrelay.tugraz.at [129.27.2.202])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B7CD31DDC
        for <linux-man@vger.kernel.org>; Sat,  3 Sep 2022 07:35:47 -0700 (PDT)
Received: from [192.168.0.150] (84-115-222-2.cable.dynamic.surfer.at [84.115.222.2])
        by mailrelay.tugraz.at (Postfix) with ESMTPSA id 4MKclB2CF0z1LLF5;
        Sat,  3 Sep 2022 16:35:34 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailrelay.tugraz.at 4MKclB2CF0z1LLF5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tugraz.at;
        s=mailrelay; t=1662215735;
        bh=8363BPQnUTApnD288wpG6D1koeGL49gmWIsQYozDpzY=;
        h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
        b=HB0kapb+ETfUjmrFyD7uoYDJDvMPSpk60RQSR+kobg0RuRzGgUltE+XB/WweB5P9W
         I27CHaE41GEbqcXaj4V9juxwQrq1EhfzjTpA1DjLjwjYRGI8Buxvy0kVurr/EcDP1n
         GxYTWdkmP/ZccSdLnmg+PAJMtjg1kpZ6jRPyOYwc=
Message-ID: <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
From:   Martin Uecker <uecker@tugraz.at>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Ingo Schwarze <schwarze@usta.de>,
        JeanHeyd Meneide <wg14@soasis.org>, linux-man@vger.kernel.org,
        gcc@gcc.gnu.org
Date:   Sat, 03 Sep 2022 16:35:33 +0200
In-Reply-To: <fcf6f3f7-f61d-9b91-bfeb-370849439ce3@gmail.com>
References: <20220826210710.35237-1-alx.manpages@gmail.com>
         <Ywn7jMtB5ppSW0PB@asta-kit.de>
         <89d79095-d1cd-ab2b-00e4-caa31126751e@gmail.com>
         <YwoXTGD8ljB8Gg6s@asta-kit.de>
         <e29de088-ae10-bbc8-0bfd-90bbb63aaf06@gmail.com>
         <5ba53bad-019e-8a94-d61e-85b2f13223a9@gmail.com>
         <CACqA6+mfaj6Viw+LVOG=nE350gQhCwVKXRzycVru5Oi4EJzgTg@mail.gmail.com>
         <491a930d-47eb-7c86-c0c4-25eef4ac0be0@gmail.com>
         <2abccaa2-d472-4c5b-aea6-7a2dddd665da@gmail.com>
         <4475b350c2a4d60da540c0f3055f466640e6c409.camel@tugraz.at>
         <fcf6f3f7-f61d-9b91-bfeb-370849439ce3@gmail.com>
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

Am Samstag, den 03.09.2022, 15:41 +0200 schrieb Alejandro Colomar:
> Hi Martin,
> 
> On 9/3/22 14:47, Martin Uecker wrote:
> [...]
> 
> > GCC will warn if the bound is specified inconsistently between
> > declarations and also emit warnings if it can see that a buffer
> > which is passed is too small:
> > 
> > https://godbolt.org/z/PsjPG1nv7
> 
> That's very good news!
> 
> BTW, it's nice to see that GCC doesn't need 'static' for array 
> parameters.  I never understood what the static keyword adds there. 
> There's no way one can specify an array size an mean anything other than 
> requiring that, for a non-null pointer, the array should have at least 
> that size.

From the C standard's point of view,

void foo(int n, char buf[n]);

is semantically equivalent to

void foo(int, char *buf);

and without 'static' the 'n' has no further meaning
(this is different for pointers to arrays).

The static keyword implies that the pointer is be valid and
non-zero and that there must be at least 'n' elements
accessible, so in some sense it is stronger (it implies 
alid non-zero pointers), but at the same time it does not
imply a bound.

But I agree that 'n' without 'static' should simply imply
a bound and I think we should use it this way even when
the standard currently does not attach a meaning to it.

> > 
> > BTW: If you declare pointers to arrays (not first elements) you
> > can get run-time bounds checking with UBSan:
> > 
> > https://godbolt.org/z/TvMo89WfP
> 
> Couldn't that be caught at compile time?  n is certainly out of bounds 
> always for such an array, since the last element is n-1.

Yes, in this example it could (and ideally should) be
detected at compile time.

But this notation already today allows passing of a bound
across API  boundaries and thus enables run-time detection of
out-of-bound accesses even in scenarious where it could
not be found at compile time.

> > 
> > > Also, new code can be designed from the beginning so that sizes go
> > > before their corresponding arrays, so that new code won't typically be
> > > affected by the lack of this feature in the language.
> > > 
> > > This leaves us with legacy code, especially libc, which just works, and
> > > doesn't have any urgent needs to change their prototypes in this regard
> > > (they could, to improve static analysis, but not what we'd call urgent).
> > 
> > It would be useful step to find out-of-bounds problem in
> > applications using libc.
> 
> Yep, it would be very useful for that.  Not urgent, but yes, very useful.
> 
> 
> > > Let's take an example:
> > > 
> > > 
> > >          int getnameinfo(const struct sockaddr *restrict addr,
> > >                          socklen_t addrlen,
> > >                          char *restrict host, socklen_t hostlen,
> > >                          char *restrict serv, socklen_t servlen,
> > >                          int flags);
> > > 
> > > and some transformations:
> > > 
> > > 
> > >          int getnameinfo(const struct sockaddr *restrict addr,
> > >                          socklen_t addrlen,
> > >                          char host[restrict hostlen], socklen_t hostlen,
> > >                          char serv[restrict servlen], socklen_t servlen,
> > >                          int flags);
> > > 
> > > 
> > >          int getnameinfo(socklen_t hostlen;
> > >                          socklen_t servlen;
> > >                          const struct sockaddr *restrict addr,
> > >                          socklen_t addrlen,
> > >                          char host[restrict hostlen], socklen_t hostlen,
> > >                          char serv[restrict servlen], socklen_t servlen,
> > >                          int flags);
> > > 
> > > (I'm not sure if I used correct GNU syntax, since I never used that
> > > extension myself.)
> > > 
> > > The first transformation above is non-ambiguous, as concise as possible,
> > > and its only issue is that it might complicate the implementation a bit
> > > too much.  I don't think forward-using a parameter's size would be too
> > > much of a parsing problem for human readers.
> > 
> > I personally find the second form not terrible.  Being
> > able to read code left-to-right, top-down is helpful in more
> > complicated examples.
> > 
> > 
> > 
> > > The second one is unnecessarily long and verbose, and semicolons are not
> > > very distinguishable from commas, for human readers, which may be very
> > > confusing.
> > > 
> > >          int foo(int a; int b[a], int a);
> > >          int foo(int a, int b[a], int o);
> > > 
> > > Those two are very different to the compiler, and yet very similar to
> > > the human eye.  I don't like it.  The fact that it allows for simpler
> > > compilers isn't enough to overcome the readability issues.
> > 
> > This is true, I would probably use it with a comma and/or
> > syntax highlighting.
> > 
> > 
> > > I think I'd prefer having the forward-using syntax as a non-standard
> > > extension --or a standard but optional language feature-- to avoid
> > > forcing small compilers to implement it, rather than having the GNU
> > > extension standardized in all compilers.
> > 
> > The problems with the second form are:
> > 
> > - it is not 100% backwards compatible (which maybe ok though) as
> > the semantics of the following code changes:
> > 
> > int n;
> > int foo(int a[n], int n); // refers to different n!
> > 
> > Code written for new compilers could then be misunderstood
> > by old compilers when a variable with 'n' is in scope.
> > 
> > 
> 
> Hmmm, this one is serious.  I can't seem to solve it with that syntax.
> 
> > - it would generally be fundamentally new to C to have
> > backwards references and parser might need to be changes
> > to allow this
> > 
> > 
> > - a compiler or tool then has to deal also with ugly
> > corner cases such as mutual references:
> > 
> > int foo(int (*a)[sizeof(*b)], int (*b)[sizeof(*a)]);
> > 
> > 
> > 
> > We could consider new syntax such as
> > 
> > int foo(char buf[.n], int n);
> > 
> > 
> > Personally, I would prefer the conceptual simplicity of forward
> > declarations and the fact that these exist already in GCC
> > over any alternative.  I would also not mind new syntax, but
> > then one has to define the rules more precisely to avoid the
> > aforementioned problems.
> 
> What about taking something from K&R functions for this?:
> 
> int foo(q; w; int a[q], int q, int s[w], int w);
> 
> By not specifying the types, the syntax is again short.
> This is left-to-right, so no problems with global variables, and no need 
> for complex parsers.
> Also, by not specifying types, now it's more obvious to the naked eye 
> that there's a difference:

I am ok with the syntax, but I am not sure how this would
work. If the type is determined only later you would still
have to change parsers (some C compilers do type
checking  and folding during parsing, so need the types
to be known during parsing) and you also still have the
problem with the mutual dependencies.

We thought about using this syntax

int foo(char buf[.n], int n);

because it is new syntax which means we can restrict the
size to be the name of a parameter instead of allowing
arbitrary expressions, which then makes forward references
less problematic.  It is also consistent with designators in
initializers and could also be extend to annotate
flexible array members or for storing pointers to arrays
in structures:

struct {
  int n;
  char buf[.n];
};

struct {
  int n;
  char (*buf)[.n];
};


Martin


> 
>            int foo(a; int b[a], int a);
>            int foo(int a, int b[a], int o);
> 
> 
> What do you think about this syntax?



