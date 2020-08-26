Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9CCC425360E
	for <lists+linux-man@lfdr.de>; Wed, 26 Aug 2020 19:42:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726836AbgHZRmH (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 26 Aug 2020 13:42:07 -0400
Received: from smtpout1.mo529.mail-out.ovh.net ([178.32.125.2]:59819 "EHLO
        smtpout1.mo529.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725995AbgHZRlz (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 26 Aug 2020 13:41:55 -0400
Received: from mxplan6.mail.ovh.net (unknown [10.108.4.89])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id 76B465450340;
        Wed, 26 Aug 2020 19:41:30 +0200 (CEST)
Received: from jwilk.net (37.59.142.97) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1979.3; Wed, 26 Aug
 2020 19:41:29 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-97G001704a212d-c4e5-4192-8cd7-6bf86ad17fec,
                    69319EA41B30DF0035E4AF19C9D5AF871891D7C2) smtp.auth=jwilk@jwilk.net
Date:   Wed, 26 Aug 2020 19:41:28 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Michael Kerrisk <mtk.manpages@gmail.com>
CC:     Thomas Piekarski <t.piekarski@deloquencia.de>,
        <linux-man@vger.kernel.org>
Subject: Re: [PATCH] bpf-helpers.7: wfix
Message-ID: <20200826174128.stgz6fnisldrcnnx@jwilk.net>
References: <e95bd107-7a2a-1595-a796-8305badf97d7@deloquencia.de>
 <3e3f07ef-d48c-2469-f95c-0964f7ae42d9@gmail.com>
 <20200822084238.o5g4ethy5uhpng6m@jwilk.net>
 <CAKgNAkiW7ZLmf9z9rjxfHQVqOQ+Rzm9h4SUjO2664-Yjyr5xBw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAKgNAkiW7ZLmf9z9rjxfHQVqOQ+Rzm9h4SUjO2664-Yjyr5xBw@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.97]
X-ClientProxiedBy: DAG5EX1.mxp6.local (172.16.2.41) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: fc7ddc08-5d6a-4e32-91fc-29a088531dc9
X-Ovh-Tracer-Id: 11441957803629664221
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduiedruddvvddguddugecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujggfihesthdtredttdervdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepueejkeevhffhfedufeeuleefieekjeefgefhjeegjeejfefgveelvdeiteefheetnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddrleejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Michael Kerrisk <mtk.manpages@gmail.com>, 2020-08-22, 13:30:
>I just regenerated the page from the current kernel source.

The commit 7b203a3d6dc6c2b0 looks suspicious. It removes a large portion 
of text (65 insertions vs 432 deletions) and reintroduces a bug I fixed 
for Linux v5.7: https://git.kernel.org/linus/a33d3147945543f9

Did you accidentally resync the man page against an older Linux version?

-- 
Jakub Wilk
