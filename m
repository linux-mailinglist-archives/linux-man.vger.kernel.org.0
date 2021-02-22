Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D6255321AA3
	for <lists+linux-man@lfdr.de>; Mon, 22 Feb 2021 15:59:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229991AbhBVO6v (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 22 Feb 2021 09:58:51 -0500
Received: from smtpout1.mo804.mail-out.ovh.net ([79.137.123.220]:43817 "EHLO
        smtpout1.mo804.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229947AbhBVO6u (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 22 Feb 2021 09:58:50 -0500
Received: from mxplan6.mail.ovh.net (unknown [10.109.146.241])
        by mo804.mail-out.ovh.net (Postfix) with ESMTPS id D5DDF8FF3FC8;
        Mon, 22 Feb 2021 15:58:06 +0100 (CET)
Received: from jwilk.net (37.59.142.95) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2; Mon, 22 Feb
 2021 15:58:04 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-95G001ffb3f091-ce1d-45f7-b3b6-2b3b4c71e03d,
                    A2E1988F04140D9B9A9FE8CB33A6270137CAA94F) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.173.72.242
Date:   Mon, 22 Feb 2021 15:58:02 +0100
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Alejandro Colomar <alx.manpages@gmail.com>
CC:     Michael Kerrisk <mtk.manpages@gmail.com>,
        <linux-man@vger.kernel.org>
Subject: Re: [PATCH] scripts/bash_aliases, scripts/modified_pages.sh: Move
 scripts/modified_pages.sh to a function man_gitstaged()
Message-ID: <20210222145802.w3oljdtz7vie2v4y@jwilk.net>
References: <20210222140344.3862-1-alx.manpages@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20210222140344.3862-1-alx.manpages@gmail.com>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.95]
X-ClientProxiedBy: DAG2EX1.mxp6.local (172.16.2.11) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 3aa23c9f-11af-40a6-904b-17e1a82b637f
X-Ovh-Tracer-Id: 14302869467527829469
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduledrkeefgdejtdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepfffhvffukfhfgggtuggjfghisehttdertddtredvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpefhfedvfeehvefhkeeltdejgeelteefvdefvdduvdefgfduueeitdeitedvtdehgfenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddrleehnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Alejandro Colomar <alx.manpages@gmail.com>, 2021-02-22, 15:03:
>+	git status							\
>+	|sed '/Changes not staged for commit:/q'			\
>+	|grep -E '^\s*(modified|deleted|new file):'			\

"git status" (without further options) is not suitable for scripting: 
"The default, long format, is designed to be human readable, verbose and 
descriptive. Its contents and format are subject to change at any time."

You could use "git status --porcelain" instead, which has stable and 
(supposedly) easy to parse format. Or, better, you could use "git diff 
--staged --name-only".

-- 
Jakub Wilk
