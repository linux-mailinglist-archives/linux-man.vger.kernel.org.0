Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5BF356B9F31
	for <lists+linux-man@lfdr.de>; Tue, 14 Mar 2023 19:58:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229720AbjCNS6m (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 14 Mar 2023 14:58:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44734 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229836AbjCNS6l (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 14 Mar 2023 14:58:41 -0400
Received: from mout01.posteo.de (mout01.posteo.de [185.67.36.65])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB4B6457D9
        for <linux-man@vger.kernel.org>; Tue, 14 Mar 2023 11:58:39 -0700 (PDT)
Received: from submission (posteo.de [185.67.36.169]) 
        by mout01.posteo.de (Postfix) with ESMTPS id 047A324069B
        for <linux-man@vger.kernel.org>; Tue, 14 Mar 2023 19:58:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
        t=1678820318; bh=IWH7HICZa2hfWy5yMlin7t6xhlBiTt4AZju3mBCnHR0=;
        h=Date:Cc:From:To:Subject:From;
        b=VNaEOHQZnHrHUjQIAON1vHL+CzELcQmbv3PkgvhsiA3U27SmrToov2XMl9AVRICci
         qtYxkbu5163DF+LMyzBpGGarwH9F3Y0i/tMHDWyem3aB6hRhI/4+Bpq+aJkm88vH9x
         vIJE7qGI8+KJb04zX9eWWwj0HQaGma1p1YXOae2RaqUSC8Y1O/0jNc9ZIJEy9Vb27c
         bSVNjOVzGK78Pxf2ms9h83qaaT3M9t28Y1OJVK52zQCnSBSrIK7yEYsJCHjECw8yZA
         57ak+OaPUsWGyYmNaUDRkuELScfvqgE+Nb3Rc9b99N96jjdyjqogey06oey4Prs8f1
         Pg0UI4bhXlKOA==
Received: from customer (localhost [127.0.0.1])
        by submission (posteo.de) with ESMTPSA id 4PbjV52Dr8z9rxV;
        Tue, 14 Mar 2023 19:58:37 +0100 (CET)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date:   Tue, 14 Mar 2023 18:57:49 +0000
Message-Id: <CR6C48K1388R.2M61G9YHB8VHA@morphine>
Cc:     <linux-man@vger.kernel.org>
From:   "Tom Schwindl" <schwindl@posteo.de>
To:     "Jakub Wilk" <jwilk@jwilk.net>,
        "Alejandro Colomar" <alx.manpages@gmail.com>
Subject: Re: [PATCH] arc4random.3: New page documenting the arc4random(3)
 family of functions
References: <20230101162627.28031-1-alx@kernel.org>
 <20230313213044.scl37hpwvuyo2dif@jwilk.net>
In-Reply-To: <20230313213044.scl37hpwvuyo2dif@jwilk.net>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Mon Mar 13, 2023 at 10:30 PM CET, Jakub Wilk wrote:
> * Alejandro Colomar <alx.manpages@gmail.com>, 2023-01-01 17:26:
> >+.SH LIBRARY
> >+Standard C library
> >+.RI ( libc ", " -lc )
>
> That should be \-lc, but... To be frank, I'd just remove the whole=20
> section. Most people shouldn't use -lc, and those who do need it can=20
> figure it out on their own.
>

I don't quite remember what the arguments for the LIBRARY section were,
but it should be kept for consistency with the other man-pages.


off-topic for Alex:
As we're talking about libc here, what about the libc.7 patch?
Is there any progress regarding it?

--=20
Best Regards,
Tom Schwindl
