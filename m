Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4F0871A840D
	for <lists+linux-man@lfdr.de>; Tue, 14 Apr 2020 18:01:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728555AbgDNQBv (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 14 Apr 2020 12:01:51 -0400
Received: from mout.gmx.net ([212.227.17.20]:49115 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728154AbgDNQBr (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 14 Apr 2020 12:01:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1586880102;
        bh=m5KuZdTkm2qkKStnD8F4V5G2t4QWUfeCVuKJ3Y1bsMg=;
        h=X-UI-Sender-Class:Subject:To:References:From:Date:In-Reply-To;
        b=BLhwV31OfOMrsddD+rMOfv/bj/ZirDSmFkW2B0zmhQ1reDTh8NU5JhEgc0Wb8nNKS
         iyG0nM5sjMTyIGIdzKC33mNU/FNo2M/uTCTkcfyYZRkcvPSqXsaM3e+PiCfa0QlgAJ
         +RPgy4VRczVPFxERvkBsNjBYz85hk1elJYIRoTPM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.123.76] ([84.119.33.226]) by mail.gmx.com (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MUowb-1joTYt2v6P-00QkS9; Tue, 14
 Apr 2020 18:01:42 +0200
Subject: Re: mmap(2): MAP_ANON
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>,
        linux-man <linux-man@vger.kernel.org>
References: <90ecc432-951f-b83b-e5cb-487fa871a1ec@gmx.de>
 <3e169e56-b0a6-9099-957e-4304211891bb@gmail.com>
From:   Heinrich Schuchardt <xypron.glpk@gmx.de>
Autocrypt: addr=xypron.glpk@gmx.de; prefer-encrypt=mutual; keydata=
 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 Eg==
Message-ID: <2a78056e-ff07-a4a2-5055-866501dd8466@gmx.de>
Date:   Tue, 14 Apr 2020 18:01:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <3e169e56-b0a6-9099-957e-4304211891bb@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:wjjAK3zf7q4XYPPXgHsKdpxRjNtPTpj4VGRhhGPVj33jhQRHo2k
 qjB2/Gp9DrXCzd1o1S2BxBoJmylpbuvui1FpaDsBJlKqCXPbDVTQHaRs2GFIYAKRDV6aXDS
 P8t4Lws96wBEzn4nLtTlFp2i9rmYHnhA0DtOn2Jb/7Veb4y8eooHeLZY7Svi2ElRwHaUtIn
 7vib7j0fOpYFwjUkPlK+Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:tYc4+Ul4lHY=:f9+Vjv2oZAJeKpj/R57geM
 RBiY6c3QPoRql/Oze/zMYllNZQYhXleYESagxqc8X2CNP0pVK2dRe9YEm9Km5WoiPsGBtsGbb
 zZ3Uv+gFdebtv/2L1QgtoboCoZ/jXoksQ9dARQdJ0agTmoICXilWggNWqPTHGNfXxmu3RQQuW
 b3SxNjI9jhbBYNqHnaRs4E97JmNROWAFbolO6uTAK+Js6YvONLFKExCY49vlI3le4i9vwM9af
 ov8drKJPHpe0/NM/oaXbzD3hd8s4EkAecSWm6w6eCdl6jVu+6kFpaiPg0cUqdfKLJ3AVCBiGU
 VCNwzfIUbky1xcKgAhT4O5VaF7FjZ3tXq+srxjmBg1/5JdNrlAtt1/XhiZD7FjQycQzrjPGmR
 jCdWQLRxSKjIP5Ih0CL3WTB0LkLX13v9geNpCUBuQ3LQvmiTS58tGwXHTbhUPWc6kZpUzIRb7
 Qris3hbA2lmAqYdQBn6x+dO7/tjPC4/Jg5TCG6o3Ll1kgk6C+SfZb9pSFyQ0B4YMWq2oNfp2R
 7yZvg1U9jA/HhdIN17McqLjjdeCh2DNt3Ye9apvGz87LaV0xhrbZ7kTLekeJFNOrg3Ina2VVC
 aWmnm6hvOsrDPLYfxiSGdkBFElIa0Dr+yHXYJfp107m+vy8wwpwEZyfZBc+Lfe9T30V77Crn3
 shuBUhvDPSt9ZwLBbO0f9uW5TE5HzX3VXpu+W5U5jM6+yZk2EM0IWTeUotMyoSYVb0QPW3c8V
 x+BzNhBVpfJifXegZYTG44f8JH00cuCo96mwJ5ld4fHRsxT6K9MQmxEAZk/2aw14sytQT1YXJ
 3Wtv+GXnLyDoH78+rrOAHvayvimblN4IoBqwYAEC3D/Xz7q5U/MF62VqiqabiZYvHXRZBsAx/
 PUwMeG5YE2JF2jNE3jF7s2h6bb267lvBSVBsYbDuwdse5sLOkK1u5kbGHb78ecDV2rDZ/htU5
 rI/eYeruBP62erCG2/JUI/9K13gKP/9q3fkz9ARETGHBNburvtzgNOIFhP3ZpUc+Riza+2U9U
 Nwb45cgsboRz3e2jnwSsKGXbPX9aF9BhKGLdE1KXYyF95ia1EzJri+MMg/p4nOKOPgreWPVHX
 5llEd8koShan39+rFpuTAOBxaeH5BcOG/ToCP2Z8K9XqMi7ITal56RaeRBQStOvXArZxc8wzl
 tvIAiTsmuR2lPCu/EIj1c4hGKoSmLUWKdBzzp9zUOw/9x9E3ylMpi8ZjoXPElQMEI2yDXJPXp
 bIAWezrCc5BjIYeae
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

On 2020-04-14 13:23, Michael Kerrisk (man-pages) wrote:
> On 5/24/18 9:03 PM, Heinrich Schuchardt wrote:
>> Hello Michael,
>>
>> in the mmap(2) man page MAP_ANON is described as deprecated.
>>
>> When I look at the NetBSD manpage
>> http://netbsd.gw.com/cgi-bin/man-cgi?mmap+2+NetBSD-current
>> I found that MAP_ANONYMOUS is not defined.
>>
>> https://www.dragonflybsd.org/cgi/web-man?command=3Dmmap&section=3D2
>> indicates MAP_ANONYMOUS is an alias for MAP_ANON and is provided for
>> compatibility.
>>
>> https://man.openbsd.org/mmap.2 also knows MAP_ANONYMOUS as a synonym.
>>
>> https://www.unix.com/man-page/osx/2/mmap/ does not know MAP_ANONYMOUS.
>>
>> So shouldn't the man page indicate that MAP_ANON is to be favored to
>> write portable code? And correspondingly mark MAP_ANONYMOUS as synonym
>> only kept for compatibility.
>>
>> The Open Group Base Specifications Issue 7, 2018 Edition does not
>> reference either of both. So both values are not POSIX but it is not
>> correct to describe them as Linux only.
>
> The text saying that MAP_ANON is deprecated is ancient (at least
> 20 years old). I don't know why that text was added.
>
> Things are not simple though: it looks like there's at least
> one historical implementation (HP-US) that defines MAP_ANONYMOUS
> but not MAP_ANON.
>
> I've applied the patch below.

Somehow the patch got lost in the mail. Couldn't identify it upstream
(https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git) either.

Best regards

Heinrich

>
> Thanks,
>
> Michael


