Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7DC8F300061
	for <lists+linux-man@lfdr.de>; Fri, 22 Jan 2021 11:37:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727521AbhAVK0i (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 22 Jan 2021 05:26:38 -0500
Received: from smtpout1.mo529.mail-out.ovh.net ([178.32.125.2]:55859 "EHLO
        smtpout1.mo529.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726904AbhAVJgp (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 22 Jan 2021 04:36:45 -0500
Received: from mxplan6.mail.ovh.net (unknown [10.108.1.249])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id D3B807DF73F0;
        Fri, 22 Jan 2021 10:36:00 +0100 (CET)
Received: from jwilk.net (37.59.142.105) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2044.4; Fri, 22 Jan
 2021 10:35:59 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-105G006436df3e7-99da-4c8b-b0ff-0756c0054195,
                    6CB8663A8AB31101A4BC477E843863E505C0C94B) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.146
Date:   Fri, 22 Jan 2021 10:35:56 +0100
From:   Jakub Wilk <jwilk@jwilk.net>
To:     "G. Branden Robinson" <g.branden.robinson@gmail.com>
CC:     Alejandro Colomar <alx.manpages@gmail.com>,
        <linux-man@vger.kernel.org>
Subject: Re: [PATCH] posix.py: ffix: Correctly format URIs
Message-ID: <20210122093556.nwo4qe5vcnbinu7z@jwilk.net>
References: <20210109195840.74472-1-colomar.6.4.3@gmail.com>
 <a1d2172c-3880-ac79-7df7-0f5fb0bc65af@gmail.com>
 <20210110065023.olvhi2gqjbmv7243@localhost.localdomain>
 <af78792f-9758-e3e6-9c65-c2f93f0fcfdd@gmail.com>
 <20210112205115.g3nuoodpn7xxpx5u@jwilk.net>
 <bdbf6dee-e74f-e2e3-8c44-4ce63d396aa1@gmail.com>
 <20210121201426.b6wfycjdegxce7fw@jwilk.net>
 <20210122032300.zsqf6uuznfbu6tij@localhost.localdomain>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20210122032300.zsqf6uuznfbu6tij@localhost.localdomain>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.105]
X-ClientProxiedBy: DAG1EX1.mxp6.local (172.16.2.1) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 12e1feee-6d4e-4829-bcf0-3873b0e09ed4
X-Ovh-Tracer-Id: 11277013468445464541
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduledrudeigddtjecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujggfihesthdtredttdervdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepfffhueeliedutdettdevuedugefhkeekudekheekjeefteefieekfeeiuefggeehnecuffhomhgrihhnpeifihhkihhpvgguihgrrdhorhhgnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrddutdehnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* G. Branden Robinson <g.branden.robinson@gmail.com>, 2021-01-22, 14:23:
>U+2039 and U+203A are "single {left,right}-pointing angle quotation 
>mark" per Unicode.  Their groff special character escapes are \[fo] and 
>\[fc], respectively.  (I don't know the mnemonic that inspired the "f" 
>in the name.)

"French", I guess:
https://en.wikipedia.org/wiki/French_quotes#French

>.  char \[la] \[Fo]
>.  char \[ra] \[Fc]

Should be lowercase "f" here.

-- 
Jakub Wilk
