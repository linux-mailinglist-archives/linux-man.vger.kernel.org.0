Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0D34F26882F
	for <lists+linux-man@lfdr.de>; Mon, 14 Sep 2020 11:20:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726253AbgINJUK (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Sep 2020 05:20:10 -0400
Received: from smtpout1.mo529.mail-out.ovh.net ([178.32.125.2]:46029 "EHLO
        smtpout1.mo529.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726237AbgINJUK (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Sep 2020 05:20:10 -0400
Received: from mxplan6.mail.ovh.net (unknown [10.109.143.159])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id 0A3F45AD4B22;
        Mon, 14 Sep 2020 11:19:56 +0200 (CEST)
Received: from jwilk.net (37.59.142.98) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2044.4; Mon, 14 Sep
 2020 11:19:55 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-98R002fc537693-6728-47ef-8518-5834d68a5fac,
                    A8E0A1E9161A397C22C7A1C69E9582D8773AC3FE) smtp.auth=jwilk@jwilk.net
Date:   Mon, 14 Sep 2020 11:19:54 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
CC:     Michael Kerrisk <mtk.manpages@gmail.com>,
        <linux-man@vger.kernel.org>
Subject: Re: [IDEA] New pages for types: structs and typedfefs
Message-ID: <20200914091954.mjqcki6kz45hczs5@jwilk.net>
References: <fb6463f6-49d7-e473-d5e1-1cdf8375e498@gmail.com>
 <6c5b89f8-4281-4434-cbee-28f88d07920c@gmail.com>
 <4ea99048-4bfd-9cba-44cd-9c37fdad8fce@gmail.com>
 <CAKgNAkjys+LYn1qaSXhM2gJfkv_UOnpeNPyh3QCqNLcMNBKB+g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAKgNAkjys+LYn1qaSXhM2gJfkv_UOnpeNPyh3QCqNLcMNBKB+g@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.98]
X-ClientProxiedBy: DAG8EX1.mxp6.local (172.16.2.71) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 5b55ffbe-434a-4890-b3cb-1fcf3c837a3f
X-Ovh-Tracer-Id: 3871688305061386205
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduiedrudeiiedgudehucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjfghisehttdertddtredvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeevfeejudehkefffeelfedtgeeghedtheeiueeitdfhveehieeijeehteevkeejleenucffohhmrghinhepohhpvghnghhrohhuphdrohhrghenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddrleeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Michael Kerrisk <mtk.manpages@gmail.com>, 2020-09-13, 14:01:
>>No, I don't have a PDF.  I usually search here:
>>
>>https://pubs.opengroup.org/onlinepubs/9699919799/
>
>You can get a PDF by registering as a member of The Open Group.

Alternatively, you could download HTML versions of the standards:

https://pubs.opengroup.org/onlinepubs/007908799/download/susv2.tar.bz2 
https://pubs.opengroup.org/onlinepubs/007904975/download/susv3.tar.bz2 
https://pubs.opengroup.org/onlinepubs/9699919799/download/susv4-2018.tar.bz2

These should be even more greppable than the PDFs. (But I admit I've 
never seen the PDFs. I found the The Open Group registration form too 
intimidating.)

-- 
Jakub Wilk
