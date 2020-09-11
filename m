Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A4298265C8A
	for <lists+linux-man@lfdr.de>; Fri, 11 Sep 2020 11:33:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725777AbgIKJdh (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 11 Sep 2020 05:33:37 -0400
Received: from smtpout1.mo529.mail-out.ovh.net ([178.32.125.2]:52803 "EHLO
        smtpout1.mo529.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725710AbgIKJdh (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Fri, 11 Sep 2020 05:33:37 -0400
Received: from mxplan6.mail.ovh.net (unknown [10.109.156.48])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id C1ED559F1E3B;
        Fri, 11 Sep 2020 11:33:35 +0200 (CEST)
Received: from jwilk.net (37.59.142.97) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2044.4; Fri, 11 Sep
 2020 11:33:34 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-97G002b36812bf-75b6-471b-b921-0acae203374d,
                    64F61387685633508F748727C5F6338E347AD249) smtp.auth=jwilk@jwilk.net
Date:   Fri, 11 Sep 2020 11:33:33 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Alejandro Colomar <colomar.6.4.3@gmail.com>
CC:     Michael Kerrisk <mtk.manpages@gmail.com>,
        <linux-man@vger.kernel.org>
Subject: Re: [PATCH 22/24] membarrier.2: Note that glibc does not provide a
 wrapper
Message-ID: <20200911093333.blym5ufplu7xzhwx@jwilk.net>
References: <20200910211344.3562-1-colomar.6.4.3@gmail.com>
 <20200910211344.3562-23-colomar.6.4.3@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200910211344.3562-23-colomar.6.4.3@gmail.com>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.97]
X-ClientProxiedBy: DAG2EX1.mxp6.local (172.16.2.11) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: c28ab060-cc24-48ba-8271-79a21386dbb1
X-Ovh-Tracer-Id: 4931160119432304605
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduiedrudehledgudekucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjfghisehttdertddtredvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeffuedtvdelieefvddvffelgefgvdeghfelkefftdfhieekhefhfeevffevfefhjeenucffohhmrghinhepghhnuhdrohhrghenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddrleejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Alejandro Colomar <colomar.6.4.3@gmail.com>, 2020-09-10, 23:13:
>I copied .nf and .fi from futex.2, but they made no visual difference.
>What do they actually do?

.nf disables filling and adjusting; .fi re-enables them:
https://www.gnu.org/software/groff/manual/html_node/Filling-and-Adjusting.html
https://www.gnu.org/software/groff/manual/html_node/Manipulating-Filling-and-Adjusting.html

In membarrier.2's SYNOPSIS section, there's just a single short line in 
each paragraph, so it makes no difference.

It does make a difference in futex.2.

-- 
Jakub Wilk
