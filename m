Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6EC0E69BB68
	for <lists+linux-man@lfdr.de>; Sat, 18 Feb 2023 19:32:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229591AbjBRSc0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 18 Feb 2023 13:32:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39288 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229436AbjBRScZ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 18 Feb 2023 13:32:25 -0500
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.66])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6B7614238
        for <linux-man@vger.kernel.org>; Sat, 18 Feb 2023 10:32:24 -0800 (PST)
Received: from submission (posteo.de [185.67.36.169]) 
        by mout02.posteo.de (Postfix) with ESMTPS id 65E812403CE
        for <linux-man@vger.kernel.org>; Sat, 18 Feb 2023 19:32:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
        t=1676745143; bh=NI6OtizlelSUD/3kd6ROAYrrP8DUXETW4KfVFDVDO1Y=;
        h=Date:Subject:From:To:Cc:From;
        b=KfEcjwlFpiufob93xbWgTSAqDmEKlUPwXyte/V1rk4uxq79NW+lE4WZz3FJjM7UsX
         ovJBPNcjHHOr8A4MDj+S3C9x0uC7Zigx78TLc5NsHIa9p1Hm0i5eYGzDm5t8gy5WNp
         GsAOG3Se7TN6CAEEJHgZFakeFPOPwUW874j0FvFmyZGnfnHO2dophV96qr/1JkupjJ
         bUbXYKUPlpx+4+i9AvgMhpBW6rVIdf/fHf3hfs5CfvsIUF2Btp4GZqKUq7RJtyDXkP
         rnP9T85Licsktzq3C2QAvq5sQiepYsmgh+prr3ahcWLQ5YYeGEvoXVKc7EkmZzZ0oM
         ujjD/RYiDdMqw==
Received: from customer (localhost [127.0.0.1])
        by submission (posteo.de) with ESMTPSA id 4PJy2t3ZZLz9rxD;
        Sat, 18 Feb 2023 19:32:22 +0100 (CET)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date:   Sat, 18 Feb 2023 18:31:25 +0000
Message-Id: <CQLWIYCOY3P2.3EHP3RAE6LJTD@morphine>
Subject: Re: [PATCH v3 5/6] man2/chmod.2: add C digit separators to clarify
 POSIX feature release dates and long numeric digit strings
From:   "Tom Schwindl" <schwindl@posteo.de>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
Cc:     "Alejandro Colomar" <alx.manpages@gmail.com>,
        "Brian Inglis" <Brian.Inglis@Shaw.ca>,
        "Linux Man Pages" <linux-man@vger.kernel.org>
References: <cover.1676489380.git.Brian.Inglis@Shaw.ca>
 <4c53ab820fbbeb3f3170f8d1d81a14713f256dd9.1676489381.git.Brian.Inglis@Shaw.ca> <804a2b6d-e1d7-3d23-7768-d0ee4933dd68@gmail.com> <CQLVH6DLAYFQ.T4VQOGPPW8CP@morphine> <20230218180803.be44sughf62klrjw@illithid>
In-Reply-To: <20230218180803.be44sughf62klrjw@illithid>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Branden,

On Sat Feb 18, 2023 at 7:08 PM CET, G. Branden Robinson wrote:
> Hi Tom,
>
> At 2023-02-18T17:42:05+0000, Tom Schwindl wrote:
> > > > diff --git a/man2/chmod.2 b/man2/chmod.2
> > > > index 8b5db74ed7e3..674b54368314 100644
> > > > --- a/man2/chmod.2
> > > > +++ b/man2/chmod.2
> > > > @@ -37,7 +37,7 @@ Feature Test Macro Requirements for glibc (see
> > > >  .nf
> > > >  .BR fchmod ():
> > > >      Since glibc 2.24:
> > > > -        _POSIX_C_SOURCE >=3D 199309L
> > > > +        _POSIX_C_SOURCE >=3D 1993\[aq]09L
> [...]
> > As long as I'm not completely lost, those values are often passed on
> > the command line via `-D`. Wouldn't a random \[aq] interfere with
> > shell quoting and result in hard to find bugs and unexpected bahavior?
> > So is it really a good idea to present those values in such a way in
> > the manpage? Or am I simply underestimating the intelligence of the
> > readers? :-)
>
> Do you expect C programmers to be more likely to copy and paste from the
> man page source document or from the rendered page (probably in a
> terminal window, but possibly from a PDF)?
>

I expect them to copy & paste from the rendered page but I thought writing =
out
"'" is a bit cumbersome so I refer to it as \[aq]. My "worry" with this was
that new programmers could potentially execute a command like the following=
:

  $ cc -D_POSIX_C_SOURCE=3D1993'09L test.c

and wonder what they did wrong.
But thinking about it a bit longer, copy & pasting from the rendered manpag=
e
might be the bigger issue. Or not, depending on the answer you'll give me :=
)

--=20
Best Regards,
Tom Schwindl

> The answer to the questions you posed depends on your answer to mine.
>
> Regards,
> Branden

