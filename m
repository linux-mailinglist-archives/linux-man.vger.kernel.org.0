Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9CABD2687B7
	for <lists+linux-man@lfdr.de>; Mon, 14 Sep 2020 10:58:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726184AbgINI6h (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 14 Sep 2020 04:58:37 -0400
Received: from smtpout1.mo529.mail-out.ovh.net ([178.32.125.2]:35591 "EHLO
        smtpout1.mo529.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726180AbgINI6f (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 14 Sep 2020 04:58:35 -0400
Received: from mxplan6.mail.ovh.net (unknown [10.109.156.244])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id 13DB85AD1D33;
        Mon, 14 Sep 2020 10:58:34 +0200 (CEST)
Received: from jwilk.net (37.59.142.99) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2044.4; Mon, 14 Sep
 2020 10:58:33 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-99G003e0fb732c-bce2-4546-8382-7a266e4355a7,
                    A8E0A1E9161A397C22C7A1C69E9582D8773AC3FE) smtp.auth=jwilk@jwilk.net
Date:   Mon, 14 Sep 2020 10:58:31 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     Alejandro Colomar <colomar.6.4.3@gmail.com>,
        <linux-man@vger.kernel.org>
Subject: Re: [PATCH 03/12] pthread_getcpuclockid.3: Cast 'time_t' to
 'intmax_t' for printf()
Message-ID: <20200914085831.pdvkioetcw7fe4l7@jwilk.net>
References: <20200911231411.28406-1-colomar.6.4.3@gmail.com>
 <20200911231411.28406-4-colomar.6.4.3@gmail.com>
 <af4a408c-7e6e-4074-2c61-461e7f167a55@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <af4a408c-7e6e-4074-2c61-461e7f167a55@gmail.com>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.99]
X-ClientProxiedBy: DAG3EX1.mxp6.local (172.16.2.21) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 24bf464f-9a65-4a6b-9943-a8d37977f509
X-Ovh-Tracer-Id: 3510837385353353181
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduiedrudeiiedgudduucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjfghisehttdertddtredvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpefhfedvfeehvefhkeeltdejgeelteefvdefvdduvdefgfduueeitdeitedvtdehgfenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddrleelnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Michael Kerrisk <mtk.manpages@gmail.com>, 2020-09-13, 07:58:
>Casting to long is the historical practive here, and should be 
>sufficient, don't you think?

It general, the practice of casting time_t to long is wrong. There are 
existing systems that have 64-bit time_t but 32-bit long.

In this particular case, we're measuring CPU time, so there's 
practically no danger of overflow.

I'd either cast it to int (to make the code shortest and simplest) or to 
intmax_t (to be pedantically correct).

-- 
Jakub Wilk
