Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 440D41B1961
	for <lists+linux-man@lfdr.de>; Tue, 21 Apr 2020 00:26:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726224AbgDTW0W (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 20 Apr 2020 18:26:22 -0400
Received: from smtpout1.mo529.mail-out.ovh.net ([178.32.125.2]:52361 "EHLO
        smtpout1.mo529.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1726181AbgDTW0W (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 20 Apr 2020 18:26:22 -0400
Received: from mxplan6.mail.ovh.net (unknown [10.109.138.121])
        by mo529.mail-out.ovh.net (Postfix) with ESMTPS id BBB6C309930B;
        Tue, 21 Apr 2020 00:26:20 +0200 (CEST)
Received: from jwilk.net (37.59.142.104) by DAG4EX2.mxp6.local (172.16.2.32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1779.2; Tue, 21 Apr
 2020 00:26:19 +0200
Date:   Tue, 21 Apr 2020 00:26:17 +0200
From:   Jakub Wilk <jwilk@jwilk.net>
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
CC:     Helge Kreutzmann <debian@helgefjell.de>,
        <linux-man@vger.kernel.org>
Subject: Re: Errors in man pages, here: tzfile(5): Punctuation
Message-ID: <20200420222616.yoc26jiehdn4cgaj@jwilk.net>
References: <20200419064834.GA32517@Debian-50-lenny-64-minimal>
 <95611010-1ec8-c461-8502-71515373c961@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <95611010-1ec8-c461-8502-71515373c961@gmail.com>
User-Agent: NeoMutt/20180716
X-Originating-IP: [37.59.142.104]
X-ClientProxiedBy: DAG3EX1.mxp6.local (172.16.2.21) To DAG4EX2.mxp6.local
 (172.16.2.32)
X-Ovh-Tracer-GUID: 34a54389-a65b-4f76-b0dc-f40203884d67
X-Ovh-Tracer-Id: 2417307103588964317
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduhedrgeeggddtjecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggugfgjfghisehtkeertddtreejnecuhfhrohhmpeflrghkuhgsucghihhlkhcuoehjfihilhhksehjfihilhhkrdhnvghtqeenucffohhmrghinhepuggvsghirghnrdhorhhgnecukfhppedtrddtrddtrddtpdefjedrheelrddugedvrddutdegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepmhigphhlrghniedrmhgrihhlrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpehjfihilhhksehjfihilhhkrdhnvghtpdhrtghpthhtoheplhhinhhugidqmhgrnhesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

* Michael Kerrisk (man-pages) <mtk.manpages@gmail.com>, 2020-04-20, 11:13:
>>Final comma → fullstop
>>
>>"Some readers may mishandle time zone abbreviations that contain fewer than 3 "
>>"or more than 6 characters, or that contain ASCII characters other than "
>>"alphanumerics,"
>
>I can't find this text. Please elaborate/check.

This text was added in a Debian patch:
https://sources.debian.org/src/manpages/4.16-2/debian/patches/0010-tzfile.5.patch/

-- 
Jakub Wilk
