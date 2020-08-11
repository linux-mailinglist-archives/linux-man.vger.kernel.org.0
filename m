Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1A898241A36
	for <lists+linux-man@lfdr.de>; Tue, 11 Aug 2020 13:17:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728676AbgHKLRM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 11 Aug 2020 07:17:12 -0400
Received: from mout.gmx.net ([212.227.17.21]:33133 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728469AbgHKLRL (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 11 Aug 2020 07:17:11 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1597144625;
        bh=ArWWT++QREqD7VNUQE7P2cnneq+NQHEcAhtync7CW38=;
        h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
        b=O0q/NzKZUaduq+CoBDTe8WDKLDR3bQwjVuORvCnorNmp+JurqPaY/uBaHfiFUlthr
         mLV7+sSDWI/YWxxOYIbWw89pSNwG015Z1y3ZS3glQZYwzgInwOR53bI9hLan7i/8fZ
         P+RyMv7sRoz4vC8YqHiwZLyKJ4bIQF7/rjI2fwu4=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.17.64] ([146.198.107.76]) by mail.gmx.com (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MrQEx-1kSMLu01B9-00oZuo; Tue, 11
 Aug 2020 13:17:05 +0200
Subject: Re: Pseudoterminal terminology in POSIX
To:     austin-group-l@opengroup.org
Cc:     Larry Dwyer <larryd.kbd@gmail.com>,
        linux-man <linux-man@vger.kernel.org>,
        libc-alpha <libc-alpha@sourceware.org>
References: <CALxWeYrisuzEPVEHOQSFJ8G_=8-VTAOTNBquyszOZMid7YfT=Q@mail.gmail.com>
 <6425d636-7f48-3a73-ef0e-7bb5b991360c@gmail.com>
From:   Dirk Fieldhouse <fieldhouse@gmx.net>
Organization: Speaking personally
Message-ID: <cd20128e-2d84-2165-aeb2-10fe1011a276@gmx.net>
Date:   Tue, 11 Aug 2020 12:17:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:52.0) Gecko/20100101 Firefox/52.0
 SeaMonkey/2.49.5
MIME-Version: 1.0
In-Reply-To: <6425d636-7f48-3a73-ef0e-7bb5b991360c@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:EbU4YiDqlAx+IMWErFqvDmYW46MdtiC+/V01db1tBBVDjX0rKUp
 pN1WxhW6L7yJ5RJSWEyAryjyOBwqYNthHlJUShihFzW2T4WJnas57rQD5rJUSjcR00Fll5b
 RF92tryzkFL1WnIWwYrzOvaQ/TXMh4OUZxUtBMAGhgwYqp3oYep8DAm22in523HTxPY2kPP
 MZLkjwJrF/eYQe1qKEdGg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:QSp6ZNArVHk=:fF5MIW8zIgc1yyPXJX+Uq/
 r4V4Mwj3YHOUSvo9g+j3lZbqya/yYihrB+/ijuncBvySwOqhnftl+RDMf8OtOyZEngQiXU+7O
 RqBNh7ap5gEshlVvB0q2KXq2QkYZkZODxy2Xpv/9cZWSrlOT/siw4TRWtv1gWcjAYf6mtb98A
 EG7kAYCorH7E/f8v3PwdwFqXBcErp9DS+wJvpSaqftLYUzlrq7xaycj5LCETieDq5CIXzHaN1
 r1Z9IS/1Akk6mQEZgsg4wgNGmkAc1LTVlRgSreduAQDKRJenD9AvXCDobkhsFRHxG3CJR2nU8
 EJUfWBEkM+f1SmDtXaLHrVR4XGtTkDRhnzbpjy7TfLKsTVXds9nijW4Bxdzq0b3F/liFVk8EW
 64UpZipkXvAiqrCPOhOlyzPB6xYPrTDL6bOO9VfSM/acpEQRkq6Hogc5EZQ7ZtoBHkOfd5BrE
 DcACr/W7uq1HHfi+e0cA+Ty/jQmVDkSRn2ek2wDbZ6rbrjSJVihapaDGY8nwq8sU/0snDQ1Lc
 3Lc8QpjZsJLKsgdaoNKhp7VkSBEdgyRo7+W2Rr79XjpJ208deMCLRjnSndVVToJ4D6TEoXL+z
 NT/P/7IjwvWujrzUZQjOAS2uLr7/Whlgni1gEXdm0ENwf01+fXPKmxsuFOCQdRUBYrOTYJg0f
 8v8Rqv3biC6OjY2teytP4c8qz6jrhOBqRA6bte/mqF/UBGWSx880tQlxJFDF3BJtf116NKGt5
 EhxY+Xs4DpjtcRwDh5+q2zdZJTNFUhr19uZAXKFK3RXalwUCrM4TIf5S4V4GnbZWSYzB1q9PM
 wg9QMOtoL/ARO3Shi2AhqopREBOH1YCXozXnpSGv2pR/kWSr4MCA8l1Jv2b3RXlBhK875ewTt
 mCeDLI7+NLnYtTIUWmZU1w3hbfI0vqh1n0L/UbrrUo+ier5WnJZ/cxMSa+7KTAI2zK2L1NsIu
 eJESPcHaU1L4raEVUVUuDyTvDR/etoujzZXtgxAzTLXWBVsvnL2csfakTwL7tCH0L9pb9p5lE
 lKg6fb0WPQEkjTWptPm96iBRpZ0a26CBasHgZYgCxmkcj1L99eckUwBHGy5MlwxwMVOsR97us
 EAZrxCVN8pgXaxGCScn4UPWwZ+3d13ueI546Li7xmbx7eTIit+UZgVV15eO+RAtAcMMwl2ffc
 WQp2UBU83DR0IFtuOLBQ4lc6se97EOkwOL4uE/knbMISdUBRL8BK02KWt9nXhU5zuDQm4Nh0w
 rw0RLQloMfjr9X6zme5OB7pntAhfJSk+nEsXR8Q==
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 09/08/20 00:18, Larry Dwyer via austin-group-l at The Open Group wrote:
> How about the "control" side and the "terminal" side (of the paired
> device files)?
All good -- until abused partners ("coercive control") or people
imminently expected to die, and their supporters, start a clamour.

In fact I'll make sure only to cast my Algol68 types in future and never
coerce them, just in case. I'll absolutely never add an 'e' to 'cast'.

Leaving satire, if it was, aside, the problem with changing technical
terms is that all the previous valid uses remain, so you need a glossary
to explain that the new term replaces the old one, and thus
documentation into the foreseeable future has to mention the old term as
well. For instance, people who read the article that's the second G-hit
on "pty tty" for me at
<https://dev.to/napicella/linux-terminals-tty-pty-and-shell-192e> would
wonder what happened to the components described there.

If the change is to avoid perceived offence, the _mention_ of the old
term has to come with a disclaimer that it was a historical metaphor
applied to technology and should not be construed as a reference to its
original sense. Personally I would just say that instead and let the
term lie.

Or just re-spell, perhaps 'moster' (a place in Norway, strip-Jenga?) and
'slove' (a band, "did split"), since the original metaphor in this case
doesn't seem to help understanding. As these are meaningless to almost
everyone, they could stand for the originals in all the existing uses
and people not in the know could use their existing internal spelling
corrector, as with colour/color.

/df

=2D-
London SW6
UK
