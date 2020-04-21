Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 744B01B3202
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2020 23:41:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726061AbgDUVln (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 21 Apr 2020 17:41:43 -0400
Received: from albireo.enyo.de ([37.24.231.21]:52194 "EHLO albireo.enyo.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725850AbgDUVlm (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 21 Apr 2020 17:41:42 -0400
Received: from [172.17.203.2] (helo=deneb.enyo.de)
        by albireo.enyo.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        id 1jR0eD-0002UG-6d; Tue, 21 Apr 2020 21:41:41 +0000
Received: from fw by deneb.enyo.de with local (Exim 4.92)
        (envelope-from <fw@deneb.enyo.de>)
        id 1jR0eD-0006RJ-2D; Tue, 21 Apr 2020 23:41:41 +0200
From:   Florian Weimer <fw@deneb.enyo.de>
To:     Richard Weinberger via Libc-help <libc-help@sourceware.org>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Richard Weinberger <richard.weinberger@gmail.com>
Subject: Re: Clarification of pthread_cleanup_push() needed
References: <CAFLxGvxhdUtYudCzxJrVs7np5Aby1o9cXEDp5C9rw2kS74pDkQ@mail.gmail.com>
Date:   Tue, 21 Apr 2020 23:41:41 +0200
In-Reply-To: <CAFLxGvxhdUtYudCzxJrVs7np5Aby1o9cXEDp5C9rw2kS74pDkQ@mail.gmail.com>
        (Richard Weinberger via Libc-help's message of "Tue, 21 Apr 2020
        22:35:12 +0200")
Message-ID: <871rogpld6.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Richard Weinberger via Libc-help:

> But NPTL implements thread cancellation with signals, if I'm not
> completely mistaken the cleanup routine will run in signal context
> then.

Deferred cancellation only occurs in signal context if the
cancellation is acted upon from within a signal handler.  For the
signal handler case, whether cancellation handlers are restricted to
async-signal-safe function calls depends on the type of signal (some
are synchronous, not asynchronous) and what is interrupted by the
signal (for asynchronous signals).

Asynchronous cancellation has even more constraints than asynchronous
signal safety, but it is rarely used.
