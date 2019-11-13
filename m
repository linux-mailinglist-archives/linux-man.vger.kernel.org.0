Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6C7C5FA9DD
	for <lists+linux-man@lfdr.de>; Wed, 13 Nov 2019 06:51:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726105AbfKMFvO (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 13 Nov 2019 00:51:14 -0500
Received: from albireo.enyo.de ([37.24.231.21]:46000 "EHLO albireo.enyo.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725446AbfKMFvO (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 13 Nov 2019 00:51:14 -0500
Received: from [172.17.203.2] (helo=deneb.enyo.de)
        by albireo.enyo.de with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        id 1iUlYd-00068B-7f; Wed, 13 Nov 2019 05:51:11 +0000
Received: from fw by deneb.enyo.de with local (Exim 4.92)
        (envelope-from <fw@deneb.enyo.de>)
        id 1iUlYd-0006a9-5z; Wed, 13 Nov 2019 06:51:11 +0100
From:   Florian Weimer <fw@deneb.enyo.de>
To:     enh <enh@google.com>
Cc:     "Michael Kerrisk \(man-pages\)" <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
Subject: Re: [PATCH] pthread_kill.3: Update to match POSIX.
References: <CAJgzZoojiRmTV_5sAXhqQciAKsQ_d+znT1OnxT0Rpa_-N_G5-Q@mail.gmail.com>
        <87imnodbct.fsf@mid.deneb.enyo.de>
        <CAJgzZoo+oSkwgCZ3CMUdP-t+Y4h4PkvJO-As15kjz0Ad+nx9fA@mail.gmail.com>
        <877e44daom.fsf@mid.deneb.enyo.de>
        <CAJgzZopuKoGFUq0GrB6ioFpLXzCY1iwGRddRRcAhzsNisjutuQ@mail.gmail.com>
        <87woc4bv9c.fsf@mid.deneb.enyo.de>
        <CAJgzZorosDN58Zp6TUDJbzY3fmR-rJeWbELtw_H3nzMyaWondg@mail.gmail.com>
        <87imnobufy.fsf@mid.deneb.enyo.de>
        <CAJgzZorB99W2PzjQ5ZU1nBiYb81Ubm=VvaF50BOm9sTFUHeE4A@mail.gmail.com>
Date:   Wed, 13 Nov 2019 06:51:11 +0100
In-Reply-To: <CAJgzZorB99W2PzjQ5ZU1nBiYb81Ubm=VvaF50BOm9sTFUHeE4A@mail.gmail.com>
        (enh's message of "Tue, 12 Nov 2019 21:27:21 -0800")
Message-ID: <87r22c9ve8.fsf@mid.deneb.enyo.de>
MIME-Version: 1.0
Content-Type: text/plain
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* enh:

> no, because the C library has two choices when a thread exits:
>
> 1. unmap the thread.
>
> 2. keep the thread around for recycling.
>
> if you choose 1 (optimizing for space, like Android), your dereference
> is illegal.

This choice is only available for threads in a detached state.  For
joinable threads, a conforming implementation cannot immediately
deallocate all data structures on thread termination.  Among other
things, it has to store the future return value of pthread_join
somewhere.
