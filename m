Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0D55A2D664F
	for <lists+linux-man@lfdr.de>; Thu, 10 Dec 2020 20:23:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390446AbgLJTWT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 10 Dec 2020 14:22:19 -0500
Received: from mout.gmx.net ([212.227.17.20]:49387 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2393407AbgLJTWO (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Thu, 10 Dec 2020 14:22:14 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1607628040;
        bh=/1jlsr0nmPBYnqcR4Cnqhv0IRe/n1MCvVwbpoLKMUcM=;
        h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
        b=QiZcVkzyi+kNRD4jOsPwkdQqd6JNA1xsMYWTvBwQT71IJgqFycqpA5Gb+Wc3q8Ebt
         kZ6gy/U+HjiCs07Vv8NHkKB+qk72FOnsK7ot86LX1UlZsT4mTvB/TYncig3p8j95N8
         SLI95CyC6lvKsIclECyf8izR7MXvRqVax3rWK3LA=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.123.51] ([62.143.246.89]) by mail.gmx.com (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MYvY8-1ka7iK0mNU-00UoMX; Thu, 10
 Dec 2020 20:20:40 +0100
Subject: Re: cacheflush.2
To:     Dave Martin <Dave.Martin@arm.com>,
        "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>
Cc:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man@vger.kernel.org
References: <794cf0d1-d528-4b5a-3ce0-b1b5f588dc6d@gmx.de>
 <ca265930-00d7-44f5-b2dd-535a5cf0310a@gmail.com>
 <20201210181726.GT6882@arm.com>
From:   Heinrich Schuchardt <xypron.glpk@gmx.de>
Message-ID: <747d56e0-c102-ab40-add4-530a48a43a4d@gmx.de>
Date:   Thu, 10 Dec 2020 20:20:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <20201210181726.GT6882@arm.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:L5UNEC16ZCtNGGeSD8tx8XLs/br4YB0j5K9xKo8RUrDfrvZ0nB/
 uWxv/KsB6V4VYvfYlq1S8ye3eud1+qPL9QrWEei0isXDZ+lXLQe+/MCk1xb9SFimxfebUA8
 Xo9VMtqQRB/YZcE2UvB4BfKQ73qVNEBOGqNyR0TVQQNBknxa0JjbbAFmCcWFwdOmeq1p1Ba
 Eej4GHFmSfiNFYFAvtJNQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:gqjrpz9zlw0=:isYHLxQYj3CUEdy+Pm3SeX
 OSapv+m4essRQDL9Cwf/UnDHbBr9FGj4zQL0eHjRmywgB4C2r1yrD1DQAbd0UuWCv7OeeL6BG
 iLUDXbipPzpUMCu+0gP0qUOvRX95H8FHo7zgnZDSt62QgG6xWquxRHY377gUpRMKlvcmGxPb7
 fBOHJAkhx1TDGLZtu51hPWqBBvutf8pZbVZvghKTI7LJP/9nfrisqllO8gQoR7RVllYZJcr3Z
 Av3lQvu5HHherKvA3fosKz9azdN7WSPPI3nrfhW4KmovfwMljoCX2DWhgnWk62kc81sg6zigH
 UiC6S4GgI6RfAElpc1SxlS3Y6MiAozAe4nq27ZCw0t7XbWc4ILDyGXpnpF14QTAFSMrZlLfvv
 NXC8cjeRG30jzWmUCqgblLkboztAsvTS3Mon3n+HfMyNjO2YkPRO6JanyhxKV6rf03STlUoss
 l8Btm+s/Itow8V1zYXjU/B1vBFebkNcWIUmCPvidlpumFXTC3/douzzeTHIXoz/ZVjkL9kPz+
 LTy3vJ27ISBVDmfC4R1F7veAqc2ZlGfzB4gZd0Vz2Fiab6oW1e0IRBEYfbYgxUZnnMu7FDZYl
 +xhJlzT3cOvD9wIrtLkGdyFjq/n3UX2fMhlwraR/I9DV5PvYd6ZtXr+pFgy0loZctUkxzVJ0i
 Y1bjvDH0ejbfZ3D7LvNosagRzOKBt2Izyh3A1aoEQDf1QLAQ10JyMYcsXlBciCOau4Ifz6JW0
 Lve5MXd9XsMj33TpZZ7NLRgZWjhsCcYXJl3RuYAf1KNbuP75UNwA1r16+WMSyQ/8fx/9DjZ2U
 3/VLLpPFrEBpMCze1nBxcpR+LQ5Bitp8LDIubh0Dym/mn3u7KohA1vg27eTlQ9cdN1djazl+j
 GtgFm5gVdo5Mluzf20tQ==
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 12/10/20 7:17 PM, Dave Martin wrote:
> On Wed, Dec 09, 2020 at 07:34:09PM +0100, Alejandro Colomar (man-pages) =
wrote:
>> Hi Heinrich & Michael,
>>
>> What about the following?:
>>
>> [
>> NOTES
>>         GCC provides a similar function, which may be useful on  archi=
=E2=80=90
>>         tectures that lack this system call:
>>
>>             void __builtin___clear_cache(void *begin, void *end);
>> ]
>>
>> Cheers,
>>
>> Alex
>
> Maybe we should discourage people from calling the cacheflush syscall?
>
> I think that people shouldn't be using the syscall unless they really
> need the finer grained control it provides, and are prepared to take a
> hit to portability.
>
> (On arches where userspace is allowed to do cache flushing directly,
> __builtin___clear_cache() should transparently do the right thing, with
> no syscall overhead -- if not, that's probably a bug in the toolchain or
> compiler support library.)

What the compiler builtin does depends on the architecture (e.g. nothing
for x86, cacheflush() for MIPS, a private syscall (0xf0002) on ARM,
assembly code on ARM64, ...) and on the the operating system (Linux,
BSD, OS X). For portable code the builtin is really the best choice.

Best regards

Heinrich

>
> [...]
>
> Cheers
> ---Dave
>

