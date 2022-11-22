Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ED5E4634B17
	for <lists+linux-man@lfdr.de>; Wed, 23 Nov 2022 00:29:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234131AbiKVX3L (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 22 Nov 2022 18:29:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234498AbiKVX3I (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 22 Nov 2022 18:29:08 -0500
X-Greylist: delayed 1029 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 22 Nov 2022 15:29:05 PST
Received: from pulsar.hadrons.org (2.152.192.238.dyn.user.ono.com [2.152.192.238])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BCC711A3B2
        for <linux-man@vger.kernel.org>; Tue, 22 Nov 2022 15:29:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=hadrons.org
        ; s=201908; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
        Subject:Cc:To:From:Date:From:Reply-To:Subject:Content-Transfer-Encoding:
        Content-ID:Content-Description:X-Debbugs-Cc;
        bh=UAINoEwQt61pWAcE23/WCxsbl6LaqZsdXrsprxzh3fw=; b=RR++X+KsuiSmqCc/lCFfvpLf2W
        SFQugSNfFDt+BvuJFB0H0tzxIIK75UeLrU/6vy5NtTAWwBkM01D6/R8W5e5VHTM0Yz94CjX1ANVCc
        A7LueYKofJxhhc6+J2Uas4//OIrLdzDkzqZQThbZzRuLS1+ySYE4fa8UQla9WweT48/9RPl/1c/S+
        kolkHnlDA52TkiJzYwbVlpG4AsmoAZh+DlVrTTFryVq4G7IoJnvrBuyGdGJ7BUM3KpJPea6R8mzDP
        4TkB8biggSxNhRphUWYgNtvq25t+lpKZKflISLAF/tNkx6ybvkNNZPhagRbBkOt/fAkI0X2C9y1bd
        +J0KmaSg==;
Received: from guillem by pulsar.hadrons.org with local (Exim 4.94.2)
        (envelope-from <guillem@hadrons.org>)
        id 1oxcQi-0002OT-L0; Wed, 23 Nov 2022 00:11:52 +0100
Date:   Wed, 23 Nov 2022 00:11:52 +0100
From:   Guillem Jover <guillem@hadrons.org>
To:     Alejandro Colomar <alx.manpages@gmail.com>
Cc:     Andrew Clayton <andrew@digital-domain.net>,
        linux-man@vger.kernel.org,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx@kernel.org>
Subject: Re: [PATCH] memmem.3: Added list of known systems where this is
 available
Message-ID: <Y31XOPOsB932l0cd@thunder.hadrons.org>
Mail-Followup-To: Guillem Jover <guillem@hadrons.org>,
        Alejandro Colomar <alx.manpages@gmail.com>,
        Andrew Clayton <andrew@digital-domain.net>,
        linux-man@vger.kernel.org, Michael Kerrisk <mtk.manpages@gmail.com>,
        Alejandro Colomar <alx@kernel.org>
References: <20221110001318.10696-1-andrew@digital-domain.net>
 <853fa349-8e78-8ce8-f76f-79b4b9353913@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <853fa349-8e78-8ce8-f76f-79b4b9353913@gmail.com>
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,PDS_RDNS_DYNAMIC_FP,
        RCVD_IN_SORBS_DUL,RDNS_DYNAMIC,SPF_HELO_PASS,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi!

On Thu, 2022-11-10 at 12:36:47 +0100, Alejandro Colomar wrote:
> On 11/10/22 01:13, Andrew Clayton wrote:
> > While looking at which systems provide memmem(3) I have been able to
> > discern the following:
> > 
> >    musl libc since v0.9.7
> >    bionic since Android 9
> > 
> >    FreeBSD since 6.0
> >    OpenBSD since 5.4
> >    NetBSD
> >    macOS
> >    Illumos
 
> > For macOS and Illumos I checked the memmem(3) man page on those systems.
> > For the rest there are links below to on-line man pages or commit logs.

> > +FreeBSD 6.0, OpenBSD 5.4, NetBSD, macOS & Illumos.
 
> For the commit message, it's interesting to note macOS and Bionic, for
> speleology purposes.  However, I'm opposed to adding them to the page itself
> because of the following:
> 
> -  macOS is not free software.  I refuse to reference nonfree software on
> this project.

I understand where you are coming from, and from a full system PoV,
it's very true that macOS is non-free. But the lower layers of its
stack are free software (at least according to the FSF and OSI), such
as its kernel (Darwin), or its libc (where memmem() is implemented):

  https://opensource.apple.com/source/Libc/Libc-1439.40.11/

among others.

Similar with Solaris and Illumos (but with the CDDL, MIT, BSD), AFAIUI.

> -  Android is not a real Unix system, in that you can't even program in C in
> there, unless you're Google or have hacked your system.  It's not friendly
> to us programmers, so we don't need to be friendly to it.  I don't want to
> be cluttering the pages with information that is irrelevant to normal users.

I'm assuming bionic is being used in some of the Android free
alternatives too, but then I'm not sure how usable for programming those
are either. And, well musl libc is not a real Unix system you can program
against either. :)

In any case I also find it useful to have this kind of portability
information when deciding what to use in code. But can understand the
reluctance to include such references, at least if thought out as the
entire system. Perhaps thinking about these merely at their kernel or
libc level would make including information about some of them more
palatable, given that standalone they are free software? So perhaps
an option is to instead refer to their specific components, say
"bionic libc X.Y", "Apple Libc M.N.O" or similar.

Thanks,
Guillem
