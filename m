Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B6D5C3EE0EA
	for <lists+linux-man@lfdr.de>; Tue, 17 Aug 2021 02:31:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234864AbhHQAbw convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Mon, 16 Aug 2021 20:31:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34650 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232929AbhHQAbw (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 16 Aug 2021 20:31:52 -0400
Received: from herc.mirbsd.org (herc.mirbsd.org [IPv6:2001:470:1f15:10c:202:b3ff:feb7:54e8])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 23831C061764
        for <linux-man@vger.kernel.org>; Mon, 16 Aug 2021 17:31:19 -0700 (PDT)
Received: from herc.mirbsd.org (tg@herc.mirbsd.org [192.168.0.82])
        by herc.mirbsd.org (8.14.9/8.14.5) with ESMTP id 17H0JSJj004277
        (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
        Tue, 17 Aug 2021 00:19:30 GMT
Date:   Tue, 17 Aug 2021 00:19:28 +0000 (UTC)
From:   Thorsten Glaser <tg@debian.org>
X-X-Sender: tg@herc.mirbsd.org
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
cc:     linux-man <linux-man@vger.kernel.org>
Subject: Re: request: calling conventions documentation
In-Reply-To: <Pine.BSM.4.64L.2108162316580.2192@herc.mirbsd.org>
Message-ID: <Pine.BSM.4.64L.2108170015070.2192@herc.mirbsd.org>
References: <Pine.BSM.4.64L.2108162130380.2192@herc.mirbsd.org>
 <CAKgNAkge=h68w=5Vd9g9i8-vZnrPuN+pyVd=NgTxq9DNLUu-aA@mail.gmail.com>
 <Pine.BSM.4.64L.2108162316580.2192@herc.mirbsd.org>
Content-Language: de-DE-1901, en-GB
X-Message-Flag: Your mailer is broken. Get an update at http://www.washington.edu/pine/getpine/pcpine.html for free.
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=utf-8
Content-Transfer-Encoding: 8BIT
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Dixi quod…

>would enable really fast lookup of the basics that are surprisingly
>hard to track down for all architectures as there doesn’t seem to
>be a single place for this. (I recently had to fix something on

Might also be useful to collect basic info about the arch: native
CPU bitness, instruction width (ILP32/LP64)¹, endianness, native
alignment requirement general rules (“natural for all types”, or
“all types to 2 bytes” like m68k, which also affects padding),
whether it’s a nommu port, etc.

These things are things we have on some Debian porting (wiki?) page
IIRC but only for the architectures represented in Debian and I think
in Debian-Ports.

① Yes, these are distinct, both x32 and amd64ilp32 are 64-bit
  architectures with 32-bit long and pointers, with more to follow…

Sorry for splitting this, it’s a long night and I’m still not sure
I’ve come up with everything. But something, as long as it’s correct,
is better than nothing.

bye,
//mirabilos
-- 
> Hi, does anyone sell openbsd stickers by themselves and not packaged
> with other products?
No, the only way I've seen them sold is for $40 with a free OpenBSD CD.
	-- Haroon Khalid and Steve Shockley in gmane.os.openbsd.misc
