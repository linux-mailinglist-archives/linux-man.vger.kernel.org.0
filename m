Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A3A543C6023
	for <lists+linux-man@lfdr.de>; Mon, 12 Jul 2021 18:09:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231179AbhGLQL7 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 12 Jul 2021 12:11:59 -0400
Received: from smtpout1.mo529.mail-out.ovh.net ([178.32.125.2]:42703 "EHLO
        smtpout1.mo529.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229465AbhGLQL6 (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 12 Jul 2021 12:11:58 -0400
Received: from mxplan6.mail.ovh.net (unknown [10.109.156.244])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id 27CECB3A7A5A;
        Mon, 12 Jul 2021 18:09:09 +0200 (CEST)
Received: from jwilk.net (37.59.142.101) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.8; Mon, 12 Jul
 2021 18:09:08 +0200
Authentication-Results: garm.ovh; auth=pass (GARM-101G00494816386-4922-45ec-9ce8-947c18447340,
                    5C274AFC0EEBB6A3AE8BBE403DAD1BA76CA38561) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 37.30.17.216
Date:   Mon, 12 Jul 2021 18:09:06 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Stefan Kanthak <stefan.kanthak@nexgo.de>
CC:     <mtk.manpages@gmail.com>, <alx.manpages@gmail.com>,
        <linux-man@vger.kernel.org>
Subject: Re: wcschr(3): add special case for  NUL, as in strchr(3)
Message-ID: <20210712160906.yfb4etzsylmzulox@jwilk.net>
References: <64D55817DE2A4D0E99757425D9883066@H270>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <64D55817DE2A4D0E99757425D9883066@H270>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.101]
X-ClientProxiedBy: DAG6EX2.mxp6.local (172.16.2.52) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: d6642830-6526-4010-8109-74b5a2d3fe45
X-Ovh-Tracer-Id: 7576461951583377376
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvtddruddvgdelhecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujggfihesthdtredttdervdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhephfefvdefheevhfekledtjeegleetfedvfedvuddvfefgudeuiedtieetvddthefgnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrddutddunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Stefan Kanthak <stefan.kanthak@nexgo.de>, 2021-07-12, 11:37:
>JFTR: to avoid any possible confusion of "null byte" alias NUL with the 
>"null pointer" alias NULL (C macro) or nullptr (C++), "null byte" 
>should be replaced with "NUL byte"!

"NUL byte" looks like a typo for "NULL byte", so if anything, it makes 
the potential for confusion greater.

Anyway, "null byte" is the preferred term in the man-pages style guide; 
see the "NULL, NUL, null pointer, and null character" subsection in 
man-pages(7).

-- 
Jakub Wilk
