Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C38F75ABF8D
	for <lists+linux-man@lfdr.de>; Sat,  3 Sep 2022 17:32:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231290AbiICPcE (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 3 Sep 2022 11:32:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231134AbiICPcE (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 3 Sep 2022 11:32:04 -0400
Received: from mailrelay.tugraz.at (mailrelay.tugraz.at [129.27.2.202])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37B225AA2C
        for <linux-man@vger.kernel.org>; Sat,  3 Sep 2022 08:32:02 -0700 (PDT)
Received: from [192.168.0.150] (84-115-222-2.cable.dynamic.surfer.at [84.115.222.2])
        by mailrelay.tugraz.at (Postfix) with ESMTPSA id 4MKf073wqSz3wch;
        Sat,  3 Sep 2022 17:31:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tugraz.at;
        s=mailrelay; t=1662219111;
        bh=l40ZBvVEiUqUu1MGEFfvPXYgAZiSiY9gymtsBuQfUMM=;
        h=Subject:From:To:Cc:Date:In-Reply-To:References;
        b=J7bB9EEkNtKj/dG0OnPZFSz+xwbO+ma8Dl3JCErqEbAG8RVgAwomixnGndWywqrN0
         FvQVo0T9urg69OZkkI07CriVWHTmbmTELiaJJ3wqU81KV6IY5ssm4mwLxQGSl6CpTH
         J3vzj6R8huIM+9Qa8KYyfWY84yF4LjvwWTqwWtu8=
Message-ID: <4e3fee795769544738b3dc793aa95d6b34b72047.camel@tugraz.at>
Subject: Re: [PATCH] Various pages: SYNOPSIS: Use VLA syntax in function
 parameters
From:   Martin Uecker <uecker@tugraz.at>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Ingo Schwarze <schwarze@usta.de>,
        JeanHeyd Meneide <wg14@soasis.org>, linux-man@vger.kernel.org,
        gcc@gcc.gnu.org
Date:   Sat, 03 Sep 2022 17:31:51 +0200
In-Reply-To: <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com>
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
         <d524528c29f806b763a2d394abc1241f6b2dc0cb.camel@tugraz.at>
         <51f5a2f2-84c1-bc75-cf94-0cdc1771d37f@gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-TUG-Backscatter-control: G/VXY7/6zeyuAY/PU2/0qw
X-Spam-Scanner: SpamAssassin 3.003001 
X-Spam-Score-relay: -0.4
X-Scanned-By: MIMEDefang 2.74 on 129.27.10.117
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alejandro,

Am Samstag, den 03.09.2022, 16:59 +0200 schrieb Alejandro Colomar:
> Hi Martin,
> 
> On 9/3/22 16:35, Martin Uecker wrote:
> > Am Samstag, den 03.09.2022, 15:41 +0200 schrieb Alejandro Colomar:
> > > Hi Martin,
> > > 
> > > On 9/3/22 14:47, Martin Uecker wrote:
> > > [...]
> > > 
> > > > GCC will warn if the bound is specified inconsistently between
> > > > declarations and also emit warnings if it can see that a buffer
> > > > which is passed is too small:
> > > > 
> > > > https://godbolt.org/z/PsjPG1nv7
> > > 
> > > That's very good news!
> > > 
> > > BTW, it's nice to see that GCC doesn't need 'static' for array
> > > parameters.  I never understood what the static keyword adds there.
> > > There's no way one can specify an array size an mean anything other than
> > > requiring that, for a non-null pointer, the array should have at least
> > > that size.
> > 
> >  From the C standard's point of view,
> > 
> > void foo(int n, char buf[n]);
> > 
> > is semantically equivalent to
> > 
> > void foo(int, char *buf);
> > 
> > and without 'static' the 'n' has no further meaning
> > (this is different for pointers to arrays).
> 
> I know.  I just don't understand the rationale for that decission. :/

I guess it made sense in the past, but is simply not
what we need today.

> > The static keyword implies that the pointer is be valid and
> > non-zero and that there must be at least 'n' elements
> > accessible, so in some sense it is stronger (it implies
> > alid non-zero pointers), but at the same time it does not
> > imply a bound.
> 
> That stronger meaning, I think is a mistake by the standard.
> Basically, [static n] means the same as [n] combined with [[gnu::nonnull]].
> What the standard should have done would be to keep those two things 
> separate, since one may want to declare non-null non-array pointers, or 
> possibly-null array ones.  So the standard should have standardized some 
> form of nonnull for that.  

I agree the situation is not good.  

> But the recent discussion about presenting 
> nonnull pointers as [static 1] is horrible.  But let's wait till the 
> future hopefully fixes this.

yes, [static 1] is problematic because then the number
can not be used as a bound anymore. 

My experience is that if one wants to see something fixed,
one has to push for it.  Standardization is meant
to standardize existing practice, so if we want to see
this improved, we can not wait for this.

> > But I agree that 'n' without 'static' should simply imply
> > a bound and I think we should use it this way even when
> > the standard currently does not attach a meaning to it.
> 
> Yep.
> 
> [...]
> 
> > > What about taking something from K&R functions for this?:
> > > 
> > > int foo(q; w; int a[q], int q, int s[w], int w);
> > > 
> > > By not specifying the types, the syntax is again short.
> > > This is left-to-right, so no problems with global variables, and no need
> > > for complex parsers.
> > > Also, by not specifying types, now it's more obvious to the naked eye
> > > that there's a difference:
> > 
> > I am ok with the syntax, but I am not sure how this would
> > work. If the type is determined only later you would still
> > have to change parsers (some C compilers do type
> > checking  and folding during parsing, so need the types
> > to be known during parsing) and you also still have the
> > problem with the mutual dependencies.
> 
> This syntax resembles a lot K&R syntax.  Any C compiler that supports 
> them (and I guess most compilers out there do) should be easily 
> convertible to support this syntax (at least more easily than other 
> alternatives).  But this is just a guess.

In K&R syntax this worked for definition:

void foo(y, n)
 int n;
 int y[n];
{ ...

But this worked because you could reorder the
declarations so that later declarations could
refer to previous ones.

So one could do

int foo(int n, char buf[n];  buf, n);

where the second part defines the order of
the parameter or

int foo(buf, n; int n, char buf[n]);

where the first part defins the order,
but the declarations need to have the size
first. But then you need to specify each
parameter twice...


> > We thought about using this syntax
> > 
> > int foo(char buf[.n], int n);
> > 
> > because it is new syntax which means we can restrict the
> > size to be the name of a parameter instead of allowing
> > arbitrary expressions, which then makes forward references
> > less problematic.  It is also consistent with designators in
> > initializers and could also be extend to annotate
> > flexible array members or for storing pointers to arrays
> > in structures:
> 
> It's not crazy.  I don't have much to argue against it.
> 
> > struct {
> >    int n;
> >    char buf[.n];
> > };
> > 
> > struct {
> >    int n;
> >    char (*buf)[.n];
> > };
> 
> Perhaps some doubts about how this would work for nested structures, but 
> not unreasonable.

It is not implemented though...

Martin


> Cheers,
> 
> Alex
> 
> -- 
> Alejandro Colomar
> <http://www.alejandro-colomar.es/>

