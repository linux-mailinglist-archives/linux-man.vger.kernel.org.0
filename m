Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F201E2F3D17
	for <lists+linux-man@lfdr.de>; Wed, 13 Jan 2021 01:43:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2438126AbhALVh0 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 12 Jan 2021 16:37:26 -0500
Received: from smtpout1.mo804.mail-out.ovh.net ([79.137.123.220]:39961 "EHLO
        smtpout1.mo804.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S2437052AbhALUwA (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Tue, 12 Jan 2021 15:52:00 -0500
Received: from mxplan6.mail.ovh.net (unknown [10.109.138.238])
        by mo804.mail-out.ovh.net (Postfix) with ESMTPS id 82B2981A59C1;
        Tue, 12 Jan 2021 21:51:18 +0100 (CET)
Received: from jwilk.net (37.59.142.96) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2044.4; Tue, 12 Jan
 2021 21:51:17 +0100
Authentication-Results: garm.ovh; auth=pass (GARM-96R001a9650371-be9b-42a9-9bf8-0d81a595d052,
                    C28754F619A2B7BAC4431E3150903DC3BC64F262) smtp.auth=jwilk@jwilk.net
X-OVh-ClientIp: 5.173.32.140
Date:   Tue, 12 Jan 2021 21:51:15 +0100
From:   Jakub Wilk <jwilk@jwilk.net>
To:     Alejandro Colomar <alx.manpages@gmail.com>
CC:     "G. Branden Robinson" <g.branden.robinson@gmail.com>,
        <linux-man@vger.kernel.org>
Subject: Re: [PATCH] posix.py: ffix: Correctly format URIs
Message-ID: <20210112205115.g3nuoodpn7xxpx5u@jwilk.net>
References: <20210109195840.74472-1-colomar.6.4.3@gmail.com>
 <a1d2172c-3880-ac79-7df7-0f5fb0bc65af@gmail.com>
 <20210110065023.olvhi2gqjbmv7243@localhost.localdomain>
 <af78792f-9758-e3e6-9c65-c2f93f0fcfdd@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <af78792f-9758-e3e6-9c65-c2f93f0fcfdd@gmail.com>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.96]
X-ClientProxiedBy: DAG6EX2.mxp6.local (172.16.2.52) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 699896ec-6e1d-4ffb-9627-076e5e0b69bb
X-Ovh-Tracer-Id: 848365582283954141
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedukedrtddtgdduuddtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjfghisehttdertddtredvnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucggtffrrghtthgvrhhnpefhfedvfeehvefhkeeltdejgeelteefvdefvdduvdefgfduueeitdeitedvtdehgfenucfkpheptddrtddrtddrtddpfeejrdehledrudegvddrleeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

>On 1/10/21 7:50 AM, G. Branden Robinson wrote:
>>They use left and right angle bracket special character escapes 
>>(Unicode U+2039 and U+203A)

I think that's a bug in groff. It should use plain <> for URLs, at least 
for tty output devices.

* Alejandro Colomar <alx.manpages@gmail.com>, 2021-01-10, 15:35:
>I checked, and yes, it renders some character (the character depends on 
>the terminal: on tty I've seen a diamond, and on the xfce terminal 
>something similar (but slightly different) to a parenthesis).

Your console font doesn't support U+2039/U+203A and uses diamond as a 
replacement character.

I have this in /etc/groff/mdoc.local and /etc/groff/mdoc.local as a 
work-around:

.  if '\V[TERM]'linux' \
.    tr \[la]<
.  if '\V[TERM]'linux' \
.    tr \[ra]>

(In the long run, I should probably fix the font instead.)

-- 
Jakub Wilk
