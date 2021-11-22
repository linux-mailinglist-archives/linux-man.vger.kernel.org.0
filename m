Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 404D8459374
	for <lists+linux-man@lfdr.de>; Mon, 22 Nov 2021 17:52:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238381AbhKVQz0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 22 Nov 2021 11:55:26 -0500
Received: from 10.mo548.mail-out.ovh.net ([46.105.77.235]:51077 "EHLO
        10.mo548.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239884AbhKVQz0 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 22 Nov 2021 11:55:26 -0500
Received: from mxplan6.mail.ovh.net (unknown [10.108.20.48])
        by mo548.mail-out.ovh.net (Postfix) with ESMTPS id 3002E1FEAC;
        Mon, 22 Nov 2021 16:15:28 +0000 (UTC)
Received: from jwilk.net (37.59.142.99) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.20; Mon, 22 Nov
 2021 17:15:27 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-99G003be64e119-d72b-4f77-b66b-91ef27aa6137,
                    951D1CA2C3ACE716D52EF63BC2878D876543FE52) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.144
Date:   Mon, 22 Nov 2021 17:15:24 +0100
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Topi Miettinen <toiwoton@gmail.com>, <linux-man@vger.kernel.org>
CC:     Alejandro Colomar <alx.manpages@gmail.com>,
        Michael Kerrisk <mtk.manpages@gmail.com>,
        <linux-mm@vger.kernel.org>
Subject: Re: [PATCH] mmap.2: ENOMEM possible when exceeding VA space
Message-ID: <20211122161524.cedefwd2t4jck5ua@jwilk.net>
References: <20211111180417.8382-1-toiwoton@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20211111180417.8382-1-toiwoton@gmail.com>
X-Originating-IP: [37.59.142.99]
X-ClientProxiedBy: DAG4EX2.mxp6.local (172.16.2.32) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 2d4d493b-5fa7-4fc2-9544-646fcfcdfc3c
X-Ovh-Tracer-Id: 13988180445295663011
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvuddrgeeggdekkecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepfffhvffukfhfgggtuggjihesthdtredttddtvdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepleffudeuleehvefhvdejjeefuddvhfeuvdejtddtheegudfgteeggfdugfejffdunecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrdelleenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtoheplhhinhhugidqmhhmsehvghgvrhdrkhgvrhhnvghlrdhorhhg
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Topi Miettinen <toiwoton@gmail.com>, 2021-11-11, 20:04:
>+.B ENOMEM
>+We don't like
>+.IR addr ,
>+because it exceeds the virtual address space of the CPU.
>+.TP

Who is "we"?

FWIW, failing with ENOMEM in this case may seem weird, but this is what 
POSIX prescribes.

-- 
Jakub Wilk
