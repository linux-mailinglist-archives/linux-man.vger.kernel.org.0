Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8A4D92FF5A0
	for <lists+linux-man@lfdr.de>; Thu, 21 Jan 2021 21:15:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726819AbhAUUPU (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Thu, 21 Jan 2021 15:15:20 -0500
Received: from smtpout1.mo804.mail-out.ovh.net ([79.137.123.220]:42285 "EHLO
        smtpout1.mo804.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726247AbhAUUPP (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Thu, 21 Jan 2021 15:15:15 -0500
Received: from mxplan6.mail.ovh.net (unknown [10.108.1.97])
        by mo804.mail-out.ovh.net (Postfix) with ESMTPS id 05E89846B655;
        Thu, 21 Jan 2021 21:14:31 +0100 (CET)
Received: from jwilk.net (37.59.142.102) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2044.4; Thu, 21 Jan
 2021 21:14:30 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-102R004896cd33c-c600-4b41-8f8b-fb2d4dcb7870,
                    4FE1815BCD1269597AD8DF62880944829AE4C0B4) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.65
Date:   Thu, 21 Jan 2021 21:14:26 +0100
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Alejandro Colomar <alx.manpages@gmail.com>
CC:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        <linux-man@vger.kernel.org>
Subject: Re: [PATCH] posix.py: ffix: Correctly format URIs
Message-ID: <20210121201426.b6wfycjdegxce7fw@jwilk.net>
References: <20210109195840.74472-1-colomar.6.4.3@gmail.com>
 <a1d2172c-3880-ac79-7df7-0f5fb0bc65af@gmail.com>
 <20210110065023.olvhi2gqjbmv7243@localhost.localdomain>
 <af78792f-9758-e3e6-9c65-c2f93f0fcfdd@gmail.com>
 <20210112205115.g3nuoodpn7xxpx5u@jwilk.net>
 <bdbf6dee-e74f-e2e3-8c44-4ce63d396aa1@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <bdbf6dee-e74f-e2e3-8c44-4ce63d396aa1@gmail.com>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.102]
X-ClientProxiedBy: DAG3EX1.mxp6.local (172.16.2.21) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 9af53cba-4e59-4e57-a5c4-05d3b0f60353
X-Ovh-Tracer-Id: 16187625913829283805
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduledrudeggddufeekucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtugfgjggfihesthekredttderjeenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhephffftdeuleevvdfffefgjeevhedujefgieektedujeeiuedvgffhuddugeffueejnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrddutddvnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Alejandro Colomar <alx.manpages@gmail.com>, 2021-01-21, 20:54:
>On 1/12/21 9:51 PM, Jakub Wilk wrote:
>>>On 1/10/21 7:50 AM, G. Branden Robinson wrote:
>>>>They use left and right angle bracket special character escapes 
>>>>(Unicode U+2039 and U+203A)
>>
>>I think that's a bug in groff. It should use plain <> for URLs, at least
>>for tty output devices.
>>
>>* Alejandro Colomar <alx.manpages@gmail.com>, 2021-01-10, 15:35:
>>>I checked, and yes, it renders some character (the character depends 
>>>on the terminal: on tty I've seen a diamond, and on the xfce terminal 
>>>something similar (but slightly different) to a parenthesis).
>>
>>Your console font doesn't support U+2039/U+203A and uses diamond as a 
>>replacement character.
>>
>>I have this in /etc/groff/mdoc.local and /etc/groff/mdoc.local as a 
>>work-around:
>>
>>.  if '\V[TERM]'linux' \
>>.    tr \[la]<
>>.  if '\V[TERM]'linux' \
>>.    tr \[ra]>
>>
>>(In the long run, I should probably fix the font instead.)
>>
>
>After seeing Branden's answer to Michael (Escaping hyphens), I've seen 
>groff_char(7), and I found that my tty correctly supports U+2039 and 
>U+203A.  I clearly see the symbols I would expect: something quite 
>similar to plain <>, but a bit more obtuse.
>
>In the XFCE terminal, I also see something quite expected: a slightly 
>smaller version of <>.
>
>But both show me very different characters for .UR/.UE.
>tty displays a diamond, and XFCE term displays (a weird version of) 
>round parentheses.
>
>So... does it mean there's a bug in .UR/.UE?

Or a bug in Branden. ;-)

Contrary to what he wrote, and what I parroted, .UR/.UE use U+27E8 and 
U+27E9 as delimiters.

-- 
Jakub Wilk
