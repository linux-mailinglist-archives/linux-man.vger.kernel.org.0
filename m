Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D6BC51B3284
	for <lists+linux-man@lfdr.de>; Wed, 22 Apr 2020 00:12:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726024AbgDUWMp (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 21 Apr 2020 18:12:45 -0400
Received: from albireo.enyo.de ([37.24.231.21]:52744 "EHLO albireo.enyo.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725850AbgDUWMo (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 21 Apr 2020 18:12:44 -0400
Received: from [172.17.203.2] (helo=deneb.enyo.de)
        by albireo.enyo.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        id 1jR18E-0003Cq-8Z; Tue, 21 Apr 2020 22:12:42 +0000
Received: from fw by deneb.enyo.de with local (Exim 4.92)
        (envelope-from <fw@deneb.enyo.de>)
        id 1jR18E-0007Z8-4m; Wed, 22 Apr 2020 00:12:42 +0200
From:   Florian Weimer <fw@deneb.enyo.de>
To:     Richard Weinberger <richard.weinberger@gmail.com>
Cc:     Richard Weinberger via Libc-help <libc-help@sourceware.org>,
        linux-man <linux-man@vger.kernel.org>
Subject: Re: Clarification of pthread_cleanup_push() needed
References: <CAFLxGvxhdUtYudCzxJrVs7np5Aby1o9cXEDp5C9rw2kS74pDkQ@mail.gmail.com>
        <871rogpld6.fsf@mid.deneb.enyo.de>
        <CAFLxGvxDd8LBW1RLc4hu-sty1_9q0fB0Uo_QMbQ6j+dKT2QmaQ@mail.gmail.com>
Date:   Wed, 22 Apr 2020 00:12:42 +0200
In-Reply-To: <CAFLxGvxDd8LBW1RLc4hu-sty1_9q0fB0Uo_QMbQ6j+dKT2QmaQ@mail.gmail.com>
        (Richard Weinberger's message of "Wed, 22 Apr 2020 00:04:29 +0200")
Message-ID: <87v9lso5d1.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Richard Weinberger:

> On Tue, Apr 21, 2020 at 11:41 PM Florian Weimer <fw@deneb.enyo.de> wrote:
>>
>> * Richard Weinberger via Libc-help:
>>
>> > But NPTL implements thread cancellation with signals, if I'm not
>> > completely mistaken the cleanup routine will run in signal context
>> > then.
>>
>> Deferred cancellation only occurs in signal context if the
>> cancellation is acted upon from within a signal handler.  For the
>> signal handler case, whether cancellation handlers are restricted to
>> async-signal-safe function calls depends on the type of signal (some
>> are synchronous, not asynchronous) and what is interrupted by the
>> signal (for asynchronous signals).
>>
>> Asynchronous cancellation has even more constraints than asynchronous
>> signal safety, but it is rarely used.
>
> I should have noted that I'm using asynchronous cancellation.
> Which constraints are these?

See pthread_setcanceltype(3):

  Functions that can be safely asynchronously canceled are called
  async-cancel-safe functions.  POSIX.1-2001 and POSIX.1-2008 require
  only that pthread_cancel(3), pthread_setcancelstate(), and
  pthread_setcanceltype() be async-cancel-safe.  In general, other
  library functions can't be safely called from an asynchronously
  cancelable thread.

The manual pages and the glibc manual also contain information about
AC-safety, but you cannot rely on them.  They depend on implementation
details which may change within release branches.
