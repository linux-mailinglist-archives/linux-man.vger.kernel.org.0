Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0BD813BC38D
	for <lists+linux-man@lfdr.de>; Mon,  5 Jul 2021 23:09:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229959AbhGEVL5 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 5 Jul 2021 17:11:57 -0400
Received: from mout.gmx.net ([212.227.17.20]:58799 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229939AbhGEVL4 (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 5 Jul 2021 17:11:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1625519357;
        bh=jsr/yyadkoXad/E8wfFgBZt2900MRpynLbSRmk88SQw=;
        h=X-UI-Sender-Class:Subject:To:References:From:Date:In-Reply-To;
        b=MXV/85dee/cwSavTlaZg9XDntedcoiAxsrjCjSntbighntIvD3nIy7/Z5wIq2WP3o
         AOuuYQUrkItzNjJ/GQTU+3bft5RVL6bmNeSX+62GOLEMPlhWfUqq48vNQoxzRo24MA
         MBrY2irGdR1k83+fnlliOFs0ZuajF6vP/MO39fuc=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.200.19] ([109.42.1.230]) by mail.gmx.net (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MMXUN-1lj7Pf3xA7-00JYEi; Mon, 05
 Jul 2021 23:09:17 +0200
Subject: Re: new:mbrtoc32.3: convert from to c32
To:     "Alejandro Colomar (man-pages)" <alx.manpages@gmail.com>,
        Bruno Haible <bruno@clisp.org>, libc-alpha@sourceware.org,
        linux-man@vger.kernel.org
References: <8295983.X7ISPF4pOe@omega>
 <8f538e31-a730-0fcb-1d6b-c28e9fc164dd@gmail.com>
From:   Radisson <Radisson97@gmx.de>
Message-ID: <306efb49-83ee-bd23-7e98-33e38ae77634@gmx.de>
Date:   Mon, 5 Jul 2021 23:09:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <8f538e31-a730-0fcb-1d6b-c28e9fc164dd@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:sQe+IhBtMjxzUZaETxhv/7ssyy32YA9mQz5DfbeIOwLJBt2Usbm
 GV657hq8bNWcC66fKkD2/WhGa15Awj5ddkkuLoUXm1WFqZW+hDszlfwMfelvCC0YQZo1V77
 85rsXHhtJp+pmNz9e7LKP7HoUKDmSRjorXVQcO2RPyeyvfzi9M80AGXDsTWbQHcWicxkjE7
 lloiv+hWyVfJB5bkJ4I4g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:InNAs5ktYWU=:U8qyZhcz+U3LSAnHTGs3YA
 Zj8KNFQRQdm8b6zNcdS6Vg3WRQuFKuoYyx2tiMNUgxW/K2srGLByJlI48y71ztqDfraoYNOUA
 ImkOy7f0YkDzpQAdwsBMIzZmC1/dDsLXg9XpHT7qit8ArM4eQchkyBUxFybnioazVd4fTcHX0
 jWRV4fYBWFUYFmeZrxmpmT7pzULmnXA+5LKuM9jiow6yfmENoE+tooZaDNYleQx7RL4MF6PPq
 DlGqO/s72L8p95jo8C01GqIRtgP3L/G6t9VwN8H2I4si30P1uM+4yglyGMa8SwPQObnZvgWtH
 8u0TppFP9glelooJhbh1d4SZjqq7Y83F4uXpMFPp0K3uMEgx4VX9+wk5bewzZHxU1N4gsZm80
 yAxWUoXaEgzBNKhExInmgy1UlBnawf8/GjV8ZzuS8ElWeEgf9G3RFG6LvMWJ2yBxbMvLe4Gin
 9xe22GQv1pvicJSV1CgDjArqFk9AlVXymxXK8YUfircPmNqEsV+wWwUnmgFTVsXDCeQekH2A6
 OziWp5j21dJgupqia+ep1lDvpjXBZYY+IwK+zrqaIjc0NmU2HphQnXt1DAgKY/O4fimC5qelL
 XjyTpXzyLasRAXvCoznbTCkvEWJVHqB+Z5HffOHY1E5NI1gebsOgojpMWrXQ8+KU/miTC1YgV
 FqpsEu2taGKKB+PQCdTUF1FdI7zd+BMgAlTRRiWlAWdS8n3AziCfUCjA3xoRIMmPfSTitrV2A
 emOca130Ql/smQEMoP7xLCVl7f+U6WDYnroS6uSpj1kg9n5lKz45G/MO91iOeCAnqnDWef+bs
 M7O1NvvMnGg1lfamHMT9RjsvTmjCg5VwmR16qztKWIsWevtuR0QZAOp/mu3sV9DDl4ZCicU0d
 iBOXNNry0WQ03FSVk6qCQbwLceLRba4JHG/oqRf5+c5AE0NGTvSkWCEwExsEpqCs+AknB4JBQ
 bvV6LmHYlvhM3TePaTew/gQaMCxEI+BMQxBaL1dmxefSMxzwPqL0Gw7Lnu2m4rrfA1CUhNNLt
 aM7xMmwErjk4tFZzfc4PYDEMwwlF4tMu7ehF/HfcxRE+1XOQMo841jmu0YpXdcKa5HxJTt4vl
 cPnTxqxiquu/kBQAKT7gCIhQDBzG0Ky1QsV
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org



Am 05.07.21 um 21:07 schrieb Alejandro Colomar (man-pages):
> Hello Bruno,
>
> On 7/4/21 12:26 PM, Bruno Haible wrote:
>>> mbrtoc32, c32rtomb \- convert between multibyte sequence and 32-bit
>>> wide character
>>
>> I would suggest two separate man pages for these functions.
>> Rationale:
>> It is rare that some code uses mbrtoc32 and c32rtomb in the same
>> function.
>> (Basically, functions that do input call mbrtoc32, and functions that d=
o
>> output call c32rtomb.) And the description of mbrtoc32 is a bit complex=
.
>
> Okay.=C2=A0 Indeed, the *wc* functions are documented separately.

I beg your pardon,
we do not write a program, for the understanding of the function i found
it much helpful to see the from-to connection.

>
>>
>>> Are there any important differences compared to the already-documented
>>> and C99-compliant mbrtowc(3) and wcrtomb(3)?=C2=A0 I mean, apart from =
the
>>> types of the parameters. >
>> No for c32rtomb, but yes for mbrtoc32: mbrtowc has the special return
>> values (size_t)-1 and (size_t)-2, whereas mbrtoc32 also has the special
>> return value (size_t)-3. Although, on glibc currently this special
>> return value (size_t)-3 cannot occur. But IMO the man page should
>> mention it nevertheless, otherwise people write code that is not
>> future-proof.
>
> Thanks for those details!
>
> Regards,
>
> Alex
>
>
