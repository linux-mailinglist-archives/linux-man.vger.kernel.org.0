Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5C64A26B932
	for <lists+linux-man@lfdr.de>; Wed, 16 Sep 2020 03:04:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726129AbgIPBEP convert rfc822-to-8bit (ORCPT
        <rfc822;lists+linux-man@lfdr.de>); Tue, 15 Sep 2020 21:04:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726095AbgIPBEL (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 15 Sep 2020 21:04:11 -0400
X-Greylist: delayed 197 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 15 Sep 2020 18:04:08 PDT
Received: from herc.mirbsd.org (herc.mirbsd.org [IPv6:2001:470:1f15:10c:202:b3ff:feb7:54e8])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 859FCC06174A
        for <linux-man@vger.kernel.org>; Tue, 15 Sep 2020 18:04:08 -0700 (PDT)
Received: from herc.mirbsd.org (tg@herc.mirbsd.org [192.168.0.82])
        by herc.mirbsd.org (8.14.9/8.14.5) with ESMTP id 08G0xVA5003976
        (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
        Wed, 16 Sep 2020 00:59:33 GMT
Date:   Wed, 16 Sep 2020 00:59:31 +0000 (UTC)
From:   Thorsten Glaser <tg@mirbsd.org>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
cc:     Alejandro Colomar <colomar.6.4.3@gmail.com>, fweimer@redhat.com,
        linux-man@vger.kernel.org, jwilk@jwilk.net,
        libbsd@lists.freedesktop.org
Subject: Re: [RFC v4] system_data_types.7: Document sigval, ssize_t, suseconds_t,
 time_t, timer_t, timespec & timeval
In-Reply-To: <adc89159-48bf-de72-ab88-985c2e61a842@gmail.com>
Message-ID: <Pine.BSM.4.64L.2009160057420.11260@herc.mirbsd.org>
References: <6dc80c25-85bf-925c-49c2-f79865027c0f@gmail.com>
 <20200915133306.35033-1-colomar.6.4.3@gmail.com> <adc89159-48bf-de72-ab88-985c2e61a842@gmail.com>
Content-Language: de-DE-1901, en-GB
X-Message-Flag: Your mailer is broken. Get an update at http://www.washington.edu/pine/getpine/pcpine.html for free.
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=utf-8
Content-Transfer-Encoding: 8BIT
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Michael Kerrisk (man-pages) dixit:

>> +.\" %%%LICENSE_START(VERBATIM)
>> +.\" Permission is granted to make and distribute verbatim copies of this
>> +.\" manual provided the copyright notice and this permission notice are
>> +.\" preserved on all copies.
>> +.\"
>> +.\" Permission is granted to copy and distribute modified versions of this
>> +.\" manual under the conditions for verbatim copying, provided that the
>> +.\" entire resulting derived work is distributed under the terms of a
>> +.\" permission notice identical to this one.
>> +.\"
>> +.\" Since the Linux kernel and libraries are constantly changing, this
>> +.\" manual page may be incorrect or out-of-date.  The author(s) assume no
>> +.\" responsibility for errors or omissions, or for damages resulting from
>> +.\" the use of the information contained herein.  The author(s) may not
>> +.\" have taken the same level of care in the production of this manual,
>> +.\" which is licensed free of charge, as they might when working
>> +.\" professionally.
>> +.\"
>> +.\" Formatted or processed versions of this manual, if unaccompanied by
>> +.\" the source, must acknowledge the copyright and authors of this work.
>> +.\" %%%LICENSE_END

I severely object.

This licence doesn’t even have an SPDX identifier, nor is it
OSI certified.

Please use a standard Open Source licence, *especially* as you
are introducing new material here.

Before submitting this eMail, I found
https://www.kernel.org/doc/man-pages/licenses.html
and if that is indeed the applicable document, please use BSD.

Thanks,
//mirabilos
-- 
I believe no one can invent an algorithm. One just happens to hit upon it
when God enlightens him. Or only God invents algorithms, we merely copy them.
If you don't believe in God, just consider God as Nature if you won't deny
existence.		-- Coywolf Qi Hunt
