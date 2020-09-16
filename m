Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F297F26C1D7
	for <lists+linux-man@lfdr.de>; Wed, 16 Sep 2020 12:43:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726580AbgIPKne (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 16 Sep 2020 06:43:34 -0400
Received: from fester.cwi.nl ([192.16.191.27]:49594 "EHLO fester.cwi.nl"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726726AbgIPKm1 (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 16 Sep 2020 06:42:27 -0400
Received: from fester.cwi.nl (fester.cwi.nl [192.16.191.27])
        by fester.cwi.nl (8.14.4/8.12.3) with ESMTP id 08GA6nif006143;
        Wed, 16 Sep 2020 12:06:49 +0200
Received: from localhost (a80-101-109-117.adsl.xs4all.nl [80.101.109.117])
        (authenticated bits=0)
        by fester.cwi.nl (8.14.4/8.12.3) with ESMTP id 08GA6nvo006141
        (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256 verify=NO);
        Wed, 16 Sep 2020 12:06:49 +0200
Date:   Wed, 16 Sep 2020 12:06:49 +0200
From:   "Andries E. Brouwer" <Andries.Brouwer@cwi.nl>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     Thorsten Glaser <tg@mirbsd.org>,
        Alejandro Colomar <colomar.6.4.3@gmail.com>,
        fweimer@redhat.com, linux-man@vger.kernel.org, jwilk@jwilk.net,
        libbsd@lists.freedesktop.org,
        Andries Brouwer <Andries.Brouwer@cwi.nl>
Subject: Re: [RFC v4] system_data_types.7: Document sigval, ssize_t,
 suseconds_t, time_t, timer_t, timespec & timeval
Message-ID: <20200916100649.GA476613@if>
References: <6dc80c25-85bf-925c-49c2-f79865027c0f@gmail.com>
 <20200915133306.35033-1-colomar.6.4.3@gmail.com>
 <adc89159-48bf-de72-ab88-985c2e61a842@gmail.com>
 <Pine.BSM.4.64L.2009160057420.11260@herc.mirbsd.org>
 <79018b23-d4d3-4524-d49a-9cf18b9008aa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <79018b23-d4d3-4524-d49a-9cf18b9008aa@gmail.com>
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On Wed, Sep 16, 2020 at 10:03:13AM +0200, Michael Kerrisk (man-pages) wrote:
> [CC += AEB]
> 
>> Michael Kerrisk (man-pages) dixit:
>> 
>>>> +.\" %%%LICENSE_START(VERBATIM)
>>>> +.\" Permission is granted to make and distribute verbatim copies of this
>>>> +.\" manual provided the copyright notice and this permission notice are
>>>> +.\" preserved on all copies.
>>>> +.\"
>>>> +.\" Permission is granted to copy and distribute modified versions of this
>>>> +.\" manual under the conditions for verbatim copying, provided that the
>>>> +.\" entire resulting derived work is distributed under the terms of a
>>>> +.\" permission notice identical to this one.
>>>> +.\"
>>>> +.\" Since the Linux kernel and libraries are constantly changing, this
>>>> +.\" manual page may be incorrect or out-of-date.  The author(s) assume no
>>>> +.\" responsibility for errors or omissions, or for damages resulting from
>>>> +.\" the use of the information contained herein.  The author(s) may not
>>>> +.\" have taken the same level of care in the production of this manual,
>>>> +.\" which is licensed free of charge, as they might when working
>>>> +.\" professionally.
>>>> +.\"
>>>> +.\" Formatted or processed versions of this manual, if unaccompanied by
>>>> +.\" the source, must acknowledge the copyright and authors of this work.
>>>> +.\" %%%LICENSE_END
>> 
>> I severely object.
> 
> The "verbatim" license has been the most widely used license in
> manual pages, almost since the inception of the project 27 years
> ago. (Currently more than half of the pages carry this license.)
> 
> I don't know the origin of the license (perhaps AEB does),

Digging through old sources reveals:

I started maintaing man-pages in 1995.
My first release was man-pages-1.6.
That release contained 245 man pages with the above license.

The first release that had the above license was man-pages-1.4,
released Sep 1994 by Rik Faith.
It contained 234 man pages with the above license.
man-pages-1.4.Announce describes that there are now
238 pages with "verbatim copying" and
41 pages with "GNU General Public License".

Earlier, man-pages-1.3 (released Jun 1994) by Rik Faith had
messy copyright statements or nothing at all, and Rik Faith made
for 1.4 a serious attempt at providing each page with a proper license.

So, this text came from Rik Faith.
It mentions "this manual page", so was probably written
especially for this manpage collection.
You might ask him for further details.

Andries
