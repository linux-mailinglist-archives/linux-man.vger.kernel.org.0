Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E9DF726CE89
	for <lists+linux-man@lfdr.de>; Thu, 17 Sep 2020 00:18:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726280AbgIPWSR convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Wed, 16 Sep 2020 18:18:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726494AbgIPWR5 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 16 Sep 2020 18:17:57 -0400
Received: from herc.mirbsd.org (herc.mirbsd.org [IPv6:2001:470:1f15:10c:202:b3ff:feb7:54e8])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 2B151C0611C3
        for <linux-man@vger.kernel.org>; Wed, 16 Sep 2020 14:41:15 -0700 (PDT)
Received: from herc.mirbsd.org (tg@herc.mirbsd.org [192.168.0.82])
        by herc.mirbsd.org (8.14.9/8.14.5) with ESMTP id 08GLW57C002692
        (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
        Wed, 16 Sep 2020 21:32:07 GMT
Date:   Wed, 16 Sep 2020 21:32:05 +0000 (UTC)
From:   Thorsten Glaser <tg@mirbsd.org>
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        fweimer@redhat.com, linux-man@vger.kernel.org,
        Andries.Brouwer@cwi.nl, jwilk@jwilk.net,
        libbsd@lists.freedesktop.org
Subject: Re: [RFC v6] system_data_types.7: Document types: sigval, ssize_t,
 suseconds_t, time_t, timer_t, timespec, timeval
In-Reply-To: <6555a55b-54d1-5c8c-848f-fac64e765b45@gmail.com>
Message-ID: <Pine.BSM.4.64L.2009162128250.11176@herc.mirbsd.org>
References: <6dc80c25-85bf-925c-49c2-f79865027c0f@gmail.com>
 <20200916110144.17568-1-colomar.6.4.3@gmail.com> <48f5e6ed-f288-151a-50dc-bcf396ff34b6@gmail.com>
 <6555a55b-54d1-5c8c-848f-fac64e765b45@gmail.com>
Content-Language: de-DE-1901, en-GB
X-Message-Flag: Your mailer is broken. Get an update at http://www.washington.edu/pine/getpine/pcpine.html for free.
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=utf-8
Content-Transfer-Encoding: 8BIT
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Alejandro Colomar dixit:

> POSIX does more or less the same:
> It has a ¿main? header where the type is defined

It does?

When I look at one of the headers, for example…
https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/sys_time.h.html
… I see a number of types being defined, but the types don’t have
their own pages nor is described which is the “main” header (the same
goes for constants, e.g. NULL is defined by several headers).

Or is wording like…

     The <stdlib.h> header shall define NULL as described in [10]<stddef.h>.

… where you get the notion of a “main header” from?
If so, where in the standard is this expectation documented?

Curious,
//mirabilos
-- 
“It is inappropriate to require that a time represented as
 seconds since the Epoch precisely represent the number of
 seconds between the referenced time and the Epoch.”
	-- IEEE Std 1003.1b-1993 (POSIX) Section B.2.2.2
