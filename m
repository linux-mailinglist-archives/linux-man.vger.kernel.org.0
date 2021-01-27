Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 68FEC3062D3
	for <lists+linux-man@lfdr.de>; Wed, 27 Jan 2021 18:59:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344255AbhA0R54 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 27 Jan 2021 12:57:56 -0500
Received: from smtpout1.mo529.mail-out.ovh.net ([178.32.125.2]:48835 "EHLO
        smtpout1.mo529.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1344070AbhA0R5v (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Wed, 27 Jan 2021 12:57:51 -0500
Received: from mxplan6.mail.ovh.net (unknown [10.109.143.118])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id CD0F47FCE0B4
        for <linux-man@vger.kernel.org>; Wed, 27 Jan 2021 18:57:07 +0100 (CET)
Received: from jwilk.net (37.59.142.95) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2; Wed, 27 Jan
 2021 18:57:06 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-95G00125bc4ec5-6ab6-4e90-8fbb-3d3a36d751ce,
                    3343377E69AD0563E0360AF3DE59BABC43A7F749) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.172.255.238
Date:   Wed, 27 Jan 2021 18:57:03 +0100
From:   Jakub Wilk <jwilk@jwilk.net>
To:     <linux-man@vger.kernel.org>
Subject: tcp.7: tcp_retries2 description outdated?
Message-ID: <20210127175703.hdqwnj36oefoqhzf@jwilk.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.95]
X-ClientProxiedBy: DAG4EX2.mxp6.local (172.16.2.32) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 7402adfb-6d43-4355-9d49-5659b64a564e
X-Ovh-Tracer-Id: 12210103014909990679
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduledrvdekgddutdehucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucenucfjughrpeffhffvuffkgggtuggfihesthdtredttdervdenucfhrhhomheplfgrkhhusgcuhghilhhkuceojhifihhlkhesjhifihhlkhdrnhgvtheqnecuggftrfgrthhtvghrnhepveehgedvvdduveefjeehuedvvdeigfeivedtgeehgfduvdefudehleektdeukeejnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddrleehnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

The description of tcp_retries2 in tcp.7 reads:

>The default value is 15, which corresponds to a duration of 
>approximately between 13 to 30 minutes, depending on the retransmission 
>timeout.

I'm not a networking expert, but I think this description is outdated.
See these kernel commits:
https://git.kernel.org/linus/6fa12c85031485df
https://git.kernel.org/linus/5d7892298a819743

-- 
Jakub Wilk
