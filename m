Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 862EE1A848F
	for <lists+linux-man@lfdr.de>; Tue, 14 Apr 2020 18:22:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2391392AbgDNQWN (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 14 Apr 2020 12:22:13 -0400
Received: from mout.gmx.net ([212.227.15.18]:54211 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2391390AbgDNQVl (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 14 Apr 2020 12:21:41 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1586881296;
        bh=GwGbgnzKlwxVGGhw4N10155LNHynDNwi+gJauojW4f0=;
        h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
        b=U4HVQXveg5Qm5pSpyEhh94x6n9N1sRNL+nKAOnmic6G8T4zbeP4yatgDCeF0Pkzkt
         AyodMOsgsDtUrU/lysN5lyK49Ia/uAr/E4P5gXbk7P5Dvtzj58ZnMYO6Lj64H130Yo
         FfJ4piMSaaVvWClKemU9PgF0+4EBy4nQmBWHkfkY=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.123.76] ([84.119.33.226]) by mail.gmx.com (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MY68d-1jl8nt13hF-00YVXq; Tue, 14
 Apr 2020 18:21:36 +0200
Subject: Re: ioctl_list.2: complete overhaul needed
To:     Eugene Syromyatnikov <evgsyr@gmail.com>,
        Michael Kerrisk-manpages <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>,
        Mike Christie <mchristi@redhat.com>
References: <545F8D2E.5030308@gmx.de>
 <CAKgNAkh-HBjh5AqNpTTfQjgeJVYx9LGpGDzO87zMWEmgMOd0bA@mail.gmail.com>
 <CACGkJdv5Be4KqmsP2AK99FmkZ5hB9jJk9YzsrS8Qzph8ceBvvQ@mail.gmail.com>
From:   Heinrich Schuchardt <xypron.glpk@gmx.de>
Autocrypt: addr=xypron.glpk@gmx.de; prefer-encrypt=mutual; keydata=
 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 Eg==
Message-ID: <5e9b4408-410f-6fb4-9c8b-0bd68e64577d@gmx.de>
Date:   Tue, 14 Apr 2020 18:21:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CACGkJdv5Be4KqmsP2AK99FmkZ5hB9jJk9YzsrS8Qzph8ceBvvQ@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:un34p026ieCxHDSsOdTlnhi/b5xUAEAxbJssep5nin6ZnIMipB1
 AmI1Dd44pR3zCjkJRxQSse1Y8+ASP0VtWoBMrdrfWCadZsRioPkd5KsEA8OBP6PlQ4pRa3+
 kBLFIM2rN23lZ3o+VyFu/maOJYFNwR/k4mkMQf7oZAh5SjkAS+2uAXVXxxX6B/qUdUgfz98
 9idL8hA6GjWQhOYfbTtcQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:CfnY4AE04n0=:NoFZNhXOqM7p7VnfHyByVQ
 wlkjfo8Dp3PvXRiPNDeTnW40ZjIgRs1LYD1DLxWRxGCpLLtHNz6xv8A3n1J+YrAqhGlHmkH91
 muNhdoaumDxJ0hv+0HfdFfBQ/AP2HCS8RRJ0/ypUtoTUHUbv4+koIP7vXDwLu4hKo0PNoSPRl
 eni2gHgnGdrF3DRDkCWKLbJAUGOgali/9WCx3AtFYFxsYa3isSUXaBO2dVVTTXpbD7sVPbaBD
 qOFPmch/qou6gNgESBzQarIMYreF9WWGhnxmr/teMTPRjxTvpC4R/mS2ZAigfQdQjI7rTfmEx
 e3rTUU74v2dhI4F2nccGucM85h28juUFhiWofZoQm81gt/ffIUZFtX/Wq29wjDQ8yV2bAovR0
 EQe8jqP6xceE2ZMyXCPWY7DFz7deOaDAwHgD6iRMVD6SoYi4y4Cp67Z9vVIEf+wDR3WGRS83T
 HE57jtdDPfBxeoAiuWofSmNQDBcZjTsrDKnm2uZCfm6s72gxHqxaQRsFdgkh0zHwYDuissRYG
 QG75BmO+qYN3Z5CpEVhA4GiK9UrOTO+slbs2OUdJVW+vJSvQIK43WhSIysszRtwoH5SiyT7Z3
 w4BNNtMGLtTy6gaWiuv7omphM/yjVVrx1AuPw9N9JvKxhAncyVms2r7m34vBJ024Wt+kfZJKN
 ggE65/23cuAF00lgokdKZRmgflSW4kEfhOy7zSWZHilHLV7aTLf8VbQOffj6phRlveN7wfS+7
 3TZzdtc+IpnptCVPuPmCBzp/BgYE8MF8KS+HaGCUTZVl8FqFbEcoNkQI5xpNUFyXZkPMqpOC/
 W/WIW0i5k0Q92kKIuqqhcN9QSdV9qmJR2gZ3k3NwhHZ5JVOcsvTkJhBydAwutuAWce45nOESw
 Z9zCJdQLntfSZrUh6zHaiTQn/OyiYJwgZGG7s/o8+Jc/dDMcTWCNeBd3qVWr2sMBPhOFvNT1W
 QCyPW6orcFuckSQkDXMiNhtHej45dlf88+sj8gRdRXnFjvjsfelr4BrsBiUHBzyXKYUvjmIUu
 orjPfSP/x+JTFn1V17sNLdJHjArIOXquiLY5UDmWkSchfWkzUk7Yc/4Tc1aPlv2ZcaCmmAOc2
 8NTFf7WWo9ypYEXYiYciUmVtdaxUjv2A+Jcrgh+ljXroiuv7wvvy+KH0CZSKc6t7UX7Tci8ty
 9f6bEUOBpn9HPyNzaidjYdyoMdhzC8uBg9QgwZNJBvTiO7J5PuFLhQGIRdyZNrfMNheo0LdWk
 7MOJcIvntebSVTlw4
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2020-04-14 17:37, Eugene Syromyatnikov wrote:
> On Tue, Apr 14, 2020 at 5:18 PM Michael Kerrisk (man-pages)
> <mtk.manpages@gmail.com> wrote:
>>
>> Hello Heinrich,
>>
>> On Sun, 9 Nov 2014 at 16:52, Heinrich Schuchardt <xypron.glpk@gmx.de> w=
rote:
>>>
>>>
>>> Hello Michael,
>>>
>>> the current ioctl_list.2 man-page descripton starts
>>> "This  is  Ioctl List 1.3.27, a list of ioctl calls in Linux/i386 kern=
el
>>> 1.3.27."
>>> So the man-page represents the state of Sep 14th, 1995.
>>> It enumerates only 421 out of over 1200 calls.
>>>
>>> The list contains hex values of different constants. I just wonder for
>>> which architecture (alpha, i386, mips, or sparc at that time). No
>>> information is supplied.
>>>
>>> Current values depend on the architecture, e.g.
>>>
>>> On amd64
>>> 0x82307201      VFAT_IOCTL_READDIR_BOTH
>>> 0x82307202      VFAT_IOCTL_READDIR_SHORT
>>> 0x80047210      FAT_IOCTL_GET_ATTRIBUTES
>>> 0x40047211      FAT_IOCTL_SET_ATTRIBUTES
>>> 0x80047213      FAT_IOCTL_GET_VOLUME_ID
>>>
>>> On mips
>>> 0x42187201      VFAT_IOCTL_READDIR_BOTH
>>> 0x42187202      VFAT_IOCTL_READDIR_SHORT
>>> 0x40047210      FAT_IOCTL_GET_ATTRIBUTES
>>> 0x80047211      FAT_IOCTL_SET_ATTRIBUTES
>>> 0x40047213      FAT_IOCTL_GET_VOLUME_ID
>>>
>>> Hence hex values should be removed.
>>
>>
>> As you suggest, I've removed the hex values from the lists.
>
> Those can be replaced with the _IO* macro definitions. Meanwhile,  the
> list is somewhat far from complete; strace has some approximation that
> can be uses a basis of a more complete and reliable list
> (linux/{32,64}/ioctls_inc*.h and linux/*/ioctls_arch*.h), but I'm not
> sure if it is worth adding to the man page (moreover, entries are
> constantly being added and changed there; yes, breaking the kernel ABI
> in the process sometimes).

Man-pages like netdevices.7 or ioctl_fat.2 are what is needed to help a
user who does not want to read through the kernel code.

If ioctl_list.2 has not been reasonably maintained since Linux 1.3.27
and hence is not a reliable source of information, shouldn't it be dropped=
?

Best regards

Heinrich

>
>> Thanks,
>>
>> Michael
>>
>>
>>> I further suggest to remove all documentation of structure details.
>>>
>>> The following command can be used to create the raw data for a new lis=
t
>>>
>>> grep -GHrn -B3 -A3 --regexp=3D"\s_IO[R|W|RW]\?[_BAD]\?\s*(" \
>>> include/uapi | \
>>> sed ':a;N;$!ba;s/\\\s*\n[^-]*-[^-]*-/ /g' | \
>>> sort | \
>>> grep --regexp=3D"\s_IO[R|W|RW]\?[BAD]\?\s*(" | grep -n ''
>>>
>>> Best regards
>>>
>>> Heinrich Schuchardt
>>
>>
>>
>> --
>> Michael Kerrisk
>> Linux man-pages maintainer; http://www.kernel.org/doc/man-pages/
>> Linux/UNIX System Programming Training: http://man7.org/training/
>
>
>

