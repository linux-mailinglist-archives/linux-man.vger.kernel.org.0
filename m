Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 42B7F1B3398
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2020 01:43:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726183AbgDUXnY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 21 Apr 2020 19:43:24 -0400
Received: from albireo.enyo.de ([37.24.231.21]:53864 "EHLO albireo.enyo.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725822AbgDUXnY (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 21 Apr 2020 19:43:24 -0400
Received: from [172.17.203.2] (helo=deneb.enyo.de)
        by albireo.enyo.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        id 1jR2Xx-000565-UI; Tue, 21 Apr 2020 23:43:21 +0000
Received: from fw by deneb.enyo.de with local (Exim 4.92)
        (envelope-from <fw@deneb.enyo.de>)
        id 1jR2Xx-0000HK-Qr; Wed, 22 Apr 2020 01:43:21 +0200
From:   Florian Weimer <fw@deneb.enyo.de>
To:     Richard Weinberger <richard.weinberger@gmail.com>
Cc:     Richard Weinberger via Libc-help <libc-help@sourceware.org>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: Clarification of pthread_cleanup_push() needed
References: <CAFLxGvxhdUtYudCzxJrVs7np5Aby1o9cXEDp5C9rw2kS74pDkQ@mail.gmail.com>
        <871rogpld6.fsf@mid.deneb.enyo.de>
        <CAFLxGvxDd8LBW1RLc4hu-sty1_9q0fB0Uo_QMbQ6j+dKT2QmaQ@mail.gmail.com>
        <87v9lso5d1.fsf@mid.deneb.enyo.de>
        <CAFLxGvzGyerUxinHxL=Rpqnm6wb3uTq+gjvL=_af4QzkOx3GHQ@mail.gmail.com>
Date:   Wed, 22 Apr 2020 01:43:21 +0200
In-Reply-To: <CAFLxGvzGyerUxinHxL=Rpqnm6wb3uTq+gjvL=_af4QzkOx3GHQ@mail.gmail.com>
        (Richard Weinberger's message of "Wed, 22 Apr 2020 00:48:28 +0200")
Message-ID: <87r1wgo15y.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Richard Weinberger:

> Well, this manpage does not talk much about the cleanup routine, except for
> "Consequently, clean-up handlers cease to be useful", which is clear as mud.

I think this refers to the fact that pthread_cleanup_push and
pthread_cleanup_pop are not necessarily async-cancel-safe.

> Back to the cleanup routine, with asynchronous cancellation:
> - it must not use any function which might got interrupted by cancel,
> - it may only use async-signal-safe function, except long jumps.
>
> Is this correct?

I think there are no restrictions on the cleanup handler *contents*
due to asynchronous cancellation.  The restrictions are on the code
that is interrupted.

You need to find a way to safely register them.  Code compiled by GCC
with -fexceptions and -fasynchronous-unwind-tables should work,
though.  In that case, the cleanup handler is not explicitly
registered, but implicitly identified by the region of code within
which the program counter is located during asynchronous cancellation.

> To give you some background, I'm porting an application to NPTL
> which comes from an operating system where cancelling threads and
> automatic cleanup is the way to go.

Do you have a list of functions that need to be async-cancel-safe for
this purpose?
