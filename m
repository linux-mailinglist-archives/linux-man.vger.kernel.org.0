Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C6F981B1065
	for <lists+linux-man@lfdr.de>; Mon, 20 Apr 2020 17:42:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728458AbgDTPmY convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Mon, 20 Apr 2020 11:42:24 -0400
Received: from vs22.mail.saunalahti.fi ([193.64.193.198]:60106 "EHLO
        vs22.mail.saunalahti.fi" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728334AbgDTPmX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 11:42:23 -0400
Received: from vs22.mail.saunalahti.fi (localhost [127.0.0.1])
        by vs22.mail.saunalahti.fi (Postfix) with ESMTP id 33DDD2098B;
        Mon, 20 Apr 2020 18:36:07 +0300 (EEST)
Received: from gw01.mail.saunalahti.fi (gw01.mail.saunalahti.fi [195.197.172.115])
        by vs22.mail.saunalahti.fi (Postfix) with ESMTP id 32F262099D;
        Mon, 20 Apr 2020 18:36:07 +0300 (EEST)
Received: from [192.168.1.20] (87-100-216-152.bb.dnainternet.fi [87.100.216.152])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: kh8831)
        by gw01.mail.saunalahti.fi (Postfix) with ESMTPSA id 22D8140006;
        Mon, 20 Apr 2020 18:36:04 +0300 (EEST)
Content-Type: text/plain;
        charset=utf-8
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.60.0.2.5\))
Subject: Re: Errors in man pages, here: st(4): Understanding
From:   =?utf-8?B?IkthaSBNw6RraXNhcmEgKEtvbHVtYnVzKSI=?= 
        <kai.makisara@kolumbus.fi>
In-Reply-To: <d31bdf0a-bb04-97dd-3496-82a629fbc2e9@gmail.com>
Date:   Mon, 20 Apr 2020 18:36:04 +0300
Cc:     Helge Kreutzmann <debian@helgefjell.de>, linux-man@vger.kernel.org
Content-Transfer-Encoding: 8BIT
Message-Id: <8062A53B-DF2C-4A92-82CA-B12D3456E08A@kolumbus.fi>
References: <20200419064827.GA32094@Debian-50-lenny-64-minimal>
 <d31bdf0a-bb04-97dd-3496-82a629fbc2e9@gmail.com>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
X-Mailer: Apple Mail (2.3608.60.0.2.5)
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



> On 20. Apr 2020, at 11.02, Michael Kerrisk (man-pages) <mtk.manpages@gmail.com> wrote:
> 
> [CC += Kai]
> 
> On 4/19/20 8:48 AM, Helge Kreutzmann wrote:
>> Dear manpages maintainers
...
> 
> I agree that it's unclear, but I don't kjnow what the fix is. Perhaps
> kai can help.
> 
> Kai, the problematic text is this:
> 
> 
>       MTSETDRVBUFFER
>              Set various drive and  driver  options  according  to  bits
>              encoded  in mt_count.  These consist of the drive's buffer‐
>              ing mode, a set of Boolean driver options, the buffer write
>              threshold,  defaults  for  the  block size and density, and
>              timeouts (only in kernels 2.1 and later).  A single  opera‐
>              tion  can affect only one item in the list above (the Bool‐
>              eans counted as one item.)
> 
> Do you know what the "list above" refers to?
> 
It should be “list below” (there are lots of options and an example).

Thanks,
Kai

