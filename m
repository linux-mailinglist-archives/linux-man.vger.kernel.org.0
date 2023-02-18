Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1CD7C69BB4D
	for <lists+linux-man@lfdr.de>; Sat, 18 Feb 2023 18:43:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229573AbjBRRnG (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 18 Feb 2023 12:43:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52824 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229441AbjBRRnF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 18 Feb 2023 12:43:05 -0500
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.66])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 707281040A
        for <linux-man@vger.kernel.org>; Sat, 18 Feb 2023 09:43:04 -0800 (PST)
Received: from submission (posteo.de [185.67.36.169]) 
        by mout02.posteo.de (Postfix) with ESMTPS id ED4D924021C
        for <linux-man@vger.kernel.org>; Sat, 18 Feb 2023 18:43:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
        t=1676742183; bh=DDi6My+rtgouLMZvA9G6lOvOvIQXdzcgiGSV4lH9VUA=;
        h=Date:Cc:Subject:From:To:From;
        b=aZhD24tzNLAbHPG3mBx9qyCALEnkxUH6ZQYzgbKN7dCEZTSRr82yFzTYmnTxOIIbs
         Zf2ec/B167rZy3G0lbfLypP8xzq46i7to0lU5gYupXnSyds3fO6PPpWxWswupKW6mt
         LjQFHMyp27UWycTUgElacgkGNHcRdD9x6AVOV1l2VWh4FLQF2biRSKJG/7r7c5a5/A
         dciFj16+3lXONQ72zMTn8xbZwZ6ZaHw4KMr2zG25D3aC3CkZOWFwOD+NvIIGePndsj
         zX4eGHE4o3hTwfOqX3KWJ9kK9moxOJdqtwgerdHxDyRFt90lzYSuLnHp3yz0uL115D
         xkDK13d6IGnlg==
Received: from customer (localhost [127.0.0.1])
        by submission (posteo.de) with ESMTPSA id 4PJwxy15ygz9rxF;
        Sat, 18 Feb 2023 18:43:02 +0100 (CET)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date:   Sat, 18 Feb 2023 17:42:05 +0000
Message-Id: <CQLVH6DLAYFQ.T4VQOGPPW8CP@morphine>
Cc:     "Linux Man Pages" <linux-man@vger.kernel.org>
Subject: Re: [PATCH v3 5/6] man2/chmod.2: add C digit separators to clarify
 POSIX feature release dates and long numeric digit strings
From:   "Tom Schwindl" <schwindl@posteo.de>
To:     "Alejandro Colomar" <alx.manpages@gmail.com>,
        "Brian Inglis" <Brian.Inglis@Shaw.ca>
References: <cover.1676489380.git.Brian.Inglis@Shaw.ca>
 <4c53ab820fbbeb3f3170f8d1d81a14713f256dd9.1676489381.git.Brian.Inglis@Shaw.ca> <804a2b6d-e1d7-3d23-7768-d0ee4933dd68@gmail.com>
In-Reply-To: <804a2b6d-e1d7-3d23-7768-d0ee4933dd68@gmail.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

On Wed Feb 15, 2023 at 10:10 PM CET, Alejandro Colomar wrote:
> Hi Brian,
>
> On 2/15/23 21:17, Brian Inglis wrote:
> > ---
> >  man2/chmod.2 | 30 +++++++++++++++---------------
> >  1 file changed, 15 insertions(+), 15 deletions(-)
> >=20
> > diff --git a/man2/chmod.2 b/man2/chmod.2
> > index 8b5db74ed7e3..674b54368314 100644
> > --- a/man2/chmod.2
> > +++ b/man2/chmod.2
> > @@ -37,7 +37,7 @@ Feature Test Macro Requirements for glibc (see
> >  .nf
> >  .BR fchmod ():
> >      Since glibc 2.24:
> > -        _POSIX_C_SOURCE >=3D 199309L
> > +        _POSIX_C_SOURCE >=3D 1993\[aq]09L
>
> Please keep all POSIX dates in a single separate patch
> (unless there's another reason that I'm not seeing).

As long as I'm not completely lost, those values are often passed on the co=
mmand
line via `-D`. Wouldn't a random \[aq] interfere with shell quoting and res=
ult in
hard to find bugs and unexpected bahavior? So is it really a good idea to p=
resent
those values in such a way in the manpage? Or am I simply underestimating t=
he
intelligence of the readers? :-)

--=20
Best Regards,
Tom Schwindl

>
> Cheers,
>
> Alex
