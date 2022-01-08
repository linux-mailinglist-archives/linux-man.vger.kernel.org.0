Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 359544882ED
	for <lists+linux-man@lfdr.de>; Sat,  8 Jan 2022 10:53:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234074AbiAHJxF (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sat, 8 Jan 2022 04:53:05 -0500
Received: from 7.mo552.mail-out.ovh.net ([188.165.59.253]:32973 "EHLO
        7.mo552.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229628AbiAHJxF (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Sat, 8 Jan 2022 04:53:05 -0500
X-Greylist: delayed 1800 seconds by postgrey-1.27 at vger.kernel.org; Sat, 08 Jan 2022 04:53:05 EST
Received: from mxplan6.mail.ovh.net (unknown [10.108.1.6])
        by mo552.mail-out.ovh.net (Postfix) with ESMTPS id D9B9E226B1;
        Sat,  8 Jan 2022 09:13:54 +0000 (UTC)
Received: from jwilk.net (37.59.142.101) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.17; Sat, 8 Jan
 2022 10:13:54 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-101G004b099c699-247a-41ae-aee5-e8aee347f131,
                    E7C9DD8F7688E169D1A2B9DCE47DE5C662CA2690) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.2
Date:   Sat, 8 Jan 2022 10:13:52 +0100
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Alejandro Colomar <alx.manpages@gmail.com>
CC:     Stephen Kitt <steve@sk2.org>, <linux-man@vger.kernel.org>,
        Michael Kerrisk <mtk.manpages@gmail.com>
Subject: Re: [PATCH 6/9] newlocale.3: Use LC_GLOBAL_LOCALE, not ..._HANDLE
Message-ID: <20220108091352.kxrbpbolcilgna5x@jwilk.net>
References: <20220107164621.275794-1-steve@sk2.org>
 <20220107164621.275794-6-steve@sk2.org>
 <ee6f8448-4a84-3a94-d6d0-e9eabc3705a1@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ee6f8448-4a84-3a94-d6d0-e9eabc3705a1@gmail.com>
X-Originating-IP: [37.59.142.101]
X-ClientProxiedBy: DAG3EX1.mxp6.local (172.16.2.21) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: b9431c04-c84e-4f23-8219-89f4d6ab8dd6
X-Ovh-Tracer-Id: 6184005240275654624
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvuddrudegfedguddthecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecunecujfgurhepfffhvffukfhfgggtugfgjghisehtkeertddttdejnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeelvdelkeetveefhedtveffveetieelkeefjeehtefftdevffefjeehhfffgeekvdenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddruddtudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtohepmhhtkhdrmhgrnhhprghgvghssehgmhgrihhlrdgtohhm
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Alejandro Colomar <alx.manpages@gmail.com>, 2022-01-08, 02:41:
>>      /* Free the locale object. */
>>-    uselocale(LC_GLOBAL_HANDLE);    /* So \(aqloc\(aq is no longer in use */
>>+    uselocale(LC_GLOBAL_LOCALE);    /* So \(aqloc\(aq is no longer in use */
>
>Why?

$ gcc -Wall newlocale-example.c
newlocale-example.c: In function ‘main’:
newlocale-example.c:67:15: error: ‘LC_GLOBAL_HANDLE’ undeclared (first use in this function); did you mean ‘LC_GLOBAL_LOCALE’?

-- 
Jakub Wilk
